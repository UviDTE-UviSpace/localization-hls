#include "hls_video.h"
#include <ap_fixed.h>
#include <stdint.h>
#include "hls_math.h"

#define WIDTH  640
#define HEIGHT 480

#define INPUT_IMAGE_CORE "D:\\hls\\conv_test.bmp"
#define OUTPUT_IMAGE_CORE "D:\\hls\\conv_test_output.bmp"

//Def stream type if we use vidoe stream instead of pics. change top func too then..
//void grey_image(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM);//int rows, int cols);
typedef hls::stream<ap_axiu<24,1,1,1> >           AXI_STREAM;
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC1> GRAY_IMAGE;
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC2> YUV_IMAGE;

//void conv(AXI_STREAM& video_in, AXI_STREAM& video_out);//, int rows, int cols);
void conv(AXI_STREAM& video_in, AXI_STREAM& video_out);





