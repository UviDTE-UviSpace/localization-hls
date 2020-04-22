#include  "hls_video.h"
#include <ap_fixed.h>
#include <stdint.h>
#include <hls_opencv.h>

#define MAX_WIDTH  640
#define MAX_HEIGHT 480

//Def stream type if we use vidoe stream instead of pics. change top func too then..
//void grey_image(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM);//int rows, int cols);
//typedef hls::stream<ap_axiu<24,1,1,1> >           AXI_STREAM;
typedef hls::Mat<MAX_HEIGHT,   MAX_WIDTH,   HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT,   MAX_WIDTH,   HLS_8UC1> GRAY_IMAGE;


//void grey_image(uint8_t image_in[MAX_HEIGHT*MAX_WIDTH],uint8_t image_out[MAX_HEIGHT*MAX_WIDTH]);//int rows, int cols);
void Grey_image(IplImage *src,IplImage *dst);
