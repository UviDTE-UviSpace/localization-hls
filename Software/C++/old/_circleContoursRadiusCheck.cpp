
#include <iostream>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <stdio.h>
#include <stdlib.h>

using namespace cv;
using namespace std;

void findCircleCenter(const Mat &Image, int (*Coordinates)[2]);

RNG rng(12345);

int main( int argc, char** argv )
{
    Mat src; // Source image
    int coordPoints [5][2];

    src = imread( "Docs/CirclePicBinary.png", IMREAD_GRAYSCALE);
    if(! src.data )
    { 
        printf("Error imagen\n"); exit(1); 
    }
    
    imshow( "Source image", src );
    findCircleCenter(src, coordPoints);
    waitKey(0);
  return(0);
}

void findCircleCenter(const Mat &Image, int (*Coordinates)[2])
{
    static int argMin, argMax, radius;
    Mat imgray, thresh;
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;
    //cvtColor(Image,imgray, COLOR_BGR2GRAY);
    bilateralFilter(Image, imgray, 9,75,75);
    GaussianBlur(imgray, imgray, Size(5,5),0);
    threshold(imgray, thresh, 127,255, 0);
    
    
    threshold(imgray, thresh, 0, 255, THRESH_BINARY | THRESH_OTSU); //THRESH_BINARY | THRESH_OTSU
    
    findContours(thresh, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );
    argMin, argMax, radius = 0;
    vector<Moments> mu(contours.size() );
    vector<Point2f> mc( contours.size() );
    
    for( int i = 0; i < contours.size(); i++ )
    {
        //argMin = std::distance(contours[i].begin(), std::min_element(contours[i].begin(), contours[i].end()));
        //argMax = std::distance(contours[i].begin(), std::max_element(contours[i].begin(), contours[i].end()));
        argMin = arcLength( contours[i], true );
        //radius = (argMax - argMin) / 2;
        printf("radius = %d", argMin);
        
        if (radius > 10)
        {
            mu[i] = moments( contours[i], false );
            mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 );
            printf("Radius check : %d, %d", mu[i], mc[i]);
        }
    }
    
    /// Draw contours
    Mat drawing = Mat::zeros( thresh.size(), CV_8UC3 );
    for( int i = 0; i < contours.size(); i++ )
     {
       Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
       drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
     }

    /// Show in a window
    namedWindow( "Contours", WINDOW_AUTOSIZE );
    imshow( "Contours", drawing );
}
