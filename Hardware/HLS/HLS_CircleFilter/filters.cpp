#include "filters.hpp"
#include "Mat2AXIvideo_DMA.h"

void filter(AXI_STREAM& video_in, AXI_STREAM& video_out)
{
	//Create axi streaming interfaces for core.
	#pragma HLS INTERFACE axis port=video_in
	#pragma HLS INTERFACE axis port=video_out
	#pragma HLS interface ap_ctrl_none port=return

	/*
	#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14
	#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C
    #pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

    #pragma HLS INTERFACE ap_stable port=rows
    #pragma HLS INTERFACE ap_stable port=cols
	 */

	RGB_IMAGE   img_0(HEIGHT, WIDTH);
	GRAY_IMAGE  img_1(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_3(HEIGHT, WIDTH);
	RGB_IMAGE   img_4(HEIGHT, WIDTH);

	#pragma HLS dataflow
	hls::AXIvideo2Mat_DMA(video_in, img_1);
	hls::GaussianBlur<5,5>(img_1, img_2, 0, 0);
	hls::Threshold(img_2 ,img_3 , 200,255,HLS_THRESH_BINARY);
	hls::Mat2AXIvideo_DMA(img_3, video_out);

}

/*
typedef ap_axis<32, 2, 5, 6> intSdCh;

void filter(hls::stream<AXIS> &video_in, hls::stream<AXIS> &video_out)
{
	#pragma HLS INTERFACE axis port=outStream
	#pragma HLS INTERFACE axis port=inStream
	#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

	GRAY_IMAGE  img_1(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_3(HEIGHT, WIDTH);

#include "filters.hpp"



	/*
	 *
	hls::stream<intSdCh> &inStream, hls::stream<intSdCh> &outStream

	#pragma HLS dataflow
	// read and cache
	intSdCh valIn = inStream.read();
	intSdCh valOut;

	for (int HEIGHTx = 0; HEIGHTx < HEIGHT; HEIGHTx++) {
		for (int widthx = 0; widthx < WIDTH; widthx++) {
			Vec3b intensity = img_1.at<Vec3b>(j, i);
			inStreamData[idx] = idx;
		}
	}
	img_1 = valIn.data;

	hls::GaussianBlur<5,5>(img_1, img_2, 0, 0);
	hls::Threshold(img_2 ,img_3 , 200,255,HLS_THRESH_BINARY);

	valOut.data = img_3;
	valOut.keep = valIn.keep;
	valOut.strb = valIn.strb;
	valOut.user = valIn.user;
	valOut.last = valIn.last;
	valOut.id = valIn.id;
	valOut.dest = valIn.dest;

	outStream.write(valOut);


	//Create axi streaming interfaces for core.
	#pragma HLS INTERFACE axis port=video_in
	#pragma HLS INTERFACE axis port=video_out
	#pragma HLS INTERFACE ap_ctrl_none port=return

	#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14
	#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C
    #pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

    #pragma HLS INTERFACE ap_stable port=rows
    #pragma HLS INTERFACE ap_stable port=cols


	GRAY_IMAGE  img_1(HEIGHT, WIDTH);
	GRAY_IMAGE  img_2(HEIGHT, WIDTH);
	GRAY_IMAGE  img_3(HEIGHT, WIDTH);

	AXIS stremin, stremout;


		cout << "flow flow" << endl;
		stremin = video_in.read();

	#pragma HLS dataflow

		cout << "flow3" << endl;
		hls::AXIvideo2Mat(video_in, img_1);
		hls::GaussianBlur<5,5>(img_1, img_2, 0, 0);
		hls::Threshold(img_2 ,img_3 , 200,255,HLS_THRESH_BINARY);
		hls::Mat2AXIvideo(img_3, video_out);

	cout << "flow5" << endl;


}
*/
