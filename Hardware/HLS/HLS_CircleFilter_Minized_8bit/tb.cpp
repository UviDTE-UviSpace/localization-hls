#include "core.hpp"
#include <iostream>
#include <hls_opencv.h>

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

    IplImage2AXIvideo(src, src_axi);
	filter(src_axi, dst_axi);//, src->width, src->height);//src->height,src->width);
	AXIvideo2IplImage(dst_axi, dst);

    cvSaveImage(OUTPUT_IMAGE_CORE2, dst);

	cvReleaseImage(&src);
}



