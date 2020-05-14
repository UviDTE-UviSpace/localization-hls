//Pack the data of a hls::Mat<> object into an AXI Video stream
#ifndef __MAT2AXIVIDEO_DMA_H
#define __MAT2AXIVIDEO_DMA_H

#include "hls/hls_axi_io.h"

namespace hls{

template<int W, int ROWS, int COLS, int T>
int AXIvideo2Mat_DMA(stream<ap_axiu<W,1,1,1> >& AXI_video_strm,
                 Mat<ROWS, COLS, T>& img)
{
    int res = 0;
    ap_axiu<W,1,1,1> axi;
    Scalar<HLS_MAT_CN(T), HLS_TNAME(T)> pix;
    int depth = HLS_TBITDEPTH(T);
    // std::cout << W << " " << depth << " " << HLS_MAT_CN(T) << "\n";
    assert(W >= depth*HLS_MAT_CN(T) && "Width of AXI stream must be greater the total number of bits in a pixel");
    HLS_SIZE_T rows = img.rows;
    HLS_SIZE_T cols = img.cols;

 loop_height: for (HLS_SIZE_T i = 0; i < rows; i++) {
#pragma HLS loop_tripcount max=ROWS
        bool eol = 0;
    loop_width: for (HLS_SIZE_T j = 0; j < cols; j++) {
#pragma HLS loop_tripcount max=COLS
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1

    	AXI_video_strm >> axi;
        loop_channels: for (HLS_CHANNEL_T k = 0; k < HLS_MAT_CN(T); k++) {
                AXIGetBitFields(axi, k*depth, depth, pix.val[k]);
            }
            img << pix;
        }
    }
    return res;
}

template<int W, int ROWS, int COLS, int T>
int Mat2AXIvideo_DMA(Mat<ROWS, COLS, T>& img,
                 stream<ap_axiu<W,1,1,1> >& AXI_video_strm)
{
    int res = 0;
    Scalar<HLS_MAT_CN(T), HLS_TNAME(T)> pix;
    ap_axiu<W,1,1,1> axi;
    int depth = HLS_TBITDEPTH(T);
    // std::cout << W << " " << depth << " " << HLS_MAT_CN(T) << "\n";
    assert(W >= depth*HLS_MAT_CN(T) && "Width of AXI stream must be greater the total number of bits in a pixel");
    HLS_SIZE_T rows = img.rows;
    HLS_SIZE_T cols = img.cols;
 loop_height: for (HLS_SIZE_T i = 0; i < rows; i++) {
#pragma HLS loop_tripcount max=ROWS
    loop_width: for (HLS_SIZE_T j = 0; j < cols; j++) {
#pragma HLS loop_tripcount max=COLS
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
            axi.user = 0;
            axi.id = 0;
            axi.dest = 0;
            if ( (i == rows - 1) && (j == cols - 1)) {
                axi.last = 1;
            } else {
                axi.last = 0;
            }
            img >> pix;
            axi.data = -1;
        loop_channels: for (HLS_CHANNEL_T k = 0; k < HLS_MAT_CN(T); k++) {
                AXISetBitFields(axi, k*depth, depth, pix.val[k]);
            }
            axi.keep = -1;
            axi.strb = -1;
            AXI_video_strm << axi;
        }
    }
    return res;
}

}

#endif
