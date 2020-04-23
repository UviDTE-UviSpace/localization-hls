#include <hls_video.h>
#include <stdint.h>
void variables(uint8_t image_in[480*640],uint8_t image_out[480*640]){

   const char coefficients[3][3] = { {-1,-2,-1},
                                     { 0, 0, 0},
                                     { 1, 2, 1} };

   hls::Mat<480,640,HLS_8UC1> src;
   hls::Mat<480,640,HLS_8UC1> dst;
   hls::AXIM2Mat<640,uint8_t,480,640,HLS_8UC1>(image_in,src);
   hls::Window<3,3,char> kernel;
   for (int i=0;i<3;i++){
      for (int j=0;j<3;j++){
         kernel.val[i][j]=coefficients[i][j];
      }
   }
   hls::Point_<int> anchor = hls::Point_<int>(-1,-1);
   hls::Filter2D(src,dst,kernel,anchor);
   hls::Mat2AXIM<640,uint8_t,480,640,HLS_8UC1>(dst,image_out);
}
