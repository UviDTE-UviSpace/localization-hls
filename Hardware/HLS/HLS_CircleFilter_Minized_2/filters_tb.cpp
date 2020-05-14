#include "filters.hpp"
#include <iostream>
#include <hls_opencv.h>
#include "IplImage2AXIvideo_DMA.h"

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define radius_size 12

using namespace std;

struct Circle_data
{
    float centerX;
    float centerY;
    float radius;
};

void findCircle(const cv::Mat &Image, vector<Circle_data>& circles);

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
	filter(src_axi, dst_axi);//, src->width, src->height);//src->height,src->width);
	AXIvideo2IplImage_DMA(dst_axi, dst);

    cvSaveImage(OUTPUT_IMAGE_CORE2, dst);

    using namespace cv;
    Mat greyim = imread(OUTPUT_IMAGE_CORE2, IMREAD_GRAYSCALE );
    vector<Circle_data> circle_List;
    findCircle(greyim, circle_List);

	cvReleaseImage(&src);
	cvReleaseImage(&dst);

	printf("Image finished\n");
	return 0;
}


void findCircle(const cv::Mat &Image, vector<Circle_data>& circles)
{

	using namespace cv;

	vector<vector<cv::Point> > contours;
    static double Xpt, Ypt;
    static float area, radius;

    findContours(Image, contours, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );

    static Moments mu;
    static Point2f pt;
    static Circle_data circleinfo;

    for( size_t i = 0; i < contours.size(); i++ )
    {
        radius = 0;
        mu = moments( contours[i] );
        area = static_cast<float>(mu.m00);
        radius = sqrt(area/(atan(1)*4));  //pi = atan(1)*4 // r= sqrt(area/pi)

        if ( (radius > (radius_size - 3)) && (radius < (radius_size + 3)) )
        {
        	printf("radius: %.2f\n\r",radius);
            //add 1e-5 to avoid division by zero
            pt = Point2f( static_cast<float>(mu.m10 / (mu.m00 + 1e-5)),
                 static_cast<float>(mu.m01 / (mu.m00 + 1e-5)) );
            Xpt = static_cast<double>(mu.m10 / (mu.m00 + 1e-5));
            Ypt = static_cast<double>(mu.m01 / (mu.m00 + 1e-5));
            circleinfo.centerX = pt.x;
            circleinfo.centerY = pt.y;
            circleinfo.radius = radius;
            circles.push_back(circleinfo);

            /*
            //Draw circles
            drawing = Mat::zeros( Image.size(), CV_8UC3 );
            Scalar color = Scalar( rng.uniform(i*10, 255), rng.uniform(0,255), rng.uniform(0,255) );
            drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
            namedWindow( "Contours", WINDOW_AUTOSIZE );
            imshow( "Contours", drawing);
            */

        }

    }

    printf("\n\r-------------------------\n\rcircles = %d \r-------------------------\n\r", circles.size());
}



