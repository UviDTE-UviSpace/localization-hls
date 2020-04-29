
// Basile Van Hoorick, April 2020

#include "hls_opencv.h"

// (NOTE: the defined constants and included imports in this gist might be incomplete, but shouldn't be too hard to infer)

int test_bf()
{
	cv::Mat src = cv::imread(INPUT_PATH, CV_LOAD_IMAGE_GRAYSCALE);
	cv::Mat dst = cv::Mat(DHEIGHT, DWIDTH, CV_8U);
	hls::stream<depth_t> stream_in("stream_in");
	hls::stream<depth_t> stream_out("stream_out");

	// Tested data values should be in a range of 0.0 to 1.0
	// Input image pixels are in a range of 0 to 255
	// Read & convert image
	for (int y = 0; y < DHEIGHT; y++)
	{
		for (int x = 0; x < DWIDTH; x++)
		{
			depth_t value = depth_t(double(src.at<uchar>(y, x) + 0.5) / double(255.0));
			stream_in.write(value);
		}
	}

	// Apply bilateral filter
	cout << "Starting bilateral_filter..."  << endl;
	bilateral_filter_3x3(stream_out, stream_in);
	cout << "bilateral_filter finished!"  << endl;

	// Convert & write image
	for (int y = 0; y < DHEIGHT; y++)
	{
		for (int x = 0; x < DWIDTH; x++)
		{
			depth_t value = stream_out.read();
			dst.at<uchar>(y, x) = uchar(double(value) * double(255.0) + 0.5);
		}
	}
	cv::imwrite(OUTPUT_PATH, dst);

	return 0;
}