// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.625250,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=904,HLS_SYN_LUT=2142,HLS_VERSION=2019_2}" *)

module conv (
        image_in_address0,
        image_in_ce0,
        image_in_d0,
        image_in_q0,
        image_in_we0,
        image_in_address1,
        image_in_ce1,
        image_in_d1,
        image_in_q1,
        image_in_we1,
        image_out_address0,
        image_out_ce0,
        image_out_d0,
        image_out_q0,
        image_out_we0,
        image_out_address1,
        image_out_ce1,
        image_out_d1,
        image_out_q1,
        image_out_we1,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


output  [20:0] image_in_address0;
output   image_in_ce0;
output  [7:0] image_in_d0;
input  [7:0] image_in_q0;
output   image_in_we0;
output  [20:0] image_in_address1;
output   image_in_ce1;
output  [7:0] image_in_d1;
input  [7:0] image_in_q1;
output   image_in_we1;
output  [20:0] image_out_address0;
output   image_out_ce0;
output  [7:0] image_out_d0;
input  [7:0] image_out_q0;
output   image_out_we0;
output  [20:0] image_out_address1;
output   image_out_ce1;
output  [7:0] image_out_d1;
input  [7:0] image_out_q1;
output   image_out_we1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    Block_proc_U0_ap_start;
wire    Block_proc_U0_ap_done;
wire    Block_proc_U0_ap_continue;
wire    Block_proc_U0_ap_idle;
wire    Block_proc_U0_ap_ready;
wire   [11:0] Block_proc_U0_src_rows_V_out_din;
wire    Block_proc_U0_src_rows_V_out_write;
wire   [11:0] Block_proc_U0_src_cols_V_out_din;
wire    Block_proc_U0_src_cols_V_out_write;
wire    AXIM2Mat_U0_ap_start;
wire    AXIM2Mat_U0_ap_done;
wire    AXIM2Mat_U0_ap_continue;
wire    AXIM2Mat_U0_ap_idle;
wire    AXIM2Mat_U0_ap_ready;
wire    AXIM2Mat_U0_start_out;
wire    AXIM2Mat_U0_start_write;
wire   [20:0] AXIM2Mat_U0_fb_address0;
wire    AXIM2Mat_U0_fb_ce0;
wire    AXIM2Mat_U0_img_rows_V_read;
wire    AXIM2Mat_U0_img_cols_V_read;
wire   [7:0] AXIM2Mat_U0_img_data_stream_V_din;
wire    AXIM2Mat_U0_img_data_stream_V_write;
wire   [11:0] AXIM2Mat_U0_img_rows_V_out_din;
wire    AXIM2Mat_U0_img_rows_V_out_write;
wire   [11:0] AXIM2Mat_U0_img_cols_V_out_din;
wire    AXIM2Mat_U0_img_cols_V_out_write;
wire    Filter2D_U0_ap_start;
wire    Filter2D_U0_ap_done;
wire    Filter2D_U0_ap_continue;
wire    Filter2D_U0_ap_idle;
wire    Filter2D_U0_ap_ready;
wire    Filter2D_U0_start_out;
wire    Filter2D_U0_start_write;
wire    Filter2D_U0_p_src_rows_V_read;
wire    Filter2D_U0_p_src_cols_V_read;
wire    Filter2D_U0_p_src_data_stream_V_read;
wire   [7:0] Filter2D_U0_p_dst_data_stream_V_din;
wire    Filter2D_U0_p_dst_data_stream_V_write;
wire    Mat2AXIM_U0_ap_start;
wire    Mat2AXIM_U0_ap_done;
wire    Mat2AXIM_U0_ap_continue;
wire    Mat2AXIM_U0_ap_idle;
wire    Mat2AXIM_U0_ap_ready;
wire    Mat2AXIM_U0_img_data_stream_V_read;
wire   [20:0] Mat2AXIM_U0_fb_address0;
wire    Mat2AXIM_U0_fb_ce0;
wire    Mat2AXIM_U0_fb_we0;
wire   [7:0] Mat2AXIM_U0_fb_d0;
wire    ap_sync_continue;
wire    src_rows_V_c_full_n;
wire   [11:0] src_rows_V_c_dout;
wire    src_rows_V_c_empty_n;
wire    src_cols_V_c_full_n;
wire   [11:0] src_cols_V_c_dout;
wire    src_cols_V_c_empty_n;
wire    src_data_stream_0_V_full_n;
wire   [7:0] src_data_stream_0_V_dout;
wire    src_data_stream_0_V_empty_n;
wire    src_rows_V_c8_full_n;
wire   [11:0] src_rows_V_c8_dout;
wire    src_rows_V_c8_empty_n;
wire    src_cols_V_c9_full_n;
wire   [11:0] src_cols_V_c9_dout;
wire    src_cols_V_c9_empty_n;
wire    dst_data_stream_0_V_full_n;
wire   [7:0] dst_data_stream_0_V_dout;
wire    dst_data_stream_0_V_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_Block_proc_U0_ap_ready;
wire    ap_sync_Block_proc_U0_ap_ready;
reg   [1:0] Block_proc_U0_ap_ready_count;
reg    ap_sync_reg_AXIM2Mat_U0_ap_ready;
wire    ap_sync_AXIM2Mat_U0_ap_ready;
reg   [1:0] AXIM2Mat_U0_ap_ready_count;
wire    Block_proc_U0_start_full_n;
wire    Block_proc_U0_start_write;
wire   [0:0] start_for_Filter2D_U0_din;
wire    start_for_Filter2D_U0_full_n;
wire   [0:0] start_for_Filter2D_U0_dout;
wire    start_for_Filter2D_U0_empty_n;
wire   [0:0] start_for_Mat2AXIM_U0_din;
wire    start_for_Mat2AXIM_U0_full_n;
wire   [0:0] start_for_Mat2AXIM_U0_dout;
wire    start_for_Mat2AXIM_U0_empty_n;
wire    Mat2AXIM_U0_start_full_n;
wire    Mat2AXIM_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_Block_proc_U0_ap_ready = 1'b0;
#0 Block_proc_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_AXIM2Mat_U0_ap_ready = 1'b0;
#0 AXIM2Mat_U0_ap_ready_count = 2'd0;
end

Block_proc Block_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Block_proc_U0_ap_start),
    .ap_done(Block_proc_U0_ap_done),
    .ap_continue(Block_proc_U0_ap_continue),
    .ap_idle(Block_proc_U0_ap_idle),
    .ap_ready(Block_proc_U0_ap_ready),
    .src_rows_V_out_din(Block_proc_U0_src_rows_V_out_din),
    .src_rows_V_out_full_n(src_rows_V_c_full_n),
    .src_rows_V_out_write(Block_proc_U0_src_rows_V_out_write),
    .src_cols_V_out_din(Block_proc_U0_src_cols_V_out_din),
    .src_cols_V_out_full_n(src_cols_V_c_full_n),
    .src_cols_V_out_write(Block_proc_U0_src_cols_V_out_write)
);

