#include <hls_opencv.h>
#include <stdint.h>
#include <stdio.h>
using namespace cv;
void conv(uint8_t * image_in, uint8_t * image_out);
int main(){
   Mat im = imread("test.jpg",CV_LOAD_IMAGE_GRAYSCALE);
   uint8_t image_in[1080*1920];
   uint8_t image_out[1080*1920];
   memcpy(image_in,im.data,sizeof(uint8_t)*1080*1920);
   conv(image_in,image_out);
   Mat out = Mat(1080,1920,CV_8UC1,image_out);
   namedWindow("test");
   imshow("test",out);
   waitKey(0);
 
 return 0;
}