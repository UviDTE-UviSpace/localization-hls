#include "hls_video.h"
#include <ap_fixed.h>
#include <stdint.h>
#include "hls_math.h"


#define WIDTH  640
#define HEIGHT 480

#define INPUT_IMAGE_CORE "D:\\hls\\bin_90degree.png"
#define OUTPUT_IMAGE_CORE "D:\\hls\\bin_90degree_filtered.png"
#define OUTPUT_IMAGE_CORE2 "D:\\hls\\bin_90degree_prefiltered.png"

//Def stream type if we use vidoe stream instead of pics. change top func too then..
//void grey_image(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM);//int rows, int cols);
typedef hls::stream<ap_axiu<16,1,1,1> >           AXI_STREAM;
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC3> RGB_IMAGE;		//3Channel
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC1> GRAY_IMAGE;		//1Channel
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC2> YUV_IMAGE;		//2Channel

//void conv(AXI_STREAM& video_in, AXI_STREAM& video_out);//, int rows, int cols);
void filter(AXI_STREAM& video_in, AXI_STREAM& video_out);





