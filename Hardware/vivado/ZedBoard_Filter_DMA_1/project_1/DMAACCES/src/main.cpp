
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "opencv2.h"

#ifndef TESTAPP_GEN
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID
#endif

#define SIZE_ARR (480*640)
#define TX_BUFFER_BASE (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR + 0x00300000)

#define MEM_BASE_ADDR 0x01000000

unsigned char *m_dma_buffer_TX = (unsigned char*)TX_BUFFER_BASE;
unsigned char *m_dma_buffer_RX = (unsigned char*)RX_BUFFER_BASE;
unsigned char imgIn_HW[SIZE_ARR];

int AxiDMASelfTestExample(u16 DeviceId);

XAxiDma AxiDma;

using namespace std;
using namespace cv;

#ifndef TESTAPP_GEN
int main()
{
	int Status;

	xil_printf("\r\n--- Entering main() --- \r\n");

	/* Run the poll example for simple transfer */
	Status = AxiDMASelfTestExample(DMA_DEV_ID);

	if (Status != XST_SUCCESS) {
		xil_printf("AxiDMASelfTest Example Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran AxiDMASelfTest Example\r\n");

	Xil_DCacheFlushRange((u32)imgIn_HW, SIZE_ARR*sizeof(unsigned char));
	Xil_DCacheFlushRange((u32)m_dma_buffer_RX, SIZE_ARR*sizeof(unsigned char));

    Mat src; // Source image
    src = imread( "CirclePicMultiple2.png", IMREAD_GRAYSCALE);

    if(! src.data )
    {
        printf("Error imagen\n"); exit(1);
    }

    unsigned char *img_data = new unsigned char(src.rows * src.cols * src.channels()); // Dst
    unsigned char* img_Pointer = reinterpret_cast<unsigned char*>(src.data); // Src
	// pointer from, pointer two, size in bytes
	memcpy(img_data, img_Pointer, src.rows * src.cols * src.channels() * sizeof(unsigned char));

	XAxiDma_SimpleTransfer(&AxiDma, (u32)imgIn_HW, SIZE_ARR*sizeof(unsigned char), XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_SimpleTransfer(&AxiDma, (u32)m_dma_buffer_RX, SIZE_ARR*sizeof(unsigned char), XAXIDMA_DEVICE_TO_DMA);

	while(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE));
	while(XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA));

	Xil_DCacheInvalidateRange((u32)m_dma_buffer_RX, SIZE_ARR*sizeof(unsigned char));

	return XST_SUCCESS;

}
#endif

/*****************************************************************************/
/**
* This function performance a reset of the DMA device and checks the device is
* coming out of reset or not.
*
* @param	DeviceId is the DMA device id.
*
* @return
*		- XST_SUCCESS if channel reset is successful
*		- XST_FAILURE if channel reset fails.
*
* @note		None.
*
******************************************************************************/
int AxiDMASelfTestExample(u16 DeviceId)
{
	XAxiDma_Config *CfgPtr;
	int Status = XST_SUCCESS;

	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	Status = XAxiDma_Selftest(&AxiDma);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return Status;
}