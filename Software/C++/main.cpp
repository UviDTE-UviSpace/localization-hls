#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/videoio/videoio.hpp>

#include <iostream>
#include <stdio.h>
#include <ctime>
#include <chrono>

using namespace std;
using namespace cv;

#define radius_size 12

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
	printf("\n\r-------------------------\n\rCircle detection algorithm for UviSpace by Gilles Lenaerts.\n\r");

	if (argc != 2)
	{
		cout << "usage: ./program imagetohandle" << endl;
		return -1;
	}

	using namespace std::chrono;
	clock_t start;
	double durations;
	start = clock();
	high_resolution_clock::time_point startf, endf;
    startf = high_resolution_clock::now();

    Mat src; // Source image
    src = imread(argv[1], IMREAD_GRAYSCALE);

    if(! src.data )
    {
        printf("Error loading image\n\r"); exit(1);
    }

    vector<UGV_data> UGV_List;
    vector<Circle_data> circle_List;

    findCircleCenter(src, circle_List);
    grpUGV(UGV_List, circle_List);

    // Get ending timepoint
    durations = (float)start / CLOCKS_PER_SEC;
    printf("Circle algorithm done in %f sec.	%0.2f ms.	%0.2f FPS\n\r", durations, durations*100, 1/durations);

    endf = high_resolution_clock::now();
    duration<double> elapsed_seconds = duration_cast<duration<double>>(endf-startf);
    cout << "finished in : " << elapsed_seconds.count() << endl;

    cout << "\n\rCars found: "<< (UGV_List).size() << endl; //n\r-------------------------\n\r", );
    printf("drawing center points. \n\r");
    drawCircleCenter(src, UGV_List);
    printf("program completed.\n\r-------------------------\n\r");
  return(0);
}

void findCircleCenter(const Mat &Image, vector<Circle_data>& circles)
{
    static double Xpt, Ypt;
    static float area, radius;
    static Mat imgray, thresh, drawing;
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;

    using namespace std::chrono;
    high_resolution_clock::time_point startfind, endfind, startfilter, endfilter, startmoments, endmoments;

    startfilter = high_resolution_clock::now();
    bilateralFilter(Image, imgray, 9,75,75);
    GaussianBlur(imgray, imgray, Size(5,5),0);
    threshold(imgray, thresh, 127,255, 0);
    threshold(imgray, thresh, 0, 255, THRESH_BINARY | THRESH_OTSU); //THRESH_BINARY | THRESH_OTSU
    endfilter = high_resolution_clock::now();
    duration<double> elapsed_seconds1 = duration_cast<duration<double>>(endfilter-startfilter);

    startfind = high_resolution_clock::now();
    findContours(thresh, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );
    endfind = high_resolution_clock::now();
    duration<double> elapsed_seconds2 = duration_cast<duration<double>>(endfind-startfind);

    //cout << "finished findContours in : " << elapsed_seconds.count() << endl;  //"at: " << std::ctime(&endtime) << endl;

    //printf("-------------------------\n\rContours found = %d", contours.size());

    static Moments mu;
    static Point2f pt;
    static Circle_data circleinfo;

    startmoments = high_resolution_clock::now();
    for( size_t i = 0; i < contours.size(); i++ )
    {
        radius = 0;
        mu = moments( contours[i] );
        area = static_cast<float>(mu.m00);
        radius = sqrt(area/(atan(1)*4));  //pi = atan(1)*4 // r= sqrt(area/pi)

        if ( (radius >= (radius_size - 3)) && (radius <= (radius_size + 3)) )
        {
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

    endmoments = high_resolution_clock::now();
    duration<double> elapsed_seconds3 = duration_cast<duration<double>>(endmoments-startmoments);

    cout << "finished findContours in : " << elapsed_seconds2.count() << "	filters in: "<< elapsed_seconds1.count() << "	moments in: "<< elapsed_seconds3.count() << endl;  //"at: " << std::ctime(&endtime) << endl;

    //printf("\n\r-------------------------\n\rcircles = %d n\r-------------------------\n\r", circles.size());

}

void grpUGV(vector<UGV_data>& UGVS, vector<Circle_data>& circles)
{
    static UGV_data UGV;
    static vector<Point2f> smallcircles;
    static vector<Point2f> bigcircles;

    for( int i = 0; i < circles.size(); i++)
    {
        //Check for big circle
        if ( (circles[i].radius >= radius_size) && ( circles[i].radius <= radius_size + 3) )
        {
            bigcircles.push_back( Point(circles[i].centerX, circles[i].centerY) );
            //printf("Big coord = %f,%f \n\rRadius = %f \n\r", circles[i].centerX, circles[i].centerY, circles[i].radius);
        }

        //else for the small circle
        else if ( (circles[i].radius <= radius_size) && (circles[i].radius >= radius_size - 3) )
        {
            smallcircles.push_back( Point(circles[i].centerX, circles[i].centerY) );
            //printf("Small coord = %f,%f \n\rRadius = %f \n\r", circles[i].centerX, circles[i].centerY, circles[i].radius);
        }
    }



    for (int i =0; i < bigcircles.size(); i++)

    {
        UGV.coordsBig = bigcircles[i] ;
        UGV.coordsSmall = smallcircles[i] ;
        UGVS.push_back(UGV);
    }

    //printf("total UGVS : %dn\r-------------------------\n\r", UGVS.size() );

}

void drawCircleCenter(const Mat &Image,vector<UGV_data>& UGVS)
{
    Mat drawing = Mat::zeros( Image.size(), CV_8UC3 );

    for( int i = 0; i < UGVS.size(); i++)
    {
        //Draw dots
        circle( drawing, (UGVS)[i].coordsBig, 5, (255,255,255), -1 );
        circle( drawing, (UGVS)[i].coordsSmall, 2, (255,255,255), -1 );
        printf("\n\rUGV%d\n\r-------------------------\n\rBig coords = [%f, %f] \n\rSml coords = [%f, %f]\n\r", i, (UGVS)[i].coordsBig.x, (UGVS)[i].coordsBig.y, (UGVS)[i].coordsSmall.x, (UGVS)[i].coordsSmall.y);
    }

    // Show in a window
    //imshow( "Center Dots", drawing );
    imwrite( "Plots/CentersPlot.jpg", drawing );
    printf("\n\rDrawing done and saved in dir /Plots.\n\r");
}


