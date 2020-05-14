// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 14 21:41:15 2020
// Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/localization-hls/Hardware/vivado/ZedBoard_DMA_SimpleDesign/ZedBoard_DMA_SimpleDesign.srcs/sources_1/bd/design_1/ip/design_1_passthrough_0_0/design_1_passthrough_0_0_sim_netlist.v
// Design      : design_1_passthrough_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_passthrough_0_0,passthrough,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "passthrough,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_passthrough_0_0
   (video_in_TVALID,
    video_in_TREADY,
    video_in_TDATA,
    video_in_TKEEP,
    video_in_TSTRB,
    video_in_TUSER,
    video_in_TLAST,
    video_in_TID,
    video_in_TDEST,
    video_out_TVALID,
    video_out_TREADY,
    video_out_TDATA,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST,
    video_out_TID,
    video_out_TDEST,
    ap_clk,
    ap_rst_n);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input video_in_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output video_in_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TDATA" *) input [7:0]video_in_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TKEEP" *) input [0:0]video_in_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TSTRB" *) input [0:0]video_in_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input [0:0]video_in_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input [0:0]video_in_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TID" *) input [0:0]video_in_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TDEST" *) input [0:0]video_in_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output video_out_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDATA" *) output [7:0]video_out_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TKEEP" *) output [0:0]video_out_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TSTRB" *) output [0:0]video_out_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output [0:0]video_out_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TID" *) output [0:0]video_out_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDEST" *) output [0:0]video_out_TDEST;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]video_in_TDATA;
  wire [0:0]video_in_TDEST;
  wire [0:0]video_in_TID;
  wire [0:0]video_in_TKEEP;
  wire [0:0]video_in_TLAST;
  wire video_in_TREADY;
  wire [0:0]video_in_TSTRB;
  wire [0:0]video_in_TUSER;
  wire video_in_TVALID;
  wire [7:0]video_out_TDATA;
  wire [0:0]video_out_TDEST;
  wire [0:0]video_out_TID;
  wire [0:0]video_out_TKEEP;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TSTRB;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;

  design_1_passthrough_0_0_passthrough U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .video_in_TDATA(video_in_TDATA),
        .video_in_TDEST(video_in_TDEST),
        .video_in_TID(video_in_TID),
        .video_in_TKEEP(video_in_TKEEP),
        .video_in_TLAST(video_in_TLAST),
        .video_in_TREADY(video_in_TREADY),
        .video_in_TSTRB(video_in_TSTRB),
        .video_in_TUSER(video_in_TUSER),
        .video_in_TVALID(video_in_TVALID),
        .video_out_TDATA(video_out_TDATA),
        .video_out_TDEST(video_out_TDEST),
        .video_out_TID(video_out_TID),
        .video_out_TKEEP(video_out_TKEEP),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB),
        .video_out_TUSER(video_out_TUSER),
        .video_out_TVALID(video_out_TVALID));
endmodule

