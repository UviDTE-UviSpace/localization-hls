#include "filters.hpp"

#include <iostream>

using namespace std;


void filter(AXI_STREAM& video_in, AXI_STREAM& video_out)
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


	GRAY_IMAGE  img_1(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_3(HEIGHT, WIDTH);

	AXIS stremin, stremout;

	while(!video_in.empty())
	{
		cout << "flow flow" << endl;
		stremin = video_in.read();
		cout << "flow2" << endl;
		stremout.last = 0;
		video_in.write(stremin);
	}
	#pragma HLS dataflow

		cout << "flow3" << endl;
		hls::AXIvideo2Mat(video_in, img_1);
		hls::GaussianBlur<5,5>(img_1, img_2, 0, 0);
		hls::Threshold(img_2 ,img_3 , 200,255,HLS_THRESH_BINARY);
		hls::Mat2AXIvideo(img_3, video_out);
	while (video_out.empty())
	{
		cout << "flow4" << endl;
		stremout = video_out.read();
		stremout.last = 1;
		video_out.write(stremout);
		cout << "flow5" << endl;
	}

}
