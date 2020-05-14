#include "simple.hpp"
#include "Mat2AXIvideo_DMA.h"

/*
void Grey_image(RGB_IMAGE& inputimg, GRAY_IMAGE& outputimg){

	RGB_IMAGE  img_0(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE img_1(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2a(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2b(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_3(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_4(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_5(MAX_HEIGHT, MAX_WIDTH);
	RGB_IMAGE  img_6(MAX_HEIGHT, MAX_WIDTH);

   #pragma HLS dataflow
   hls::CvtColor<HLS_BGR2GRAY>(inputimg, img_1);
   hls::GaussianBlur<3,3>(img_1,outputimg);

}

*/

void blur_image(AXI_STREAM& video_in, AXI_STREAM& video_out)//, int rows, int cols)
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
	GRAY_IMAGE  img_1(HEIGHT, WIDTH);

	GRAY_IMAGE  thImg(HEIGHT, WIDTH);
	GRAY_IMAGE  thImg2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2a(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2b(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2c(HEIGHT, WIDTH);

	#pragma HLS dataflow
	hls::AXIvideo2Mat_DMA(video_in, img_1);
	//hls::Duplicate(img_1,img_2,img_2a);
	hls::Mat2AXIvideo_DMA(img_1, video_out);
}
