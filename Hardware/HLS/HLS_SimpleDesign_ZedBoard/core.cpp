#include "core.hpp"
#include "Mat2AXIvideo_DMA.h"

void passthrough(AXI_STREAM& video_in, AXI_STREAM& video_out)
{
	//Create axi streaming interfaces for core.
	#pragma HLS INTERFACE axis port=video_in
	#pragma HLS INTERFACE axis port=video_out
	#pragma HLS INTERFACE ap_ctrl_none port=return

	GRAY_IMAGE  img_1(HEIGHT, WIDTH);

	#pragma HLS dataflow
	hls::AXIvideo2Mat_DMA(video_in, img_1);
	hls::Mat2AXIvideo_DMA(img_1, video_out);
}
