#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/videoio/videoio.hpp>

#include <iostream>
#include <stdio.h>
using namespace std;
using namespace cv;

int main()
{
	Mat src_image;
	Mat grey_image;

	src_image=imread("Docs/test_image.jpg");

	if (!src_image.data)
	{
		cout << "Could not open image" << endl;
		return 0;
	};

	cvtColor(src_image, grey_image, CV_BGR2GRAY);

	imwrite("grey.jpg", grey_image);

	cout << "Created grey image" << endl;

    return 0;
}
