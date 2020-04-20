# Positioning the center of a circle with OpenCV.
___
## _circleContours.cpp


This C++ code reads an (binary) image blurs, processes, detects the contours and returns the X,Y coordinates of the center of the circles found. The code is based on detecting two circles (1=R, 1=R/2) and so a predefined 'radiusSize' is necessary to correctly locate the circles used on the Unmanned Ground Vehicles (UGV's). The OpenCV library functions are used to capture the image contours and moments to calculate the area and radius.
Structs 'UGV_data' and 'Circle_data' are used to store the localization of the circle & UGV found.

```cpp
#include <iostream>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/imgcodecs/imgcodecs.hpp"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define radius_size 46

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

    findCircleCenter(src, circle_List);
    grpUGV(UGV_List, circle_List);
    drawCircleCenter(src, UGV_List);

    imshow( "Source image", src );
    waitKey(0);
  return(0);
}
```

The first function 'findCircleCenter' takes a mat object (the image) & a vector of circle_data where it blurs and thresholds the channels of the image. By using the thresholding and blur functions, the image gets filtered binary which eases the processing of finding the circles. This might be unnecessary with a binary image input as it is already filtered.

```cpp
void findCircleCenter(const Mat &Image, vector<Circle_data>& circles)
{
  static double Xpt, Ypt;
  static float area, radius;
  static Mat imgray, thresh, drawing;
  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;

  bilateralFilter(Image, imgray, 9,75,75);
  GaussianBlur(imgray, imgray, Size(5,5),0);
  threshold(imgray, thresh, 127,255, 0);
  threshold(imgray, thresh, 0, 255, THRESH_BINARY | THRESH_OTSU); //THRESH_BINARY | THRESH_OTSU
  findContours(thresh, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );
  printf("-------------------------\n\rContours found = %d", contours.size());
```
The contours found are filtered out by the big circle's radius and the small ones (big radius / 2) in a loop by checking its area and calculated radius. The radius limit is predefined by the known symbol patterns created & printed on top of the UGV.

 If the radius is the one we are looking for, the calculation off the mass center is done by the captured image moment of the contour. "Image Moments are a particular weighted average of image pixel intensities, with the help of which we can find some specific properties of an image, like radius, area, centroid etc."

Using the following formula for getting the moment center pixel location :

![Formula](https://wikimedia.org/api/rest_v1/media/math/render/svg/900cb0605c954a17961360525a87fa6e38569c8b)

```cpp
  static Moments mu;
  static Point2f pt;
  static Circle_data circleinfo;

  for( size_t i = 0; i < contours.size(); i++ )
  {
      radius = 0;
      mu = moments( contours[i] );
      area = static_cast<float>(mu.m00);
      radius = sqrt(area/(atan(1)*4));  //pi = atan(1)*4 // r= sqrt(area/pi)

      if ( (radius > (radius_size - 6)) && (radius < (radius_size + 19)) )
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
      }
  }
printf("\n\r-------------------------\n\rcircles = %d n\r-------------------------\n\r", circles.size());
}
```
The center coordinates X, Y and radius found are appended to the vector 'circles' and is further used as 'circle_List'. This 'circles_List' vector is used in the next function 'grpUGV' which sorts the final vector, 'UGV_List', for localizing the cars. This orders the list in the correct format before sending it to the main controller.

The UGV list format is :
* [ [UVG1], [UVG2], [UVG3],..]
  *  [ [ (447, 392), (548, 341) ], [ (156, 221), (158, 108) ], [ (465, 155), (378, 83) ], ... ]
* where UVG1 = [xPBig, yPBig, xPSmall, yPSmall]
  * [ (447, 392), (548, 341) ]

```python
void grpUGV(vector<UGV_data>& UGVS, vector<Circle_data>& circles)
{
    static UGV_data UGV;
    static vector<Point2f> smallcircles;
    static vector<Point2f> bigcircles;

    for( int i = 0; i < circles.size(); i++)
    {
        //Check for big circle
        if ( (circles[i].radius > radius_size) && ( circles[i].radius < radius_size + 15) )
        {
            bigcircles.push_back( Point(circles[i].centerX, circles[i].centerY) );
            //printf("Big coord = %f,%f \n\rRadius = %f \n\r", circles[i].centerX, circles[i].centerY, circles[i].radius);
        }

        //else for the small circle
        else if ( (circles[i].radius < radius_size) && (circles[i].radius > radius_size - 2) )
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

    printf("total UGVS : %dn\r-------------------------\n\r", UGVS.size() );

}
```
---
# EXAMPLE
To display the center points on an image from '/Docs' make sure:
* the defined radiusSize = 46, for new images change this.
* line 46 = img path is correct
* drawCircleCenter() uncommented

![Circle image](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/C%2B%2B/Docs/CirclePicMultiple2.png)
![ZedBoard log](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/Docs/CirclePicMultiple_contours.png)
![Vitis TCF-Agent log](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/Docs/CirclePicMultiple_contours.png)
![Center points](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/Docs/CirclePicMultiple_plot.png)

### Execution speed = ~9ms.
### Time = 9/1000 = 0.009s.
### FPS = 1/Time =  111 fps.
---
## Documentation
* [Image moments](https://www.learnopencv.com/find-center-of-blob-centroid-using-opencv-cpp-python/)
* [Thresholding](https://www.learnopencv.com/opencv-threshold-python-cpp/)
* [OpenCV](https://opencv.org/)
