#include "conv.hpp"
#include <iostream>
#include <hls_opencv.h>

using namespace std;

int main(){

    IplImage* src;
    IplImage* dst;
    AXI_STREAM src_axi, dst_axi;

	src=cvLoadImage(INPUT_IMAGE_CORE);

    if(!src->imageData){
	   printf("Error could not load file.\n\r");
	   return -1;
    }

    printf("SRC CHANNELS %d\n\r", src->nChannels);
    dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
    IplImage2AXIvideo(src, src_axi);
    conv(src_axi, dst_axi);//, src->width, src->height);//src->height,src->width);
    AXIvideo2IplImage(dst_axi, dst);
    printf("DST CHANNELS %d\n\r", dst->nChannels);
    cvSaveImage(OUTPUT_IMAGE_CORE, dst);
    cvReleaseImage(&src);
    cvReleaseImage(&dst);

 printf("Image finished\n");
 return 0;
}




