#include "simple.hpp"
#include <iostream>
#include <hls_opencv.h>

using namespace std;
using namespace cv;

#define INPUT_IMAGE_CORE "D:\\test3.jpg"
#define OUTPUT_IMAGE_CORE "D:\\yuv_output2.png"
#define CLIP(X) ( (X) > 255 ? 255 : (X) < 0 ? 0 : X)
#define RGB2Y(R, G, B) CLIP(( (  66 * (R) + 129 * (G) +  25 * (B) + 128) >> 8) +  16)
#define RGB2U(R, G, B) CLIP(( ( -38 * (R) -  74 * (G) + 112 * (B) + 128) >> 8) + 128)
#define RGB2V(R, G, B) CLIP(( ( 112 * (R) -  94 * (G) -  18 * (B) + 128) >> 8) + 128)

int main(int argc, char *argv[])
{

    Mat in_img, in_RGB, out_yuv;
    in_img = imread(INPUT_IMAGE_CORE,1);

    if(!in_img.data)
    {
        printf("Failed to load the image ... %s\n!", argv[1]);
        return -1;
    }
    short imgwidth  = in_img.cols;
    short imgheight = in_img.rows;

    cvtColor(in_img, in_RGB, CV_BGR2RGB);
    out_yuv.create(imgheight, imgwidth, CV_16U);

    imwrite("D:\\RGB.jpg",in_RGB);

    for(int i = 0; i< imgheight; i++)
        for(int j = 0; j< imgwidth; j = j+2) {
            unsigned int val = in_RGB.at<unsigned int>(i,j);

/*********** for 1st pixel ***********/
            unsigned int tmp = val;
            unsigned char B = (unsigned char)(((tmp<<16) >> 24) | 0x000000ff ); //Extracting B channel data

            tmp = val;
            unsigned char G = (unsigned char)(((tmp<<8) >> 24) | 0x000000ff ); //Extracting G channel data

            tmp = val;
            unsigned char R = (unsigned char)((tmp >> 24) | 0x000000ff );  //Extracting R channel data

            unsigned char Y1 = RGB2Y(R, G, B);
            unsigned char U = RGB2U(R, G, B);
            unsigned char V = RGB2V(R, G, B);

/*********** for 2nd pixel ***********/
            unsigned int val1 = in_RGB.at<unsigned int>(i,j+1);
            unsigned int tmp1 = val1;
            unsigned char B1 = (unsigned char)(((tmp1<<16) >> 24) | 0x000000ff );

            tmp1 = val1;
            unsigned char G1 = (unsigned char)(((tmp1<<8) >> 24) | 0x000000ff );

            tmp1 = val1;
            unsigned char R1 = (unsigned char)((tmp1 >> 24) | 0x000000ff );

            unsigned char Y2 = RGB2Y(R, G, B);

/********** writing into out image in U-Y1-V-Y2 format *********************/

        unsigned short p1 = ((U << 8) | Y1) ;
        unsigned short p2 = ((V << 8) | Y2) ;
        out_yuv.at<unsigned short>(i,j) = p1;
        out_yuv.at<unsigned short>(i,j+1) = p2;

    }
        imwrite(OUTPUT_IMAGE_CORE, out_yuv);
return 0;   
}

void ConvertRGB2YUV422(IplImage& pImage, IplImage& pDst)
{
	cout << "width:" << pImage.width << "  height:" << pImage.height << endl;

	    int width = pImage.width;
	    int height = pImage.height;
	    int yuvSize = width * height * 3 / 2;
	    char* pRgbBuf = pImage.imageData;
	    char* pYBuf, *pUBuf, *pVBuf;
	    char* pYUVBuf;


	    pYUVBuf = (char*)malloc(yuvSize);
	    pYBuf = pYUVBuf;
	    memset(pYBuf, 0, yuvSize);

	    pUBuf = pYBuf + width * height;
	    pVBuf = pUBuf + width * height / 4;


	    unsigned char r, g, b;
	    unsigned char y, u, v;


	    for (int i = 0; i < height; i++)
	        for (int j = 0; j < width; j++)
	        {
	            b = *(pRgbBuf);
	            g = *(pRgbBuf + 1);
	            r = *(pRgbBuf + 2);

	            y = (unsigned char)(  0.299* r + 0.587* g +  0.114 * b );
	            u = (unsigned char)( -0.169 * r -  0.332 * g + 0.500 * b + 128);
	            v = (unsigned char)( 0.500 * r +0.419 * g -  0.0813 * b + 128);



	            if (y > 255)y = 255;
	            else if (y < 0)y = 0;
	            if (u > 255)u = 255;
	            else if (u < 0)u = 0;
	            if (v > 255)v = 255;
	            else if (v < 0)v = 0;





	            *(pYBuf++) = y;
	            pRgbBuf += 3;




	            if (i % 2 == 0 && j % 2 == 0)
	            {

	                *(pVBuf++) = v;
	                *(pUBuf++) = u;
	            }
	        }


	    //pImage.dataOrder=1;
	    cvCopy(&pImage, &pDst);

}
