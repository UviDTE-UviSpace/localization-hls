#ifndef 	_IPLIMAGE2AXIVIDEO_DMA_H
#define		_IPLIMAGE2AXIVIDEO_DMA_H

//OpenCV Header Files
#include "opencv2/opencv.hpp"
//HLS Video Header File
#include "hls_video.h"

template<int W>
void IplImage2AXIvideo_DMA(IplImage* img, hls::stream<ap_axiu<W,1,1,1> >& AXI_video_strm) {
    int i, j, k;
    CvScalar cv_pix;
    ap_axiu<W,1,1,1> axi;
    int depth = (img->depth & 0xff);
    assert(img && img->imageData && (W >= depth*img->nChannels) &&
           "Image must be valid and have width less than the width of the stream.");
    for (i = 0; i < img->height; i++) {
        for (j = 0; j < img->width; j++) {
            axi.user = 0;
            if ( (i == img->height - 1) && (j == img->width -1)) {
                axi.last = 1;
            } else {
                axi.last = 0;
            }
            axi.data = -1;
            cv_pix = cvGet2D(img, i, j);
            for (k = 0; k < img->nChannels; k++) {
                switch(img->depth) {
                case IPL_DEPTH_8U:
                    hls::AXISetBitFields(axi, k*depth, depth, (unsigned char)cv_pix.val[k]);
                    break;
                case IPL_DEPTH_8S:
                    hls::AXISetBitFields(axi, k*depth, depth, (char)cv_pix.val[k]);
                    break;
                case IPL_DEPTH_16U:
                    hls::AXISetBitFields(axi, k*depth, depth, (unsigned short)cv_pix.val[k]);
                    break;
                case IPL_DEPTH_16S:
                    hls::AXISetBitFields(axi, k*depth, depth, (short)cv_pix.val[k]);
                    break;
                case IPL_DEPTH_32S:
                    hls::AXISetBitFields(axi, k*depth, depth, (int)cv_pix.val[k]);
                    break;
                case IPL_DEPTH_32F:
                    hls::AXISetBitFields(axi, k*depth, depth, (float)cv_pix.val[k]);
                    break;
                case IPL_DEPTH_64F:
                    hls::AXISetBitFields(axi, k*depth, depth, (double)cv_pix.val[k]);
                    break;
                default:
                    hls::AXISetBitFields(axi, k*depth, depth, (unsigned char)cv_pix.val[k]);
                    break;
                }
            }
            axi.keep = -1;
            AXI_video_strm << axi;
        }
    }
}

template<int W>
void AXIvideo2IplImage_DMA(hls::stream<ap_axiu<W,1,1,1> >& AXI_video_strm, IplImage* img) {
    int i, j, k;
    ap_axiu<W,1,1,1> axi;
    CvScalar cv_pix;
    int depth = (img->depth & 0xff);
    assert(img && img->imageData && (W >= depth*img->nChannels) &&
           "Image must be valid and have width less than the width of the stream.");
    for (i = 0; i < img->height; i++) {
        for (j = 0; j < img->width; j++) {
            AXI_video_strm >> axi;

            if (1) {
                for (k = 0; k < img->nChannels; k++) {
                    switch(img->depth) {
                        case IPL_DEPTH_8U:
                        {   unsigned char temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        case IPL_DEPTH_8S:
                        {   char temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        case IPL_DEPTH_16U:
                        {   unsigned short temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        case IPL_DEPTH_16S:
                        {   short temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        case IPL_DEPTH_32S:
                        {   int temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        case IPL_DEPTH_32F:
                        {   float temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        case IPL_DEPTH_64F:
                        {   double temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                        default:
                        {   unsigned char temp;
                            hls::AXIGetBitFields(axi, k*depth, depth, temp);
                            cv_pix.val[k] = temp;
                        }
                        break;
                    }
                }
                cvSet2D(img, i, j, cv_pix);
            }
        }
    }
}

#endif
