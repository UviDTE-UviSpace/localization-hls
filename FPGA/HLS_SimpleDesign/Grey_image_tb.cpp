#include "simple.hpp"
#include <iostream>
#include <hls_opencv.h>

using namespace std;
using namespace cv;

int main(){

	/*
	 * command line inpput image with argc&v
	if( argc != 2)
	{
	 cout <<" Usage: display_image ImageToLoadAndDisplay" << endl;
	 return -1;
	}
	Mat image;
	image = imread(argv[1], CV_LOAD_IMAGE_COLOR);   // Read the file
	*/

   /*
   IplImage* src;
   IplImage* dst;
   src = cvLoadImage("test.jpg");
   AXI_STREAM src_axi, dst_axi;
   IplImage2AXIvideo(*src, src_axi);
   //IplImage2AXIvideo(IplImage* img, hls::stream<ap_axiu<W,1,1,1> >& AXI_video_strm);
   Grey_image(src_axi, dst_axi);
   AXIvideo2IplImage(dst_axi, dst);
   */

   RGB_IMAGE INPUT_IMG;
   GRAY_IMAGE OUTPUT_IMG;
   Mat im, res;
   printf("")
   im = imread("test3.jpg");
   cvMat2hlsMat(im, INPUT_IMG);
   Grey_image(INPUT_IMG, OUTPUT_IMG);
   hlsMat2cvMat(OUTPUT_IMG, res);


   namedWindow( "Grayed", WINDOW_AUTOSIZE );// Create a window for display.
   imshow("Display window", res );
   waitKey (0);
 
 return 0;
}
