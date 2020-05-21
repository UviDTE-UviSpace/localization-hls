#include "hls_video.h"
#include <ap_fixed.h>
#include <stdint.h>
#include "hls_math.h"
#include "ap_axi_sdata.h"
#include <hls_stream.h>


#define WIDTH  640
#define HEIGHT 480

#define INPUT_IMAGE_CORE "D:\\hls\\bin_90degree.png"
#define OUTPUT_IMAGE_CORE "D:\\hls\\bin_90degree_pretransfer.png"
#define OUTPUT_IMAGE_CORE2 "D:\\hls\\bin_90degree_aftertransfer.png"

typedef hls::stream<ap_axiu<8,1,1,1> >           AXI_STREAM;
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC3> RGB_IMAGE;		//3Channel
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC1> GRAY_IMAGE;		//1Channel
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC2> YUV_IMAGE;		//2Channel

void passthrough(AXI_STREAM& video_in, AXI_STREAM& video_out);




