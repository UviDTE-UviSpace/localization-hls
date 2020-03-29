#include <stdio.h>
#include <stdint.h>
#include <hls_opencv.h>
using namespace cv;

void variables(uint8_t * image_in, uint8_t * image_out);

int main()
{
    // Get starting timepoint
    Mat src; // Source image
    src = imread( "Docs/test.jpg");//, CV_LOAD_IMAGE_GRAYSCALE);

    uint8_t image_in[480*640];
    uint8_t image_out[480*640];

    memcpy(image_in,src.data,sizeof(uint8_t)*480*640);

    variables(image_in,image_out);

    Mat out = Mat(480,640,CV_8UC1,image_out);


   //namedWindow("test");
   imshow("outimage", src);
   waitKey(0);
  return 0;
}