AXIM2Mat AXIM2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AXIM2Mat_U0_ap_start),
    .start_full_n(start_for_Filter2D_U0_full_n),
    .ap_done(AXIM2Mat_U0_ap_done),
    .ap_continue(AXIM2Mat_U0_ap_continue),
    .ap_idle(AXIM2Mat_U0_ap_idle),
    .ap_ready(AXIM2Mat_U0_ap_ready),
    .start_out(AXIM2Mat_U0_start_out),
    .start_write(AXIM2Mat_U0_start_write),
    .fb_address0(AXIM2Mat_U0_fb_address0),
    .fb_ce0(AXIM2Mat_U0_fb_ce0),
    .fb_q0(image_in_q0),
    .img_rows_V_dout(src_rows_V_c_dout),
    .img_rows_V_empty_n(src_rows_V_c_empty_n),
    .img_rows_V_read(AXIM2Mat_U0_img_rows_V_read),
    .img_cols_V_dout(src_cols_V_c_dout),
    .img_cols_V_empty_n(src_cols_V_c_empty_n),
    .img_cols_V_read(AXIM2Mat_U0_img_cols_V_read),
    .img_data_stream_V_din(AXIM2Mat_U0_img_data_stream_V_din),
    .img_data_stream_V_full_n(src_data_stream_0_V_full_n),
    .img_data_stream_V_write(AXIM2Mat_U0_img_data_stream_V_write),
    .img_rows_V_out_din(AXIM2Mat_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(src_rows_V_c8_full_n),
    .img_rows_V_out_write(AXIM2Mat_U0_img_rows_V_out_write),
    .img_cols_V_out_din(AXIM2Mat_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(src_cols_V_c9_full_n),
    .img_cols_V_out_write(AXIM2Mat_U0_img_cols_V_out_write)
);

Filter2D Filter2D_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Filter2D_U0_ap_start),
    .start_full_n(start_for_Mat2AXIM_U0_full_n),
    .ap_done(Filter2D_U0_ap_done),
    .ap_continue(Filter2D_U0_ap_continue),
    .ap_idle(Filter2D_U0_ap_idle),
    .ap_ready(Filter2D_U0_ap_ready),
    .start_out(Filter2D_U0_start_out),
    .start_write(Filter2D_U0_start_write),
    .p_src_rows_V_dout(src_rows_V_c8_dout),
    .p_src_rows_V_empty_n(src_rows_V_c8_empty_n),
    .p_src_rows_V_read(Filter2D_U0_p_src_rows_V_read),
    .p_src_cols_V_dout(src_cols_V_c9_dout),
    .p_src_cols_V_empty_n(src_cols_V_c9_empty_n),
    .p_src_cols_V_read(Filter2D_U0_p_src_cols_V_read),
    .p_src_data_stream_V_dout(src_data_stream_0_V_dout),
    .p_src_data_stream_V_empty_n(src_data_stream_0_V_empty_n),
    .p_src_data_stream_V_read(Filter2D_U0_p_src_data_stream_V_read),
    .p_dst_data_stream_V_din(Filter2D_U0_p_dst_data_stream_V_din),
    .p_dst_data_stream_V_full_n(dst_data_stream_0_V_full_n),
    .p_dst_data_stream_V_write(Filter2D_U0_p_dst_data_stream_V_write)
);

