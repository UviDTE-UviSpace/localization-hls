// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _blur_image_HH_
#define _blur_image_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Block_proc.h"
#include "AXIvideo2Mat_DMA.h"
#include "Mat2AXIvideo_DMA.h"
#include "fifo_w10_d2_A.h"
#include "fifo_w11_d2_A.h"
#include "fifo_w8_d2_A.h"
#include "start_for_Mat2AXIbkb.h"

namespace ap_rtl {

struct blur_image : public sc_module {
    // Port declarations 20
    sc_in< sc_lv<8> > video_in_TDATA;
    sc_in< sc_lv<1> > video_in_TKEEP;
    sc_in< sc_lv<1> > video_in_TSTRB;
    sc_in< sc_lv<1> > video_in_TUSER;
    sc_in< sc_lv<1> > video_in_TLAST;
    sc_in< sc_lv<1> > video_in_TID;
    sc_in< sc_lv<1> > video_in_TDEST;
    sc_out< sc_lv<8> > video_out_TDATA;
    sc_out< sc_lv<1> > video_out_TKEEP;
    sc_out< sc_lv<1> > video_out_TSTRB;
    sc_out< sc_lv<1> > video_out_TUSER;
    sc_out< sc_lv<1> > video_out_TLAST;
    sc_out< sc_lv<1> > video_out_TID;
    sc_out< sc_lv<1> > video_out_TDEST;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > video_in_TVALID;
    sc_out< sc_logic > video_in_TREADY;
    sc_out< sc_logic > video_out_TVALID;
    sc_in< sc_logic > video_out_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    blur_image(sc_module_name name);
    SC_HAS_PROCESS(blur_image);

    ~blur_image();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Block_proc* Block_proc_U0;
    AXIvideo2Mat_DMA* AXIvideo2Mat_DMA_U0;
    Mat2AXIvideo_DMA* Mat2AXIvideo_DMA_U0;
    fifo_w10_d2_A* img_1_rows_V_c_U;
    fifo_w11_d2_A* img_1_cols_V_c_U;
    fifo_w8_d2_A* img_1_data_stream_0_U;
    fifo_w10_d2_A* img_1_rows_V_c4_U;
    fifo_w11_d2_A* img_1_cols_V_c5_U;
    start_for_Mat2AXIbkb* start_for_Mat2AXIbkb_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > Block_proc_U0_ap_start;
    sc_signal< sc_logic > Block_proc_U0_ap_done;
    sc_signal< sc_logic > Block_proc_U0_ap_continue;
    sc_signal< sc_logic > Block_proc_U0_ap_idle;
    sc_signal< sc_logic > Block_proc_U0_ap_ready;
    sc_signal< sc_lv<10> > Block_proc_U0_img_1_rows_V_out_din;
    sc_signal< sc_logic > Block_proc_U0_img_1_rows_V_out_write;
    sc_signal< sc_lv<11> > Block_proc_U0_img_1_cols_V_out_din;
    sc_signal< sc_logic > Block_proc_U0_img_1_cols_V_out_write;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_ap_start;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_ap_done;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_ap_continue;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_ap_idle;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_ap_ready;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_start_out;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_start_write;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_video_in_TREADY;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_img_rows_V_read;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_img_cols_V_read;
    sc_signal< sc_lv<8> > AXIvideo2Mat_DMA_U0_img_data_stream_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_img_data_stream_V_write;
    sc_signal< sc_lv<10> > AXIvideo2Mat_DMA_U0_img_rows_V_out_din;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_img_rows_V_out_write;
    sc_signal< sc_lv<11> > AXIvideo2Mat_DMA_U0_img_cols_V_out_din;
    sc_signal< sc_logic > AXIvideo2Mat_DMA_U0_img_cols_V_out_write;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_ap_ready;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_img_rows_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_img_cols_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_img_data_stream_V_read;
    sc_signal< sc_lv<8> > Mat2AXIvideo_DMA_U0_video_out_TDATA;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_video_out_TVALID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_DMA_U0_video_out_TKEEP;
    sc_signal< sc_lv<1> > Mat2AXIvideo_DMA_U0_video_out_TSTRB;
    sc_signal< sc_lv<1> > Mat2AXIvideo_DMA_U0_video_out_TUSER;
    sc_signal< sc_lv<1> > Mat2AXIvideo_DMA_U0_video_out_TLAST;
    sc_signal< sc_lv<1> > Mat2AXIvideo_DMA_U0_video_out_TID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_DMA_U0_video_out_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > img_1_rows_V_c_full_n;
    sc_signal< sc_lv<10> > img_1_rows_V_c_dout;
    sc_signal< sc_logic > img_1_rows_V_c_empty_n;
    sc_signal< sc_logic > img_1_cols_V_c_full_n;
    sc_signal< sc_lv<11> > img_1_cols_V_c_dout;
    sc_signal< sc_logic > img_1_cols_V_c_empty_n;
    sc_signal< sc_logic > img_1_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_1_data_stream_0_dout;
    sc_signal< sc_logic > img_1_data_stream_0_empty_n;
    sc_signal< sc_logic > img_1_rows_V_c4_full_n;
    sc_signal< sc_lv<10> > img_1_rows_V_c4_dout;
    sc_signal< sc_logic > img_1_rows_V_c4_empty_n;
    sc_signal< sc_logic > img_1_cols_V_c5_full_n;
    sc_signal< sc_lv<11> > img_1_cols_V_c5_dout;
    sc_signal< sc_logic > img_1_cols_V_c5_empty_n;
    sc_signal< sc_logic > Block_proc_U0_start_full_n;
    sc_signal< sc_logic > Block_proc_U0_start_write;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_DMA_U0_din;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_DMA_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_DMA_U0_dout;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_DMA_U0_empty_n;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_DMA_U0_start_write;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_AXIvideo2Mat_DMA_U0_ap_continue();
    void thread_AXIvideo2Mat_DMA_U0_ap_start();
    void thread_Block_proc_U0_ap_continue();
    void thread_Block_proc_U0_ap_start();
    void thread_Block_proc_U0_start_full_n();
    void thread_Block_proc_U0_start_write();
    void thread_Mat2AXIvideo_DMA_U0_ap_continue();
    void thread_Mat2AXIvideo_DMA_U0_ap_start();
    void thread_Mat2AXIvideo_DMA_U0_start_full_n();
    void thread_Mat2AXIvideo_DMA_U0_start_write();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_start_for_Mat2AXIvideo_DMA_U0_din();
    void thread_video_in_TREADY();
    void thread_video_out_TDATA();
    void thread_video_out_TDEST();
    void thread_video_out_TID();
    void thread_video_out_TKEEP();
    void thread_video_out_TLAST();
    void thread_video_out_TSTRB();
    void thread_video_out_TUSER();
    void thread_video_out_TVALID();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif