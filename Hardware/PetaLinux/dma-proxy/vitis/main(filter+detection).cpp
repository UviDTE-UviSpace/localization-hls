/* DMA Proxy Test Application
 *
 * This application is intended to be used with the DMA Proxy device driver. It provides
 * an example application showing how to use the device driver to do user space DMA
 * operations.
 *
 * It has been tested with an AXI DMA system with transmit looped back to receive.
 * The device driver implements a blocking ioctl() function such that a thread is
 * needed for the 2nd channel. Since the AXI DMA transmit is a stream without any
 * buffering it is throttled until the receive channel is running.
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <chrono>
#include "dma-proxy.h"

#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/videoio/videoio.hpp>
#include <iostream>
using namespace std;
using namespace cv;
using namespace std::chrono;

static struct dma_proxy_channel_interface *tx_proxy_interface_p;
static struct dma_proxy_channel_interface *rx_proxy_interface_p;
static int tx_proxy_fd, rx_proxy_fd;

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
void *tx_thread(void *);
void *rx_thread(void *);

/* The following function is the transmit thread to allow the transmit and the
 * receive channels to be operating simultaneously. The ioctl calls are blocking
 * such that a thread is needed.
 */
void *rx_thread(void *)
{
	//pthread_t tid2;
	//pthread_create(&tid2, NULL, &tx_thread, NULL);
	int dummy;
	rx_proxy_interface_p->length = TEST_SIZE;
	/* Perform the DMA transfer and the check the status after it completes
 	 * as the call blocks til the transfer is done.
 	 */
    //printf("tx status before %d\n", tx_proxy_interface_p->status);
	ioctl(rx_proxy_fd, 0, &dummy);
	//printf("tx status after %d\n", tx_proxy_interface_p->status);
	//if (tx_proxy_interface_p->status != PROXY_NO_ERROR)
	//printf("Proxy tx transfer error\n");
}
void *tx_thread(void *)
{
	int dummy;
	/* Perform the DMA transfer and the check the status after it completes
 	 * as the call blocks til the transfer is done.
 	 */
    //printf("tx status before %d\n", tx_proxy_interface_p->status);
	ioctl(tx_proxy_fd, 0, &dummy);
	//printf("tx status after %d\n", tx_proxy_interface_p->status);
	//if (tx_proxy_interface_p->status != PROXY_NO_ERROR)
	//printf("Proxy tx transfer error\n");
}

/* The following function uses the dma proxy device driver to perform DMA transfers
 * from user space. This app and the driver are tested with a system containing an
 * AXI DMA without scatter gather and with transmit looped back to receive.
 */
int main(int argc, char *argv[])
{
	int j;
	int dummy;
	pthread_t tid;
	uchar* pixel;

	high_resolution_clock::time_point startf, endf, startloop1, startloop2, endloop1, endloop2;
	high_resolution_clock::time_point imginS, imginST, imgoutS, imgoutST;
	high_resolution_clock::time_point transferTXS, transferTXST, transferRXS, transferRXST;
	high_resolution_clock::time_point detectionS, detectionST;

	startf = high_resolution_clock::now();

	startloop1 = high_resolution_clock::now();
	Mat src, dst;
    src = imread(argv[1], cv::IMREAD_GRAYSCALE);
    dst.create(480,640, CV_8UC(1));

    if(! src.data )
    {
        printf("Error loading image\n\r"); exit(1);
    }
    endloop1 = high_resolution_clock::now();

	printf("UGV detection with circle method & DMA-proxy by Gilles Lenaerts.\n");

	tx_proxy_fd = open("/dev/axidma0", O_RDWR);

	if (tx_proxy_fd < 1) {
		printf("Unable to open TX device file");
		return -1;
	}

	rx_proxy_fd = open("/dev/axidma1", O_RDWR);
	if (tx_proxy_fd < 1) {
		printf("Unable to open RX device file");
		return -1;
	}

	/* Step 2, map the transmit and receive channels memory into user space so it's accessible
 	 */
	tx_proxy_interface_p = (struct dma_proxy_channel_interface *)mmap(NULL, sizeof(struct dma_proxy_channel_interface),
									PROT_READ | PROT_WRITE, MAP_SHARED, tx_proxy_fd, 0);

	rx_proxy_interface_p = (struct dma_proxy_channel_interface *)mmap(NULL, sizeof(struct dma_proxy_channel_interface),
									PROT_READ | PROT_WRITE, MAP_SHARED, rx_proxy_fd, 0);

	if ((rx_proxy_interface_p == MAP_FAILED) || (tx_proxy_interface_p == MAP_FAILED))
	{
		printf("Failed to mmap\n");
		return -1;
	}
    pthread_create(&tid, NULL, &rx_thread, NULL);
	//rx_proxy_interface_p->length = TEST_SIZE;
	tx_proxy_interface_p->length = TEST_SIZE;

	/* Initialize the receive buffer*/
	imginS = high_resolution_clock::now();
        for (int i = 0; i < src.rows; ++i)
        {
            pixel = src.ptr<uchar>(i);  // point to first color in row
            for (int j = 0; j < src.cols; ++j)
            {
            	tx_proxy_interface_p->buffer[(i*640)+j] = *pixel++;
        		rx_proxy_interface_p->buffer[(i*640)+j] = 0x00;
            }
        }
    imginST = high_resolution_clock::now();

	transferTXS = high_resolution_clock::now();
	ioctl(tx_proxy_fd, 0, &dummy);				// send tx buffer
	transferTXST = high_resolution_clock::now();
	transferRXS = high_resolution_clock::now();
	transferRXST = high_resolution_clock::now();

	imgoutS = high_resolution_clock::now();
	for(int i = 0; i < dst.rows; i++)
	{
		pixel = dst.ptr<uchar>(i-2); //point to first color in row		//weird shift when running on Vitis. Running app on board is OK without offset.
	    for(int j = 0; j < dst.cols; j++)
	    {
	    	*pixel++ = rx_proxy_interface_p->buffer[(i*640)+j+16];		//weird shift when running on Vitis( +16 cols offset). Running app on board is OK. Probably the line buffer issue in driver. 
	    }
	}
	imgoutST = high_resolution_clock::now();

	startloop2 = high_resolution_clock::now();
    int result = imwrite("images/output.png", dst);

    if (result)
        printf("Saved PNG file with alpha data.\n");
    else
        printf("ERROR: Can't save PNG file.\n");
    endloop2 = high_resolution_clock::now();

    detectionS = high_resolution_clock::now();
    vector<UGV_data> UGV_List;
    vector<Circle_data> circle_List;
    findCircleCenter(dst, circle_List);
    grpUGV(UGV_List, circle_List);
    detectionST = high_resolution_clock::now();

	/* Unmap the proxy channel interface memory and close the device files before leaving
	 */
	printf("closing mmaps..\n");
	munmap(tx_proxy_interface_p, sizeof(struct dma_proxy_channel_interface));
	munmap(rx_proxy_interface_p, sizeof(struct dma_proxy_channel_interface));

	close(tx_proxy_fd);
	close(rx_proxy_fd);
	printf("completed detection program... Timings are :\n\n");
    endf = high_resolution_clock::now();
    duration<double> elapsed_seconds = duration_cast<duration<double>>(endf-startf);
    cout << "finished program in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(endloop1-startloop1);
    cout << "Readin image in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(transferTXST-transferTXS);
    cout << "transfer TX  in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(transferRXST-transferRXS);
    cout << "transfer RX  in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(detectionST-detectionS);
    cout << "Detect&sort  in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(endloop2-startloop2);
    cout << "Saving image in : " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(imginST-imginS);
    cout << "Data from src in: " << elapsed_seconds.count() << endl;
    elapsed_seconds = duration_cast<duration<double>>(imgoutST-imgoutS);
    cout << "Data into dst in : " << elapsed_seconds.count() << endl;

    cout << "\n\rUGV Cars found: "<< (UGV_List).size() << endl; //n\r-------------------------\n\r", );
	return 0;
}

void findCircleCenter(const Mat &Image, vector<Circle_data>& circles)
{
    static double Xpt, Ypt;
    static float area, radius;
    //static Mat imgray, thresh, drawing;
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;
    high_resolution_clock::time_point startfind, endfind, startfilter, endfilter, startmoments, endmoments;

    startfind = high_resolution_clock::now();
    findContours(Image, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );
    endfind = high_resolution_clock::now();
    duration<double> elapsed_seconds2 = duration_cast<duration<double>>(endfind-startfind);

    static Moments mu;
    static Point2f pt;
    static Circle_data circleinfo;

    startmoments = high_resolution_clock::now();
    for( size_t i = 0; i < contours.size(); ++i )
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

   // cout << "findContours in : " << elapsed_seconds2.count() << endl << "moments in: "<< elapsed_seconds3.count() << endl;


}
void grpUGV(vector<UGV_data>& UGVS, vector<Circle_data>& circles)
{
    static UGV_data UGV;
    static vector<Point2f> smallcircles;
    static vector<Point2f> bigcircles;

    for( int i = 0; i < circles.size(); ++i)
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

