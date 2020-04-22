#include "simple.hpp"

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


