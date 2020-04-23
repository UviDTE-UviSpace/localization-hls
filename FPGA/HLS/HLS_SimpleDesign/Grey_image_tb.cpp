#include "simple.hpp"
#include <iostream>
#include <hls_opencv.h>

using namespace std;

//void hls_image_filter(IplImage *src, IplImage *dst);

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

	/*
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
   */

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
    blur_image(src_axi, dst_axi);//, src->width, src->height);//src->height,src->width);
    AXIvideo2IplImage(dst_axi, dst);
    printf("DST CHANNELS %d\n\r", dst->nChannels);
    cvSaveImage(OUTPUT_IMAGE_CORE, dst);
    cvReleaseImage(&src);
    cvReleaseImage(&dst);

    /*
	// Convert to grayscale
	cv::cvtColor(imageSrc, imageSrc, CV_BGR2GRAY);
	printf("Image Rows:%d Cols:%d\n",imageSrc.rows, imageSrc.cols);
	findContours(thresh, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );

	// Define streams for input and output
	AXI_STREAM inputStream;
	AXI_STREAM outputStream;

	// OpenCV mat that point to a array (cv::Size(Width, Height))
	cv::Mat imgCvOut(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImage, cv::Mat::AUTO_STEP);

	// Populate the input stream with the image bytes
	for (int idxRows=0; idxRows < imageSrc.rows; idxRows++)
	{
		for (int idxCols=0; idxCols < imageSrc.cols; idxCols++)
		{
			uint_8_side_channel valIn;
			valIn.last = 0;
			for (int idxRows=0; idxRows < imageSrc.rows; idxRows++)
			{
				for (int idxCols=0; idxCols < imageSrc.cols; idxCols++)
				{

					valIn.data = imageSrc.at<unsigned char>(idxRows,idxCols);
					valIn.keep = 1; valIn.strb = 1; valIn.id = 0; valIn.dest = 0; // valIn.user = 1;
					if ((idxCols == 0) && (idxRows == 0))
					{

					valIn.user = 1;
					}
					else if (idxCols == 255)
					{
					valIn.last = 1;
					}
					else
					{
					valIn.last = 0; //valIn.user = 0;
					}

					inputStream.write(alIn);
				}
			}
		}
	}
	*/
 printf("Image finished\n");
 return 0;
}

/*
void hls_image_filter(IplImage *src, IplImage *dst)
{
	   printf("inside image filter func.\n\r");
	   AXI_STREAM src_axi, dst_axi;
	   IplImage2AXIvideo(src, src_axi);
	   blur_image(src_axi, dst_axi, src->height, src->width);
	   AXIvideo2IplImage(dst_axi, dst);
}
*/



