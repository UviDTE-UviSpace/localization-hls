#include "simple.hpp"

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

	RGB_IMAGE   img_0(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_1(MAX_HEIGHT, MAX_WIDTH);

	GRAY_IMAGE  thImg(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  thImg2(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2a(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2b(MAX_HEIGHT, MAX_WIDTH);
	GRAY_IMAGE  img_2c(MAX_HEIGHT, MAX_WIDTH);

	#pragma HLS dataflow
	hls::AXIvideo2Mat(video_in, img_0);
	hls::CvtColor<HLS_BGR2GRAY>(img_0, img_1);
	//hls::GaussianBlur<3,3>(img_0,img_1, 0, 0);
	//hls::findContours(thresh, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point(0,0) );
	/*
	hls::Duplicate(img_2,img_2a,img_2b);
	hls::Sobel<1,0,3>(img_2a, img_3);
	hls::Sobel<0,1,3>(img_2b, img_4);
	hls::AddWeighted(img_4,0.5,img_3,0.5,0.0,img_5);
	hls::CvtColor<HLS_GRAY2RGB>(img_5, img_6);
	*/
	hls::g
	hls::Threshold(img_1,img_2, 120, 255, HLS_THRESH_BINARY);
	hls::Duplicate(img_2,thImg,thImg2);
	hls::Dilate(thImg, img_2a);
	hls::AbsDiff(img_2a,thImg2,img_2c);
	hls::Mat2AXIvideo(img_2c, video_out);
}
