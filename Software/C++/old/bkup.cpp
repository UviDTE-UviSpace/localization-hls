

#include <iostream>

#include "opencv2/highgui/highgui.hpp"

#include "opencv2/imgproc/imgproc.hpp"

#include "opencv2/imgcodecs/imgcodecs.hpp"

#include <stdio.h>

#include <stdlib.h>

#include <math.h>



#define radius_size 46



using namespace cv;

using namespace std;



struct UGV_data

{

    Point2f coordsBig;

    Point2f coordsSmall;

};



struct Circle_data

{

    float centerX;

    float centerY;

    float radius;

};



void findCircleCenter(const Mat &Image, vector<Circle_data>& circles);

void grpUGV(vector<UGV_data>& UGVS, vector<Circle_data>& circles);

void drawCircleCenter(const Mat &Image, vector<UGV_data>& UGVS);



RNG rng(12345);



int main( int argc, char** argv )

{

    Mat src; // Source image



    src = imread( "Docs/CirclePicMultiple2.png", IMREAD_GRAYSCALE);

    if(! src.data )

    { 

        printf("Error imagen\n"); exit(1); 

    }

    vector<UGV_data> UGV_List;

    vector<Circle_data> circle_List;

    

    //imshow( "Source image", src );

    findCircleCenter(src, circle_List);

    grpUGV(UGV_List, circle_List);

    drawCircleCenter(src, UGV_List);

    waitKey(0);

  return(0);

}



void findCircleCenter(const Mat &Image, vector<Circle_data>& circles)

{

    static int teller = 0;

    static double Xpt, Ypt;

    static float area, radius;

    static Mat imgray, thresh, drawing;

    vector<vector<Point> > contours;

    vector<Vec4i> hierarchy;

    //cvtColor(Image,imgray, COLOR_BGR2GRAY);

    bilateralFilter(Image, imgray, 9,75,75);

    GaussianBlur(imgray, imgray, Size(5,5),0);

    threshold(imgray, thresh, 127,255, 0);

    

    

    threshold(imgray, thresh, 0, 255, THRESH_BINARY | THRESH_OTSU); //THRESH_BINARY | THRESH_OTSU

    

    findContours(thresh, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );

    printf("-------------------------\n\rContours found = %d", contours.size());

    

    static Moments mu;

    static Point2f pt;

     

    for( size_t i = 0; i < contours.size(); i++ )

    {

        radius = 0;

        mu = moments( contours[i] );

        area = static_cast<float>(mu.m00);

        radius = sqrt(area/(atan(1)*4));  //pi = atan(1)*4 // r= sqrt(area/pi)

        

        if ( (radius > (radius_size - 6)) && (radius < (radius_size + 19)) )

        {

            

            static Circle_data circleinfo;

            //printf("radius = %f\n\r", radius);

            //add 1e-5 to avoid division by zero

            pt = Point2f( static_cast<float>(mu.m10 / (mu.m00 + 1e-5)),

                 static_cast<float>(mu.m01 / (mu.m00 + 1e-5)) );

            Xpt = static_cast<double>(mu.m10 / (mu.m00 + 1e-5));

            Ypt = static_cast<double>(mu.m01 / (mu.m00 + 1e-5));

            circleinfo.centerX = pt.x;

            circleinfo.centerY = pt.y;

            circleinfo.radius = radius;

            circles.push_back(circleinfo);

            //printf("\n\rcoord = %f, %f", pt.x, pt.y);

            //printf("coord = %d, %d\n\r", Xpt, Ypt);

            

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

    

    printf("\n\r ------------------------------\n\rcircles = %d \n\r-------------------------\n\r", circles.size());

    

}



void grpUGV(vector<UGV_data>& UGVS, vector<Circle_data>& circles)

{

    

    static UGV_data UGV;

    static int teller, bigloop,smalloop;
    static vector<float> smallcircles;
    static vector<float> bigcircles;

    teller = 0;

    for( int i = 0; i < circles.size(); i++)

    {

        if ( (circles[i].radius > radius_size) && ( circles[i].radius < radius_size + 15) )

        {

            bigloop++;

            UGV.coordsBig = Point(circles[i].centerX, circles[i].centerY) ;

            printf("Big coord = %f,%f \n\rRadius = %f \n\r", circles[i].centerX, circles[i].centerY, circles[i].radius);

        }

        else if ( (circles[i].radius < radius_size) && (circles[i].radius > radius_size - 2) )

        {

            smalloop++;

            UGV.coordsSmall = Point(circles[i].centerX, circles[i].centerY) ;

            printf("Small coord = %f,%f \n\rRadius = %f \n\r", circles[i].centerX, circles[i].centerY, circles[i].radius);

        }

       

        teller++;

        if (teller == 2)

        {

            UGVS.push_back(UGV);

            teller = 0;

            printf("teller reset\n\r");

        }

    }

    printf("total UGVS : %d , big = %d, small = %d\n\r-------------------------\n\r", UGVS.size(), bigloop, smalloop);

    

}



void drawCircleCenter(const Mat &Image,vector<UGV_data>& UGVS)

{

    Mat drawing = Mat::zeros( Image.size(), CV_8UC3 );

        

    for( int i = 0; i < UGVS.size(); i++) 

    {

        //Draw dots

        circle( drawing, (UGVS)[i].coordsBig, 5, (255,255,255), -1 );

        circle( drawing, (UGVS)[i].coordsSmall, 2, (255,255,255), -1 );

        //while (getchar() == 0);

        //printf("Big coord = %f \n\r Smal coord = %f\n\r", (UGVS)[i].coordsBig, (UGVS)[i].coordsSmall); 

    }

    

    /// Show in a window

    imshow( "Center Dots", drawing );

}

