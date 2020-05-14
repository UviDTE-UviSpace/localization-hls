#include "core.hpp"
#include <iostream>
#include <hls_opencv.h>
#include "IplImage2AXIvideo_DMA.h"

using namespace std;

int main(){

	    IplImage* src;
	    IplImage* dst;
	    AXI_STREAM src_axi, dst_axi;

		src=cvLoadImage(INPUT_IMAGE_CORE, cv::IMREAD_GRAYSCALE);

	    if(!src->imageData){
		   printf("Error could not load file.\n\r");
		   return -1;
	    }

	    printf("SRC WIDTH & HEIGTH: %d x  %d \n\r", src->width, src->height);
	    dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
	    cvSaveImage(OUTPUT_IMAGE_CORE, src);

	    IplImage2AXIvideo_DMA(src, src_axi);
	    passthrough(src_axi, dst_axi);
		AXIvideo2IplImage_DMA(dst_axi, dst);

	    cvSaveImage(OUTPUT_IMAGE_CORE2, dst);

		cvReleaseImage(&src);
		cvReleaseImage(&dst);

		printf("Image finished\n");
		return 0;
}