Mat2AXIM Mat2AXIM_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Mat2AXIM_U0_ap_start),
    .ap_done(Mat2AXIM_U0_ap_done),
    .ap_continue(Mat2AXIM_U0_ap_continue),
    .ap_idle(Mat2AXIM_U0_ap_idle),
    .ap_ready(Mat2AXIM_U0_ap_ready),
    .img_data_stream_V_dout(dst_data_stream_0_V_dout),
    .img_data_stream_V_empty_n(dst_data_stream_0_V_empty_n),
    .img_data_stream_V_read(Mat2AXIM_U0_img_data_stream_V_read),
    .fb_address0(Mat2AXIM_U0_fb_address0),
    .fb_ce0(Mat2AXIM_U0_fb_ce0),
    .fb_we0(Mat2AXIM_U0_fb_we0),
    .fb_d0(Mat2AXIM_U0_fb_d0)
);

fifo_w12_d2_A src_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc_U0_src_rows_V_out_din),
    .if_full_n(src_rows_V_c_full_n),
    .if_write(Block_proc_U0_src_rows_V_out_write),
    .if_dout(src_rows_V_c_dout),
    .if_empty_n(src_rows_V_c_empty_n),
    .if_read(AXIM2Mat_U0_img_rows_V_read)
);

fifo_w12_d2_A src_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc_U0_src_cols_V_out_din),
    .if_full_n(src_cols_V_c_full_n),
    .if_write(Block_proc_U0_src_cols_V_out_write),
    .if_dout(src_cols_V_c_dout),
    .if_empty_n(src_cols_V_c_empty_n),
    .if_read(AXIM2Mat_U0_img_cols_V_read)
);

fifo_w8_d2_A src_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIM2Mat_U0_img_data_stream_V_din),
    .if_full_n(src_data_stream_0_V_full_n),
    .if_write(AXIM2Mat_U0_img_data_stream_V_write),
    .if_dout(src_data_stream_0_V_dout),
    .if_empty_n(src_data_stream_0_V_empty_n),
    .if_read(Filter2D_U0_p_src_data_stream_V_read)
);

fifo_w12_d2_A src_rows_V_c8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIM2Mat_U0_img_rows_V_out_din),
    .if_full_n(src_rows_V_c8_full_n),
    .if_write(AXIM2Mat_U0_img_rows_V_out_write),
    .if_dout(src_rows_V_c8_dout),
    .if_empty_n(src_rows_V_c8_empty_n),
    .if_read(Filter2D_U0_p_src_rows_V_read)
);

fifo_w12_d2_A src_cols_V_c9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIM2Mat_U0_img_cols_V_out_din),
    .if_full_n(src_cols_V_c9_full_n),
    .if_write(AXIM2Mat_U0_img_cols_V_out_write),
    .if_dout(src_cols_V_c9_dout),
    .if_empty_n(src_cols_V_c9_empty_n),
    .if_read(Filter2D_U0_p_src_cols_V_read)
);

