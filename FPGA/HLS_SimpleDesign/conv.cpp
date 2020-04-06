#include <hls_video.h>
#include <stdint.h>

void conv(uint8_t image_in[1080*1920],uint8_t image_out[1080*1920]){

   const char coefficients[3][3] = { {-1,-2,-1},
                                     { 0, 0, 0},
                                     { 1, 2, 1} };
   #pragma HLS dataflow
   hls::Mat<1080,1920,HLS_8UC1> src;
   hls::Mat<1080,1920,HLS_8UC1> dst;
   hls::AXIM2Mat<1920,uint8_t,1080,1920,HLS_8UC1>(image_in,src);
   hls::Window<3,3,char> kernel;
   for (int i=0;i<3;i++){
      for (int j=0;j<3;j++){
         kernel.val[i][j]=coefficients[i][j];
      }
   }
   hls::Point_<int> anchor = hls::Point_<int>(-1,-1);
   hls::Filter2D(src,dst,kernel,anchor);
   hls::Mat2AXIM<1920,uint8_t,1080,1920,HLS_8UC1>(dst,image_out);
}
