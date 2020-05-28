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
#include <chrono>
#include "dma-proxy.h"

#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/videoio/videoio.hpp>
#include <iostream>
using namespace std;
using namespace cv;
using namespace std::chrono;

static struct dma_proxy_channel_interface *tx_proxy_interface_p;
static struct dma_proxy_channel_interface *rx_proxy_interface_p;
static int tx_proxy_fd, rx_proxy_fd;
static int flagr;

/* The following function is the transmit thread to allow the transmit and the
 * receive channels to be operating simultaneously. The ioctl calls are blocking
 * such that a thread is needed.
 */
void *rx_thread(void *)
{
	int dummy;
	/* Perform the DMA transfer and the check the status after it completes
 	 * as the call blocks til the transfer is done.
 	 */
    printf("tx status before %d\n", tx_proxy_interface_p->status);
	ioctl(rx_proxy_fd, 0, &dummy);
	printf("tx status after %d\n", tx_proxy_interface_p->status);
	//if (tx_proxy_interface_p->status != PROXY_NO_ERROR)
	//printf("Proxy tx transfer error\n");
}
void *tx_thread(void *)
{
	int dummy;
	/* Perform the DMA transfer and the check the status after it completes
 	 * as the call blocks til the transfer is done.
 	 */
    printf("tx status before %d\n", tx_proxy_interface_p->status);
	ioctl(tx_proxy_fd, 0, &dummy);
	printf("tx status after %d\n", tx_proxy_interface_p->status);
	//if (tx_proxy_interface_p->status != PROXY_NO_ERROR)
	//printf("Proxy tx transfer error\n");
}

/* The following function uses the dma proxy device driver to perform DMA transfers
 * from user space. This app and the driver are tested with a system containing an
 * AXI DMA without scatter gather and with transmit looped back to receive.
 */
int main(int argc, char *argv[])
{
	int j;
	int dummy;
	pthread_t tid;

	high_resolution_clock::time_point startf, endf, startloop1, startloop2, endloop1, endloop2;
	high_resolution_clock::time_point imginS, imginST, imgoutS, imgoutST;
	high_resolution_clock::time_point transferTXS, transferTXST, transferRXS, transferRXST;

	startf = high_resolution_clock::now();

	Mat src, dst;
    src = imread(argv[1], cv::IMREAD_GRAYSCALE);
    dst.create(480,640, CV_8UC(1));

    if(! src.data )
    {
        printf("Error loading image\n\r"); exit(1);
    }

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

	rx_proxy_interface_p->length = TEST_SIZE;
	tx_proxy_interface_p->length = TEST_SIZE;

	/* Initialize the receive buffer*/
        for (int i = 0; i < src.rows; ++i)
        {
            uchar* pixel = src.ptr<uchar>(i);  // point to first color in row
            for (int j = 0; j < src.cols; ++j)
            {
            	tx_proxy_interface_p->buffer[(i*640)+j] = *pixel++;
        		rx_proxy_interface_p->buffer[(i*640)+j] = 0x00;
            }
        }

	/* Step 3, Perform the DMA transfer and after it finishes check the status.
	 * With TX threading in CPP, the program can only run once after a reset. Without
	 * TX threading it can do multiple in a row, but takes very long.
	 * EITHER:
	 * 	pthread_create(&tid, NULL, tx_thread, NULL);
		ioctl(rx_proxy_fd, 0, &dummy);
		Allow it to run once after reset with TX thread.
		OR EITHER (current):
		pthread_create(&tid, NULL, rx_thread, NULL);
		ioctl(tx_proxy_fd, 0, &dummy);
		Allow it to run multiple times with RX thread.
		Both threading will cut make recv buffer too fast.
	 */

	transferTXS = high_resolution_clock::now();
	pthread_create(&tid, NULL, rx_thread, NULL); //INIT recv buffer
	ioctl(tx_proxy_fd, 0, &dummy);				// send tx buffer
    //pthread_create(&tid, NULL, tx_thread, NULL);
	transferTXST = high_resolution_clock::now();
	transferRXS = high_resolution_clock::now();
	//pthread_create(&tid, NULL, tx_thread, NULL);
	//ioctl(rx_proxy_fd, 0, &dummy);
	transferRXST = high_resolution_clock::now();

	/* Verify the data recieved matchs what was sent (tx is looped back to tx)
	 * +3 for a weird shift?
 	 */
	uchar *pdata;
    pdata = rx_proxy_interface_p->buffer;
	for(int i = 0; i < dst.rows; i++)
	{
	    for(int j = 0; j < dst.cols; j++)
	    {
	    	*pdata = rx_proxy_interface_p->buffer[(i*640)+j+3];		//+3 for a weird shift?
	    	//if( (i*640)+j +) printf("data is %d\n", *pdata);
			dst.at<uchar>(i,j) = *pdata;
	    }
	}

    int result = imwrite("images/output.png", dst);

    if (result)
        printf("Saved PNG file with alpha data.\n");
    else
        printf("ERROR: Can't save PNG file.\n");

	/* Unmap the proxy channel interface memory and close the device files before leaving
	 */

	printf("closing mmaps..\n");
	munmap(tx_proxy_interface_p, sizeof(struct dma_proxy_channel_interface));
	munmap(rx_proxy_interface_p, sizeof(struct dma_proxy_channel_interface));

	close(tx_proxy_fd);
	close(rx_proxy_fd);
	printf("completed dma-proxy..\n");
    endf = high_resolution_clock::now();
    duration<double> elapsed_seconds = duration_cast<duration<double>>(endf-startf);
    cout << "finished in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(endloop1-startloop1);
    cout << "Readin image in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(transferTXST-transferTXS);
    cout << "transfer TX  in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(transferRXST-transferRXS);
    cout << "transfer RX  in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(endloop2-startloop2);
    cout << "Saving image in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(imginST-imginS);
    cout << "Imgin  in: " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(imgoutST-imgoutS);
    cout << "Imgout in : " << elapsed_seconds.count() << endl;
	return 0;
}
