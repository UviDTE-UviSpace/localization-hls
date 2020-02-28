
#include <iostream>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace cv;
using namespace std;

void findCircleCenter(const Mat &Image, int &Coordinates);

int main( int argc, char** argv )
{
    Mat src; // Source image
    int coordPoints [2][2];

    src = imread( "CirclePicFinal.png");
    if(! src.data )
    { 
        printf("Error imagen\n"); exit(1); 
    }
    
    imshow( "Source image", src );
    findCircleCenter(*src, *coordPoints);
    waitKey(0);
  return(0);
}

void findCircleCenter(const Mat &Image, int &Coordinates)
{
    mat imgray, thresh;
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;
    //imgray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
    bilateralFilter(&Image, imgray, 9,75,75);
    GaussianBlur(imgray,, imgray, Size(5,5),0);
    threshold(imgray, thresh, 127,255,0);
    
    threshold(imgray, thresh,0,255,cv.THRESH_BINARY+cv.THRESH_OTSU);
    findContours(thresh, contours, hierarchy, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE, Point(0,0);
    
      /// Draw contours
    Mat drawing = Mat::zeros( thresh.size(), CV_8UC3 );
    for( int i = 0; i< contours.size(); i++ )
     {
       Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
       drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
     }

    /// Show in a window
    namedWindow( "Contours", CV_WINDOW_AUTOSIZE );
    imshow( "Contours", drawing );

}

/*
def _findCircleMass(imgFind):

    
    for c in contours:
        extLeft = tuple(c[c[:, :, 0].argmin()][0])
        extRight = tuple(c[c[:, :, 0].argmax()][0])
        radius = (extRight[0] - extLeft[0])/2
        #Check if radius is correct to the one drawn if yes save. This is to avoid collision over each other.
        if radius > 130 and radius < 180:       
            M = cv.moments(c)
            cx = int(M['m10']/M['m00'])
            cy = int(M['m01']/M['m00'])
            coordinates.append((cx, cy))                       
            radiusList.append(radius)
            '''
            cv.drawContours(img, [c], 0, (0,255,0), 3)
            plt.imshow(img)
            '''
   # print("Radius:",radius)
   # print("X Centerlocation:",cx," & Y Centerlocation:",cy)
    return coordinates, radiusList

if __name__ == '__main__':

    start = time.time()
    #Read binary image
    img = cv.imread('CirclePicMultiple.png',0)
    #Get dimensions
    h, w = img.shape[:2]
    #Find center locations
    points, circleSize = _findCircleMass(img)
    #if We want to flip the array
    #points.reverse()
    #circleSize.reverse()
    print("[(xP1, yP1), :", points)
    print("r1,r2:", circleSize)
    
    #To unpack your data from pairs into lists use zip:
    #plotting takes round +100ms
    
    '''
    x, y = zip(*points)
    #Plot centers
    plt.scatter(*zip(*points))
    plt.axis([0, w, 0, h])              # Modified axis
    
    #Reverse Y axis , like mirroring
    ax = plt.gca()
    ax.set_ylim(ax.get_ylim()[::-1])
    
    plt.show()
    '''
    
    end = time.time()
    print("Execution speed is :",(end - start)*1000, "ms")
    */