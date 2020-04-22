#include "simple.hpp"

/*
void Grey_image(uint8_t image_in[MAX_HEIGHT*MAX_WIDTH],uint8_t image_out[MAX_HEIGHT*MAX_WIDTH]){


   const char coefficients[3][3] = { {-1,-2,-1},
                                     { 0, 0, 0},
                                     { 1, 2, 1} };
   #pragma HLS dataflow
   hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC1> src;
   hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC1> dst;
   hls::AXIM2Mat<MAX_WIDTH,uint8_t,MAX_HEIGHT,MAX_WIDTH,HLS_8UC1>(image_in,src);
   hls::Window<3,3,char> kernel;
   for (int i=0;i<3;i++){
      for (int j=0;j<3;j++){
         kernel.val[i][j]=coefficients[i][j];
      }
   }
   hls::Point_<int> anchor = hls::Point_<int>(-1,-1);
   hls::Filter2D(src,dst,kernel,anchor);
   hls::Mat2AXIM<MAX_WIDTH,uint8_t,MAX_HEIGHT,MAX_WIDTH,HLS_8UC1>(dst,image_out);

}
   */

void Grey_image(IplImage *src, IplImage *dst)
{

	 IplImage* tmp = cvCreateImage(cvGetSize(src), src->depth,src->nChannels);
	 cvCopy(src, tmp);
	 cvSubS(tmp, cvScalar(50, 50), dst);
	 cvScale(dst, tmp, 2, 0);
	 cvErode(tmp, dst);
	 cvDilate(dst, tmp);
	 cvCopy(tmp, dst);
	 cvReleaseImage(&tmp);

}
