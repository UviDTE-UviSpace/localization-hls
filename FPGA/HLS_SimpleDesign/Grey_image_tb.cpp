#include "simple.hpp"
#include <iostream>

using namespace std;
//using namespace cv;

void conv(uint8_t * image_in, uint8_t * image_out);
int main(){

   IplImage* src;
   IplImage* dst;
   src = cvLoadImage("test.jpg");
   Grey_image(src,dst);

   //Mat im = imread("test.jpg",CV_LOAD_IMAGE_GRAYSCALE);
   /*
   uint8_t image_in[MAX_HEIGHT*MAX_WIDTH];
   uint8_t image_out[MAX_HEIGHT*MAX_WIDTH];
   memcpy(image_in,src->imageData,sizeof(uint8_t)*src->height*src->width);
   conv(image_in,image_out);
   Mat out = Mat(MAX_HEIGHT,MAX_WIDTH,CV_8UC1,image_out);
   */

   cvSaveImage("testout.jpg", dst);
   cvReleaseImage(&src);
   cvReleaseImage(&dst);
 
 return 0;
}
