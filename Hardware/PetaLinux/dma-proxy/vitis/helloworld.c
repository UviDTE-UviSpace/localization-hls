/* DMA Proxy Test Application
 *
 * This application is intended to be used with the DMA Proxy device driver. It provides
 * an example application showing how to use the device driver to do user space DMA
 * operations.
 *
 * It has been tested with an AXI DMA system with transmit looped back to receive.
 * The device driver implements a blocking ioctl() function such that a thread is
 * needed for the 2nd channel. Since the AXI DMA transmit is a stream without any
 * buffering it is throttled until the receive channel is running.
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include "dma-proxy.h"

/*
#include <opencv2/core/core_c.h>
#include <opencv2/imgcodecs/imgcodecs_c.h>
#include <opencv2/imgproc/imgproc_c.h>
#include <opencv2/highgui/highgui_c.h>
//#include <opencv2/features2d/features2d_c.h>
//#include <opencv2/xfeatures2d_c.h>
#include <opencv2/videoio/videoio_c.h>
*/

static struct dma_proxy_channel_interface *tx_proxy_interface_p;
static int tx_proxy_fd;

/* The following function is the transmit thread to allow the transmit and the
 * receive channels to be operating simultaneously. The ioctl calls are blocking
 * such that a thread is needed.
 */
void *tx_thread()
{
	int dummy;
	tx_proxy_interface_p->length = TEST_SIZE;

	/* Perform the DMA transfer and the check the status after it completes
 	 * as the call blocks til the transfer is done.
 	 */
    printf("tx status before %d\n", tx_proxy_interface_p->status);
	ioctl(tx_proxy_fd, 0, &dummy);
	printf("tx status after %d\n", tx_proxy_interface_p->status);
	if (tx_proxy_interface_p->status != PROXY_NO_ERROR)
		printf("Proxy tx transfer error\n");
}

/* The following function uses the dma proxy device driver to perform DMA transfers
 * from user space. This app and the driver are tested with a system containing an
 * AXI DMA without scatter gather and with transmit looped back to receive.
 */
int main(int argc, char *argv[])
{
	struct dma_proxy_channel_interface *rx_proxy_interface_p;
	int rx_proxy_fd, i, j;
	int dummy;
	pthread_t tid;

	printf("DMA proxy test\n");

	tx_proxy_fd = open("/dev/axidma0", O_RDWR);

	if (tx_proxy_fd < 1) {
		printf("Unable to open TX device file");
		return -1;
	}

	rx_proxy_fd = open("/dev/axidma1", O_RDWR);
	if (tx_proxy_fd < 1) {
		printf("Unable to open RX device file");
		return -1;
	}

	/* Step 2, map the transmit and receive channels memory into user space so it's accessible
 	 */
	tx_proxy_interface_p = (struct dma_proxy_channel_interface *)mmap(NULL, sizeof(struct dma_proxy_channel_interface),
									PROT_READ | PROT_WRITE, MAP_SHARED, tx_proxy_fd, 0);

	rx_proxy_interface_p = (struct dma_proxy_channel_interface *)mmap(NULL, sizeof(struct dma_proxy_channel_interface),
									PROT_READ | PROT_WRITE, MAP_SHARED, rx_proxy_fd, 0);

    	if ((rx_proxy_interface_p == MAP_FAILED) || (tx_proxy_interface_p == MAP_FAILED)) {
        	printf("Failed to mmap\n");
        	return -1;
    	}

	/* Create the thread for the transmit processing and then wait a second so the printf output is not
 	 * intermingled with the receive processing
	 */
    //pthread_create(&tid, NULL, tx_thread, NULL);
	//sleep(1);

	/* Initialize the receive buffer so that it can be verified after the transfer is done
	 * and setup the size of the transfer for the receive channel
 	 */
	for (i = 0; i < TEST_SIZE; i++){
		rx_proxy_interface_p->buffer[i] = 0;
		tx_proxy_interface_p->buffer[i] = i;
	}
	tx_proxy_interface_p->buffer[100000] = 0x01;
	tx_proxy_interface_p->buffer[200000] = 0xF0;
	tx_proxy_interface_p->buffer[300000] = 0x0F;

    rx_proxy_interface_p->length = TEST_SIZE;

	/* Step 3, Perform the DMA transfer and after it finishes check the status
	 */
    pthread_create(&tid, NULL, tx_thread, NULL);
    	printf("rx status before %d\n", rx_proxy_interface_p->status);
	ioctl(rx_proxy_fd, 0, &dummy);
printf("rx status after %d\n", rx_proxy_interface_p->status);
	if (rx_proxy_interface_p->status != PROXY_NO_ERROR)
		printf("Proxy rx transfer error\n");

	/* Verify the data recieved matchs what was sent (tx is looped back to tx)
 	 */
	for (i = 0; i < TEST_SIZE; i++) {
        	if (tx_proxy_interface_p->buffer[i] !=
            		rx_proxy_interface_p->buffer[i]){
            		printf("buffer not equal, index = %d\n", i);
			j++;
			}
    	}

	/* Unmap the proxy channel interface memory and close the device files before leaving
	 */
	printf("finished dma-proxy test.. %d/%d passed\n", TEST_SIZE-j, TEST_SIZE);
	printf("check pos 1: %d\n",rx_proxy_interface_p->buffer[100000]);
	printf("check pos 2: %d\n",rx_proxy_interface_p->buffer[200000]);
	printf("check pos 3: %d\n",rx_proxy_interface_p->buffer[300000]);
	printf("closing mmaps..\n");
	munmap(tx_proxy_interface_p, sizeof(struct dma_proxy_channel_interface));
	munmap(rx_proxy_interface_p, sizeof(struct dma_proxy_channel_interface));

	close(tx_proxy_fd);
	close(rx_proxy_fd);
	printf("completed dma-proxy..\n");
	return 0;
}
