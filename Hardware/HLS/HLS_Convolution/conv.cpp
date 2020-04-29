#include "conv.hpp"

#define WIN_SIZE 3 // must be odd
#define HALF_SIZE (((WIN_SIZE) - 1) / 2)


// A buffered implementation of a 2D filter.
void conv(AXI_STREAM& video_in, AXI_STREAM& video_out)
{
	//Create axi streaming interfaces for core.
	#pragma HLS INTERFACE axis port=video_in
	#pragma HLS INTERFACE axis port=video_out
	#pragma HLS INTERFACE ap_ctrl_none port=return

	/*
	#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14
	#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C
    #pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

    #pragma HLS INTERFACE ap_stable port=rows
    #pragma HLS INTERFACE ap_stable port=cols
	 */

	RGB_IMAGE   img_0(HEIGHT, WIDTH);
	RGB_IMAGE   img_01(HEIGHT, WIDTH);
	RGB_IMAGE   img_02(HEIGHT, WIDTH);
	GRAY_IMAGE  img_1(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_3(HEIGHT, WIDTH);

	hls::Window<9,9,unsigned char> Kx;
	hls::Point_<int> 		anchor;
    anchor.x = -1;	anchor.y = -1;

	#pragma HLS dataflow
	hls::AXIvideo2Mat(video_in, img_0);
	hls::CvtColor<HLS_RGB2GRAY>(img_0,img_1);
	hls::Filter2D(img_1, img_2, Kx, anchor);
	hls::CvtColor<HLS_GRAY2RGB>(img_2,img_01);
	hls::Mat2AXIvideo(img_01, video_out);

}