fifo_w8_d2_A dst_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Filter2D_U0_p_dst_data_stream_V_din),
    .if_full_n(dst_data_stream_0_V_full_n),
    .if_write(Filter2D_U0_p_dst_data_stream_V_write),
    .if_dout(dst_data_stream_0_V_dout),
    .if_empty_n(dst_data_stream_0_V_empty_n),
    .if_read(Mat2AXIM_U0_img_data_stream_V_read)
);

start_for_Filter2eOg start_for_Filter2eOg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Filter2D_U0_din),
    .if_full_n(start_for_Filter2D_U0_full_n),
    .if_write(AXIM2Mat_U0_start_write),
    .if_dout(start_for_Filter2D_U0_dout),
    .if_empty_n(start_for_Filter2D_U0_empty_n),
    .if_read(Filter2D_U0_ap_ready)
);

start_for_Mat2AXIfYi start_for_Mat2AXIfYi_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIM_U0_din),
    .if_full_n(start_for_Mat2AXIM_U0_full_n),
    .if_write(Filter2D_U0_start_write),
    .if_dout(start_for_Mat2AXIM_U0_dout),
    .if_empty_n(start_for_Mat2AXIM_U0_empty_n),
    .if_read(Mat2AXIM_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_AXIM2Mat_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIM2Mat_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIM2Mat_U0_ap_ready <= ap_sync_AXIM2Mat_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Block_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_proc_U0_ap_ready <= ap_sync_Block_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == AXIM2Mat_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        AXIM2Mat_U0_ap_ready_count <= (AXIM2Mat_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == AXIM2Mat_U0_ap_ready))) begin
        AXIM2Mat_U0_ap_ready_count <= (AXIM2Mat_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Block_proc_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Block_proc_U0_ap_ready_count <= (Block_proc_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == Block_proc_U0_ap_ready))) begin
        Block_proc_U0_ap_ready_count <= (Block_proc_U0_ap_ready_count + 2'd1);
    end
end

assign AXIM2Mat_U0_ap_continue = 1'b1;

assign AXIM2Mat_U0_ap_start = ((ap_sync_reg_AXIM2Mat_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_proc_U0_ap_continue = 1'b1;

assign Block_proc_U0_ap_start = ((ap_sync_reg_Block_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_proc_U0_start_full_n = 1'b1;

assign Block_proc_U0_start_write = 1'b0;

assign Filter2D_U0_ap_continue = 1'b1;

assign Filter2D_U0_ap_start = start_for_Filter2D_U0_empty_n;

assign Mat2AXIM_U0_ap_continue = 1'b1;

assign Mat2AXIM_U0_ap_start = start_for_Mat2AXIM_U0_empty_n;

assign Mat2AXIM_U0_start_full_n = 1'b1;

assign Mat2AXIM_U0_start_write = 1'b0;

assign ap_done = Mat2AXIM_U0_ap_done;

assign ap_idle = (Mat2AXIM_U0_ap_idle & Filter2D_U0_ap_idle & Block_proc_U0_ap_idle & AXIM2Mat_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_AXIM2Mat_U0_ap_ready = (ap_sync_reg_AXIM2Mat_U0_ap_ready | AXIM2Mat_U0_ap_ready);

assign ap_sync_Block_proc_U0_ap_ready = (ap_sync_reg_Block_proc_U0_ap_ready | Block_proc_U0_ap_ready);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIM_U0_ap_done;

assign ap_sync_ready = (ap_sync_Block_proc_U0_ap_ready & ap_sync_AXIM2Mat_U0_ap_ready);

assign image_in_address0 = AXIM2Mat_U0_fb_address0;

assign image_in_address1 = 21'd0;

assign image_in_ce0 = AXIM2Mat_U0_fb_ce0;

assign image_in_ce1 = 1'b0;

assign image_in_d0 = 8'd0;

assign image_in_d1 = 8'd0;

assign image_in_we0 = 1'b0;

assign image_in_we1 = 1'b0;

assign image_out_address0 = Mat2AXIM_U0_fb_address0;

assign image_out_address1 = 21'd0;

assign image_out_ce0 = Mat2AXIM_U0_fb_ce0;

assign image_out_ce1 = 1'b0;

assign image_out_d0 = Mat2AXIM_U0_fb_d0;

assign image_out_d1 = 8'd0;

assign image_out_we0 = Mat2AXIM_U0_fb_we0;

assign image_out_we1 = 1'b0;

assign start_for_Filter2D_U0_din = 1'b1;

assign start_for_Mat2AXIM_U0_din = 1'b1;

endmodule //conv