(* ORIG_REF_NAME = "AXIvideo2Mat_DMA" *) 
module design_1_passthrough_0_0_AXIvideo2Mat_DMA
   (start_once_reg,
    ce,
    \ap_CS_fsm_reg[0]_0 ,
    E,
    internal_full_n_reg,
    video_in_TREADY,
    \tmp_data_V_reg_269_reg[7]_0 ,
    ap_rst,
    ap_clk,
    ap_rst_n,
    img_1_data_stream_0_full_n,
    \ap_CS_fsm_reg[0]_1 ,
    img_1_rows_V_c4_empty_n,
    Q,
    start_for_Mat2AXIvideo_DMA_U0_empty_n,
    img_1_cols_V_c5_empty_n,
    img_1_cols_V_c_full_n,
    img_1_rows_V_c_full_n,
    \ap_CS_fsm_reg[1]_0 ,
    img_1_rows_V_c4_full_n,
    img_1_rows_V_c_empty_n,
    img_1_cols_V_c_empty_n,
    img_1_cols_V_c5_full_n,
    D,
    start_for_Mat2AXIvideo_DMA_U0_full_n);
  output start_once_reg;
  output ce;
  output \ap_CS_fsm_reg[0]_0 ;
  output [0:0]E;
  output [0:0]internal_full_n_reg;
  output video_in_TREADY;
  output [7:0]\tmp_data_V_reg_269_reg[7]_0 ;
  input ap_rst;
  input ap_clk;
  input ap_rst_n;
  input img_1_data_stream_0_full_n;
  input \ap_CS_fsm_reg[0]_1 ;
  input img_1_rows_V_c4_empty_n;
  input [0:0]Q;
  input start_for_Mat2AXIvideo_DMA_U0_empty_n;
  input img_1_cols_V_c5_empty_n;
  input img_1_cols_V_c_full_n;
  input img_1_rows_V_c_full_n;
  input \ap_CS_fsm_reg[1]_0 ;
  input img_1_rows_V_c4_full_n;
  input img_1_rows_V_c_empty_n;
  input img_1_cols_V_c_empty_n;
  input img_1_cols_V_c5_full_n;
  input [8:0]D;
  input start_for_Mat2AXIvideo_DMA_U0_full_n;

  wire [8:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \SRL_SIG[0][7]_i_2_n_0 ;
  wire ack_out;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[0]_1 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm2_carry__0_i_1_n_0;
  wire ap_NS_fsm2_carry__0_i_2_n_0;
  wire ap_NS_fsm2_carry__0_i_3_n_0;
  wire ap_NS_fsm2_carry__0_i_4_n_0;
  wire ap_NS_fsm2_carry__0_n_0;
  wire ap_NS_fsm2_carry__0_n_1;
  wire ap_NS_fsm2_carry__0_n_2;
  wire ap_NS_fsm2_carry__0_n_3;
  wire ap_NS_fsm2_carry__1_i_1_n_0;
  wire ap_NS_fsm2_carry__1_i_2_n_0;
  wire ap_NS_fsm2_carry__1_i_3_n_0;
  wire ap_NS_fsm2_carry__1_n_2;
  wire ap_NS_fsm2_carry__1_n_3;
  wire ap_NS_fsm2_carry_i_1_n_0;
  wire ap_NS_fsm2_carry_i_2_n_0;
  wire ap_NS_fsm2_carry_i_3_n_0;
  wire ap_NS_fsm2_carry_i_4_n_0;
  wire ap_NS_fsm2_carry_n_0;
  wire ap_NS_fsm2_carry_n_1;
  wire ap_NS_fsm2_carry_n_2;
  wire ap_NS_fsm2_carry_n_3;
  wire ap_NS_fsm3_carry__0_i_1_n_0;
  wire ap_NS_fsm3_carry__0_i_2_n_0;
  wire ap_NS_fsm3_carry__0_i_3_n_0;
  wire ap_NS_fsm3_carry__0_i_4_n_0;
  wire ap_NS_fsm3_carry__0_n_0;
  wire ap_NS_fsm3_carry__0_n_1;
  wire ap_NS_fsm3_carry__0_n_2;
  wire ap_NS_fsm3_carry__0_n_3;
  wire ap_NS_fsm3_carry__1_i_1_n_0;
  wire ap_NS_fsm3_carry__1_i_2_n_0;
  wire ap_NS_fsm3_carry__1_i_3_n_0;
  wire ap_NS_fsm3_carry__1_n_2;
  wire ap_NS_fsm3_carry__1_n_3;
  wire ap_NS_fsm3_carry_i_1_n_0;
  wire ap_NS_fsm3_carry_i_2_n_0;
  wire ap_NS_fsm3_carry_i_3_n_0;
  wire ap_NS_fsm3_carry_i_4_n_0;
  wire ap_NS_fsm3_carry_n_0;
  wire ap_NS_fsm3_carry_n_1;
  wire ap_NS_fsm3_carry_n_2;
  wire ap_NS_fsm3_carry_n_3;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_rst;
  wire ap_rst_n;
  wire ce;
  wire [31:0]i_V_fu_220_p2;
  wire [31:0]i_V_reg_255;
  wire \i_V_reg_255_reg[12]_i_1_n_0 ;
  wire \i_V_reg_255_reg[12]_i_1_n_1 ;
  wire \i_V_reg_255_reg[12]_i_1_n_2 ;
  wire \i_V_reg_255_reg[12]_i_1_n_3 ;
  wire \i_V_reg_255_reg[16]_i_1_n_0 ;
  wire \i_V_reg_255_reg[16]_i_1_n_1 ;
  wire \i_V_reg_255_reg[16]_i_1_n_2 ;
  wire \i_V_reg_255_reg[16]_i_1_n_3 ;
  wire \i_V_reg_255_reg[20]_i_1_n_0 ;
  wire \i_V_reg_255_reg[20]_i_1_n_1 ;
  wire \i_V_reg_255_reg[20]_i_1_n_2 ;
  wire \i_V_reg_255_reg[20]_i_1_n_3 ;
  wire \i_V_reg_255_reg[24]_i_1_n_0 ;
  wire \i_V_reg_255_reg[24]_i_1_n_1 ;
  wire \i_V_reg_255_reg[24]_i_1_n_2 ;
  wire \i_V_reg_255_reg[24]_i_1_n_3 ;
  wire \i_V_reg_255_reg[28]_i_1_n_0 ;
  wire \i_V_reg_255_reg[28]_i_1_n_1 ;
  wire \i_V_reg_255_reg[28]_i_1_n_2 ;
  wire \i_V_reg_255_reg[28]_i_1_n_3 ;
  wire \i_V_reg_255_reg[31]_i_1_n_2 ;
  wire \i_V_reg_255_reg[31]_i_1_n_3 ;
  wire \i_V_reg_255_reg[4]_i_1_n_0 ;
  wire \i_V_reg_255_reg[4]_i_1_n_1 ;
  wire \i_V_reg_255_reg[4]_i_1_n_2 ;
  wire \i_V_reg_255_reg[4]_i_1_n_3 ;
  wire \i_V_reg_255_reg[8]_i_1_n_0 ;
  wire \i_V_reg_255_reg[8]_i_1_n_1 ;
  wire \i_V_reg_255_reg[8]_i_1_n_2 ;
  wire \i_V_reg_255_reg[8]_i_1_n_3 ;
  wire icmp_ln22_fu_215_p2;
  wire icmp_ln25_reg_260;
  wire img_1_cols_V_c5_empty_n;
  wire img_1_cols_V_c5_full_n;
  wire img_1_cols_V_c_empty_n;
  wire img_1_cols_V_c_full_n;
  wire img_1_data_stream_0_full_n;
  wire img_1_rows_V_c4_empty_n;
  wire img_1_rows_V_c4_full_n;
  wire img_1_rows_V_c_empty_n;
  wire img_1_rows_V_c_full_n;
  wire [0:0]internal_full_n_reg;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_0;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_10;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_11;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_12;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_13;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_14;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_5;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_6;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_7;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_8;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_9;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;
  wire start_for_Mat2AXIvideo_DMA_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire t_V_2_reg_196;
  wire \t_V_2_reg_196[0]_i_4_n_0 ;
  wire [31:0]t_V_2_reg_196_reg;
  wire \t_V_2_reg_196_reg[0]_i_3_n_0 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_1 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_2 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_3 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_4 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_5 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_6 ;
  wire \t_V_2_reg_196_reg[0]_i_3_n_7 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_0 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[12]_i_1_n_7 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_0 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[16]_i_1_n_7 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_0 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[20]_i_1_n_7 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_0 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[24]_i_1_n_7 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[28]_i_1_n_7 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_0 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[4]_i_1_n_7 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_0 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_1 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_2 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_3 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_4 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_5 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_6 ;
  wire \t_V_2_reg_196_reg[8]_i_1_n_7 ;
  wire [31:0]t_V_reg_185;
  wire t_V_reg_185_0;
  wire [7:0]\tmp_data_V_reg_269_reg[7]_0 ;
  wire video_in_TREADY;
  wire [3:0]NLW_ap_NS_fsm2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ap_NS_fsm2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm3_carry_O_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm3_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ap_NS_fsm3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm3_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_i_V_reg_255_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_255_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_t_V_2_reg_196_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(icmp_ln25_reg_260),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\SRL_SIG[0][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(icmp_ln22_fu_215_p2),
        .I1(ap_CS_fsm_state2),
        .I2(\ap_CS_fsm_reg[0]_1 ),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(img_1_rows_V_c4_full_n),
        .I3(img_1_rows_V_c_empty_n),
        .I4(img_1_cols_V_c_empty_n),
        .I5(img_1_cols_V_c5_full_n),
        .O(\ap_CS_fsm_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(icmp_ln22_fu_215_p2),
        .I1(ap_CS_fsm_state2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\ap_CS_fsm[2]_i_2_n_0 ),
        .I4(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(icmp_ln25_reg_260),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(img_1_data_stream_0_full_n),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888808800000000)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(icmp_ln25_reg_260),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(img_1_data_stream_0_full_n),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  CARRY4 ap_NS_fsm2_carry
       (.CI(1'b0),
        .CO({ap_NS_fsm2_carry_n_0,ap_NS_fsm2_carry_n_1,ap_NS_fsm2_carry_n_2,ap_NS_fsm2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm2_carry_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm2_carry_i_1_n_0,ap_NS_fsm2_carry_i_2_n_0,ap_NS_fsm2_carry_i_3_n_0,ap_NS_fsm2_carry_i_4_n_0}));
  CARRY4 ap_NS_fsm2_carry__0
       (.CI(ap_NS_fsm2_carry_n_0),
        .CO({ap_NS_fsm2_carry__0_n_0,ap_NS_fsm2_carry__0_n_1,ap_NS_fsm2_carry__0_n_2,ap_NS_fsm2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm2_carry__0_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm2_carry__0_i_1_n_0,ap_NS_fsm2_carry__0_i_2_n_0,ap_NS_fsm2_carry__0_i_3_n_0,ap_NS_fsm2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry__0_i_1
       (.I0(t_V_reg_185[23]),
        .I1(t_V_reg_185[22]),
        .I2(t_V_reg_185[21]),
        .O(ap_NS_fsm2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry__0_i_2
       (.I0(t_V_reg_185[20]),
        .I1(t_V_reg_185[19]),
        .I2(t_V_reg_185[18]),
        .O(ap_NS_fsm2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry__0_i_3
       (.I0(t_V_reg_185[17]),
        .I1(t_V_reg_185[16]),
        .I2(t_V_reg_185[15]),
        .O(ap_NS_fsm2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry__0_i_4
       (.I0(t_V_reg_185[14]),
        .I1(t_V_reg_185[13]),
        .I2(t_V_reg_185[12]),
        .O(ap_NS_fsm2_carry__0_i_4_n_0));
  CARRY4 ap_NS_fsm2_carry__1
       (.CI(ap_NS_fsm2_carry__0_n_0),
        .CO({NLW_ap_NS_fsm2_carry__1_CO_UNCONNECTED[3],icmp_ln22_fu_215_p2,ap_NS_fsm2_carry__1_n_2,ap_NS_fsm2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,ap_NS_fsm2_carry__1_i_1_n_0,ap_NS_fsm2_carry__1_i_2_n_0,ap_NS_fsm2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ap_NS_fsm2_carry__1_i_1
       (.I0(t_V_reg_185[30]),
        .I1(t_V_reg_185[31]),
        .O(ap_NS_fsm2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry__1_i_2
       (.I0(t_V_reg_185[29]),
        .I1(t_V_reg_185[28]),
        .I2(t_V_reg_185[27]),
        .O(ap_NS_fsm2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry__1_i_3
       (.I0(t_V_reg_185[26]),
        .I1(t_V_reg_185[25]),
        .I2(t_V_reg_185[24]),
        .O(ap_NS_fsm2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry_i_1
       (.I0(t_V_reg_185[11]),
        .I1(t_V_reg_185[10]),
        .I2(t_V_reg_185[9]),
        .O(ap_NS_fsm2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ap_NS_fsm2_carry_i_2
       (.I0(t_V_reg_185[6]),
        .I1(t_V_reg_185[8]),
        .I2(t_V_reg_185[7]),
        .O(ap_NS_fsm2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ap_NS_fsm2_carry_i_3
       (.I0(t_V_reg_185[3]),
        .I1(t_V_reg_185[5]),
        .I2(t_V_reg_185[4]),
        .O(ap_NS_fsm2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm2_carry_i_4
       (.I0(t_V_reg_185[0]),
        .I1(t_V_reg_185[2]),
        .I2(t_V_reg_185[1]),
        .O(ap_NS_fsm2_carry_i_4_n_0));
  CARRY4 ap_NS_fsm3_carry
       (.CI(1'b0),
        .CO({ap_NS_fsm3_carry_n_0,ap_NS_fsm3_carry_n_1,ap_NS_fsm3_carry_n_2,ap_NS_fsm3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm3_carry_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm3_carry_i_1_n_0,ap_NS_fsm3_carry_i_2_n_0,ap_NS_fsm3_carry_i_3_n_0,ap_NS_fsm3_carry_i_4_n_0}));
  CARRY4 ap_NS_fsm3_carry__0
       (.CI(ap_NS_fsm3_carry_n_0),
        .CO({ap_NS_fsm3_carry__0_n_0,ap_NS_fsm3_carry__0_n_1,ap_NS_fsm3_carry__0_n_2,ap_NS_fsm3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm3_carry__0_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm3_carry__0_i_1_n_0,ap_NS_fsm3_carry__0_i_2_n_0,ap_NS_fsm3_carry__0_i_3_n_0,ap_NS_fsm3_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry__0_i_1
       (.I0(t_V_2_reg_196_reg[23]),
        .I1(t_V_2_reg_196_reg[22]),
        .I2(t_V_2_reg_196_reg[21]),
        .O(ap_NS_fsm3_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry__0_i_2
       (.I0(t_V_2_reg_196_reg[20]),
        .I1(t_V_2_reg_196_reg[19]),
        .I2(t_V_2_reg_196_reg[18]),
        .O(ap_NS_fsm3_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry__0_i_3
       (.I0(t_V_2_reg_196_reg[17]),
        .I1(t_V_2_reg_196_reg[16]),
        .I2(t_V_2_reg_196_reg[15]),
        .O(ap_NS_fsm3_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry__0_i_4
       (.I0(t_V_2_reg_196_reg[14]),
        .I1(t_V_2_reg_196_reg[13]),
        .I2(t_V_2_reg_196_reg[12]),
        .O(ap_NS_fsm3_carry__0_i_4_n_0));
  CARRY4 ap_NS_fsm3_carry__1
       (.CI(ap_NS_fsm3_carry__0_n_0),
        .CO({NLW_ap_NS_fsm3_carry__1_CO_UNCONNECTED[3],ap_condition_pp0_exit_iter0_state3,ap_NS_fsm3_carry__1_n_2,ap_NS_fsm3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm3_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,ap_NS_fsm3_carry__1_i_1_n_0,ap_NS_fsm3_carry__1_i_2_n_0,ap_NS_fsm3_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ap_NS_fsm3_carry__1_i_1
       (.I0(t_V_2_reg_196_reg[30]),
        .I1(t_V_2_reg_196_reg[31]),
        .O(ap_NS_fsm3_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry__1_i_2
       (.I0(t_V_2_reg_196_reg[29]),
        .I1(t_V_2_reg_196_reg[28]),
        .I2(t_V_2_reg_196_reg[27]),
        .O(ap_NS_fsm3_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry__1_i_3
       (.I0(t_V_2_reg_196_reg[26]),
        .I1(t_V_2_reg_196_reg[25]),
        .I2(t_V_2_reg_196_reg[24]),
        .O(ap_NS_fsm3_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ap_NS_fsm3_carry_i_1
       (.I0(t_V_2_reg_196_reg[10]),
        .I1(t_V_2_reg_196_reg[9]),
        .I2(t_V_2_reg_196_reg[11]),
        .O(ap_NS_fsm3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ap_NS_fsm3_carry_i_2
       (.I0(t_V_2_reg_196_reg[6]),
        .I1(t_V_2_reg_196_reg[7]),
        .I2(t_V_2_reg_196_reg[8]),
        .O(ap_NS_fsm3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry_i_3
       (.I0(t_V_2_reg_196_reg[5]),
        .I1(t_V_2_reg_196_reg[4]),
        .I2(t_V_2_reg_196_reg[3]),
        .O(ap_NS_fsm3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm3_carry_i_4
       (.I0(t_V_2_reg_196_reg[0]),
        .I1(t_V_2_reg_196_reg[2]),
        .I2(t_V_2_reg_196_reg[1]),
        .O(ap_NS_fsm3_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hDDDD0D0000000000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[2]_i_2_n_0 ),
        .I2(icmp_ln22_fu_215_p2),
        .I3(ap_CS_fsm_state2),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln22_fu_215_p2),
        .O(ap_enable_reg_pp0_iter00));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_255[0]_i_1 
       (.I0(t_V_reg_185[0]),
        .O(i_V_fu_220_p2[0]));
  FDRE \i_V_reg_255_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[0]),
        .Q(i_V_reg_255[0]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[10]),
        .Q(i_V_reg_255[10]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[11]),
        .Q(i_V_reg_255[11]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[12]),
        .Q(i_V_reg_255[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[12]_i_1 
       (.CI(\i_V_reg_255_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_255_reg[12]_i_1_n_0 ,\i_V_reg_255_reg[12]_i_1_n_1 ,\i_V_reg_255_reg[12]_i_1_n_2 ,\i_V_reg_255_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[12:9]),
        .S(t_V_reg_185[12:9]));
  FDRE \i_V_reg_255_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[13]),
        .Q(i_V_reg_255[13]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[14]),
        .Q(i_V_reg_255[14]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[15]),
        .Q(i_V_reg_255[15]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[16]),
        .Q(i_V_reg_255[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[16]_i_1 
       (.CI(\i_V_reg_255_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_255_reg[16]_i_1_n_0 ,\i_V_reg_255_reg[16]_i_1_n_1 ,\i_V_reg_255_reg[16]_i_1_n_2 ,\i_V_reg_255_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[16:13]),
        .S(t_V_reg_185[16:13]));
  FDRE \i_V_reg_255_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[17]),
        .Q(i_V_reg_255[17]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[18]),
        .Q(i_V_reg_255[18]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[19]),
        .Q(i_V_reg_255[19]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[1]),
        .Q(i_V_reg_255[1]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[20]),
        .Q(i_V_reg_255[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[20]_i_1 
       (.CI(\i_V_reg_255_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_255_reg[20]_i_1_n_0 ,\i_V_reg_255_reg[20]_i_1_n_1 ,\i_V_reg_255_reg[20]_i_1_n_2 ,\i_V_reg_255_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[20:17]),
        .S(t_V_reg_185[20:17]));
  FDRE \i_V_reg_255_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[21]),
        .Q(i_V_reg_255[21]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[22]),
        .Q(i_V_reg_255[22]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[23]),
        .Q(i_V_reg_255[23]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[24]),
        .Q(i_V_reg_255[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[24]_i_1 
       (.CI(\i_V_reg_255_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_255_reg[24]_i_1_n_0 ,\i_V_reg_255_reg[24]_i_1_n_1 ,\i_V_reg_255_reg[24]_i_1_n_2 ,\i_V_reg_255_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[24:21]),
        .S(t_V_reg_185[24:21]));
  FDRE \i_V_reg_255_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[25]),
        .Q(i_V_reg_255[25]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[26]),
        .Q(i_V_reg_255[26]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[27]),
        .Q(i_V_reg_255[27]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[28]),
        .Q(i_V_reg_255[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[28]_i_1 
       (.CI(\i_V_reg_255_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_255_reg[28]_i_1_n_0 ,\i_V_reg_255_reg[28]_i_1_n_1 ,\i_V_reg_255_reg[28]_i_1_n_2 ,\i_V_reg_255_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[28:25]),
        .S(t_V_reg_185[28:25]));
  FDRE \i_V_reg_255_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[29]),
        .Q(i_V_reg_255[29]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[2]),
        .Q(i_V_reg_255[2]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[30]),
        .Q(i_V_reg_255[30]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[31]),
        .Q(i_V_reg_255[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[31]_i_1 
       (.CI(\i_V_reg_255_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_255_reg[31]_i_1_CO_UNCONNECTED [3:2],\i_V_reg_255_reg[31]_i_1_n_2 ,\i_V_reg_255_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_255_reg[31]_i_1_O_UNCONNECTED [3],i_V_fu_220_p2[31:29]}),
        .S({1'b0,t_V_reg_185[31:29]}));
  FDRE \i_V_reg_255_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[3]),
        .Q(i_V_reg_255[3]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[4]),
        .Q(i_V_reg_255[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_255_reg[4]_i_1_n_0 ,\i_V_reg_255_reg[4]_i_1_n_1 ,\i_V_reg_255_reg[4]_i_1_n_2 ,\i_V_reg_255_reg[4]_i_1_n_3 }),
        .CYINIT(t_V_reg_185[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[4:1]),
        .S(t_V_reg_185[4:1]));
  FDRE \i_V_reg_255_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[5]),
        .Q(i_V_reg_255[5]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[6]),
        .Q(i_V_reg_255[6]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[7]),
        .Q(i_V_reg_255[7]),
        .R(1'b0));
  FDRE \i_V_reg_255_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[8]),
        .Q(i_V_reg_255[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_255_reg[8]_i_1 
       (.CI(\i_V_reg_255_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_255_reg[8]_i_1_n_0 ,\i_V_reg_255_reg[8]_i_1_n_1 ,\i_V_reg_255_reg[8]_i_1_n_2 ,\i_V_reg_255_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_220_p2[8:5]),
        .S(t_V_reg_185[8:5]));
  FDRE \i_V_reg_255_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_220_p2[9]),
        .Q(i_V_reg_255[9]),
        .R(1'b0));
  FDRE \icmp_ln25_reg_260_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_5),
        .Q(icmp_ln25_reg_260),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mOutPtr[1]_i_1__1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(img_1_rows_V_c4_empty_n),
        .I2(Q),
        .I3(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I4(img_1_cols_V_c5_empty_n),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mOutPtr[1]_i_1__2 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(img_1_cols_V_c_full_n),
        .I2(img_1_rows_V_c_full_n),
        .O(internal_full_n_reg));
  design_1_passthrough_0_0_regslice_both_5 regslice_both_AXI_video_strm_V_data_V_U
       (.CO(ap_condition_pp0_exit_iter0_state3),
        .D(D),
        .E(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .Q({ap_CS_fsm_pp0_stage0,ap_CS_fsm_state2}),
        .\SRL_SIG_reg[1][0] (\SRL_SIG[0][7]_i_2_n_0 ),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter00(ap_enable_reg_pp0_iter00),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_enable_reg_pp0_iter1_reg_0(\ap_CS_fsm[2]_i_2_n_0 ),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_AXI_video_strm_V_data_V_U_n_0),
        .ce(ce),
        .icmp_ln25_reg_260(icmp_ln25_reg_260),
        .\icmp_ln25_reg_260_reg[0] (regslice_both_AXI_video_strm_V_data_V_U_n_5),
        .img_1_data_stream_0_full_n(img_1_data_stream_0_full_n),
        .\odata_int_reg[7] ({regslice_both_AXI_video_strm_V_data_V_U_n_7,regslice_both_AXI_video_strm_V_data_V_U_n_8,regslice_both_AXI_video_strm_V_data_V_U_n_9,regslice_both_AXI_video_strm_V_data_V_U_n_10,regslice_both_AXI_video_strm_V_data_V_U_n_11,regslice_both_AXI_video_strm_V_data_V_U_n_12,regslice_both_AXI_video_strm_V_data_V_U_n_13,regslice_both_AXI_video_strm_V_data_V_U_n_14}),
        .t_V_2_reg_196(t_V_2_reg_196),
        .\t_V_2_reg_196_reg[0] (icmp_ln22_fu_215_p2),
        .video_in_TREADY(video_in_TREADY));
  LUT4 #(
    .INIT(16'h0EEE)) 
    start_once_reg_i_1
       (.I0(start_once_reg),
        .I1(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .I2(icmp_ln22_fu_215_p2),
        .I3(ap_CS_fsm_state2),
        .O(start_once_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_0),
        .Q(start_once_reg),
        .R(ap_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_2_reg_196[0]_i_4 
       (.I0(t_V_2_reg_196_reg[0]),
        .O(\t_V_2_reg_196[0]_i_4_n_0 ));
  FDRE \t_V_2_reg_196_reg[0] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[0]_i_3_n_7 ),
        .Q(t_V_2_reg_196_reg[0]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_2_reg_196_reg[0]_i_3_n_0 ,\t_V_2_reg_196_reg[0]_i_3_n_1 ,\t_V_2_reg_196_reg[0]_i_3_n_2 ,\t_V_2_reg_196_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_2_reg_196_reg[0]_i_3_n_4 ,\t_V_2_reg_196_reg[0]_i_3_n_5 ,\t_V_2_reg_196_reg[0]_i_3_n_6 ,\t_V_2_reg_196_reg[0]_i_3_n_7 }),
        .S({t_V_2_reg_196_reg[3:1],\t_V_2_reg_196[0]_i_4_n_0 }));
  FDRE \t_V_2_reg_196_reg[10] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[8]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[10]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[11] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[8]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[11]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[12] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[12]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[12]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[12]_i_1 
       (.CI(\t_V_2_reg_196_reg[8]_i_1_n_0 ),
        .CO({\t_V_2_reg_196_reg[12]_i_1_n_0 ,\t_V_2_reg_196_reg[12]_i_1_n_1 ,\t_V_2_reg_196_reg[12]_i_1_n_2 ,\t_V_2_reg_196_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[12]_i_1_n_4 ,\t_V_2_reg_196_reg[12]_i_1_n_5 ,\t_V_2_reg_196_reg[12]_i_1_n_6 ,\t_V_2_reg_196_reg[12]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[15:12]));
  FDRE \t_V_2_reg_196_reg[13] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[12]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[13]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[14] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[12]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[14]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[15] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[12]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[15]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[16] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[16]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[16]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[16]_i_1 
       (.CI(\t_V_2_reg_196_reg[12]_i_1_n_0 ),
        .CO({\t_V_2_reg_196_reg[16]_i_1_n_0 ,\t_V_2_reg_196_reg[16]_i_1_n_1 ,\t_V_2_reg_196_reg[16]_i_1_n_2 ,\t_V_2_reg_196_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[16]_i_1_n_4 ,\t_V_2_reg_196_reg[16]_i_1_n_5 ,\t_V_2_reg_196_reg[16]_i_1_n_6 ,\t_V_2_reg_196_reg[16]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[19:16]));
  FDRE \t_V_2_reg_196_reg[17] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[16]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[17]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[18] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[16]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[18]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[19] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[16]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[19]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[1] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[0]_i_3_n_6 ),
        .Q(t_V_2_reg_196_reg[1]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[20] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[20]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[20]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[20]_i_1 
       (.CI(\t_V_2_reg_196_reg[16]_i_1_n_0 ),
        .CO({\t_V_2_reg_196_reg[20]_i_1_n_0 ,\t_V_2_reg_196_reg[20]_i_1_n_1 ,\t_V_2_reg_196_reg[20]_i_1_n_2 ,\t_V_2_reg_196_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[20]_i_1_n_4 ,\t_V_2_reg_196_reg[20]_i_1_n_5 ,\t_V_2_reg_196_reg[20]_i_1_n_6 ,\t_V_2_reg_196_reg[20]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[23:20]));
  FDRE \t_V_2_reg_196_reg[21] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[20]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[21]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[22] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[20]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[22]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[23] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[20]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[23]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[24] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[24]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[24]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[24]_i_1 
       (.CI(\t_V_2_reg_196_reg[20]_i_1_n_0 ),
        .CO({\t_V_2_reg_196_reg[24]_i_1_n_0 ,\t_V_2_reg_196_reg[24]_i_1_n_1 ,\t_V_2_reg_196_reg[24]_i_1_n_2 ,\t_V_2_reg_196_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[24]_i_1_n_4 ,\t_V_2_reg_196_reg[24]_i_1_n_5 ,\t_V_2_reg_196_reg[24]_i_1_n_6 ,\t_V_2_reg_196_reg[24]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[27:24]));
  FDRE \t_V_2_reg_196_reg[25] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[24]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[25]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[26] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[24]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[26]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[27] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[24]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[27]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[28] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[28]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[28]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[28]_i_1 
       (.CI(\t_V_2_reg_196_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_2_reg_196_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_2_reg_196_reg[28]_i_1_n_1 ,\t_V_2_reg_196_reg[28]_i_1_n_2 ,\t_V_2_reg_196_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[28]_i_1_n_4 ,\t_V_2_reg_196_reg[28]_i_1_n_5 ,\t_V_2_reg_196_reg[28]_i_1_n_6 ,\t_V_2_reg_196_reg[28]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[31:28]));
  FDRE \t_V_2_reg_196_reg[29] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[28]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[29]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[2] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[0]_i_3_n_5 ),
        .Q(t_V_2_reg_196_reg[2]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[30] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[28]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[30]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[31] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[28]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[31]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[3] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[0]_i_3_n_4 ),
        .Q(t_V_2_reg_196_reg[3]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[4] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[4]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[4]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[4]_i_1 
       (.CI(\t_V_2_reg_196_reg[0]_i_3_n_0 ),
        .CO({\t_V_2_reg_196_reg[4]_i_1_n_0 ,\t_V_2_reg_196_reg[4]_i_1_n_1 ,\t_V_2_reg_196_reg[4]_i_1_n_2 ,\t_V_2_reg_196_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[4]_i_1_n_4 ,\t_V_2_reg_196_reg[4]_i_1_n_5 ,\t_V_2_reg_196_reg[4]_i_1_n_6 ,\t_V_2_reg_196_reg[4]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[7:4]));
  FDRE \t_V_2_reg_196_reg[5] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[4]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[5]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[6] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[4]_i_1_n_5 ),
        .Q(t_V_2_reg_196_reg[6]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[7] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[4]_i_1_n_4 ),
        .Q(t_V_2_reg_196_reg[7]),
        .R(t_V_2_reg_196));
  FDRE \t_V_2_reg_196_reg[8] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[8]_i_1_n_7 ),
        .Q(t_V_2_reg_196_reg[8]),
        .R(t_V_2_reg_196));
  CARRY4 \t_V_2_reg_196_reg[8]_i_1 
       (.CI(\t_V_2_reg_196_reg[4]_i_1_n_0 ),
        .CO({\t_V_2_reg_196_reg[8]_i_1_n_0 ,\t_V_2_reg_196_reg[8]_i_1_n_1 ,\t_V_2_reg_196_reg[8]_i_1_n_2 ,\t_V_2_reg_196_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_196_reg[8]_i_1_n_4 ,\t_V_2_reg_196_reg[8]_i_1_n_5 ,\t_V_2_reg_196_reg[8]_i_1_n_6 ,\t_V_2_reg_196_reg[8]_i_1_n_7 }),
        .S(t_V_2_reg_196_reg[11:8]));
  FDRE \t_V_2_reg_196_reg[9] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(\t_V_2_reg_196_reg[8]_i_1_n_6 ),
        .Q(t_V_2_reg_196_reg[9]),
        .R(t_V_2_reg_196));
  LUT2 #(
    .INIT(4'h2)) 
    \t_V_reg_185[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_CS_fsm_state5),
        .O(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[0]),
        .Q(t_V_reg_185[0]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[10]),
        .Q(t_V_reg_185[10]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[11]),
        .Q(t_V_reg_185[11]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[12]),
        .Q(t_V_reg_185[12]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[13]),
        .Q(t_V_reg_185[13]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[14]),
        .Q(t_V_reg_185[14]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[15]),
        .Q(t_V_reg_185[15]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[16]),
        .Q(t_V_reg_185[16]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[17]),
        .Q(t_V_reg_185[17]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[18]),
        .Q(t_V_reg_185[18]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[19]),
        .Q(t_V_reg_185[19]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[1]),
        .Q(t_V_reg_185[1]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[20]),
        .Q(t_V_reg_185[20]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[21]),
        .Q(t_V_reg_185[21]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[22]),
        .Q(t_V_reg_185[22]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[23]),
        .Q(t_V_reg_185[23]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[24]),
        .Q(t_V_reg_185[24]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[25]),
        .Q(t_V_reg_185[25]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[26]),
        .Q(t_V_reg_185[26]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[27]),
        .Q(t_V_reg_185[27]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[28]),
        .Q(t_V_reg_185[28]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[29]),
        .Q(t_V_reg_185[29]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[2]),
        .Q(t_V_reg_185[2]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[30]),
        .Q(t_V_reg_185[30]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[31]),
        .Q(t_V_reg_185[31]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[3]),
        .Q(t_V_reg_185[3]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[4]),
        .Q(t_V_reg_185[4]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[5]),
        .Q(t_V_reg_185[5]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[6]),
        .Q(t_V_reg_185[6]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[7]),
        .Q(t_V_reg_185[7]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[8]),
        .Q(t_V_reg_185[8]),
        .R(t_V_reg_185_0));
  FDRE \t_V_reg_185_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_255[9]),
        .Q(t_V_reg_185[9]),
        .R(t_V_reg_185_0));
  FDRE \tmp_data_V_reg_269_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_14),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[1] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_13),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[2] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_12),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[3] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_11),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[4] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_10),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[5] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_9),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[6] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_8),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_269_reg[7] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_7),
        .Q(\tmp_data_V_reg_269_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Mat2AXIvideo_DMA" *) 
module design_1_passthrough_0_0_Mat2AXIvideo_DMA
   (ap_rst,
    CO,
    Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
    internal_empty_n_reg,
    Q,
    \ap_CS_fsm_reg[1]_0 ,
    \ireg_reg[8] ,
    \odata_int_reg[8] ,
    \ireg_reg[7] ,
    video_out_TSTRB,
    video_out_TLAST,
    ap_clk,
    ap_rst_n,
    video_out_TREADY,
    \ap_CS_fsm_reg[1]_1 ,
    start_for_Mat2AXIvideo_DMA_U0_empty_n,
    img_1_cols_V_c5_empty_n,
    img_1_rows_V_c4_empty_n,
    img_1_data_stream_0_empty_n,
    D,
    \odata_int_reg[7] );
  output ap_rst;
  output [0:0]CO;
  output Mat2AXIvideo_DMA_U0_img_data_stream_V_read;
  output internal_empty_n_reg;
  output [0:0]Q;
  output \ap_CS_fsm_reg[1]_0 ;
  output \ireg_reg[8] ;
  output [8:0]\odata_int_reg[8] ;
  output [7:0]\ireg_reg[7] ;
  output [0:0]video_out_TSTRB;
  output [0:0]video_out_TLAST;
  input ap_clk;
  input ap_rst_n;
  input video_out_TREADY;
  input \ap_CS_fsm_reg[1]_1 ;
  input start_for_Mat2AXIvideo_DMA_U0_empty_n;
  input img_1_cols_V_c5_empty_n;
  input img_1_rows_V_c4_empty_n;
  input img_1_data_stream_0_empty_n;
  input [7:0]D;
  input [7:0]\odata_int_reg[7] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire Mat2AXIvideo_DMA_U0_img_data_stream_V_read;
  wire [0:0]Q;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state6;
  wire [3:0]ap_NS_fsm;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_0 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_1 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_2 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_3 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__1_n_2 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__1_n_3 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_0 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_1 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_2 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_3 ;
  wire ap_NS_fsm4_carry__0_i_1_n_0;
  wire ap_NS_fsm4_carry__0_i_2_n_0;
  wire ap_NS_fsm4_carry__0_i_3_n_0;
  wire ap_NS_fsm4_carry__0_i_4_n_0;
  wire ap_NS_fsm4_carry__0_n_0;
  wire ap_NS_fsm4_carry__0_n_1;
  wire ap_NS_fsm4_carry__0_n_2;
  wire ap_NS_fsm4_carry__0_n_3;
  wire ap_NS_fsm4_carry__1_i_1_n_0;
  wire ap_NS_fsm4_carry__1_i_2_n_0;
  wire ap_NS_fsm4_carry__1_i_3_n_0;
  wire ap_NS_fsm4_carry__1_n_2;
  wire ap_NS_fsm4_carry__1_n_3;
  wire ap_NS_fsm4_carry_i_1_n_0;
  wire ap_NS_fsm4_carry_i_2_n_0;
  wire ap_NS_fsm4_carry_i_3_n_0;
  wire ap_NS_fsm4_carry_i_4_n_0;
  wire ap_NS_fsm4_carry_n_0;
  wire ap_NS_fsm4_carry_n_1;
  wire ap_NS_fsm4_carry_n_2;
  wire ap_NS_fsm4_carry_n_3;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_rst;
  wire ap_rst_n;
  wire [31:0]i_V_fu_214_p2;
  wire [31:0]i_V_reg_278;
  wire i_V_reg_2780;
  wire \i_V_reg_278_reg[12]_i_1_n_0 ;
  wire \i_V_reg_278_reg[12]_i_1_n_1 ;
  wire \i_V_reg_278_reg[12]_i_1_n_2 ;
  wire \i_V_reg_278_reg[12]_i_1_n_3 ;
  wire \i_V_reg_278_reg[16]_i_1_n_0 ;
  wire \i_V_reg_278_reg[16]_i_1_n_1 ;
  wire \i_V_reg_278_reg[16]_i_1_n_2 ;
  wire \i_V_reg_278_reg[16]_i_1_n_3 ;
  wire \i_V_reg_278_reg[20]_i_1_n_0 ;
  wire \i_V_reg_278_reg[20]_i_1_n_1 ;
  wire \i_V_reg_278_reg[20]_i_1_n_2 ;
  wire \i_V_reg_278_reg[20]_i_1_n_3 ;
  wire \i_V_reg_278_reg[24]_i_1_n_0 ;
  wire \i_V_reg_278_reg[24]_i_1_n_1 ;
  wire \i_V_reg_278_reg[24]_i_1_n_2 ;
  wire \i_V_reg_278_reg[24]_i_1_n_3 ;
  wire \i_V_reg_278_reg[28]_i_1_n_0 ;
  wire \i_V_reg_278_reg[28]_i_1_n_1 ;
  wire \i_V_reg_278_reg[28]_i_1_n_2 ;
  wire \i_V_reg_278_reg[28]_i_1_n_3 ;
  wire \i_V_reg_278_reg[31]_i_2_n_2 ;
  wire \i_V_reg_278_reg[31]_i_2_n_3 ;
  wire \i_V_reg_278_reg[4]_i_1_n_0 ;
  wire \i_V_reg_278_reg[4]_i_1_n_1 ;
  wire \i_V_reg_278_reg[4]_i_1_n_2 ;
  wire \i_V_reg_278_reg[4]_i_1_n_3 ;
  wire \i_V_reg_278_reg[8]_i_1_n_0 ;
  wire \i_V_reg_278_reg[8]_i_1_n_1 ;
  wire \i_V_reg_278_reg[8]_i_1_n_2 ;
  wire \i_V_reg_278_reg[8]_i_1_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire icmp_ln54_reg_288_pp0_iter1_reg;
  wire \icmp_ln54_reg_288_reg_n_0_[0] ;
  wire icmp_ln879_1_fu_244_p2;
  wire icmp_ln879_fu_224_p2;
  wire icmp_ln879_reg_283;
  wire icmp_ln879_reg_2830_carry__0_i_1_n_0;
  wire icmp_ln879_reg_2830_carry__0_i_2_n_0;
  wire icmp_ln879_reg_2830_carry__0_i_3_n_0;
  wire icmp_ln879_reg_2830_carry__0_i_4_n_0;
  wire icmp_ln879_reg_2830_carry__0_n_0;
  wire icmp_ln879_reg_2830_carry__0_n_1;
  wire icmp_ln879_reg_2830_carry__0_n_2;
  wire icmp_ln879_reg_2830_carry__0_n_3;
  wire icmp_ln879_reg_2830_carry__1_i_1_n_0;
  wire icmp_ln879_reg_2830_carry__1_i_2_n_0;
  wire icmp_ln879_reg_2830_carry__1_i_3_n_0;
  wire icmp_ln879_reg_2830_carry__1_n_2;
  wire icmp_ln879_reg_2830_carry__1_n_3;
  wire icmp_ln879_reg_2830_carry_i_1_n_0;
  wire icmp_ln879_reg_2830_carry_i_2_n_0;
  wire icmp_ln879_reg_2830_carry_i_3_n_0;
  wire icmp_ln879_reg_2830_carry_i_4_n_0;
  wire icmp_ln879_reg_2830_carry_n_0;
  wire icmp_ln879_reg_2830_carry_n_1;
  wire icmp_ln879_reg_2830_carry_n_2;
  wire icmp_ln879_reg_2830_carry_n_3;
  wire img_1_cols_V_c5_empty_n;
  wire img_1_data_stream_0_empty_n;
  wire img_1_rows_V_c4_empty_n;
  wire internal_empty_n_reg;
  wire [7:0]\ireg_reg[7] ;
  wire \ireg_reg[8] ;
  wire [7:0]\odata_int_reg[7] ;
  wire [8:0]\odata_int_reg[8] ;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_1;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_2;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_23;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_24;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_25;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_26;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_7;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;
  wire t_V_1_reg_170;
  wire t_V_1_reg_1700;
  wire \t_V_1_reg_170[0]_i_4_n_0 ;
  wire [31:0]t_V_1_reg_170_reg;
  wire \t_V_1_reg_170_reg[0]_i_3_n_0 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_1 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_2 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_3 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_4 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_5 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_6 ;
  wire \t_V_1_reg_170_reg[0]_i_3_n_7 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_0 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[12]_i_1_n_7 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_0 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[16]_i_1_n_7 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_0 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[20]_i_1_n_7 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_0 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[24]_i_1_n_7 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[28]_i_1_n_7 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_0 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[4]_i_1_n_7 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_0 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_1 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_2 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_3 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_4 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_5 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_6 ;
  wire \t_V_1_reg_170_reg[8]_i_1_n_7 ;
  wire [31:0]t_V_reg_159;
  wire t_V_reg_159_0;
  wire tmp_last_V_fu_249_p20_carry__0_i_1_n_0;
  wire tmp_last_V_fu_249_p20_carry__0_i_2_n_0;
  wire tmp_last_V_fu_249_p20_carry__0_i_3_n_0;
  wire tmp_last_V_fu_249_p20_carry__0_i_4_n_0;
  wire tmp_last_V_fu_249_p20_carry__0_n_0;
  wire tmp_last_V_fu_249_p20_carry__0_n_1;
  wire tmp_last_V_fu_249_p20_carry__0_n_2;
  wire tmp_last_V_fu_249_p20_carry__0_n_3;
  wire tmp_last_V_fu_249_p20_carry__1_i_1_n_0;
  wire tmp_last_V_fu_249_p20_carry__1_i_2_n_0;
  wire tmp_last_V_fu_249_p20_carry__1_i_3_n_0;
  wire tmp_last_V_fu_249_p20_carry__1_n_2;
  wire tmp_last_V_fu_249_p20_carry__1_n_3;
  wire tmp_last_V_fu_249_p20_carry_i_1_n_0;
  wire tmp_last_V_fu_249_p20_carry_i_2_n_0;
  wire tmp_last_V_fu_249_p20_carry_i_3_n_0;
  wire tmp_last_V_fu_249_p20_carry_i_4_n_0;
  wire tmp_last_V_fu_249_p20_carry_n_0;
  wire tmp_last_V_fu_249_p20_carry_n_1;
  wire tmp_last_V_fu_249_p20_carry_n_2;
  wire tmp_last_V_fu_249_p20_carry_n_3;
  wire tmp_last_V_reg_297;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TSTRB;
  wire [3:0]\NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_ap_NS_fsm4_carry_O_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm4_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ap_NS_fsm4_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm4_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_i_V_reg_278_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_278_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_icmp_ln879_reg_2830_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln879_reg_2830_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln879_reg_2830_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln879_reg_2830_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_t_V_1_reg_170_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_tmp_last_V_fu_249_p20_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_last_V_fu_249_p20_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_tmp_last_V_fu_249_p20_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_last_V_fu_249_p20_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h70F070F0FFFF70F0)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(img_1_cols_V_c5_empty_n),
        .I1(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I2(Q),
        .I3(img_1_rows_V_c4_empty_n),
        .I4(CO),
        .I5(\ap_CS_fsm_reg[1]_0 ),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'hABBB)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_enable_reg_pp0_iter2_reg_n_0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  CARRY4 \ap_NS_fsm3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ap_NS_fsm3_inferred__0/i__carry_n_0 ,\ap_NS_fsm3_inferred__0/i__carry_n_1 ,\ap_NS_fsm3_inferred__0/i__carry_n_2 ,\ap_NS_fsm3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \ap_NS_fsm3_inferred__0/i__carry__0 
       (.CI(\ap_NS_fsm3_inferred__0/i__carry_n_0 ),
        .CO({\ap_NS_fsm3_inferred__0/i__carry__0_n_0 ,\ap_NS_fsm3_inferred__0/i__carry__0_n_1 ,\ap_NS_fsm3_inferred__0/i__carry__0_n_2 ,\ap_NS_fsm3_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \ap_NS_fsm3_inferred__0/i__carry__1 
       (.CI(\ap_NS_fsm3_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED [3],CO,\ap_NS_fsm3_inferred__0/i__carry__1_n_2 ,\ap_NS_fsm3_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  CARRY4 ap_NS_fsm4_carry
       (.CI(1'b0),
        .CO({ap_NS_fsm4_carry_n_0,ap_NS_fsm4_carry_n_1,ap_NS_fsm4_carry_n_2,ap_NS_fsm4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm4_carry_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm4_carry_i_1_n_0,ap_NS_fsm4_carry_i_2_n_0,ap_NS_fsm4_carry_i_3_n_0,ap_NS_fsm4_carry_i_4_n_0}));
  CARRY4 ap_NS_fsm4_carry__0
       (.CI(ap_NS_fsm4_carry_n_0),
        .CO({ap_NS_fsm4_carry__0_n_0,ap_NS_fsm4_carry__0_n_1,ap_NS_fsm4_carry__0_n_2,ap_NS_fsm4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm4_carry__0_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm4_carry__0_i_1_n_0,ap_NS_fsm4_carry__0_i_2_n_0,ap_NS_fsm4_carry__0_i_3_n_0,ap_NS_fsm4_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry__0_i_1
       (.I0(t_V_1_reg_170_reg[23]),
        .I1(t_V_1_reg_170_reg[22]),
        .I2(t_V_1_reg_170_reg[21]),
        .O(ap_NS_fsm4_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry__0_i_2
       (.I0(t_V_1_reg_170_reg[20]),
        .I1(t_V_1_reg_170_reg[19]),
        .I2(t_V_1_reg_170_reg[18]),
        .O(ap_NS_fsm4_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry__0_i_3
       (.I0(t_V_1_reg_170_reg[17]),
        .I1(t_V_1_reg_170_reg[16]),
        .I2(t_V_1_reg_170_reg[15]),
        .O(ap_NS_fsm4_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry__0_i_4
       (.I0(t_V_1_reg_170_reg[14]),
        .I1(t_V_1_reg_170_reg[13]),
        .I2(t_V_1_reg_170_reg[12]),
        .O(ap_NS_fsm4_carry__0_i_4_n_0));
  CARRY4 ap_NS_fsm4_carry__1
       (.CI(ap_NS_fsm4_carry__0_n_0),
        .CO({NLW_ap_NS_fsm4_carry__1_CO_UNCONNECTED[3],ap_condition_pp0_exit_iter0_state3,ap_NS_fsm4_carry__1_n_2,ap_NS_fsm4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm4_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,ap_NS_fsm4_carry__1_i_1_n_0,ap_NS_fsm4_carry__1_i_2_n_0,ap_NS_fsm4_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ap_NS_fsm4_carry__1_i_1
       (.I0(t_V_1_reg_170_reg[30]),
        .I1(t_V_1_reg_170_reg[31]),
        .O(ap_NS_fsm4_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry__1_i_2
       (.I0(t_V_1_reg_170_reg[29]),
        .I1(t_V_1_reg_170_reg[28]),
        .I2(t_V_1_reg_170_reg[27]),
        .O(ap_NS_fsm4_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry__1_i_3
       (.I0(t_V_1_reg_170_reg[26]),
        .I1(t_V_1_reg_170_reg[25]),
        .I2(t_V_1_reg_170_reg[24]),
        .O(ap_NS_fsm4_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ap_NS_fsm4_carry_i_1
       (.I0(t_V_1_reg_170_reg[11]),
        .I1(t_V_1_reg_170_reg[9]),
        .I2(t_V_1_reg_170_reg[10]),
        .O(ap_NS_fsm4_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ap_NS_fsm4_carry_i_2
       (.I0(t_V_1_reg_170_reg[8]),
        .I1(t_V_1_reg_170_reg[7]),
        .I2(t_V_1_reg_170_reg[6]),
        .O(ap_NS_fsm4_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry_i_3
       (.I0(t_V_1_reg_170_reg[5]),
        .I1(t_V_1_reg_170_reg[4]),
        .I2(t_V_1_reg_170_reg[3]),
        .O(ap_NS_fsm4_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ap_NS_fsm4_carry_i_4
       (.I0(t_V_1_reg_170_reg[0]),
        .I1(t_V_1_reg_170_reg[2]),
        .I2(t_V_1_reg_170_reg[1]),
        .O(ap_NS_fsm4_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_7),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_1),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_2),
        .Q(ap_enable_reg_pp0_iter2_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_278[0]_i_1 
       (.I0(t_V_reg_159[0]),
        .O(i_V_fu_214_p2[0]));
  FDRE \i_V_reg_278_reg[0] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[0]),
        .Q(i_V_reg_278[0]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[10] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[10]),
        .Q(i_V_reg_278[10]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[11] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[11]),
        .Q(i_V_reg_278[11]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[12] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[12]),
        .Q(i_V_reg_278[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[12]_i_1 
       (.CI(\i_V_reg_278_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_278_reg[12]_i_1_n_0 ,\i_V_reg_278_reg[12]_i_1_n_1 ,\i_V_reg_278_reg[12]_i_1_n_2 ,\i_V_reg_278_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[12:9]),
        .S(t_V_reg_159[12:9]));
  FDRE \i_V_reg_278_reg[13] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[13]),
        .Q(i_V_reg_278[13]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[14] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[14]),
        .Q(i_V_reg_278[14]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[15] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[15]),
        .Q(i_V_reg_278[15]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[16] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[16]),
        .Q(i_V_reg_278[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[16]_i_1 
       (.CI(\i_V_reg_278_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_278_reg[16]_i_1_n_0 ,\i_V_reg_278_reg[16]_i_1_n_1 ,\i_V_reg_278_reg[16]_i_1_n_2 ,\i_V_reg_278_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[16:13]),
        .S(t_V_reg_159[16:13]));
  FDRE \i_V_reg_278_reg[17] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[17]),
        .Q(i_V_reg_278[17]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[18] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[18]),
        .Q(i_V_reg_278[18]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[19] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[19]),
        .Q(i_V_reg_278[19]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[1] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[1]),
        .Q(i_V_reg_278[1]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[20] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[20]),
        .Q(i_V_reg_278[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[20]_i_1 
       (.CI(\i_V_reg_278_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_278_reg[20]_i_1_n_0 ,\i_V_reg_278_reg[20]_i_1_n_1 ,\i_V_reg_278_reg[20]_i_1_n_2 ,\i_V_reg_278_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[20:17]),
        .S(t_V_reg_159[20:17]));
  FDRE \i_V_reg_278_reg[21] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[21]),
        .Q(i_V_reg_278[21]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[22] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[22]),
        .Q(i_V_reg_278[22]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[23] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[23]),
        .Q(i_V_reg_278[23]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[24] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[24]),
        .Q(i_V_reg_278[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[24]_i_1 
       (.CI(\i_V_reg_278_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_278_reg[24]_i_1_n_0 ,\i_V_reg_278_reg[24]_i_1_n_1 ,\i_V_reg_278_reg[24]_i_1_n_2 ,\i_V_reg_278_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[24:21]),
        .S(t_V_reg_159[24:21]));
  FDRE \i_V_reg_278_reg[25] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[25]),
        .Q(i_V_reg_278[25]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[26] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[26]),
        .Q(i_V_reg_278[26]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[27] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[27]),
        .Q(i_V_reg_278[27]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[28] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[28]),
        .Q(i_V_reg_278[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[28]_i_1 
       (.CI(\i_V_reg_278_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_278_reg[28]_i_1_n_0 ,\i_V_reg_278_reg[28]_i_1_n_1 ,\i_V_reg_278_reg[28]_i_1_n_2 ,\i_V_reg_278_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[28:25]),
        .S(t_V_reg_159[28:25]));
  FDRE \i_V_reg_278_reg[29] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[29]),
        .Q(i_V_reg_278[29]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[2] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[2]),
        .Q(i_V_reg_278[2]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[30] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[30]),
        .Q(i_V_reg_278[30]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[31] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[31]),
        .Q(i_V_reg_278[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[31]_i_2 
       (.CI(\i_V_reg_278_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_278_reg[31]_i_2_CO_UNCONNECTED [3:2],\i_V_reg_278_reg[31]_i_2_n_2 ,\i_V_reg_278_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_278_reg[31]_i_2_O_UNCONNECTED [3],i_V_fu_214_p2[31:29]}),
        .S({1'b0,t_V_reg_159[31:29]}));
  FDRE \i_V_reg_278_reg[3] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[3]),
        .Q(i_V_reg_278[3]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[4] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[4]),
        .Q(i_V_reg_278[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_278_reg[4]_i_1_n_0 ,\i_V_reg_278_reg[4]_i_1_n_1 ,\i_V_reg_278_reg[4]_i_1_n_2 ,\i_V_reg_278_reg[4]_i_1_n_3 }),
        .CYINIT(t_V_reg_159[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[4:1]),
        .S(t_V_reg_159[4:1]));
  FDRE \i_V_reg_278_reg[5] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[5]),
        .Q(i_V_reg_278[5]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[6] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[6]),
        .Q(i_V_reg_278[6]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[7] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[7]),
        .Q(i_V_reg_278[7]),
        .R(1'b0));
  FDRE \i_V_reg_278_reg[8] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[8]),
        .Q(i_V_reg_278[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_278_reg[8]_i_1 
       (.CI(\i_V_reg_278_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_278_reg[8]_i_1_n_0 ,\i_V_reg_278_reg[8]_i_1_n_1 ,\i_V_reg_278_reg[8]_i_1_n_2 ,\i_V_reg_278_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_214_p2[8:5]),
        .S(t_V_reg_159[8:5]));
  FDRE \i_V_reg_278_reg[9] 
       (.C(ap_clk),
        .CE(i_V_reg_2780),
        .D(i_V_fu_214_p2[9]),
        .Q(i_V_reg_278[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1
       (.I0(t_V_reg_159[23]),
        .I1(t_V_reg_159[22]),
        .I2(t_V_reg_159[21]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2
       (.I0(t_V_reg_159[20]),
        .I1(t_V_reg_159[19]),
        .I2(t_V_reg_159[18]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3
       (.I0(t_V_reg_159[17]),
        .I1(t_V_reg_159[16]),
        .I2(t_V_reg_159[15]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4
       (.I0(t_V_reg_159[14]),
        .I1(t_V_reg_159[13]),
        .I2(t_V_reg_159[12]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(t_V_reg_159[30]),
        .I1(t_V_reg_159[31]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2
       (.I0(t_V_reg_159[29]),
        .I1(t_V_reg_159[28]),
        .I2(t_V_reg_159[27]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3
       (.I0(t_V_reg_159[26]),
        .I1(t_V_reg_159[25]),
        .I2(t_V_reg_159[24]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1
       (.I0(t_V_reg_159[11]),
        .I1(t_V_reg_159[10]),
        .I2(t_V_reg_159[9]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_2
       (.I0(t_V_reg_159[6]),
        .I1(t_V_reg_159[8]),
        .I2(t_V_reg_159[7]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_3
       (.I0(t_V_reg_159[3]),
        .I1(t_V_reg_159[5]),
        .I2(t_V_reg_159[4]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4
       (.I0(t_V_reg_159[0]),
        .I1(t_V_reg_159[2]),
        .I2(t_V_reg_159[1]),
        .O(i__carry_i_4_n_0));
  FDRE \icmp_ln54_reg_288_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_25),
        .Q(icmp_ln54_reg_288_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln54_reg_288_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_26),
        .Q(\icmp_ln54_reg_288_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 icmp_ln879_reg_2830_carry
       (.CI(1'b0),
        .CO({icmp_ln879_reg_2830_carry_n_0,icmp_ln879_reg_2830_carry_n_1,icmp_ln879_reg_2830_carry_n_2,icmp_ln879_reg_2830_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln879_reg_2830_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln879_reg_2830_carry_i_1_n_0,icmp_ln879_reg_2830_carry_i_2_n_0,icmp_ln879_reg_2830_carry_i_3_n_0,icmp_ln879_reg_2830_carry_i_4_n_0}));
  CARRY4 icmp_ln879_reg_2830_carry__0
       (.CI(icmp_ln879_reg_2830_carry_n_0),
        .CO({icmp_ln879_reg_2830_carry__0_n_0,icmp_ln879_reg_2830_carry__0_n_1,icmp_ln879_reg_2830_carry__0_n_2,icmp_ln879_reg_2830_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln879_reg_2830_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln879_reg_2830_carry__0_i_1_n_0,icmp_ln879_reg_2830_carry__0_i_2_n_0,icmp_ln879_reg_2830_carry__0_i_3_n_0,icmp_ln879_reg_2830_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry__0_i_1
       (.I0(t_V_reg_159[23]),
        .I1(t_V_reg_159[22]),
        .I2(t_V_reg_159[21]),
        .O(icmp_ln879_reg_2830_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry__0_i_2
       (.I0(t_V_reg_159[20]),
        .I1(t_V_reg_159[19]),
        .I2(t_V_reg_159[18]),
        .O(icmp_ln879_reg_2830_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry__0_i_3
       (.I0(t_V_reg_159[17]),
        .I1(t_V_reg_159[16]),
        .I2(t_V_reg_159[15]),
        .O(icmp_ln879_reg_2830_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry__0_i_4
       (.I0(t_V_reg_159[14]),
        .I1(t_V_reg_159[13]),
        .I2(t_V_reg_159[12]),
        .O(icmp_ln879_reg_2830_carry__0_i_4_n_0));
  CARRY4 icmp_ln879_reg_2830_carry__1
       (.CI(icmp_ln879_reg_2830_carry__0_n_0),
        .CO({NLW_icmp_ln879_reg_2830_carry__1_CO_UNCONNECTED[3],icmp_ln879_fu_224_p2,icmp_ln879_reg_2830_carry__1_n_2,icmp_ln879_reg_2830_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln879_reg_2830_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln879_reg_2830_carry__1_i_1_n_0,icmp_ln879_reg_2830_carry__1_i_2_n_0,icmp_ln879_reg_2830_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln879_reg_2830_carry__1_i_1
       (.I0(t_V_reg_159[30]),
        .I1(t_V_reg_159[31]),
        .O(icmp_ln879_reg_2830_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry__1_i_2
       (.I0(t_V_reg_159[29]),
        .I1(t_V_reg_159[28]),
        .I2(t_V_reg_159[27]),
        .O(icmp_ln879_reg_2830_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry__1_i_3
       (.I0(t_V_reg_159[26]),
        .I1(t_V_reg_159[25]),
        .I2(t_V_reg_159[24]),
        .O(icmp_ln879_reg_2830_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    icmp_ln879_reg_2830_carry_i_1
       (.I0(t_V_reg_159[11]),
        .I1(t_V_reg_159[10]),
        .I2(t_V_reg_159[9]),
        .O(icmp_ln879_reg_2830_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    icmp_ln879_reg_2830_carry_i_2
       (.I0(t_V_reg_159[6]),
        .I1(t_V_reg_159[8]),
        .I2(t_V_reg_159[7]),
        .O(icmp_ln879_reg_2830_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    icmp_ln879_reg_2830_carry_i_3
       (.I0(t_V_reg_159[3]),
        .I1(t_V_reg_159[4]),
        .I2(t_V_reg_159[5]),
        .O(icmp_ln879_reg_2830_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    icmp_ln879_reg_2830_carry_i_4
       (.I0(t_V_reg_159[0]),
        .I1(t_V_reg_159[2]),
        .I2(t_V_reg_159[1]),
        .O(icmp_ln879_reg_2830_carry_i_4_n_0));
  FDRE \icmp_ln879_reg_283_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_24),
        .Q(icmp_ln879_reg_283),
        .R(1'b0));
  design_1_passthrough_0_0_regslice_both regslice_both_AXI_video_strm_V_data_V_U
       (.CO(ap_condition_pp0_exit_iter0_state3),
        .D(ap_NS_fsm[3:1]),
        .E(i_V_reg_2780),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_pp0_stage0,ap_CS_fsm_state2}),
        .SR(ap_rst),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1]_1 ),
        .\ap_CS_fsm_reg[2] (regslice_both_AXI_video_strm_V_data_V_U_n_7),
        .\ap_CS_fsm_reg[2]_0 (regslice_both_AXI_video_strm_V_data_V_U_n_26),
        .\ap_CS_fsm_reg[2]_1 (\ap_CS_fsm[2]_i_3_n_0 ),
        .\ap_CS_fsm_reg[3] (ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_AXI_video_strm_V_data_V_U_n_1),
        .ap_enable_reg_pp0_iter2_reg(regslice_both_AXI_video_strm_V_data_V_U_n_2),
        .ap_rst_n(ap_rst_n),
        .icmp_ln54_reg_288_pp0_iter1_reg(icmp_ln54_reg_288_pp0_iter1_reg),
        .\icmp_ln54_reg_288_reg[0] (Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .\icmp_ln54_reg_288_reg[0]_0 (regslice_both_AXI_video_strm_V_data_V_U_n_25),
        .\icmp_ln54_reg_288_reg[0]_1 (\icmp_ln54_reg_288_reg_n_0_[0] ),
        .icmp_ln879_reg_283(icmp_ln879_reg_283),
        .\icmp_ln879_reg_283_reg[0] (regslice_both_AXI_video_strm_V_data_V_U_n_23),
        .\icmp_ln879_reg_283_reg[0]_0 (regslice_both_AXI_video_strm_V_data_V_U_n_24),
        .\icmp_ln879_reg_283_reg[0]_1 (icmp_ln879_fu_224_p2),
        .img_1_data_stream_0_empty_n(img_1_data_stream_0_empty_n),
        .internal_empty_n_reg(internal_empty_n_reg),
        .\ireg_reg[7] (\ireg_reg[7] ),
        .\ireg_reg[7]_0 (D),
        .\ireg_reg[8] (\ireg_reg[8] ),
        .\ireg_reg[8]_0 (ap_enable_reg_pp0_iter1_reg_n_0),
        .\odata_int_reg[7] (\odata_int_reg[7] ),
        .\odata_int_reg[8] (\odata_int_reg[8] ),
        .start_for_Mat2AXIvideo_DMA_U0_empty_n(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .t_V_1_reg_170(t_V_1_reg_170),
        .t_V_1_reg_1700(t_V_1_reg_1700),
        .\t_V_1_reg_170_reg[0] (CO),
        .tmp_last_V_reg_297(tmp_last_V_reg_297),
        .\tmp_last_V_reg_297_reg[0] (icmp_ln879_1_fu_244_p2),
        .video_out_TREADY(video_out_TREADY));
  design_1_passthrough_0_0_regslice_both__parameterized1 regslice_both_AXI_video_strm_V_keep_V_U
       (.SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[1] (Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB));
  design_1_passthrough_0_0_regslice_both__parameterized1_2 regslice_both_AXI_video_strm_V_last_V_U
       (.SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[1] (Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .tmp_last_V_reg_297(tmp_last_V_reg_297),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_170[0]_i_4 
       (.I0(t_V_1_reg_170_reg[0]),
        .O(\t_V_1_reg_170[0]_i_4_n_0 ));
  FDRE \t_V_1_reg_170_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[0]_i_3_n_7 ),
        .Q(t_V_1_reg_170_reg[0]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_1_reg_170_reg[0]_i_3_n_0 ,\t_V_1_reg_170_reg[0]_i_3_n_1 ,\t_V_1_reg_170_reg[0]_i_3_n_2 ,\t_V_1_reg_170_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_1_reg_170_reg[0]_i_3_n_4 ,\t_V_1_reg_170_reg[0]_i_3_n_5 ,\t_V_1_reg_170_reg[0]_i_3_n_6 ,\t_V_1_reg_170_reg[0]_i_3_n_7 }),
        .S({t_V_1_reg_170_reg[3:1],\t_V_1_reg_170[0]_i_4_n_0 }));
  FDRE \t_V_1_reg_170_reg[10] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[8]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[10]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[11] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[8]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[11]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[12] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[12]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[12]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[12]_i_1 
       (.CI(\t_V_1_reg_170_reg[8]_i_1_n_0 ),
        .CO({\t_V_1_reg_170_reg[12]_i_1_n_0 ,\t_V_1_reg_170_reg[12]_i_1_n_1 ,\t_V_1_reg_170_reg[12]_i_1_n_2 ,\t_V_1_reg_170_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[12]_i_1_n_4 ,\t_V_1_reg_170_reg[12]_i_1_n_5 ,\t_V_1_reg_170_reg[12]_i_1_n_6 ,\t_V_1_reg_170_reg[12]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[15:12]));
  FDRE \t_V_1_reg_170_reg[13] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[12]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[13]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[14] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[12]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[14]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[15] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[12]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[15]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[16] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[16]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[16]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[16]_i_1 
       (.CI(\t_V_1_reg_170_reg[12]_i_1_n_0 ),
        .CO({\t_V_1_reg_170_reg[16]_i_1_n_0 ,\t_V_1_reg_170_reg[16]_i_1_n_1 ,\t_V_1_reg_170_reg[16]_i_1_n_2 ,\t_V_1_reg_170_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[16]_i_1_n_4 ,\t_V_1_reg_170_reg[16]_i_1_n_5 ,\t_V_1_reg_170_reg[16]_i_1_n_6 ,\t_V_1_reg_170_reg[16]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[19:16]));
  FDRE \t_V_1_reg_170_reg[17] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[16]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[17]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[18] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[16]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[18]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[19] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[16]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[19]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[0]_i_3_n_6 ),
        .Q(t_V_1_reg_170_reg[1]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[20] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[20]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[20]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[20]_i_1 
       (.CI(\t_V_1_reg_170_reg[16]_i_1_n_0 ),
        .CO({\t_V_1_reg_170_reg[20]_i_1_n_0 ,\t_V_1_reg_170_reg[20]_i_1_n_1 ,\t_V_1_reg_170_reg[20]_i_1_n_2 ,\t_V_1_reg_170_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[20]_i_1_n_4 ,\t_V_1_reg_170_reg[20]_i_1_n_5 ,\t_V_1_reg_170_reg[20]_i_1_n_6 ,\t_V_1_reg_170_reg[20]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[23:20]));
  FDRE \t_V_1_reg_170_reg[21] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[20]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[21]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[22] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[20]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[22]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[23] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[20]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[23]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[24] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[24]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[24]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[24]_i_1 
       (.CI(\t_V_1_reg_170_reg[20]_i_1_n_0 ),
        .CO({\t_V_1_reg_170_reg[24]_i_1_n_0 ,\t_V_1_reg_170_reg[24]_i_1_n_1 ,\t_V_1_reg_170_reg[24]_i_1_n_2 ,\t_V_1_reg_170_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[24]_i_1_n_4 ,\t_V_1_reg_170_reg[24]_i_1_n_5 ,\t_V_1_reg_170_reg[24]_i_1_n_6 ,\t_V_1_reg_170_reg[24]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[27:24]));
  FDRE \t_V_1_reg_170_reg[25] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[24]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[25]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[26] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[24]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[26]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[27] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[24]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[27]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[28] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[28]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[28]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[28]_i_1 
       (.CI(\t_V_1_reg_170_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_1_reg_170_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_1_reg_170_reg[28]_i_1_n_1 ,\t_V_1_reg_170_reg[28]_i_1_n_2 ,\t_V_1_reg_170_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[28]_i_1_n_4 ,\t_V_1_reg_170_reg[28]_i_1_n_5 ,\t_V_1_reg_170_reg[28]_i_1_n_6 ,\t_V_1_reg_170_reg[28]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[31:28]));
  FDRE \t_V_1_reg_170_reg[29] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[28]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[29]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[0]_i_3_n_5 ),
        .Q(t_V_1_reg_170_reg[2]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[30] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[28]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[30]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[31] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[28]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[31]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[0]_i_3_n_4 ),
        .Q(t_V_1_reg_170_reg[3]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[4]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[4]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[4]_i_1 
       (.CI(\t_V_1_reg_170_reg[0]_i_3_n_0 ),
        .CO({\t_V_1_reg_170_reg[4]_i_1_n_0 ,\t_V_1_reg_170_reg[4]_i_1_n_1 ,\t_V_1_reg_170_reg[4]_i_1_n_2 ,\t_V_1_reg_170_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[4]_i_1_n_4 ,\t_V_1_reg_170_reg[4]_i_1_n_5 ,\t_V_1_reg_170_reg[4]_i_1_n_6 ,\t_V_1_reg_170_reg[4]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[7:4]));
  FDRE \t_V_1_reg_170_reg[5] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[4]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[5]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[6] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[4]_i_1_n_5 ),
        .Q(t_V_1_reg_170_reg[6]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[7] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[4]_i_1_n_4 ),
        .Q(t_V_1_reg_170_reg[7]),
        .R(t_V_1_reg_170));
  FDRE \t_V_1_reg_170_reg[8] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[8]_i_1_n_7 ),
        .Q(t_V_1_reg_170_reg[8]),
        .R(t_V_1_reg_170));
  CARRY4 \t_V_1_reg_170_reg[8]_i_1 
       (.CI(\t_V_1_reg_170_reg[4]_i_1_n_0 ),
        .CO({\t_V_1_reg_170_reg[8]_i_1_n_0 ,\t_V_1_reg_170_reg[8]_i_1_n_1 ,\t_V_1_reg_170_reg[8]_i_1_n_2 ,\t_V_1_reg_170_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_170_reg[8]_i_1_n_4 ,\t_V_1_reg_170_reg[8]_i_1_n_5 ,\t_V_1_reg_170_reg[8]_i_1_n_6 ,\t_V_1_reg_170_reg[8]_i_1_n_7 }),
        .S(t_V_1_reg_170_reg[11:8]));
  FDRE \t_V_1_reg_170_reg[9] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1700),
        .D(\t_V_1_reg_170_reg[8]_i_1_n_6 ),
        .Q(t_V_1_reg_170_reg[9]),
        .R(t_V_1_reg_170));
  LUT5 #(
    .INIT(32'h00008000)) 
    \t_V_reg_159[31]_i_1 
       (.I0(img_1_rows_V_c4_empty_n),
        .I1(Q),
        .I2(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I3(img_1_cols_V_c5_empty_n),
        .I4(ap_CS_fsm_state6),
        .O(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[0]),
        .Q(t_V_reg_159[0]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[10]),
        .Q(t_V_reg_159[10]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[11]),
        .Q(t_V_reg_159[11]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[12]),
        .Q(t_V_reg_159[12]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[13]),
        .Q(t_V_reg_159[13]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[14]),
        .Q(t_V_reg_159[14]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[15]),
        .Q(t_V_reg_159[15]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[16]),
        .Q(t_V_reg_159[16]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[17]),
        .Q(t_V_reg_159[17]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[18]),
        .Q(t_V_reg_159[18]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[19]),
        .Q(t_V_reg_159[19]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[1]),
        .Q(t_V_reg_159[1]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[20]),
        .Q(t_V_reg_159[20]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[21]),
        .Q(t_V_reg_159[21]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[22]),
        .Q(t_V_reg_159[22]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[23]),
        .Q(t_V_reg_159[23]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[24]),
        .Q(t_V_reg_159[24]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[25]),
        .Q(t_V_reg_159[25]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[26]),
        .Q(t_V_reg_159[26]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[27]),
        .Q(t_V_reg_159[27]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[28]),
        .Q(t_V_reg_159[28]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[29]),
        .Q(t_V_reg_159[29]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[2]),
        .Q(t_V_reg_159[2]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[30]),
        .Q(t_V_reg_159[30]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[31]),
        .Q(t_V_reg_159[31]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[3]),
        .Q(t_V_reg_159[3]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[4]),
        .Q(t_V_reg_159[4]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[5]),
        .Q(t_V_reg_159[5]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[6]),
        .Q(t_V_reg_159[6]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[7]),
        .Q(t_V_reg_159[7]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[8]),
        .Q(t_V_reg_159[8]),
        .R(t_V_reg_159_0));
  FDRE \t_V_reg_159_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_278[9]),
        .Q(t_V_reg_159[9]),
        .R(t_V_reg_159_0));
  CARRY4 tmp_last_V_fu_249_p20_carry
       (.CI(1'b0),
        .CO({tmp_last_V_fu_249_p20_carry_n_0,tmp_last_V_fu_249_p20_carry_n_1,tmp_last_V_fu_249_p20_carry_n_2,tmp_last_V_fu_249_p20_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_last_V_fu_249_p20_carry_O_UNCONNECTED[3:0]),
        .S({tmp_last_V_fu_249_p20_carry_i_1_n_0,tmp_last_V_fu_249_p20_carry_i_2_n_0,tmp_last_V_fu_249_p20_carry_i_3_n_0,tmp_last_V_fu_249_p20_carry_i_4_n_0}));
  CARRY4 tmp_last_V_fu_249_p20_carry__0
       (.CI(tmp_last_V_fu_249_p20_carry_n_0),
        .CO({tmp_last_V_fu_249_p20_carry__0_n_0,tmp_last_V_fu_249_p20_carry__0_n_1,tmp_last_V_fu_249_p20_carry__0_n_2,tmp_last_V_fu_249_p20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_last_V_fu_249_p20_carry__0_O_UNCONNECTED[3:0]),
        .S({tmp_last_V_fu_249_p20_carry__0_i_1_n_0,tmp_last_V_fu_249_p20_carry__0_i_2_n_0,tmp_last_V_fu_249_p20_carry__0_i_3_n_0,tmp_last_V_fu_249_p20_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    tmp_last_V_fu_249_p20_carry__0_i_1
       (.I0(t_V_1_reg_170_reg[23]),
        .I1(t_V_1_reg_170_reg[22]),
        .I2(t_V_1_reg_170_reg[21]),
        .O(tmp_last_V_fu_249_p20_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tmp_last_V_fu_249_p20_carry__0_i_2
       (.I0(t_V_1_reg_170_reg[20]),
        .I1(t_V_1_reg_170_reg[19]),
        .I2(t_V_1_reg_170_reg[18]),
        .O(tmp_last_V_fu_249_p20_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tmp_last_V_fu_249_p20_carry__0_i_3
       (.I0(t_V_1_reg_170_reg[17]),
        .I1(t_V_1_reg_170_reg[16]),
        .I2(t_V_1_reg_170_reg[15]),
        .O(tmp_last_V_fu_249_p20_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tmp_last_V_fu_249_p20_carry__0_i_4
       (.I0(t_V_1_reg_170_reg[14]),
        .I1(t_V_1_reg_170_reg[13]),
        .I2(t_V_1_reg_170_reg[12]),
        .O(tmp_last_V_fu_249_p20_carry__0_i_4_n_0));
  CARRY4 tmp_last_V_fu_249_p20_carry__1
       (.CI(tmp_last_V_fu_249_p20_carry__0_n_0),
        .CO({NLW_tmp_last_V_fu_249_p20_carry__1_CO_UNCONNECTED[3],icmp_ln879_1_fu_244_p2,tmp_last_V_fu_249_p20_carry__1_n_2,tmp_last_V_fu_249_p20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_last_V_fu_249_p20_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,tmp_last_V_fu_249_p20_carry__1_i_1_n_0,tmp_last_V_fu_249_p20_carry__1_i_2_n_0,tmp_last_V_fu_249_p20_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_last_V_fu_249_p20_carry__1_i_1
       (.I0(t_V_1_reg_170_reg[30]),
        .I1(t_V_1_reg_170_reg[31]),
        .O(tmp_last_V_fu_249_p20_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tmp_last_V_fu_249_p20_carry__1_i_2
       (.I0(t_V_1_reg_170_reg[29]),
        .I1(t_V_1_reg_170_reg[28]),
        .I2(t_V_1_reg_170_reg[27]),
        .O(tmp_last_V_fu_249_p20_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tmp_last_V_fu_249_p20_carry__1_i_3
       (.I0(t_V_1_reg_170_reg[26]),
        .I1(t_V_1_reg_170_reg[25]),
        .I2(t_V_1_reg_170_reg[24]),
        .O(tmp_last_V_fu_249_p20_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    tmp_last_V_fu_249_p20_carry_i_1
       (.I0(t_V_1_reg_170_reg[11]),
        .I1(t_V_1_reg_170_reg[9]),
        .I2(t_V_1_reg_170_reg[10]),
        .O(tmp_last_V_fu_249_p20_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    tmp_last_V_fu_249_p20_carry_i_2
       (.I0(t_V_1_reg_170_reg[8]),
        .I1(t_V_1_reg_170_reg[6]),
        .I2(t_V_1_reg_170_reg[7]),
        .O(tmp_last_V_fu_249_p20_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    tmp_last_V_fu_249_p20_carry_i_3
       (.I0(t_V_1_reg_170_reg[3]),
        .I1(t_V_1_reg_170_reg[5]),
        .I2(t_V_1_reg_170_reg[4]),
        .O(tmp_last_V_fu_249_p20_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    tmp_last_V_fu_249_p20_carry_i_4
       (.I0(t_V_1_reg_170_reg[0]),
        .I1(t_V_1_reg_170_reg[2]),
        .I2(t_V_1_reg_170_reg[1]),
        .O(tmp_last_V_fu_249_p20_carry_i_4_n_0));
  FDRE \tmp_last_V_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_23),
        .Q(tmp_last_V_reg_297),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w10_d2_A" *) 
module design_1_passthrough_0_0_fifo_w10_d2_A
   (img_1_rows_V_c4_full_n,
    img_1_rows_V_c4_empty_n,
    internal_empty_n_reg_0,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    Q,
    start_for_Mat2AXIvideo_DMA_U0_empty_n,
    img_1_cols_V_c5_empty_n,
    ap_rst,
    E);
  output img_1_rows_V_c4_full_n;
  output img_1_rows_V_c4_empty_n;
  output internal_empty_n_reg_0;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input internal_full_n_reg_1;
  input [0:0]Q;
  input start_for_Mat2AXIvideo_DMA_U0_empty_n;
  input img_1_cols_V_c5_empty_n;
  input ap_rst;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire img_1_cols_V_c5_empty_n;
  wire img_1_rows_V_c4_empty_n;
  wire img_1_rows_V_c4_full_n;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__0_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__2_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_full_n_reg_0),
        .I3(internal_full_n_reg_1),
        .I4(img_1_rows_V_c4_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(img_1_rows_V_c4_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(img_1_rows_V_c4_full_n),
        .I3(ap_rst_n),
        .I4(internal_full_n_reg_0),
        .I5(internal_full_n_reg_1),
        .O(internal_full_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_0),
        .Q(img_1_rows_V_c4_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[1]_i_1 
       (.I0(internal_empty_n_reg_0),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mOutPtr[1]_i_3 
       (.I0(img_1_rows_V_c4_empty_n),
        .I1(Q),
        .I2(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I3(img_1_cols_V_c5_empty_n),
        .I4(internal_full_n_reg_1),
        .O(internal_empty_n_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst));
endmodule

(* ORIG_REF_NAME = "fifo_w10_d2_A" *) 
module design_1_passthrough_0_0_fifo_w10_d2_A_1
   (img_1_rows_V_c_full_n,
    img_1_rows_V_c_empty_n,
    internal_full_n_reg_0,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_1,
    img_1_cols_V_c_full_n,
    ap_rst,
    E);
  output img_1_rows_V_c_full_n;
  output img_1_rows_V_c_empty_n;
  output internal_full_n_reg_0;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_1;
  input img_1_cols_V_c_full_n;
  input ap_rst;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire img_1_cols_V_c_full_n;
  wire img_1_rows_V_c_empty_n;
  wire img_1_rows_V_c_full_n;
  wire internal_empty_n_i_1__3_n_0;
  wire internal_full_n_i_1__2_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire [1:0]mOutPtr;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2__0_n_0 ;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__3
       (.I0(mOutPtr[1]),
        .I1(mOutPtr[0]),
        .I2(internal_full_n_reg_1),
        .I3(internal_full_n_reg_0),
        .I4(img_1_rows_V_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    internal_empty_n_i_2
       (.I0(img_1_rows_V_c_full_n),
        .I1(img_1_cols_V_c_full_n),
        .O(internal_full_n_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_0),
        .Q(img_1_rows_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFFFF0FFF0F)) 
    internal_full_n_i_1__2
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(ap_rst_n),
        .I3(internal_full_n_reg_1),
        .I4(img_1_cols_V_c_full_n),
        .I5(img_1_rows_V_c_full_n),
        .O(internal_full_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_0),
        .Q(img_1_rows_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h708F8F70)) 
    \mOutPtr[1]_i_2__0 
       (.I0(img_1_rows_V_c_full_n),
        .I1(img_1_cols_V_c_full_n),
        .I2(internal_full_n_reg_1),
        .I3(mOutPtr[0]),
        .I4(mOutPtr[1]),
        .O(\mOutPtr[1]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .S(ap_rst));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__0_n_0 ),
        .Q(mOutPtr[1]),
        .S(ap_rst));
endmodule

(* ORIG_REF_NAME = "fifo_w11_d2_A" *) 
module design_1_passthrough_0_0_fifo_w11_d2_A
   (img_1_cols_V_c5_full_n,
    img_1_cols_V_c5_empty_n,
    internal_empty_n_reg_0,
    internal_full_n_reg_0,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_1,
    \mOutPtr_reg[1]_0 ,
    img_1_cols_V_c_empty_n,
    img_1_rows_V_c_empty_n,
    img_1_rows_V_c4_full_n,
    start_once_reg,
    start_for_Mat2AXIvideo_DMA_U0_full_n,
    start_for_Mat2AXIvideo_DMA_U0_empty_n,
    Q,
    img_1_rows_V_c4_empty_n,
    ap_rst,
    E);
  output img_1_cols_V_c5_full_n;
  output img_1_cols_V_c5_empty_n;
  output internal_empty_n_reg_0;
  output internal_full_n_reg_0;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_1;
  input \mOutPtr_reg[1]_0 ;
  input img_1_cols_V_c_empty_n;
  input img_1_rows_V_c_empty_n;
  input img_1_rows_V_c4_full_n;
  input start_once_reg;
  input start_for_Mat2AXIvideo_DMA_U0_full_n;
  input start_for_Mat2AXIvideo_DMA_U0_empty_n;
  input [0:0]Q;
  input img_1_rows_V_c4_empty_n;
  input ap_rst;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire img_1_cols_V_c5_empty_n;
  wire img_1_cols_V_c5_full_n;
  wire img_1_cols_V_c_empty_n;
  wire img_1_rows_V_c4_empty_n;
  wire img_1_rows_V_c4_full_n;
  wire img_1_rows_V_c_empty_n;
  wire internal_empty_n_i_1__0_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__1_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_2_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;
  wire start_for_Mat2AXIvideo_DMA_U0_full_n;
  wire start_once_reg;

  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(img_1_cols_V_c5_full_n),
        .I1(img_1_cols_V_c_empty_n),
        .I2(img_1_rows_V_c_empty_n),
        .I3(img_1_rows_V_c4_full_n),
        .I4(start_once_reg),
        .I5(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .O(internal_full_n_reg_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(img_1_cols_V_c5_empty_n),
        .I1(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I2(Q),
        .I3(img_1_rows_V_c4_empty_n),
        .O(internal_empty_n_reg_0));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_empty_n_reg_0),
        .I3(internal_full_n_reg_1),
        .I4(img_1_cols_V_c5_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_0),
        .Q(img_1_cols_V_c5_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(img_1_cols_V_c5_full_n),
        .I3(ap_rst_n),
        .I4(internal_empty_n_reg_0),
        .I5(internal_full_n_reg_1),
        .O(internal_full_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(img_1_cols_V_c5_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[1]_i_2 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst));
endmodule

(* ORIG_REF_NAME = "fifo_w11_d2_A" *) 
module design_1_passthrough_0_0_fifo_w11_d2_A_0
   (img_1_cols_V_c_full_n,
    img_1_cols_V_c_empty_n,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    img_1_rows_V_c_full_n,
    internal_empty_n_reg_0,
    ap_rst,
    E);
  output img_1_cols_V_c_full_n;
  output img_1_cols_V_c_empty_n;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input img_1_rows_V_c_full_n;
  input internal_empty_n_reg_0;
  input ap_rst;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire img_1_cols_V_c_empty_n;
  wire img_1_cols_V_c_full_n;
  wire img_1_rows_V_c_full_n;
  wire internal_empty_n_i_1__2_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__3_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_1__0_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_full_n_reg_0),
        .I3(internal_empty_n_reg_0),
        .I4(img_1_cols_V_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_0),
        .Q(img_1_cols_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFF0FFFFFFF0F)) 
    internal_full_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(ap_rst_n),
        .I3(internal_full_n_reg_0),
        .I4(img_1_cols_V_c_full_n),
        .I5(img_1_rows_V_c_full_n),
        .O(internal_full_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_0),
        .Q(img_1_cols_V_c_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h708F8F70)) 
    \mOutPtr[1]_i_1__0 
       (.I0(img_1_rows_V_c_full_n),
        .I1(img_1_cols_V_c_full_n),
        .I2(internal_full_n_reg_0),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module design_1_passthrough_0_0_fifo_w8_d2_A
   (img_1_data_stream_0_full_n,
    img_1_data_stream_0_empty_n,
    \ireg_reg[7] ,
    D,
    ap_clk,
    ap_rst_n,
    ce,
    Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
    \odata_int_reg[7] ,
    \odata_int_reg[7]_0 ,
    ap_rst,
    \SRL_SIG_reg[0][7] );
  output img_1_data_stream_0_full_n;
  output img_1_data_stream_0_empty_n;
  output [7:0]\ireg_reg[7] ;
  output [7:0]D;
  input ap_clk;
  input ap_rst_n;
  input ce;
  input Mat2AXIvideo_DMA_U0_img_data_stream_V_read;
  input [7:0]\odata_int_reg[7] ;
  input \odata_int_reg[7]_0 ;
  input ap_rst;
  input [7:0]\SRL_SIG_reg[0][7] ;

  wire [7:0]D;
  wire Mat2AXIvideo_DMA_U0_img_data_stream_V_read;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire ce;
  wire img_1_data_stream_0_empty_n;
  wire img_1_data_stream_0_full_n;
  wire internal_empty_n_i_1_n_0;
  wire internal_full_n_i_1_n_0;
  wire [7:0]\ireg_reg[7] ;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire [7:0]\odata_int_reg[7] ;
  wire \odata_int_reg[7]_0 ;

  design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg U_fifo_w8_d2_A_shiftReg
       (.D(D),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .ap_clk(ap_clk),
        .ce(ce),
        .\ireg_reg[7] (\ireg_reg[7] ),
        .\odata_int_reg[0] (\mOutPtr_reg_n_0_[0] ),
        .\odata_int_reg[0]_0 (\mOutPtr_reg_n_0_[1] ),
        .\odata_int_reg[7] (\odata_int_reg[7] ),
        .\odata_int_reg[7]_0 (\odata_int_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .I3(ce),
        .I4(img_1_data_stream_0_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_0),
        .Q(img_1_data_stream_0_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(img_1_data_stream_0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(ce),
        .I5(Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .O(internal_full_n_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_0),
        .Q(img_1_data_stream_0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[0]_i_1 
       (.I0(Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .I1(ce),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(ce),
        .I2(Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg
   (\ireg_reg[7] ,
    D,
    \odata_int_reg[7] ,
    \odata_int_reg[7]_0 ,
    \odata_int_reg[0] ,
    \odata_int_reg[0]_0 ,
    ce,
    \SRL_SIG_reg[0][7]_0 ,
    ap_clk);
  output [7:0]\ireg_reg[7] ;
  output [7:0]D;
  input [7:0]\odata_int_reg[7] ;
  input \odata_int_reg[7]_0 ;
  input \odata_int_reg[0] ;
  input \odata_int_reg[0]_0 ;
  input ce;
  input [7:0]\SRL_SIG_reg[0][7]_0 ;
  input ap_clk;

  wire [7:0]D;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire ap_clk;
  wire ce;
  wire [7:0]\ireg_reg[7] ;
  wire \odata_int_reg[0] ;
  wire \odata_int_reg[0]_0 ;
  wire [7:0]\odata_int_reg[7] ;
  wire \odata_int_reg[7]_0 ;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg[0][7]_0 [7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(ce),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][0] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][0] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][1] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][2] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][3] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][4] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][5] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][6] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ireg[7]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][7] ),
        .I1(\odata_int_reg[0] ),
        .I2(\odata_int_reg[0]_0 ),
        .I3(\SRL_SIG_reg_n_0_[0][7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[7] [0]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][0] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][0] ),
        .O(\ireg_reg[7] [0]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[1]_i_1 
       (.I0(\odata_int_reg[7] [1]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][1] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][1] ),
        .O(\ireg_reg[7] [1]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[2]_i_1 
       (.I0(\odata_int_reg[7] [2]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][2] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][2] ),
        .O(\ireg_reg[7] [2]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[3]_i_1 
       (.I0(\odata_int_reg[7] [3]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][3] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][3] ),
        .O(\ireg_reg[7] [3]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[4]_i_1 
       (.I0(\odata_int_reg[7] [4]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][4] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][4] ),
        .O(\ireg_reg[7] [4]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[5]_i_1 
       (.I0(\odata_int_reg[7] [5]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][5] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][5] ),
        .O(\ireg_reg[7] [5]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[6]_i_1 
       (.I0(\odata_int_reg[7] [6]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][6] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][6] ),
        .O(\ireg_reg[7] [6]));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    \odata_int[7]_i_3 
       (.I0(\odata_int_reg[7] [7]),
        .I1(\odata_int_reg[7]_0 ),
        .I2(\SRL_SIG_reg_n_0_[1][7] ),
        .I3(\odata_int_reg[0] ),
        .I4(\odata_int_reg[0]_0 ),
        .I5(\SRL_SIG_reg_n_0_[0][7] ),
        .O(\ireg_reg[7] [7]));
endmodule

(* ORIG_REF_NAME = "passthrough" *) 
module design_1_passthrough_0_0_passthrough
   (video_in_TDATA,
    video_in_TKEEP,
    video_in_TSTRB,
    video_in_TUSER,
    video_in_TLAST,
    video_in_TID,
    video_in_TDEST,
    video_out_TDATA,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST,
    video_out_TID,
    video_out_TDEST,
    ap_clk,
    ap_rst_n,
    video_in_TVALID,
    video_in_TREADY,
    video_out_TVALID,
    video_out_TREADY);
  input [7:0]video_in_TDATA;
  input [0:0]video_in_TKEEP;
  input [0:0]video_in_TSTRB;
  input [0:0]video_in_TUSER;
  input [0:0]video_in_TLAST;
  input [0:0]video_in_TID;
  input [0:0]video_in_TDEST;
  output [7:0]video_out_TDATA;
  output [0:0]video_out_TKEEP;
  output [0:0]video_out_TSTRB;
  output [0:0]video_out_TUSER;
  output [0:0]video_out_TLAST;
  output [0:0]video_out_TID;
  output [0:0]video_out_TDEST;
  input ap_clk;
  input ap_rst_n;
  input video_in_TVALID;
  output video_in_TREADY;
  output video_out_TVALID;
  input video_out_TREADY;

  wire \<const0> ;
  wire AXIvideo2Mat_DMA_U0_n_10;
  wire AXIvideo2Mat_DMA_U0_n_11;
  wire AXIvideo2Mat_DMA_U0_n_12;
  wire AXIvideo2Mat_DMA_U0_n_13;
  wire AXIvideo2Mat_DMA_U0_n_2;
  wire AXIvideo2Mat_DMA_U0_n_3;
  wire AXIvideo2Mat_DMA_U0_n_4;
  wire AXIvideo2Mat_DMA_U0_n_6;
  wire AXIvideo2Mat_DMA_U0_n_7;
  wire AXIvideo2Mat_DMA_U0_n_8;
  wire AXIvideo2Mat_DMA_U0_n_9;
  wire Mat2AXIvideo_DMA_U0_img_data_stream_V_read;
  wire Mat2AXIvideo_DMA_U0_n_16;
  wire Mat2AXIvideo_DMA_U0_n_17;
  wire Mat2AXIvideo_DMA_U0_n_18;
  wire Mat2AXIvideo_DMA_U0_n_19;
  wire Mat2AXIvideo_DMA_U0_n_20;
  wire Mat2AXIvideo_DMA_U0_n_21;
  wire Mat2AXIvideo_DMA_U0_n_22;
  wire Mat2AXIvideo_DMA_U0_n_23;
  wire Mat2AXIvideo_DMA_U0_n_3;
  wire Mat2AXIvideo_DMA_U0_n_4;
  wire Mat2AXIvideo_DMA_U0_n_5;
  wire Mat2AXIvideo_DMA_U0_n_6;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire ce;
  wire icmp_ln52_fu_209_p2;
  wire img_1_cols_V_c5_U_n_2;
  wire img_1_cols_V_c5_U_n_3;
  wire img_1_cols_V_c5_empty_n;
  wire img_1_cols_V_c5_full_n;
  wire img_1_cols_V_c_empty_n;
  wire img_1_cols_V_c_full_n;
  wire img_1_data_stream_0_U_n_2;
  wire img_1_data_stream_0_U_n_3;
  wire img_1_data_stream_0_U_n_4;
  wire img_1_data_stream_0_U_n_5;
  wire img_1_data_stream_0_U_n_6;
  wire img_1_data_stream_0_U_n_7;
  wire img_1_data_stream_0_U_n_8;
  wire img_1_data_stream_0_U_n_9;
  wire img_1_data_stream_0_empty_n;
  wire img_1_data_stream_0_full_n;
  wire img_1_rows_V_c4_U_n_2;
  wire img_1_rows_V_c4_empty_n;
  wire img_1_rows_V_c4_full_n;
  wire img_1_rows_V_c_U_n_2;
  wire img_1_rows_V_c_empty_n;
  wire img_1_rows_V_c_full_n;
  wire [7:0]q;
  wire start_for_Mat2AXIbkb_U_n_2;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;
  wire start_for_Mat2AXIvideo_DMA_U0_full_n;
  wire start_once_reg;
  wire [7:0]video_in_TDATA;
  wire video_in_TREADY;
  wire video_in_TVALID;
  wire [7:0]video_out_TDATA;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TSTRB;
  wire video_out_TVALID;

  assign video_out_TDEST[0] = \<const0> ;
  assign video_out_TID[0] = \<const0> ;
  assign video_out_TKEEP[0] = video_out_TSTRB;
  assign video_out_TUSER[0] = \<const0> ;
  design_1_passthrough_0_0_AXIvideo2Mat_DMA AXIvideo2Mat_DMA_U0
       (.D({video_in_TVALID,video_in_TDATA}),
        .E(AXIvideo2Mat_DMA_U0_n_3),
        .Q(Mat2AXIvideo_DMA_U0_n_4),
        .\ap_CS_fsm_reg[0]_0 (AXIvideo2Mat_DMA_U0_n_2),
        .\ap_CS_fsm_reg[0]_1 (img_1_cols_V_c5_U_n_3),
        .\ap_CS_fsm_reg[1]_0 (start_for_Mat2AXIbkb_U_n_2),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .ce(ce),
        .img_1_cols_V_c5_empty_n(img_1_cols_V_c5_empty_n),
        .img_1_cols_V_c5_full_n(img_1_cols_V_c5_full_n),
        .img_1_cols_V_c_empty_n(img_1_cols_V_c_empty_n),
        .img_1_cols_V_c_full_n(img_1_cols_V_c_full_n),
        .img_1_data_stream_0_full_n(img_1_data_stream_0_full_n),
        .img_1_rows_V_c4_empty_n(img_1_rows_V_c4_empty_n),
        .img_1_rows_V_c4_full_n(img_1_rows_V_c4_full_n),
        .img_1_rows_V_c_empty_n(img_1_rows_V_c_empty_n),
        .img_1_rows_V_c_full_n(img_1_rows_V_c_full_n),
        .internal_full_n_reg(AXIvideo2Mat_DMA_U0_n_4),
        .start_for_Mat2AXIvideo_DMA_U0_empty_n(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .start_for_Mat2AXIvideo_DMA_U0_full_n(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .start_once_reg(start_once_reg),
        .\tmp_data_V_reg_269_reg[7]_0 ({AXIvideo2Mat_DMA_U0_n_6,AXIvideo2Mat_DMA_U0_n_7,AXIvideo2Mat_DMA_U0_n_8,AXIvideo2Mat_DMA_U0_n_9,AXIvideo2Mat_DMA_U0_n_10,AXIvideo2Mat_DMA_U0_n_11,AXIvideo2Mat_DMA_U0_n_12,AXIvideo2Mat_DMA_U0_n_13}),
        .video_in_TREADY(video_in_TREADY));
  GND GND
       (.G(\<const0> ));
  design_1_passthrough_0_0_Mat2AXIvideo_DMA Mat2AXIvideo_DMA_U0
       (.CO(icmp_ln52_fu_209_p2),
        .D(q),
        .Mat2AXIvideo_DMA_U0_img_data_stream_V_read(Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .Q(Mat2AXIvideo_DMA_U0_n_4),
        .\ap_CS_fsm_reg[1]_0 (Mat2AXIvideo_DMA_U0_n_5),
        .\ap_CS_fsm_reg[1]_1 (img_1_cols_V_c5_U_n_2),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .img_1_cols_V_c5_empty_n(img_1_cols_V_c5_empty_n),
        .img_1_data_stream_0_empty_n(img_1_data_stream_0_empty_n),
        .img_1_rows_V_c4_empty_n(img_1_rows_V_c4_empty_n),
        .internal_empty_n_reg(Mat2AXIvideo_DMA_U0_n_3),
        .\ireg_reg[7] ({Mat2AXIvideo_DMA_U0_n_16,Mat2AXIvideo_DMA_U0_n_17,Mat2AXIvideo_DMA_U0_n_18,Mat2AXIvideo_DMA_U0_n_19,Mat2AXIvideo_DMA_U0_n_20,Mat2AXIvideo_DMA_U0_n_21,Mat2AXIvideo_DMA_U0_n_22,Mat2AXIvideo_DMA_U0_n_23}),
        .\ireg_reg[8] (Mat2AXIvideo_DMA_U0_n_6),
        .\odata_int_reg[7] ({img_1_data_stream_0_U_n_2,img_1_data_stream_0_U_n_3,img_1_data_stream_0_U_n_4,img_1_data_stream_0_U_n_5,img_1_data_stream_0_U_n_6,img_1_data_stream_0_U_n_7,img_1_data_stream_0_U_n_8,img_1_data_stream_0_U_n_9}),
        .\odata_int_reg[8] ({video_out_TVALID,video_out_TDATA}),
        .start_for_Mat2AXIvideo_DMA_U0_empty_n(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB));
  design_1_passthrough_0_0_fifo_w11_d2_A img_1_cols_V_c5_U
       (.E(AXIvideo2Mat_DMA_U0_n_3),
        .Q(Mat2AXIvideo_DMA_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .img_1_cols_V_c5_empty_n(img_1_cols_V_c5_empty_n),
        .img_1_cols_V_c5_full_n(img_1_cols_V_c5_full_n),
        .img_1_cols_V_c_empty_n(img_1_cols_V_c_empty_n),
        .img_1_rows_V_c4_empty_n(img_1_rows_V_c4_empty_n),
        .img_1_rows_V_c4_full_n(img_1_rows_V_c4_full_n),
        .img_1_rows_V_c_empty_n(img_1_rows_V_c_empty_n),
        .internal_empty_n_reg_0(img_1_cols_V_c5_U_n_2),
        .internal_full_n_reg_0(img_1_cols_V_c5_U_n_3),
        .internal_full_n_reg_1(AXIvideo2Mat_DMA_U0_n_2),
        .\mOutPtr_reg[1]_0 (img_1_rows_V_c4_U_n_2),
        .start_for_Mat2AXIvideo_DMA_U0_empty_n(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .start_for_Mat2AXIvideo_DMA_U0_full_n(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .start_once_reg(start_once_reg));
  design_1_passthrough_0_0_fifo_w11_d2_A_0 img_1_cols_V_c_U
       (.E(AXIvideo2Mat_DMA_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .img_1_cols_V_c_empty_n(img_1_cols_V_c_empty_n),
        .img_1_cols_V_c_full_n(img_1_cols_V_c_full_n),
        .img_1_rows_V_c_full_n(img_1_rows_V_c_full_n),
        .internal_empty_n_reg_0(img_1_rows_V_c_U_n_2),
        .internal_full_n_reg_0(AXIvideo2Mat_DMA_U0_n_2));
  design_1_passthrough_0_0_fifo_w8_d2_A img_1_data_stream_0_U
       (.D(q),
        .Mat2AXIvideo_DMA_U0_img_data_stream_V_read(Mat2AXIvideo_DMA_U0_img_data_stream_V_read),
        .\SRL_SIG_reg[0][7] ({AXIvideo2Mat_DMA_U0_n_6,AXIvideo2Mat_DMA_U0_n_7,AXIvideo2Mat_DMA_U0_n_8,AXIvideo2Mat_DMA_U0_n_9,AXIvideo2Mat_DMA_U0_n_10,AXIvideo2Mat_DMA_U0_n_11,AXIvideo2Mat_DMA_U0_n_12,AXIvideo2Mat_DMA_U0_n_13}),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .ce(ce),
        .img_1_data_stream_0_empty_n(img_1_data_stream_0_empty_n),
        .img_1_data_stream_0_full_n(img_1_data_stream_0_full_n),
        .\ireg_reg[7] ({img_1_data_stream_0_U_n_2,img_1_data_stream_0_U_n_3,img_1_data_stream_0_U_n_4,img_1_data_stream_0_U_n_5,img_1_data_stream_0_U_n_6,img_1_data_stream_0_U_n_7,img_1_data_stream_0_U_n_8,img_1_data_stream_0_U_n_9}),
        .\odata_int_reg[7] ({Mat2AXIvideo_DMA_U0_n_16,Mat2AXIvideo_DMA_U0_n_17,Mat2AXIvideo_DMA_U0_n_18,Mat2AXIvideo_DMA_U0_n_19,Mat2AXIvideo_DMA_U0_n_20,Mat2AXIvideo_DMA_U0_n_21,Mat2AXIvideo_DMA_U0_n_22,Mat2AXIvideo_DMA_U0_n_23}),
        .\odata_int_reg[7]_0 (Mat2AXIvideo_DMA_U0_n_6));
  design_1_passthrough_0_0_fifo_w10_d2_A img_1_rows_V_c4_U
       (.E(AXIvideo2Mat_DMA_U0_n_3),
        .Q(Mat2AXIvideo_DMA_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .img_1_cols_V_c5_empty_n(img_1_cols_V_c5_empty_n),
        .img_1_rows_V_c4_empty_n(img_1_rows_V_c4_empty_n),
        .img_1_rows_V_c4_full_n(img_1_rows_V_c4_full_n),
        .internal_empty_n_reg_0(img_1_rows_V_c4_U_n_2),
        .internal_full_n_reg_0(img_1_cols_V_c5_U_n_2),
        .internal_full_n_reg_1(AXIvideo2Mat_DMA_U0_n_2),
        .start_for_Mat2AXIvideo_DMA_U0_empty_n(start_for_Mat2AXIvideo_DMA_U0_empty_n));
  design_1_passthrough_0_0_fifo_w10_d2_A_1 img_1_rows_V_c_U
       (.E(AXIvideo2Mat_DMA_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .img_1_cols_V_c_full_n(img_1_cols_V_c_full_n),
        .img_1_rows_V_c_empty_n(img_1_rows_V_c_empty_n),
        .img_1_rows_V_c_full_n(img_1_rows_V_c_full_n),
        .internal_full_n_reg_0(img_1_rows_V_c_U_n_2),
        .internal_full_n_reg_1(AXIvideo2Mat_DMA_U0_n_2));
  design_1_passthrough_0_0_start_for_Mat2AXIbkb start_for_Mat2AXIbkb_U
       (.CO(icmp_ln52_fu_209_p2),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(start_for_Mat2AXIbkb_U_n_2),
        .\mOutPtr_reg[0]_0 (Mat2AXIvideo_DMA_U0_n_5),
        .\mOutPtr_reg[1]_0 (Mat2AXIvideo_DMA_U0_n_3),
        .start_for_Mat2AXIvideo_DMA_U0_empty_n(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .start_for_Mat2AXIvideo_DMA_U0_full_n(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .start_once_reg(start_once_reg));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_passthrough_0_0_regslice_both
   (SR,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2_reg,
    D,
    \icmp_ln54_reg_288_reg[0] ,
    \ap_CS_fsm_reg[2] ,
    t_V_1_reg_170,
    t_V_1_reg_1700,
    internal_empty_n_reg,
    E,
    \ap_CS_fsm_reg[1] ,
    \ireg_reg[8] ,
    \odata_int_reg[8] ,
    \icmp_ln879_reg_283_reg[0] ,
    \icmp_ln879_reg_283_reg[0]_0 ,
    \icmp_ln54_reg_288_reg[0]_0 ,
    \ap_CS_fsm_reg[2]_0 ,
    \ireg_reg[7] ,
    ap_clk,
    CO,
    \ireg_reg[8]_0 ,
    ap_enable_reg_pp0_iter0,
    ap_rst_n,
    \ap_CS_fsm_reg[3] ,
    video_out_TREADY,
    Q,
    \ap_CS_fsm_reg[1]_0 ,
    \ap_CS_fsm_reg[2]_1 ,
    \t_V_1_reg_170_reg[0] ,
    start_for_Mat2AXIvideo_DMA_U0_empty_n,
    \icmp_ln54_reg_288_reg[0]_1 ,
    img_1_data_stream_0_empty_n,
    icmp_ln54_reg_288_pp0_iter1_reg,
    \tmp_last_V_reg_297_reg[0] ,
    icmp_ln879_reg_283,
    tmp_last_V_reg_297,
    \icmp_ln879_reg_283_reg[0]_1 ,
    \ireg_reg[7]_0 ,
    \odata_int_reg[7] );
  output [0:0]SR;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_enable_reg_pp0_iter2_reg;
  output [2:0]D;
  output [0:0]\icmp_ln54_reg_288_reg[0] ;
  output \ap_CS_fsm_reg[2] ;
  output t_V_1_reg_170;
  output t_V_1_reg_1700;
  output internal_empty_n_reg;
  output [0:0]E;
  output \ap_CS_fsm_reg[1] ;
  output \ireg_reg[8] ;
  output [8:0]\odata_int_reg[8] ;
  output \icmp_ln879_reg_283_reg[0] ;
  output \icmp_ln879_reg_283_reg[0]_0 ;
  output \icmp_ln54_reg_288_reg[0]_0 ;
  output \ap_CS_fsm_reg[2]_0 ;
  output [7:0]\ireg_reg[7] ;
  input ap_clk;
  input [0:0]CO;
  input \ireg_reg[8]_0 ;
  input ap_enable_reg_pp0_iter0;
  input ap_rst_n;
  input \ap_CS_fsm_reg[3] ;
  input video_out_TREADY;
  input [2:0]Q;
  input \ap_CS_fsm_reg[1]_0 ;
  input \ap_CS_fsm_reg[2]_1 ;
  input [0:0]\t_V_1_reg_170_reg[0] ;
  input start_for_Mat2AXIvideo_DMA_U0_empty_n;
  input \icmp_ln54_reg_288_reg[0]_1 ;
  input img_1_data_stream_0_empty_n;
  input icmp_ln54_reg_288_pp0_iter1_reg;
  input [0:0]\tmp_last_V_reg_297_reg[0] ;
  input icmp_ln879_reg_283;
  input tmp_last_V_reg_297;
  input [0:0]\icmp_ln879_reg_283_reg[0]_1 ;
  input [7:0]\ireg_reg[7]_0 ;
  input [7:0]\odata_int_reg[7] ;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[2]_i_2__0_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire [1:1]count;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_2;
  wire icmp_ln54_reg_288_pp0_iter1_reg;
  wire [0:0]\icmp_ln54_reg_288_reg[0] ;
  wire \icmp_ln54_reg_288_reg[0]_0 ;
  wire \icmp_ln54_reg_288_reg[0]_1 ;
  wire icmp_ln879_reg_283;
  wire \icmp_ln879_reg_283_reg[0] ;
  wire \icmp_ln879_reg_283_reg[0]_0 ;
  wire [0:0]\icmp_ln879_reg_283_reg[0]_1 ;
  wire img_1_data_stream_0_empty_n;
  wire internal_empty_n_reg;
  wire [7:0]\ireg_reg[7] ;
  wire [7:0]\ireg_reg[7]_0 ;
  wire \ireg_reg[8] ;
  wire \ireg_reg[8]_0 ;
  wire obuf_inst_n_10;
  wire [7:0]\odata_int_reg[7] ;
  wire [8:0]\odata_int_reg[8] ;
  wire p_0_in;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;
  wire t_V_1_reg_170;
  wire t_V_1_reg_1700;
  wire [0:0]\t_V_1_reg_170_reg[0] ;
  wire tmp_last_V_reg_297;
  wire [0:0]\tmp_last_V_reg_297_reg[0] ;
  wire video_out_TREADY;

  LUT4 #(
    .INIT(16'h5DDD)) 
    \ap_CS_fsm[0]_i_2__0 
       (.I0(Q[0]),
        .I1(\count_reg_n_0_[0] ),
        .I2(video_out_TREADY),
        .I3(\count_reg_n_0_[1] ),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7000)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\count_reg_n_0_[1] ),
        .I1(video_out_TREADY),
        .I2(\count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\ap_CS_fsm_reg[1]_0 ),
        .I5(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h40550000)) 
    \ap_CS_fsm[2]_i_2__0 
       (.I0(\t_V_1_reg_170_reg[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(video_out_TREADY),
        .I3(\count_reg_n_0_[0] ),
        .I4(Q[0]),
        .O(\ap_CS_fsm[2]_i_2__0_n_0 ));
  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_2),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8F00)) 
    \i_V_reg_278[31]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(video_out_TREADY),
        .I2(\count_reg_n_0_[0] ),
        .I3(Q[0]),
        .O(E));
  design_1_passthrough_0_0_xil_defaultlib_ibuf ibuf_inst
       (.CO(CO),
        .D(D[2:1]),
        .Q(Q[1:0]),
        .SR(obuf_inst_n_10),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .\ap_CS_fsm_reg[2]_1 (\ap_CS_fsm_reg[2]_1 ),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg),
        .ap_enable_reg_pp0_iter2_reg_0(\ap_CS_fsm[2]_i_2__0_n_0 ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ibuf_inst_n_2),
        .count(count),
        .\count_reg[0] (\count_reg_n_0_[0] ),
        .\count_reg[0]_0 (\count_reg_n_0_[1] ),
        .icmp_ln54_reg_288_pp0_iter1_reg(icmp_ln54_reg_288_pp0_iter1_reg),
        .\icmp_ln54_reg_288_reg[0] (\icmp_ln54_reg_288_reg[0] ),
        .\icmp_ln54_reg_288_reg[0]_0 (\icmp_ln54_reg_288_reg[0]_0 ),
        .\icmp_ln54_reg_288_reg[0]_1 (\icmp_ln54_reg_288_reg[0]_1 ),
        .icmp_ln879_reg_283(icmp_ln879_reg_283),
        .\icmp_ln879_reg_283_reg[0] (\icmp_ln879_reg_283_reg[0] ),
        .img_1_data_stream_0_empty_n(img_1_data_stream_0_empty_n),
        .\ireg_reg[0]_0 (\odata_int_reg[8] [8]),
        .\ireg_reg[7]_0 (\ireg_reg[7]_0 ),
        .\ireg_reg[8]_0 (ibuf_inst_n_10),
        .\ireg_reg[8]_1 ({p_0_in,\ireg_reg[7] }),
        .\ireg_reg[8]_2 (\ireg_reg[8] ),
        .\ireg_reg[8]_3 (\ireg_reg[8]_0 ),
        .t_V_1_reg_170(t_V_1_reg_170),
        .t_V_1_reg_1700(t_V_1_reg_1700),
        .\t_V_1_reg_170_reg[0] (\t_V_1_reg_170_reg[0] ),
        .tmp_last_V_reg_297(tmp_last_V_reg_297),
        .\tmp_last_V_reg_297_reg[0] (\tmp_last_V_reg_297_reg[0] ),
        .video_out_TREADY(video_out_TREADY));
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln879_reg_283[0]_i_1 
       (.I0(\icmp_ln879_reg_283_reg[0]_1 ),
        .I1(\ap_CS_fsm[2]_i_2__0_n_0 ),
        .I2(icmp_ln879_reg_283),
        .O(\icmp_ln879_reg_283_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8080008000800080)) 
    \mOutPtr[1]_i_2__1 
       (.I0(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I1(\t_V_1_reg_170_reg[0] ),
        .I2(Q[0]),
        .I3(\count_reg_n_0_[0] ),
        .I4(video_out_TREADY),
        .I5(\count_reg_n_0_[1] ),
        .O(internal_empty_n_reg));
  design_1_passthrough_0_0_xil_defaultlib_obuf obuf_inst
       (.D({ibuf_inst_n_10,\odata_int_reg[7] }),
        .Q(\odata_int_reg[8] ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0] (p_0_in),
        .\odata_int_reg[8]_0 (obuf_inst_n_10),
        .video_out_TREADY(video_out_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_passthrough_0_0_regslice_both_5
   (ap_rst_n_0,
    ce,
    t_V_2_reg_196,
    ack_out,
    video_in_TREADY,
    \icmp_ln25_reg_260_reg[0] ,
    E,
    \odata_int_reg[7] ,
    ap_enable_reg_pp0_iter00,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    Q,
    \SRL_SIG_reg[1][0] ,
    img_1_data_stream_0_full_n,
    CO,
    \t_V_2_reg_196_reg[0] ,
    icmp_ln25_reg_260,
    D,
    ap_clk,
    ap_rst);
  output ap_rst_n_0;
  output ce;
  output t_V_2_reg_196;
  output ack_out;
  output video_in_TREADY;
  output \icmp_ln25_reg_260_reg[0] ;
  output [0:0]E;
  output [7:0]\odata_int_reg[7] ;
  input ap_enable_reg_pp0_iter00;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1_reg_0;
  input [1:0]Q;
  input \SRL_SIG_reg[1][0] ;
  input img_1_data_stream_0_full_n;
  input [0:0]CO;
  input [0:0]\t_V_2_reg_196_reg[0] ;
  input icmp_ln25_reg_260;
  input [8:0]D;
  input ap_clk;
  input ap_rst;

  wire [0:0]CO;
  wire [8:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \SRL_SIG_reg[1][0] ;
  wire ack_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_rst;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ce;
  wire ibuf_inst_n_0;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire icmp_ln25_reg_260;
  wire \icmp_ln25_reg_260_reg[0] ;
  wire img_1_data_stream_0_full_n;
  wire ireg01_out;
  wire obuf_inst_n_6;
  wire [7:0]\odata_int_reg[7] ;
  wire p_0_in;
  wire t_V_2_reg_196;
  wire [0:0]\t_V_2_reg_196_reg[0] ;
  wire video_in_TREADY;

  design_1_passthrough_0_0_xil_defaultlib_ibuf_6 ibuf_inst
       (.D(D),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln25_reg_260(icmp_ln25_reg_260),
        .img_1_data_stream_0_full_n(img_1_data_stream_0_full_n),
        .internal_full_n_reg(ibuf_inst_n_0),
        .\ireg_reg[8]_0 ({ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11}),
        .\t_V_2_reg_196_reg[0] (ap_enable_reg_pp0_iter1_reg),
        .video_in_TREADY(video_in_TREADY));
  design_1_passthrough_0_0_xil_defaultlib_obuf_7 obuf_inst
       (.CO(CO),
        .D({ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11}),
        .E(ireg01_out),
        .Q(Q),
        .SR(obuf_inst_n_6),
        .\SRL_SIG_reg[1][0] (\SRL_SIG_reg[1][0] ),
        .\ap_CS_fsm_reg[2] (E),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter00(ap_enable_reg_pp0_iter00),
        .ap_enable_reg_pp0_iter0_reg(ack_out),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg_0),
        .ap_rst(ap_rst),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ce(ce),
        .icmp_ln25_reg_260(icmp_ln25_reg_260),
        .\icmp_ln25_reg_260_reg[0] (\icmp_ln25_reg_260_reg[0] ),
        .img_1_data_stream_0_full_n(img_1_data_stream_0_full_n),
        .\ireg_reg[0] (p_0_in),
        .\odata_int_reg[7]_0 (\odata_int_reg[7] ),
        .t_V_2_reg_196(t_V_2_reg_196),
        .\t_V_2_reg_196_reg[0] (\t_V_2_reg_196_reg[0] ),
        .\t_V_2_reg_196_reg[0]_0 (ibuf_inst_n_0));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_passthrough_0_0_regslice_both__parameterized1
   (video_out_TSTRB,
    \odata_int_reg[1] ,
    ap_rst_n,
    video_out_TREADY,
    ap_clk,
    SR);
  output [0:0]video_out_TSTRB;
  input [0:0]\odata_int_reg[1] ;
  input ap_rst_n;
  input video_out_TREADY;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire obuf_inst_n_0;
  wire [0:0]\odata_int_reg[1] ;
  wire p_0_in;
  wire video_out_TREADY;
  wire [0:0]video_out_TSTRB;

  design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[1]_0 (\odata_int_reg[1] ),
        .\ireg_reg[1]_1 (obuf_inst_n_0),
        .p_0_in(p_0_in),
        .video_out_TREADY(video_out_TREADY));
  design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4 obuf_inst
       (.SR(SR),
        .ap_clk(ap_clk),
        .\odata_int_reg[0]_0 (ibuf_inst_n_1),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .\odata_int_reg[1]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_passthrough_0_0_regslice_both__parameterized1_2
   (video_out_TLAST,
    ap_rst_n,
    video_out_TREADY,
    \odata_int_reg[1] ,
    tmp_last_V_reg_297,
    ap_clk,
    SR);
  output [0:0]video_out_TLAST;
  input ap_rst_n;
  input video_out_TREADY;
  input [0:0]\odata_int_reg[1] ;
  input tmp_last_V_reg_297;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire obuf_inst_n_0;
  wire [0:0]\odata_int_reg[1] ;
  wire p_0_in;
  wire tmp_last_V_reg_297;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;

  design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[1]_0 (\odata_int_reg[1] ),
        .\ireg_reg[1]_1 (obuf_inst_n_0),
        .p_0_in(p_0_in),
        .tmp_last_V_reg_297(tmp_last_V_reg_297),
        .video_out_TREADY(video_out_TREADY));
  design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0 obuf_inst
       (.SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0]_0 (ibuf_inst_n_1),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .\odata_int_reg[1]_1 (\odata_int_reg[1] ),
        .p_0_in(p_0_in),
        .tmp_last_V_reg_297(tmp_last_V_reg_297),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY));
endmodule

(* ORIG_REF_NAME = "start_for_Mat2AXIbkb" *) 
module design_1_passthrough_0_0_start_for_Mat2AXIbkb
   (start_for_Mat2AXIvideo_DMA_U0_full_n,
    start_for_Mat2AXIvideo_DMA_U0_empty_n,
    internal_full_n_reg_0,
    ap_clk,
    start_once_reg,
    \mOutPtr_reg[1]_0 ,
    ap_rst_n,
    CO,
    \mOutPtr_reg[0]_0 ,
    ap_rst);
  output start_for_Mat2AXIvideo_DMA_U0_full_n;
  output start_for_Mat2AXIvideo_DMA_U0_empty_n;
  output internal_full_n_reg_0;
  input ap_clk;
  input start_once_reg;
  input \mOutPtr_reg[1]_0 ;
  input ap_rst_n;
  input [0:0]CO;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst;

  wire [1:0]A;
  wire [0:0]CO;
  wire ap_clk;
  wire ap_rst;
  wire ap_rst_n;
  wire internal_empty_n_i_1__4_n_0;
  wire internal_empty_n_i_2__0_n_0;
  wire internal_full_n_i_1__4_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire start_for_Mat2AXIvideo_DMA_U0_empty_n;
  wire start_for_Mat2AXIvideo_DMA_U0_full_n;
  wire start_once_reg;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .I1(start_once_reg),
        .O(internal_full_n_reg_0));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__4
       (.I0(A[1]),
        .I1(A[0]),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(internal_empty_n_i_2__0_n_0),
        .I4(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_empty_n_i_2__0
       (.I0(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .I1(start_once_reg),
        .O(internal_empty_n_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_0),
        .Q(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD5555)) 
    internal_full_n_i_1__4
       (.I0(ap_rst_n),
        .I1(A[1]),
        .I2(A[0]),
        .I3(start_once_reg),
        .I4(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(internal_full_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_0),
        .Q(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDD2DDD2222D222)) 
    \mOutPtr[0]_i_1 
       (.I0(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .I1(start_once_reg),
        .I2(start_for_Mat2AXIvideo_DMA_U0_empty_n),
        .I3(CO),
        .I4(\mOutPtr_reg[0]_0 ),
        .I5(A[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hBDBB4244)) 
    \mOutPtr[1]_i_1 
       (.I0(A[0]),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(start_once_reg),
        .I3(start_for_Mat2AXIvideo_DMA_U0_full_n),
        .I4(A[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(A[0]),
        .S(ap_rst));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(A[1]),
        .S(ap_rst));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_ibuf
   (ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2_reg,
    ap_rst_n_0,
    \icmp_ln54_reg_288_reg[0] ,
    \ap_CS_fsm_reg[2] ,
    D,
    t_V_1_reg_170,
    t_V_1_reg_1700,
    count,
    \ireg_reg[8]_0 ,
    \ireg_reg[8]_1 ,
    \ireg_reg[8]_2 ,
    \icmp_ln879_reg_283_reg[0] ,
    \icmp_ln54_reg_288_reg[0]_0 ,
    \ap_CS_fsm_reg[2]_0 ,
    CO,
    \ireg_reg[8]_3 ,
    ap_enable_reg_pp0_iter0,
    ap_rst_n,
    ap_enable_reg_pp0_iter2_reg_0,
    \ap_CS_fsm_reg[3] ,
    video_out_TREADY,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    Q,
    \ap_CS_fsm_reg[2]_1 ,
    \t_V_1_reg_170_reg[0] ,
    \icmp_ln54_reg_288_reg[0]_1 ,
    img_1_data_stream_0_empty_n,
    icmp_ln54_reg_288_pp0_iter1_reg,
    \ireg_reg[0]_0 ,
    \tmp_last_V_reg_297_reg[0] ,
    icmp_ln879_reg_283,
    tmp_last_V_reg_297,
    SR,
    ap_clk,
    \ireg_reg[7]_0 );
  output ap_enable_reg_pp0_iter1_reg;
  output ap_enable_reg_pp0_iter2_reg;
  output ap_rst_n_0;
  output \icmp_ln54_reg_288_reg[0] ;
  output \ap_CS_fsm_reg[2] ;
  output [1:0]D;
  output t_V_1_reg_170;
  output t_V_1_reg_1700;
  output [0:0]count;
  output [0:0]\ireg_reg[8]_0 ;
  output [8:0]\ireg_reg[8]_1 ;
  output \ireg_reg[8]_2 ;
  output \icmp_ln879_reg_283_reg[0] ;
  output \icmp_ln54_reg_288_reg[0]_0 ;
  output \ap_CS_fsm_reg[2]_0 ;
  input [0:0]CO;
  input \ireg_reg[8]_3 ;
  input ap_enable_reg_pp0_iter0;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter2_reg_0;
  input \ap_CS_fsm_reg[3] ;
  input video_out_TREADY;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input [1:0]Q;
  input \ap_CS_fsm_reg[2]_1 ;
  input [0:0]\t_V_1_reg_170_reg[0] ;
  input \icmp_ln54_reg_288_reg[0]_1 ;
  input img_1_data_stream_0_empty_n;
  input icmp_ln54_reg_288_pp0_iter1_reg;
  input [0:0]\ireg_reg[0]_0 ;
  input [0:0]\tmp_last_V_reg_297_reg[0] ;
  input icmp_ln879_reg_283;
  input tmp_last_V_reg_297;
  input [0:0]SR;
  input ap_clk;
  input [7:0]\ireg_reg[7]_0 ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_enable_reg_pp0_iter2_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire [0:0]count;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire icmp_ln54_reg_288_pp0_iter1_reg;
  wire \icmp_ln54_reg_288_reg[0] ;
  wire \icmp_ln54_reg_288_reg[0]_0 ;
  wire \icmp_ln54_reg_288_reg[0]_1 ;
  wire icmp_ln879_reg_283;
  wire \icmp_ln879_reg_283_reg[0] ;
  wire img_1_data_stream_0_empty_n;
  wire ireg01_out;
  wire \ireg[8]_i_4_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [7:0]\ireg_reg[7]_0 ;
  wire [0:0]\ireg_reg[8]_0 ;
  wire [8:0]\ireg_reg[8]_1 ;
  wire \ireg_reg[8]_2 ;
  wire \ireg_reg[8]_3 ;
  wire t_V_1_reg_170;
  wire t_V_1_reg_1700;
  wire [0:0]\t_V_1_reg_170_reg[0] ;
  wire tmp_last_V_reg_297;
  wire [0:0]\tmp_last_V_reg_297_reg[0] ;
  wire video_out_TREADY;

  LUT4 #(
    .INIT(16'hFEAA)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter2_reg_0),
        .I1(\ireg[8]_i_4_n_0 ),
        .I2(\ap_CS_fsm_reg[2]_1 ),
        .I3(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000022222000)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(Q[1]),
        .I1(\ireg[8]_i_4_n_0 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(CO),
        .I4(\ap_CS_fsm_reg[3] ),
        .I5(\ireg_reg[8]_3 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDFDFDF0000000000)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(CO),
        .I1(\ireg[8]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter2_reg_0),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst_n),
        .O(\ap_CS_fsm_reg[2] ));
  LUT5 #(
    .INIT(32'hC5C00000)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(CO),
        .I1(\ireg_reg[8]_3 ),
        .I2(\ireg[8]_i_4_n_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT5 #(
    .INIT(32'h4F400000)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter2_reg_0),
        .I1(\ap_CS_fsm_reg[3] ),
        .I2(\ireg[8]_i_4_n_0 ),
        .I3(\ireg_reg[8]_3 ),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter2_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF2F0FA00)) 
    \count[0]_i_1 
       (.I0(ap_rst_n),
        .I1(video_out_TREADY),
        .I2(\icmp_ln54_reg_288_reg[0] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[0]_0 ),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \count[1]_i_1 
       (.I0(\icmp_ln54_reg_288_reg[0] ),
        .I1(\count_reg[0]_0 ),
        .I2(\count_reg[0] ),
        .I3(video_out_TREADY),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \icmp_ln54_reg_288[0]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(\ireg[8]_i_4_n_0 ),
        .I3(\icmp_ln54_reg_288_reg[0]_1 ),
        .O(\ap_CS_fsm_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \icmp_ln54_reg_288_pp0_iter1_reg[0]_i_1 
       (.I0(\icmp_ln54_reg_288_reg[0]_1 ),
        .I1(Q[1]),
        .I2(\ireg[8]_i_4_n_0 ),
        .I3(icmp_ln54_reg_288_pp0_iter1_reg),
        .O(\icmp_ln54_reg_288_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[8]_i_2__0 
       (.I0(\ireg_reg[8]_1 [8]),
        .I1(\ireg_reg[0]_0 ),
        .I2(video_out_TREADY),
        .O(ireg01_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ireg[8]_i_3 
       (.I0(\icmp_ln54_reg_288_reg[0]_1 ),
        .I1(\ireg_reg[8]_3 ),
        .I2(Q[1]),
        .I3(\ireg[8]_i_4_n_0 ),
        .O(\icmp_ln54_reg_288_reg[0] ));
  LUT6 #(
    .INIT(64'h0CFF0C0C04040404)) 
    \ireg[8]_i_4 
       (.I0(img_1_data_stream_0_empty_n),
        .I1(\ireg_reg[8]_3 ),
        .I2(\icmp_ln54_reg_288_reg[0]_1 ),
        .I3(icmp_ln54_reg_288_pp0_iter1_reg),
        .I4(\ap_CS_fsm_reg[3] ),
        .I5(\ireg_reg[8]_2 ),
        .O(\ireg[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [0]),
        .Q(\ireg_reg[8]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [1]),
        .Q(\ireg_reg[8]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [2]),
        .Q(\ireg_reg[8]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [3]),
        .Q(\ireg_reg[8]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [4]),
        .Q(\ireg_reg[8]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [5]),
        .Q(\ireg_reg[8]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [6]),
        .Q(\ireg_reg[8]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[7]_0 [7]),
        .Q(\ireg_reg[8]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\icmp_ln54_reg_288_reg[0] ),
        .Q(\ireg_reg[8]_1 [8]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[7]_i_4 
       (.I0(\ireg_reg[8]_1 [8]),
        .I1(ap_rst_n),
        .O(\ireg_reg[8]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[8]_i_1 
       (.I0(\ireg_reg[8]_1 [8]),
        .I1(\icmp_ln54_reg_288_reg[0] ),
        .O(\ireg_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h000000000000A222)) 
    \t_V_1_reg_170[0]_i_1 
       (.I0(Q[0]),
        .I1(\count_reg[0] ),
        .I2(video_out_TREADY),
        .I3(\count_reg[0]_0 ),
        .I4(\t_V_1_reg_170_reg[0] ),
        .I5(t_V_1_reg_1700),
        .O(t_V_1_reg_170));
  LUT4 #(
    .INIT(16'h0020)) 
    \t_V_1_reg_170[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\ireg[8]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(CO),
        .O(t_V_1_reg_1700));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \tmp_last_V_reg_297[0]_i_1 
       (.I0(\tmp_last_V_reg_297_reg[0] ),
        .I1(icmp_ln879_reg_283),
        .I2(CO),
        .I3(Q[1]),
        .I4(\ireg[8]_i_4_n_0 ),
        .I5(tmp_last_V_reg_297),
        .O(\icmp_ln879_reg_283_reg[0] ));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_ibuf_6
   (internal_full_n_reg,
    video_in_TREADY,
    Q,
    \ireg_reg[8]_0 ,
    img_1_data_stream_0_full_n,
    \t_V_2_reg_196_reg[0] ,
    icmp_ln25_reg_260,
    D,
    ap_rst_n,
    SR,
    E,
    ap_clk);
  output internal_full_n_reg;
  output video_in_TREADY;
  output [0:0]Q;
  output [8:0]\ireg_reg[8]_0 ;
  input img_1_data_stream_0_full_n;
  input \t_V_2_reg_196_reg[0] ;
  input icmp_ln25_reg_260;
  input [8:0]D;
  input ap_rst_n;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [8:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire icmp_ln25_reg_260;
  wire img_1_data_stream_0_full_n;
  wire internal_full_n_reg;
  wire [8:0]\ireg_reg[8]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \t_V_2_reg_196_reg[0] ;
  wire video_in_TREADY;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(D[4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(D[5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(D[6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(D[7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(D[8]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(D[0]),
        .O(\ireg_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__0 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(D[1]),
        .O(\ireg_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__0 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(D[2]),
        .O(\ireg_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(D[3]),
        .O(\ireg_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__0 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(D[4]),
        .O(\ireg_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_1__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(D[5]),
        .O(\ireg_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[6]_i_1__0 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(Q),
        .I2(D[6]),
        .O(\ireg_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[7]_i_1__0 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(Q),
        .I2(D[7]),
        .O(\ireg_reg[8]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[8]_i_2 
       (.I0(Q),
        .I1(D[8]),
        .O(\ireg_reg[8]_0 [8]));
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_data_V_reg_269[7]_i_2 
       (.I0(img_1_data_stream_0_full_n),
        .I1(\t_V_2_reg_196_reg[0] ),
        .I2(icmp_ln25_reg_260),
        .O(internal_full_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    video_in_TREADY_INST_0
       (.I0(D[8]),
        .I1(ap_rst_n),
        .I2(Q),
        .O(video_in_TREADY));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0
   (p_0_in,
    \ireg_reg[0]_0 ,
    \ireg_reg[1]_0 ,
    ap_rst_n,
    video_out_TREADY,
    \ireg_reg[1]_1 ,
    tmp_last_V_reg_297,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input [0:0]\ireg_reg[1]_0 ;
  input ap_rst_n;
  input video_out_TREADY;
  input \ireg_reg[1]_1 ;
  input tmp_last_V_reg_297;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire [0:0]\ireg_reg[1]_0 ;
  wire \ireg_reg[1]_1 ;
  wire p_0_in;
  wire tmp_last_V_reg_297;
  wire video_out_TREADY;

  LUT6 #(
    .INIT(64'h00A0A0C000A000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(tmp_last_V_reg_297),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(video_out_TREADY),
        .I5(\ireg_reg[1]_1 ),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(\ireg_reg[1]_0 ),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(video_out_TREADY),
        .I4(\ireg_reg[1]_1 ),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3
   (p_0_in,
    \ireg_reg[0]_0 ,
    \ireg_reg[1]_0 ,
    ap_rst_n,
    video_out_TREADY,
    \ireg_reg[1]_1 ,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input [0:0]\ireg_reg[1]_0 ;
  input ap_rst_n;
  input video_out_TREADY;
  input \ireg_reg[1]_1 ;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire [0:0]\ireg_reg[1]_0 ;
  wire \ireg_reg[1]_1 ;
  wire p_0_in;
  wire video_out_TREADY;

  LUT5 #(
    .INIT(32'h088C0808)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(video_out_TREADY),
        .I4(\ireg_reg[1]_1 ),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C80000)) 
    \ireg[1]_i_1 
       (.I0(\ireg_reg[1]_0 ),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(video_out_TREADY),
        .I4(\ireg_reg[1]_1 ),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_obuf
   (SR,
    Q,
    \odata_int_reg[8]_0 ,
    ap_rst_n,
    video_out_TREADY,
    \ireg_reg[0] ,
    D,
    ap_clk);
  output [0:0]SR;
  output [8:0]Q;
  output [0:0]\odata_int_reg[8]_0 ;
  input ap_rst_n;
  input video_out_TREADY;
  input [0:0]\ireg_reg[0] ;
  input [8:0]D;
  input ap_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[0] ;
  wire \odata_int[7]_i_2_n_0 ;
  wire [0:0]\odata_int_reg[8]_0 ;
  wire video_out_TREADY;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[8]_i_1__0 
       (.I0(Q[8]),
        .I1(video_out_TREADY),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(\odata_int_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \odata_int[7]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[7]_i_2 
       (.I0(video_out_TREADY),
        .I1(Q[8]),
        .O(\odata_int[7]_i_2_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(\odata_int[7]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_obuf_7
   (ap_rst_n_0,
    ce,
    t_V_2_reg_196,
    ap_enable_reg_pp0_iter0_reg,
    E,
    \icmp_ln25_reg_260_reg[0] ,
    SR,
    \ap_CS_fsm_reg[2] ,
    \odata_int_reg[7]_0 ,
    ap_enable_reg_pp0_iter00,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    Q,
    \SRL_SIG_reg[1][0] ,
    img_1_data_stream_0_full_n,
    CO,
    \t_V_2_reg_196_reg[0] ,
    \t_V_2_reg_196_reg[0]_0 ,
    icmp_ln25_reg_260,
    \ireg_reg[0] ,
    ap_rst,
    D,
    ap_clk);
  output ap_rst_n_0;
  output ce;
  output t_V_2_reg_196;
  output ap_enable_reg_pp0_iter0_reg;
  output [0:0]E;
  output \icmp_ln25_reg_260_reg[0] ;
  output [0:0]SR;
  output [0:0]\ap_CS_fsm_reg[2] ;
  output [7:0]\odata_int_reg[7]_0 ;
  input ap_enable_reg_pp0_iter00;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1_reg_0;
  input [1:0]Q;
  input \SRL_SIG_reg[1][0] ;
  input img_1_data_stream_0_full_n;
  input [0:0]CO;
  input [0:0]\t_V_2_reg_196_reg[0] ;
  input \t_V_2_reg_196_reg[0]_0 ;
  input icmp_ln25_reg_260;
  input [0:0]\ireg_reg[0] ;
  input ap_rst;
  input [8:0]D;
  input ap_clk;

  wire [0:0]CO;
  wire [8:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[1][0] ;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_rst;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ce;
  wire icmp_ln25_reg_260;
  wire \icmp_ln25_reg_260[0]_i_2_n_0 ;
  wire \icmp_ln25_reg_260_reg[0] ;
  wire img_1_data_stream_0_full_n;
  wire [0:0]\ireg_reg[0] ;
  wire [7:0]\odata_int_reg[7]_0 ;
  wire p_0_in;
  wire t_V_2_reg_196;
  wire [0:0]\t_V_2_reg_196_reg[0] ;
  wire \t_V_2_reg_196_reg[0]_0 ;
  wire vld_out;

  LUT6 #(
    .INIT(64'h2020202020002020)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(Q[1]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(img_1_data_stream_0_full_n),
        .I3(vld_out),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(CO),
        .O(ce));
  LUT6 #(
    .INIT(64'h44C000C000000000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\icmp_ln25_reg_260[0]_i_2_n_0 ),
        .I4(ap_enable_reg_pp0_iter1_reg),
        .I5(ap_enable_reg_pp0_iter1_reg_0),
        .O(ap_rst_n_0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \icmp_ln25_reg_260[0]_i_1 
       (.I0(icmp_ln25_reg_260),
        .I1(\icmp_ln25_reg_260[0]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(CO),
        .O(\icmp_ln25_reg_260_reg[0] ));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \icmp_ln25_reg_260[0]_i_2 
       (.I0(icmp_ln25_reg_260),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_1_data_stream_0_full_n),
        .I3(vld_out),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(CO),
        .O(\icmp_ln25_reg_260[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[8]_i_1 
       (.I0(vld_out),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[8]_i_2 
       (.I0(\ireg_reg[0] ),
        .I1(vld_out),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(E));
  LUT2 #(
    .INIT(4'hB)) 
    \odata_int[8]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(vld_out),
        .O(p_0_in));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[0]),
        .Q(\odata_int_reg[7]_0 [0]),
        .R(ap_rst));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[1]),
        .Q(\odata_int_reg[7]_0 [1]),
        .R(ap_rst));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[2]),
        .Q(\odata_int_reg[7]_0 [2]),
        .R(ap_rst));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[3]),
        .Q(\odata_int_reg[7]_0 [3]),
        .R(ap_rst));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[4]),
        .Q(\odata_int_reg[7]_0 [4]),
        .R(ap_rst));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[5]),
        .Q(\odata_int_reg[7]_0 [5]),
        .R(ap_rst));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[6]),
        .Q(\odata_int_reg[7]_0 [6]),
        .R(ap_rst));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[7]),
        .Q(\odata_int_reg[7]_0 [7]),
        .R(ap_rst));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[8]),
        .Q(vld_out),
        .R(ap_rst));
  LUT3 #(
    .INIT(8'h04)) 
    \t_V_2_reg_196[0]_i_1 
       (.I0(\t_V_2_reg_196_reg[0] ),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(t_V_2_reg_196));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \t_V_2_reg_196[0]_i_2 
       (.I0(CO),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(vld_out),
        .I3(\t_V_2_reg_196_reg[0]_0 ),
        .I4(Q[1]),
        .O(ap_enable_reg_pp0_iter0_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00002022)) 
    \tmp_data_V_reg_269[7]_i_1 
       (.I0(Q[1]),
        .I1(\t_V_2_reg_196_reg[0]_0 ),
        .I2(vld_out),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(CO),
        .O(\ap_CS_fsm_reg[2] ));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0
   (\odata_int_reg[1]_0 ,
    video_out_TLAST,
    ap_rst_n,
    video_out_TREADY,
    p_0_in,
    \odata_int_reg[1]_1 ,
    \odata_int_reg[0]_0 ,
    tmp_last_V_reg_297,
    SR,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]video_out_TLAST;
  input ap_rst_n;
  input video_out_TREADY;
  input p_0_in;
  input [0:0]\odata_int_reg[1]_1 ;
  input \odata_int_reg[0]_0 ;
  input tmp_last_V_reg_297;
  input [0:0]SR;
  input ap_clk;

  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[0]_i_2_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire [0:0]\odata_int_reg[1]_1 ;
  wire p_0_in;
  wire tmp_last_V_reg_297;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[0]_0 ),
        .I1(p_0_in),
        .I2(tmp_last_V_reg_297),
        .I3(\odata_int[0]_i_2_n_0 ),
        .I4(video_out_TLAST),
        .O(\odata_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \odata_int[0]_i_2 
       (.I0(ap_rst_n),
        .I1(video_out_TREADY),
        .I2(\odata_int_reg[1]_0 ),
        .O(\odata_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(\odata_int_reg[1]_1 ),
        .I2(video_out_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(video_out_TLAST),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4
   (\odata_int_reg[1]_0 ,
    video_out_TSTRB,
    p_0_in,
    \odata_int_reg[1]_1 ,
    video_out_TREADY,
    \odata_int_reg[0]_0 ,
    SR,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]video_out_TSTRB;
  input p_0_in;
  input [0:0]\odata_int_reg[1]_1 ;
  input video_out_TREADY;
  input \odata_int_reg[0]_0 ;
  input [0:0]SR;
  input ap_clk;

  wire [0:0]SR;
  wire ap_clk;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire [0:0]\odata_int_reg[1]_1 ;
  wire p_0_in;
  wire video_out_TREADY;
  wire [0:0]video_out_TSTRB;

  LUT5 #(
    .INIT(32'hBFBBB0BB)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[0]_0 ),
        .I1(p_0_in),
        .I2(video_out_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .I4(video_out_TSTRB),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(\odata_int_reg[1]_1 ),
        .I2(video_out_TREADY),
        .I3(\odata_int_reg[1]_0 ),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(video_out_TSTRB),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
