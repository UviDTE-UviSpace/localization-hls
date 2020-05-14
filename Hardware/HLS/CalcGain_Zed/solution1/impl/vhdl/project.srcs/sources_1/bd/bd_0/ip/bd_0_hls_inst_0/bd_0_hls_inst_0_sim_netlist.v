// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 14 15:26:44 2020
// Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/localization-hls/Hardware/HLS/CalcGain_Zed/solution1/impl/vhdl/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,doGain,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "doGain,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (ap_clk,
    ap_rst_n,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TDATA,
    inStream_TDEST,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    outStream_TVALID,
    outStream_TREADY,
    outStream_TDATA,
    outStream_TDEST,
    outStream_TKEEP,
    outStream_TSTRB,
    outStream_TUSER,
    outStream_TLAST,
    outStream_TID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF inStream:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input inStream_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TREADY" *) output inStream_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TDATA" *) input [31:0]inStream_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TDEST" *) input [5:0]inStream_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TKEEP" *) input [3:0]inStream_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TSTRB" *) input [3:0]inStream_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TUSER" *) input [1:0]inStream_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TLAST" *) input [0:0]inStream_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TID" *) input [4:0]inStream_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME outStream, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) output outStream_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TREADY" *) input outStream_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TDATA" *) output [31:0]outStream_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TDEST" *) output [5:0]outStream_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TKEEP" *) output [3:0]outStream_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TSTRB" *) output [3:0]outStream_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TUSER" *) output [1:0]outStream_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TLAST" *) output [0:0]outStream_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TID" *) output [4:0]outStream_TID;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [3:0]inStream_TKEEP;
  wire [0:0]inStream_TLAST;
  wire inStream_TREADY;
  wire [3:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire [31:0]outStream_TDATA;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [3:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;

  bd_0_hls_inst_0_doGain U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TDEST(inStream_TDEST),
        .inStream_TID(inStream_TID),
        .inStream_TKEEP(inStream_TKEEP),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TSTRB(inStream_TSTRB),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID),
        .outStream_TDATA(outStream_TDATA),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TID(outStream_TID),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB),
        .outStream_TUSER(outStream_TUSER),
        .outStream_TVALID(outStream_TVALID));
endmodule

(* ORIG_REF_NAME = "doGain" *) 
module bd_0_hls_inst_0_doGain
   (ap_clk,
    ap_rst_n,
    inStream_TDATA,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    inStream_TDEST,
    outStream_TDATA,
    outStream_TVALID,
    outStream_TREADY,
    outStream_TKEEP,
    outStream_TSTRB,
    outStream_TUSER,
    outStream_TLAST,
    outStream_TID,
    outStream_TDEST);
  input ap_clk;
  input ap_rst_n;
  input [31:0]inStream_TDATA;
  input inStream_TVALID;
  output inStream_TREADY;
  input [3:0]inStream_TKEEP;
  input [3:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  input [5:0]inStream_TDEST;
  output [31:0]outStream_TDATA;
  output outStream_TVALID;
  input outStream_TREADY;
  output [3:0]outStream_TKEEP;
  output [3:0]outStream_TSTRB;
  output [1:0]outStream_TUSER;
  output [0:0]outStream_TLAST;
  output [4:0]outStream_TID;
  output [5:0]outStream_TDEST;

  wire \<const0> ;
  wire ack_out;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire ap_CS_fsm_state1;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_rst;
  wire ap_rst_n;
  wire [6:6]cdata;
  wire [5:5]cdata_0;
  wire [4:4]cdata_1;
  wire [4:4]cdata_2;
  wire \ibuf_inst/p_0_in ;
  wire \ibuf_inst/p_0_in_3 ;
  wire \ibuf_inst/p_0_in_4 ;
  wire \ibuf_inst/p_0_in_5 ;
  wire icmp_ln13_fu_126_p2;
  wire icmp_ln13_reg_172;
  wire icmp_ln13_reg_172_pp0_iter1_reg;
  wire idx_0_reg_115;
  wire \idx_0_reg_115[9]_i_4_n_0 ;
  wire [9:0]idx_0_reg_115_reg;
  wire [9:0]idx_fu_132_p2;
  wire [31:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [3:0]inStream_TKEEP;
  wire [0:0]inStream_TLAST;
  wire inStream_TREADY;
  wire [3:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire [31:1]\^outStream_TDATA ;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [3:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;
  wire regslice_both_inStream_V_data_V_U_n_1;
  wire regslice_both_inStream_V_data_V_U_n_10;
  wire regslice_both_inStream_V_data_V_U_n_11;
  wire regslice_both_inStream_V_data_V_U_n_12;
  wire regslice_both_inStream_V_data_V_U_n_13;
  wire regslice_both_inStream_V_data_V_U_n_14;
  wire regslice_both_inStream_V_data_V_U_n_15;
  wire regslice_both_inStream_V_data_V_U_n_16;
  wire regslice_both_inStream_V_data_V_U_n_17;
  wire regslice_both_inStream_V_data_V_U_n_18;
  wire regslice_both_inStream_V_data_V_U_n_19;
  wire regslice_both_inStream_V_data_V_U_n_20;
  wire regslice_both_inStream_V_data_V_U_n_21;
  wire regslice_both_inStream_V_data_V_U_n_22;
  wire regslice_both_inStream_V_data_V_U_n_23;
  wire regslice_both_inStream_V_data_V_U_n_24;
  wire regslice_both_inStream_V_data_V_U_n_25;
  wire regslice_both_inStream_V_data_V_U_n_26;
  wire regslice_both_inStream_V_data_V_U_n_27;
  wire regslice_both_inStream_V_data_V_U_n_28;
  wire regslice_both_inStream_V_data_V_U_n_29;
  wire regslice_both_inStream_V_data_V_U_n_30;
  wire regslice_both_inStream_V_data_V_U_n_31;
  wire regslice_both_inStream_V_data_V_U_n_32;
  wire regslice_both_inStream_V_data_V_U_n_33;
  wire regslice_both_inStream_V_data_V_U_n_34;
  wire regslice_both_inStream_V_data_V_U_n_35;
  wire regslice_both_inStream_V_data_V_U_n_37;
  wire regslice_both_inStream_V_data_V_U_n_39;
  wire regslice_both_inStream_V_data_V_U_n_40;
  wire regslice_both_inStream_V_data_V_U_n_5;
  wire regslice_both_inStream_V_data_V_U_n_6;
  wire regslice_both_inStream_V_data_V_U_n_7;
  wire regslice_both_inStream_V_data_V_U_n_8;
  wire regslice_both_inStream_V_data_V_U_n_9;
  wire regslice_both_inStream_V_dest_V_U_n_0;
  wire regslice_both_inStream_V_dest_V_U_n_1;
  wire regslice_both_inStream_V_dest_V_U_n_2;
  wire regslice_both_inStream_V_dest_V_U_n_3;
  wire regslice_both_inStream_V_dest_V_U_n_4;
  wire regslice_both_inStream_V_dest_V_U_n_5;
  wire regslice_both_inStream_V_id_V_U_n_0;
  wire regslice_both_inStream_V_id_V_U_n_1;
  wire regslice_both_inStream_V_id_V_U_n_2;
  wire regslice_both_inStream_V_id_V_U_n_3;
  wire regslice_both_inStream_V_id_V_U_n_4;
  wire regslice_both_inStream_V_keep_V_U_n_0;
  wire regslice_both_inStream_V_keep_V_U_n_1;
  wire regslice_both_inStream_V_keep_V_U_n_2;
  wire regslice_both_inStream_V_keep_V_U_n_3;
  wire regslice_both_inStream_V_last_V_U_n_0;
  wire regslice_both_inStream_V_strb_V_U_n_0;
  wire regslice_both_inStream_V_strb_V_U_n_1;
  wire regslice_both_inStream_V_strb_V_U_n_2;
  wire regslice_both_inStream_V_strb_V_U_n_3;
  wire regslice_both_inStream_V_user_V_U_n_0;
  wire regslice_both_inStream_V_user_V_U_n_1;
  wire regslice_both_inStream_V_user_V_U_n_2;
  wire regslice_both_inStream_V_user_V_U_n_3;
  wire regslice_both_outStream_V_data_V_U_n_1;
  wire regslice_both_outStream_V_data_V_U_n_2;
  wire regslice_both_outStream_V_data_V_U_n_39;
  wire regslice_both_outStream_V_data_V_U_n_6;
  wire [30:0]tmp_data_V_reg_181;
  wire tmp_data_V_reg_1810;
  wire [5:0]tmp_dest_V_reg_211;
  wire [4:0]tmp_id_V_reg_206;
  wire [3:0]tmp_keep_V_reg_186;
  wire tmp_last_V_reg_201;
  wire [3:0]tmp_strb_V_reg_191;
  wire [1:0]tmp_user_V_reg_196;
  wire vld_in;
  wire vld_out;

  assign outStream_TDATA[31:1] = \^outStream_TDATA [31:1];
  assign outStream_TDATA[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hAAAABFFF)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(regslice_both_inStream_V_user_V_U_n_0),
        .I3(regslice_both_inStream_V_user_V_U_n_1),
        .I4(ap_enable_reg_pp0_iter2_reg_n_0),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_inStream_V_data_V_U_n_1),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_1),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_2),
        .Q(ap_enable_reg_pp0_iter2_reg_n_0),
        .R(1'b0));
  FDRE \icmp_ln13_reg_172_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_inStream_V_data_V_U_n_40),
        .Q(icmp_ln13_reg_172_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln13_reg_172_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_inStream_V_data_V_U_n_39),
        .Q(icmp_ln13_reg_172),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \idx_0_reg_115[0]_i_1 
       (.I0(idx_0_reg_115_reg[0]),
        .O(idx_fu_132_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx_0_reg_115[1]_i_1 
       (.I0(idx_0_reg_115_reg[0]),
        .I1(idx_0_reg_115_reg[1]),
        .O(idx_fu_132_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idx_0_reg_115[2]_i_1 
       (.I0(idx_0_reg_115_reg[1]),
        .I1(idx_0_reg_115_reg[0]),
        .I2(idx_0_reg_115_reg[2]),
        .O(idx_fu_132_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idx_0_reg_115[3]_i_1 
       (.I0(idx_0_reg_115_reg[2]),
        .I1(idx_0_reg_115_reg[0]),
        .I2(idx_0_reg_115_reg[1]),
        .I3(idx_0_reg_115_reg[3]),
        .O(idx_fu_132_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \idx_0_reg_115[4]_i_1 
       (.I0(idx_0_reg_115_reg[3]),
        .I1(idx_0_reg_115_reg[1]),
        .I2(idx_0_reg_115_reg[0]),
        .I3(idx_0_reg_115_reg[2]),
        .I4(idx_0_reg_115_reg[4]),
        .O(idx_fu_132_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \idx_0_reg_115[5]_i_1 
       (.I0(idx_0_reg_115_reg[2]),
        .I1(idx_0_reg_115_reg[0]),
        .I2(idx_0_reg_115_reg[1]),
        .I3(idx_0_reg_115_reg[3]),
        .I4(idx_0_reg_115_reg[4]),
        .I5(idx_0_reg_115_reg[5]),
        .O(idx_fu_132_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \idx_0_reg_115[6]_i_1 
       (.I0(\idx_0_reg_115[9]_i_4_n_0 ),
        .I1(idx_0_reg_115_reg[6]),
        .O(idx_fu_132_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \idx_0_reg_115[7]_i_1 
       (.I0(idx_0_reg_115_reg[6]),
        .I1(\idx_0_reg_115[9]_i_4_n_0 ),
        .I2(idx_0_reg_115_reg[7]),
        .O(idx_fu_132_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \idx_0_reg_115[8]_i_1 
       (.I0(idx_0_reg_115_reg[7]),
        .I1(\idx_0_reg_115[9]_i_4_n_0 ),
        .I2(idx_0_reg_115_reg[6]),
        .I3(idx_0_reg_115_reg[8]),
        .O(idx_fu_132_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \idx_0_reg_115[9]_i_3 
       (.I0(idx_0_reg_115_reg[8]),
        .I1(idx_0_reg_115_reg[6]),
        .I2(\idx_0_reg_115[9]_i_4_n_0 ),
        .I3(idx_0_reg_115_reg[7]),
        .I4(idx_0_reg_115_reg[9]),
        .O(idx_fu_132_p2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \idx_0_reg_115[9]_i_4 
       (.I0(idx_0_reg_115_reg[2]),
        .I1(idx_0_reg_115_reg[0]),
        .I2(idx_0_reg_115_reg[1]),
        .I3(idx_0_reg_115_reg[3]),
        .I4(idx_0_reg_115_reg[4]),
        .I5(idx_0_reg_115_reg[5]),
        .O(\idx_0_reg_115[9]_i_4_n_0 ));
  FDRE \idx_0_reg_115_reg[0] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[0]),
        .Q(idx_0_reg_115_reg[0]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[1] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[1]),
        .Q(idx_0_reg_115_reg[1]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[2] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[2]),
        .Q(idx_0_reg_115_reg[2]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[3] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[3]),
        .Q(idx_0_reg_115_reg[3]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[4] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[4]),
        .Q(idx_0_reg_115_reg[4]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[5] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[5]),
        .Q(idx_0_reg_115_reg[5]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[6] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[6]),
        .Q(idx_0_reg_115_reg[6]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[7] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[7]),
        .Q(idx_0_reg_115_reg[7]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[8] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[8]),
        .Q(idx_0_reg_115_reg[8]),
        .R(idx_0_reg_115));
  FDRE \idx_0_reg_115_reg[9] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_132_p2[9]),
        .Q(idx_0_reg_115_reg[9]),
        .R(idx_0_reg_115));
  bd_0_hls_inst_0_regslice_both regslice_both_inStream_V_data_V_U
       (.D(ap_NS_fsm[2]),
        .E(tmp_data_V_reg_1810),
        .Q({ap_CS_fsm_pp0_stage0,ap_CS_fsm_state1}),
        .SR(idx_0_reg_115),
        .ack_out(ack_out),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm[2]_i_2_n_0 ),
        .\ap_CS_fsm_reg[2]_0 (regslice_both_outStream_V_data_V_U_n_39),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(regslice_both_inStream_V_data_V_U_n_37),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_inStream_V_data_V_U_n_1),
        .icmp_ln13_fu_126_p2(icmp_ln13_fu_126_p2),
        .icmp_ln13_reg_172(icmp_ln13_reg_172),
        .icmp_ln13_reg_172_pp0_iter1_reg(icmp_ln13_reg_172_pp0_iter1_reg),
        .\icmp_ln13_reg_172_reg[0] (regslice_both_inStream_V_data_V_U_n_39),
        .\icmp_ln13_reg_172_reg[0]_0 (regslice_both_inStream_V_data_V_U_n_40),
        .\idx_0_reg_115_reg[0] (regslice_both_outStream_V_data_V_U_n_6),
        .\idx_0_reg_115_reg[0]_0 (regslice_both_inStream_V_user_V_U_n_0),
        .\idx_0_reg_115_reg[0]_1 (regslice_both_inStream_V_user_V_U_n_1),
        .inStream_TDATA(inStream_TDATA[30:0]),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[0] (ap_rst),
        .\odata_int_reg[32] ({vld_out,regslice_both_inStream_V_data_V_U_n_5,regslice_both_inStream_V_data_V_U_n_6,regslice_both_inStream_V_data_V_U_n_7,regslice_both_inStream_V_data_V_U_n_8,regslice_both_inStream_V_data_V_U_n_9,regslice_both_inStream_V_data_V_U_n_10,regslice_both_inStream_V_data_V_U_n_11,regslice_both_inStream_V_data_V_U_n_12,regslice_both_inStream_V_data_V_U_n_13,regslice_both_inStream_V_data_V_U_n_14,regslice_both_inStream_V_data_V_U_n_15,regslice_both_inStream_V_data_V_U_n_16,regslice_both_inStream_V_data_V_U_n_17,regslice_both_inStream_V_data_V_U_n_18,regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_20,regslice_both_inStream_V_data_V_U_n_21,regslice_both_inStream_V_data_V_U_n_22,regslice_both_inStream_V_data_V_U_n_23,regslice_both_inStream_V_data_V_U_n_24,regslice_both_inStream_V_data_V_U_n_25,regslice_both_inStream_V_data_V_U_n_26,regslice_both_inStream_V_data_V_U_n_27,regslice_both_inStream_V_data_V_U_n_28,regslice_both_inStream_V_data_V_U_n_29,regslice_both_inStream_V_data_V_U_n_30,regslice_both_inStream_V_data_V_U_n_31,regslice_both_inStream_V_data_V_U_n_32,regslice_both_inStream_V_data_V_U_n_33,regslice_both_inStream_V_data_V_U_n_34,regslice_both_inStream_V_data_V_U_n_35}));
  bd_0_hls_inst_0_regslice_both__parameterized9 regslice_both_inStream_V_dest_V_U
       (.Q({regslice_both_inStream_V_dest_V_U_n_0,regslice_both_inStream_V_dest_V_U_n_1,regslice_both_inStream_V_dest_V_U_n_2,regslice_both_inStream_V_dest_V_U_n_3,regslice_both_inStream_V_dest_V_U_n_4,regslice_both_inStream_V_dest_V_U_n_5}),
        .SR(ap_rst),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TDEST(inStream_TDEST),
        .inStream_TVALID(inStream_TVALID));
  bd_0_hls_inst_0_regslice_both__parameterized7 regslice_both_inStream_V_id_V_U
       (.Q({regslice_both_inStream_V_id_V_U_n_0,regslice_both_inStream_V_id_V_U_n_1,regslice_both_inStream_V_id_V_U_n_2,regslice_both_inStream_V_id_V_U_n_3,regslice_both_inStream_V_id_V_U_n_4}),
        .SR(ap_rst),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TID(inStream_TID),
        .inStream_TVALID(inStream_TVALID));
  bd_0_hls_inst_0_regslice_both__parameterized1 regslice_both_inStream_V_keep_V_U
       (.Q({regslice_both_inStream_V_keep_V_U_n_0,regslice_both_inStream_V_keep_V_U_n_1,regslice_both_inStream_V_keep_V_U_n_2,regslice_both_inStream_V_keep_V_U_n_3}),
        .SR(ap_rst),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TKEEP(inStream_TKEEP),
        .inStream_TVALID(inStream_TVALID));
  bd_0_hls_inst_0_regslice_both__parameterized5 regslice_both_inStream_V_last_V_U
       (.SR(ap_rst),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[0] (regslice_both_inStream_V_last_V_U_n_0));
  bd_0_hls_inst_0_regslice_both__parameterized1_0 regslice_both_inStream_V_strb_V_U
       (.Q({regslice_both_inStream_V_strb_V_U_n_0,regslice_both_inStream_V_strb_V_U_n_1,regslice_both_inStream_V_strb_V_U_n_2,regslice_both_inStream_V_strb_V_U_n_3}),
        .SR(ap_rst),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TSTRB(inStream_TSTRB),
        .inStream_TVALID(inStream_TVALID));
  bd_0_hls_inst_0_regslice_both__parameterized3 regslice_both_inStream_V_user_V_U
       (.D({regslice_both_inStream_V_user_V_U_n_2,regslice_both_inStream_V_user_V_U_n_3}),
        .Q(idx_0_reg_115_reg),
        .SR(ap_rst),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\idx_0_reg_115_reg[1] (regslice_both_inStream_V_user_V_U_n_0),
        .\idx_0_reg_115_reg[5] (regslice_both_inStream_V_user_V_U_n_1),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID));
  bd_0_hls_inst_0_regslice_both_1 regslice_both_outStream_V_data_V_U
       (.D(ap_NS_fsm[1:0]),
        .Q({\ap_CS_fsm_reg_n_0_[2] ,ap_CS_fsm_pp0_stage0,ap_CS_fsm_state1}),
        .SR(ap_rst),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[2]_i_2_n_0 ),
        .\ap_CS_fsm_reg[1]_0 (vld_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_outStream_V_data_V_U_n_6),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_enable_reg_pp0_iter2_reg_0(ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_outStream_V_data_V_U_n_1),
        .ap_rst_n_1(regslice_both_outStream_V_data_V_U_n_2),
        .\count_reg[0]_0 (regslice_both_outStream_V_data_V_U_n_39),
        .icmp_ln13_fu_126_p2(icmp_ln13_fu_126_p2),
        .icmp_ln13_reg_172(icmp_ln13_reg_172),
        .icmp_ln13_reg_172_pp0_iter1_reg(icmp_ln13_reg_172_pp0_iter1_reg),
        .\ireg_reg[31] (tmp_data_V_reg_181),
        .\ireg_reg[32] (regslice_both_inStream_V_user_V_U_n_1),
        .\ireg_reg[32]_0 (regslice_both_inStream_V_user_V_U_n_0),
        .\ireg_reg[32]_1 (regslice_both_inStream_V_data_V_U_n_37),
        .\ireg_reg[4] (cdata_2),
        .\ireg_reg[4]_0 (cdata_1),
        .\ireg_reg[5] (cdata_0),
        .\ireg_reg[6] (cdata),
        .\odata_int_reg[32] ({outStream_TVALID,\^outStream_TDATA }),
        .\odata_int_reg[4] (\ibuf_inst/p_0_in_4 ),
        .\odata_int_reg[4]_0 (\ibuf_inst/p_0_in_5 ),
        .\odata_int_reg[5] (\ibuf_inst/p_0_in_3 ),
        .\odata_int_reg[6] (\ibuf_inst/p_0_in ),
        .outStream_TREADY(outStream_TREADY),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized9_2 regslice_both_outStream_V_dest_V_U
       (.D(cdata),
        .Q(\ibuf_inst/p_0_in ),
        .SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[6] ({vld_in,tmp_dest_V_reg_211}),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_regslice_both__parameterized7_3 regslice_both_outStream_V_id_V_U
       (.D(cdata_0),
        .Q(\ibuf_inst/p_0_in_3 ),
        .SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[5] ({vld_in,tmp_id_V_reg_206}),
        .outStream_TID(outStream_TID),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_regslice_both__parameterized1_4 regslice_both_outStream_V_keep_V_U
       (.D(cdata_2),
        .Q(\ibuf_inst/p_0_in_4 ),
        .SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[4] ({vld_in,tmp_keep_V_reg_186}),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_regslice_both__parameterized5_5 regslice_both_outStream_V_last_V_U
       (.SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .tmp_last_V_reg_201(tmp_last_V_reg_201),
        .vld_in(vld_in));
  bd_0_hls_inst_0_regslice_both__parameterized1_6 regslice_both_outStream_V_strb_V_U
       (.D(cdata_1),
        .Q(\ibuf_inst/p_0_in_5 ),
        .SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[4] ({vld_in,tmp_strb_V_reg_191}),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB));
  bd_0_hls_inst_0_regslice_both__parameterized3_7 regslice_both_outStream_V_user_V_U
       (.Q(tmp_user_V_reg_196),
        .SR(ap_rst),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TUSER(outStream_TUSER),
        .vld_in(vld_in));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \tmp_data_V_reg_181[30]_i_3 
       (.I0(regslice_both_inStream_V_user_V_U_n_1),
        .I1(idx_0_reg_115_reg[3]),
        .I2(idx_0_reg_115_reg[2]),
        .I3(idx_0_reg_115_reg[0]),
        .I4(idx_0_reg_115_reg[1]),
        .O(icmp_ln13_fu_126_p2));
  FDRE \tmp_data_V_reg_181_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_35),
        .Q(tmp_data_V_reg_181[0]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[10] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_25),
        .Q(tmp_data_V_reg_181[10]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[11] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_24),
        .Q(tmp_data_V_reg_181[11]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[12] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_23),
        .Q(tmp_data_V_reg_181[12]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[13] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_22),
        .Q(tmp_data_V_reg_181[13]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[14] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_21),
        .Q(tmp_data_V_reg_181[14]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[15] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_20),
        .Q(tmp_data_V_reg_181[15]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[16] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_19),
        .Q(tmp_data_V_reg_181[16]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[17] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_18),
        .Q(tmp_data_V_reg_181[17]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[18] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_17),
        .Q(tmp_data_V_reg_181[18]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[19] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_16),
        .Q(tmp_data_V_reg_181[19]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_34),
        .Q(tmp_data_V_reg_181[1]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[20] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_15),
        .Q(tmp_data_V_reg_181[20]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[21] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_14),
        .Q(tmp_data_V_reg_181[21]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[22] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_13),
        .Q(tmp_data_V_reg_181[22]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[23] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_12),
        .Q(tmp_data_V_reg_181[23]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[24] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_11),
        .Q(tmp_data_V_reg_181[24]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[25] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_10),
        .Q(tmp_data_V_reg_181[25]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[26] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_9),
        .Q(tmp_data_V_reg_181[26]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[27] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_8),
        .Q(tmp_data_V_reg_181[27]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[28] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_7),
        .Q(tmp_data_V_reg_181[28]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[29] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_6),
        .Q(tmp_data_V_reg_181[29]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[2] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_33),
        .Q(tmp_data_V_reg_181[2]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[30] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_5),
        .Q(tmp_data_V_reg_181[30]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[3] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_32),
        .Q(tmp_data_V_reg_181[3]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[4] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_31),
        .Q(tmp_data_V_reg_181[4]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[5] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_30),
        .Q(tmp_data_V_reg_181[5]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[6] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_29),
        .Q(tmp_data_V_reg_181[6]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[7] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_28),
        .Q(tmp_data_V_reg_181[7]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[8] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_27),
        .Q(tmp_data_V_reg_181[8]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_181_reg[9] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_data_V_U_n_26),
        .Q(tmp_data_V_reg_181[9]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_211_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_dest_V_U_n_5),
        .Q(tmp_dest_V_reg_211[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_211_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_dest_V_U_n_4),
        .Q(tmp_dest_V_reg_211[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_211_reg[2] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_dest_V_U_n_3),
        .Q(tmp_dest_V_reg_211[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_211_reg[3] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_dest_V_U_n_2),
        .Q(tmp_dest_V_reg_211[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_211_reg[4] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_dest_V_U_n_1),
        .Q(tmp_dest_V_reg_211[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_211_reg[5] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_dest_V_U_n_0),
        .Q(tmp_dest_V_reg_211[5]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_206_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_id_V_U_n_4),
        .Q(tmp_id_V_reg_206[0]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_206_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_id_V_U_n_3),
        .Q(tmp_id_V_reg_206[1]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_206_reg[2] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_id_V_U_n_2),
        .Q(tmp_id_V_reg_206[2]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_206_reg[3] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_id_V_U_n_1),
        .Q(tmp_id_V_reg_206[3]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_206_reg[4] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_id_V_U_n_0),
        .Q(tmp_id_V_reg_206[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_186_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_keep_V_U_n_3),
        .Q(tmp_keep_V_reg_186[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_186_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_keep_V_U_n_2),
        .Q(tmp_keep_V_reg_186[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_186_reg[2] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_keep_V_U_n_1),
        .Q(tmp_keep_V_reg_186[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_186_reg[3] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_keep_V_U_n_0),
        .Q(tmp_keep_V_reg_186[3]),
        .R(1'b0));
  FDRE \tmp_last_V_reg_201_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_last_V_U_n_0),
        .Q(tmp_last_V_reg_201),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_191_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_strb_V_U_n_3),
        .Q(tmp_strb_V_reg_191[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_191_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_strb_V_U_n_2),
        .Q(tmp_strb_V_reg_191[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_191_reg[2] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_strb_V_U_n_1),
        .Q(tmp_strb_V_reg_191[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_191_reg[3] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_strb_V_U_n_0),
        .Q(tmp_strb_V_reg_191[3]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_196_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_user_V_U_n_3),
        .Q(tmp_user_V_reg_196[0]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_196_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_1810),
        .D(regslice_both_inStream_V_user_V_U_n_2),
        .Q(tmp_user_V_reg_196[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both
   (D,
    ap_rst_n_0,
    E,
    ack_out,
    \odata_int_reg[32] ,
    SR,
    ap_enable_reg_pp0_iter0_reg,
    inStream_TREADY,
    \icmp_ln13_reg_172_reg[0] ,
    \icmp_ln13_reg_172_reg[0]_0 ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    Q,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    icmp_ln13_fu_126_p2,
    \idx_0_reg_115_reg[0] ,
    \idx_0_reg_115_reg[0]_0 ,
    \idx_0_reg_115_reg[0]_1 ,
    inStream_TVALID,
    inStream_TDATA,
    icmp_ln13_reg_172,
    icmp_ln13_reg_172_pp0_iter1_reg,
    ap_clk,
    \odata_int_reg[0] );
  output [0:0]D;
  output ap_rst_n_0;
  output [0:0]E;
  output ack_out;
  output [31:0]\odata_int_reg[32] ;
  output [0:0]SR;
  output ap_enable_reg_pp0_iter0_reg;
  output inStream_TREADY;
  output \icmp_ln13_reg_172_reg[0] ;
  output \icmp_ln13_reg_172_reg[0]_0 ;
  input \ap_CS_fsm_reg[2] ;
  input \ap_CS_fsm_reg[2]_0 ;
  input [1:0]Q;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input icmp_ln13_fu_126_p2;
  input \idx_0_reg_115_reg[0] ;
  input \idx_0_reg_115_reg[0]_0 ;
  input \idx_0_reg_115_reg[0]_1 ;
  input inStream_TVALID;
  input [30:0]inStream_TDATA;
  input icmp_ln13_reg_172;
  input icmp_ln13_reg_172_pp0_iter1_reg;
  input ap_clk;
  input [0:0]\odata_int_reg[0] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire ibuf_inst_n_29;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_30;
  wire ibuf_inst_n_31;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_33;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire icmp_ln13_fu_126_p2;
  wire icmp_ln13_reg_172;
  wire icmp_ln13_reg_172_pp0_iter1_reg;
  wire \icmp_ln13_reg_172_reg[0] ;
  wire \icmp_ln13_reg_172_reg[0]_0 ;
  wire \idx_0_reg_115_reg[0] ;
  wire \idx_0_reg_115_reg[0]_0 ;
  wire \idx_0_reg_115_reg[0]_1 ;
  wire [30:0]inStream_TDATA;
  wire inStream_TREADY;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_3;
  wire [0:0]\odata_int_reg[0] ;
  wire [31:0]\odata_int_reg[32] ;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf_22 ibuf_inst
       (.D({inStream_TVALID,inStream_TDATA}),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TREADY(inStream_TREADY),
        .\ireg_reg[32]_0 ({ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33}));
  bd_0_hls_inst_0_xil_defaultlib_obuf_23 obuf_inst
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(obuf_inst_n_3),
        .\ap_CS_fsm_reg[0] (SR),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .icmp_ln13_fu_126_p2(icmp_ln13_fu_126_p2),
        .icmp_ln13_reg_172(icmp_ln13_reg_172),
        .icmp_ln13_reg_172_pp0_iter1_reg(icmp_ln13_reg_172_pp0_iter1_reg),
        .\icmp_ln13_reg_172_reg[0] (\icmp_ln13_reg_172_reg[0] ),
        .\icmp_ln13_reg_172_reg[0]_0 (\icmp_ln13_reg_172_reg[0]_0 ),
        .\idx_0_reg_115_reg[0] (\idx_0_reg_115_reg[0] ),
        .\idx_0_reg_115_reg[0]_0 (\idx_0_reg_115_reg[0]_0 ),
        .\idx_0_reg_115_reg[0]_1 (\idx_0_reg_115_reg[0]_1 ),
        .\ireg_reg[32] (p_0_in),
        .\odata_int_reg[0]_0 (\odata_int_reg[0] ),
        .\odata_int_reg[32]_0 (ack_out),
        .\odata_int_reg[32]_1 (\odata_int_reg[32] ),
        .\odata_int_reg[32]_2 (ireg01_out),
        .\odata_int_reg[32]_3 ({ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33}));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both_1
   (SR,
    ap_rst_n_0,
    ap_rst_n_1,
    D,
    vld_in,
    ap_enable_reg_pp0_iter1_reg,
    \odata_int_reg[32] ,
    \count_reg[0]_0 ,
    \ireg_reg[4] ,
    \ireg_reg[4]_0 ,
    \ireg_reg[5] ,
    \ireg_reg[6] ,
    ap_clk,
    ap_rst_n,
    ap_enable_reg_pp0_iter2_reg,
    ap_enable_reg_pp0_iter0,
    icmp_ln13_fu_126_p2,
    ap_enable_reg_pp0_iter2_reg_0,
    Q,
    \ap_CS_fsm_reg[1] ,
    outStream_TREADY,
    \ireg_reg[32] ,
    \ireg_reg[32]_0 ,
    \ireg_reg[32]_1 ,
    \ap_CS_fsm_reg[1]_0 ,
    icmp_ln13_reg_172,
    icmp_ln13_reg_172_pp0_iter1_reg,
    \ireg_reg[31] ,
    \odata_int_reg[4] ,
    \odata_int_reg[4]_0 ,
    \odata_int_reg[5] ,
    \odata_int_reg[6] );
  output [0:0]SR;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [1:0]D;
  output vld_in;
  output ap_enable_reg_pp0_iter1_reg;
  output [31:0]\odata_int_reg[32] ;
  output \count_reg[0]_0 ;
  output [0:0]\ireg_reg[4] ;
  output [0:0]\ireg_reg[4]_0 ;
  output [0:0]\ireg_reg[5] ;
  output [0:0]\ireg_reg[6] ;
  input ap_clk;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter2_reg;
  input ap_enable_reg_pp0_iter0;
  input icmp_ln13_fu_126_p2;
  input ap_enable_reg_pp0_iter2_reg_0;
  input [2:0]Q;
  input \ap_CS_fsm_reg[1] ;
  input outStream_TREADY;
  input \ireg_reg[32] ;
  input \ireg_reg[32]_0 ;
  input \ireg_reg[32]_1 ;
  input [0:0]\ap_CS_fsm_reg[1]_0 ;
  input icmp_ln13_reg_172;
  input icmp_ln13_reg_172_pp0_iter1_reg;
  input [30:0]\ireg_reg[31] ;
  input [0:0]\odata_int_reg[4] ;
  input [0:0]\odata_int_reg[4]_0 ;
  input [0:0]\odata_int_reg[5] ;
  input [0:0]\odata_int_reg[6] ;

  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_enable_reg_pp0_iter2_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire [1:1]count;
  wire \count_reg[0]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire ibuf_inst_n_29;
  wire ibuf_inst_n_30;
  wire ibuf_inst_n_31;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_33;
  wire ibuf_inst_n_34;
  wire ibuf_inst_n_35;
  wire ibuf_inst_n_36;
  wire ibuf_inst_n_37;
  wire ibuf_inst_n_38;
  wire ibuf_inst_n_39;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire icmp_ln13_fu_126_p2;
  wire icmp_ln13_reg_172;
  wire icmp_ln13_reg_172_pp0_iter1_reg;
  wire ireg01_out;
  wire [30:0]\ireg_reg[31] ;
  wire \ireg_reg[32] ;
  wire \ireg_reg[32]_0 ;
  wire \ireg_reg[32]_1 ;
  wire [0:0]\ireg_reg[4] ;
  wire [0:0]\ireg_reg[4]_0 ;
  wire [0:0]\ireg_reg[5] ;
  wire [0:0]\ireg_reg[6] ;
  wire obuf_inst_n_0;
  wire [31:0]\odata_int_reg[32] ;
  wire [0:0]\odata_int_reg[4] ;
  wire [0:0]\odata_int_reg[4]_0 ;
  wire [0:0]\odata_int_reg[5] ;
  wire [0:0]\odata_int_reg[6] ;
  wire outStream_TREADY;
  wire p_0_in;
  wire vld_in;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h80AA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[2]),
        .I1(outStream_TREADY),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h2AFF)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(outStream_TREADY),
        .I3(Q[2]),
        .O(\count_reg[0]_0 ));
  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_5),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  bd_0_hls_inst_0_xil_defaultlib_ibuf ibuf_inst
       (.D(D[1]),
        .E(ireg01_out),
        .Q(Q),
        .\ap_CS_fsm_reg[1] (vld_in),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm_reg[1]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg),
        .ap_enable_reg_pp0_iter2_reg_0(ap_enable_reg_pp0_iter2_reg_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ap_rst_n_1(ap_rst_n_1),
        .count(count),
        .\count_reg[1] (\count_reg_n_0_[1] ),
        .\count_reg[1]_0 (\count_reg_n_0_[0] ),
        .icmp_ln13_fu_126_p2(icmp_ln13_fu_126_p2),
        .icmp_ln13_reg_172(icmp_ln13_reg_172),
        .icmp_ln13_reg_172_pp0_iter1_reg(icmp_ln13_reg_172_pp0_iter1_reg),
        .\ireg_reg[1]_0 (\odata_int_reg[32] [31]),
        .\ireg_reg[31]_0 (\ireg_reg[31] ),
        .\ireg_reg[32]_0 (p_0_in),
        .\ireg_reg[32]_1 ({ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39}),
        .\ireg_reg[32]_2 (obuf_inst_n_0),
        .\ireg_reg[32]_3 (\ireg_reg[32] ),
        .\ireg_reg[32]_4 (\ireg_reg[32]_0 ),
        .\ireg_reg[32]_5 (\ireg_reg[32]_1 ),
        .\ireg_reg[4]_0 (\ireg_reg[4] ),
        .\ireg_reg[4]_1 (\ireg_reg[4]_0 ),
        .\ireg_reg[5]_0 (\ireg_reg[5] ),
        .\ireg_reg[6]_0 (\ireg_reg[6] ),
        .\odata_int_reg[4] (\odata_int_reg[4] ),
        .\odata_int_reg[4]_0 (\odata_int_reg[4]_0 ),
        .\odata_int_reg[5] (\odata_int_reg[5] ),
        .\odata_int_reg[6] (\odata_int_reg[6] ),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TREADY_0(ibuf_inst_n_5));
  bd_0_hls_inst_0_xil_defaultlib_obuf obuf_inst
       (.D({ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39}),
        .E(ireg01_out),
        .Q(\odata_int_reg[32] ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(obuf_inst_n_0),
        .ap_rst_n(ap_rst_n),
        .icmp_ln13_reg_172(icmp_ln13_reg_172),
        .\ireg_reg[32] (ap_enable_reg_pp0_iter2_reg),
        .\ireg_reg[32]_0 (p_0_in),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TKEEP,
    ap_clk,
    SR);
  output [3:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [3:0]inStream_TKEEP;
  input ap_clk;
  input [0:0]SR;

  wire [3:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire [3:0]inStream_TKEEP;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[4]_0 ({inStream_TVALID,inStream_TKEEP}));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17 obuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,Q}),
        .SR(SR),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .\ireg_reg[4] (p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_0
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TSTRB,
    ap_clk,
    SR);
  output [3:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [3:0]inStream_TSTRB;
  input ap_clk;
  input [0:0]SR;

  wire [3:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire [3:0]inStream_TSTRB;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[4]_0 ({inStream_TVALID,inStream_TSTRB}));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13 obuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,Q}),
        .SR(SR),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .\ireg_reg[4] (p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_4
   (Q,
    outStream_TKEEP,
    outStream_TREADY,
    ap_rst_n,
    D,
    \ireg_reg[4] ,
    ap_clk,
    SR);
  output [0:0]Q;
  output [3:0]outStream_TKEEP;
  input outStream_TREADY;
  input ap_rst_n;
  input [0:0]D;
  input [4:0]\ireg_reg[4] ;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [3:0]cdata;
  wire ireg01_out;
  wire [4:0]\ireg_reg[4] ;
  wire obuf_inst_n_0;
  wire [3:0]outStream_TKEEP;
  wire outStream_TREADY;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[4]_0 (\ireg_reg[4] ),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9 obuf_inst
       (.D({D,cdata}),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,outStream_TKEEP}),
        .SR(SR),
        .ap_clk(ap_clk),
        .\ireg_reg[4] (Q),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized1_6
   (Q,
    outStream_TSTRB,
    outStream_TREADY,
    ap_rst_n,
    D,
    \ireg_reg[4] ,
    ap_clk,
    SR);
  output [0:0]Q;
  output [3:0]outStream_TSTRB;
  input outStream_TREADY;
  input ap_rst_n;
  input [0:0]D;
  input [4:0]\ireg_reg[4] ;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [3:0]cdata;
  wire ireg01_out;
  wire [4:0]\ireg_reg[4] ;
  wire obuf_inst_n_0;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[4]_0 (\ireg_reg[4] ),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0 obuf_inst
       (.D({D,cdata}),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,outStream_TSTRB}),
        .SR(SR),
        .ap_clk(ap_clk),
        .\ireg_reg[4] (Q),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized3
   (\idx_0_reg_115_reg[1] ,
    \idx_0_reg_115_reg[5] ,
    D,
    Q,
    ap_rst_n,
    inStream_TUSER,
    inStream_TVALID,
    ack_out,
    ap_clk,
    SR);
  output \idx_0_reg_115_reg[1] ;
  output \idx_0_reg_115_reg[5] ;
  output [1:0]D;
  input [9:0]Q;
  input ap_rst_n;
  input [1:0]inStream_TUSER;
  input inStream_TVALID;
  input ack_out;
  input ap_clk;
  input [0:0]SR;

  wire [1:0]D;
  wire [9:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire \idx_0_reg_115_reg[1] ;
  wire \idx_0_reg_115_reg[5] ;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire obuf_inst_n_2;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10 ibuf_inst
       (.ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cdata(cdata),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID),
        .\ireg_reg[2]_0 (obuf_inst_n_2),
        .p_0_in(p_0_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11 obuf_inst
       (.D(D),
        .Q(Q),
        .SR(SR),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .cdata(cdata),
        .\idx_0_reg_115_reg[1] (\idx_0_reg_115_reg[1] ),
        .\idx_0_reg_115_reg[5] (\idx_0_reg_115_reg[5] ),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[2]_0 (obuf_inst_n_2),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized3_7
   (outStream_TUSER,
    ap_rst_n,
    outStream_TREADY,
    vld_in,
    Q,
    ap_clk,
    SR);
  output [1:0]outStream_TUSER;
  input ap_rst_n;
  input outStream_TREADY;
  input vld_in;
  input [1:0]Q;
  input ap_clk;
  input [0:0]SR;

  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_2;
  wire obuf_inst_n_0;
  wire outStream_TREADY;
  wire [1:0]outStream_TUSER;
  wire p_0_in;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1 ibuf_inst
       (.Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (ibuf_inst_n_1),
        .\ireg_reg[2]_0 (obuf_inst_n_0),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1 obuf_inst
       (.Q(Q),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (ibuf_inst_n_1),
        .\odata_int_reg[2]_0 (obuf_inst_n_0),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TUSER(outStream_TUSER),
        .p_0_in(p_0_in),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized5
   (\odata_int_reg[0] ,
    ap_rst_n,
    inStream_TLAST,
    inStream_TVALID,
    ack_out,
    ap_clk,
    SR);
  output \odata_int_reg[0] ;
  input ap_rst_n;
  input [0:0]inStream_TLAST;
  input inStream_TVALID;
  input ack_out;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]cdata;
  wire [0:0]inStream_TLAST;
  wire inStream_TVALID;
  wire obuf_inst_n_0;
  wire \odata_int_reg[0] ;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14 ibuf_inst
       (.ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cdata(cdata),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TVALID(inStream_TVALID),
        .\ireg_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15 obuf_inst
       (.SR(SR),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .cdata(cdata),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[0]_0 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized5_5
   (outStream_TLAST,
    ap_rst_n,
    outStream_TREADY,
    vld_in,
    tmp_last_V_reg_201,
    ap_clk,
    SR);
  output [0:0]outStream_TLAST;
  input ap_rst_n;
  input outStream_TREADY;
  input vld_in;
  input tmp_last_V_reg_201;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ibuf_inst_n_1;
  wire obuf_inst_n_0;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire p_0_in;
  wire tmp_last_V_reg_201;
  wire vld_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[1]_0 (obuf_inst_n_0),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in),
        .tmp_last_V_reg_201(tmp_last_V_reg_201),
        .vld_in(vld_in));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2 obuf_inst
       (.SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[0]_0 (ibuf_inst_n_1),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in),
        .tmp_last_V_reg_201(tmp_last_V_reg_201),
        .vld_in(vld_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized7
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TID,
    ap_clk,
    SR);
  output [4:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [4:0]inStream_TID;
  input ap_clk;
  input [0:0]SR;

  wire [4:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]cdata;
  wire [4:0]inStream_TID;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[5]_0 ({inStream_TVALID,inStream_TID}));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19 obuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,Q}),
        .SR(SR),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .\ireg_reg[5] (p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized7_3
   (Q,
    outStream_TID,
    outStream_TREADY,
    ap_rst_n,
    D,
    \ireg_reg[5] ,
    ap_clk,
    SR);
  output [0:0]Q;
  output [4:0]outStream_TID;
  input outStream_TREADY;
  input ap_rst_n;
  input [0:0]D;
  input [5:0]\ireg_reg[5] ;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire ireg01_out;
  wire [5:0]\ireg_reg[5] ;
  wire obuf_inst_n_0;
  wire [4:0]outStream_TID;
  wire outStream_TREADY;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[5]_0 (\ireg_reg[5] ),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3 obuf_inst
       (.D({D,cdata}),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,outStream_TID}),
        .SR(SR),
        .ap_clk(ap_clk),
        .\ireg_reg[5] (Q),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized9
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TDEST,
    ap_clk,
    SR);
  output [5:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [5:0]inStream_TDEST;
  input ap_clk;
  input [0:0]SR;

  wire [5:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [6:0]cdata;
  wire [5:0]inStream_TDEST;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[6]_0 ({inStream_TVALID,inStream_TDEST}));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21 obuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,Q}),
        .SR(SR),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .\ireg_reg[6] (p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module bd_0_hls_inst_0_regslice_both__parameterized9_2
   (Q,
    outStream_TDEST,
    outStream_TREADY,
    ap_rst_n,
    D,
    \ireg_reg[6] ,
    ap_clk,
    SR);
  output [0:0]Q;
  output [5:0]outStream_TDEST;
  input outStream_TREADY;
  input ap_rst_n;
  input [0:0]D;
  input [6:0]\ireg_reg[6] ;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]cdata;
  wire ireg01_out;
  wire [6:0]\ireg_reg[6] ;
  wire obuf_inst_n_0;
  wire [5:0]outStream_TDEST;
  wire outStream_TREADY;

  bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[6]_0 (\ireg_reg[6] ),
        .outStream_TREADY(outStream_TREADY));
  bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4 obuf_inst
       (.D({D,cdata}),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,outStream_TDEST}),
        .SR(SR),
        .ap_clk(ap_clk),
        .\ireg_reg[6] (Q),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf
   (ap_rst_n_0,
    ap_rst_n_1,
    D,
    count,
    \ap_CS_fsm_reg[1] ,
    outStream_TREADY_0,
    ap_enable_reg_pp0_iter1_reg,
    \ireg_reg[32]_0 ,
    \ireg_reg[32]_1 ,
    \ireg_reg[4]_0 ,
    \ireg_reg[4]_1 ,
    \ireg_reg[5]_0 ,
    \ireg_reg[6]_0 ,
    ap_rst_n,
    ap_enable_reg_pp0_iter2_reg,
    ap_enable_reg_pp0_iter0,
    icmp_ln13_fu_126_p2,
    ap_enable_reg_pp0_iter2_reg_0,
    Q,
    \ap_CS_fsm_reg[1]_0 ,
    \count_reg[1] ,
    \count_reg[1]_0 ,
    outStream_TREADY,
    \ireg_reg[32]_2 ,
    \ireg_reg[32]_3 ,
    \ireg_reg[32]_4 ,
    \ireg_reg[32]_5 ,
    \ap_CS_fsm_reg[1]_1 ,
    icmp_ln13_reg_172,
    icmp_ln13_reg_172_pp0_iter1_reg,
    \ireg_reg[1]_0 ,
    \ireg_reg[31]_0 ,
    \odata_int_reg[4] ,
    \odata_int_reg[4]_0 ,
    \odata_int_reg[5] ,
    \odata_int_reg[6] ,
    E,
    ap_clk);
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [0:0]D;
  output [0:0]count;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output outStream_TREADY_0;
  output ap_enable_reg_pp0_iter1_reg;
  output [0:0]\ireg_reg[32]_0 ;
  output [31:0]\ireg_reg[32]_1 ;
  output [0:0]\ireg_reg[4]_0 ;
  output [0:0]\ireg_reg[4]_1 ;
  output [0:0]\ireg_reg[5]_0 ;
  output [0:0]\ireg_reg[6]_0 ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter2_reg;
  input ap_enable_reg_pp0_iter0;
  input icmp_ln13_fu_126_p2;
  input ap_enable_reg_pp0_iter2_reg_0;
  input [2:0]Q;
  input \ap_CS_fsm_reg[1]_0 ;
  input \count_reg[1] ;
  input \count_reg[1]_0 ;
  input outStream_TREADY;
  input \ireg_reg[32]_2 ;
  input \ireg_reg[32]_3 ;
  input \ireg_reg[32]_4 ;
  input \ireg_reg[32]_5 ;
  input [0:0]\ap_CS_fsm_reg[1]_1 ;
  input icmp_ln13_reg_172;
  input icmp_ln13_reg_172_pp0_iter1_reg;
  input [0:0]\ireg_reg[1]_0 ;
  input [30:0]\ireg_reg[31]_0 ;
  input [0:0]\odata_int_reg[4] ;
  input [0:0]\odata_int_reg[4]_0 ;
  input [0:0]\odata_int_reg[5] ;
  input [0:0]\odata_int_reg[6] ;
  input [0:0]E;
  input ap_clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire [0:0]\ap_CS_fsm_reg[1]_1 ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_enable_reg_pp0_iter2_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire [0:0]count;
  wire \count_reg[1] ;
  wire \count_reg[1]_0 ;
  wire icmp_ln13_fu_126_p2;
  wire icmp_ln13_reg_172;
  wire icmp_ln13_reg_172_pp0_iter1_reg;
  wire \ireg[32]_i_1__0_n_0 ;
  wire [0:0]\ireg_reg[1]_0 ;
  wire [30:0]\ireg_reg[31]_0 ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire [31:0]\ireg_reg[32]_1 ;
  wire \ireg_reg[32]_2 ;
  wire \ireg_reg[32]_3 ;
  wire \ireg_reg[32]_4 ;
  wire \ireg_reg[32]_5 ;
  wire [0:0]\ireg_reg[4]_0 ;
  wire [0:0]\ireg_reg[4]_1 ;
  wire [0:0]\ireg_reg[5]_0 ;
  wire [0:0]\ireg_reg[6]_0 ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[24] ;
  wire \ireg_reg_n_0_[25] ;
  wire \ireg_reg_n_0_[26] ;
  wire \ireg_reg_n_0_[27] ;
  wire \ireg_reg_n_0_[28] ;
  wire \ireg_reg_n_0_[29] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[30] ;
  wire \ireg_reg_n_0_[31] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire [0:0]\odata_int_reg[4] ;
  wire [0:0]\odata_int_reg[4]_0 ;
  wire [0:0]\odata_int_reg[5] ;
  wire [0:0]\odata_int_reg[6] ;
  wire outStream_TREADY;
  wire outStream_TREADY_0;

  LUT4 #(
    .INIT(16'hAFAE)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[0]),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(Q[2]),
        .I3(ap_block_pp0_stage0_subdone),
        .O(D));
  LUT5 #(
    .INIT(32'hAAAABFAA)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(\ireg_reg[32]_3 ),
        .I2(\ireg_reg[32]_4 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ap_CS_fsm_reg[1]_1 ),
        .O(ap_block_pp0_stage0_subdone));
  LUT5 #(
    .INIT(32'h888800A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter2_reg),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln13_fu_126_p2),
        .I4(ap_block_pp0_stage0_subdone),
        .O(ap_rst_n_0));
  LUT5 #(
    .INIT(32'h00A088A0)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter2_reg_0),
        .I2(ap_enable_reg_pp0_iter2_reg),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(Q[0]),
        .O(ap_rst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \count[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(\count_reg[1] ),
        .I3(\count_reg[1]_0 ),
        .I4(ap_rst_n),
        .O(outStream_TREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \count[1]_i_1 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\count_reg[1] ),
        .I2(\count_reg[1]_0 ),
        .I3(outStream_TREADY),
        .O(count));
  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[32]_i_1__0 
       (.I0(\ireg_reg[32]_0 ),
        .I1(outStream_TREADY),
        .I2(\ireg_reg[1]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[32]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008080808)) 
    \ireg[32]_i_3 
       (.I0(\ireg_reg[32]_2 ),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1_reg),
        .I3(\ireg_reg[32]_3 ),
        .I4(\ireg_reg[32]_4 ),
        .I5(\ireg_reg[32]_5 ),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'h20222022F0FF2022)) 
    \ireg[32]_i_5 
       (.I0(ap_enable_reg_pp0_iter2_reg),
        .I1(icmp_ln13_reg_172),
        .I2(\ireg_reg[32]_0 ),
        .I3(ap_rst_n),
        .I4(ap_enable_reg_pp0_iter2_reg_0),
        .I5(icmp_ln13_reg_172_pp0_iter1_reg),
        .O(ap_enable_reg_pp0_iter1_reg));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [9]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [10]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [11]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [12]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [13]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [14]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [15]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [16]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [17]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [18]),
        .Q(\ireg_reg_n_0_[19] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [0]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [19]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [20]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [21]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [22]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [23]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [24]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [25]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [26]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [27]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [28]),
        .Q(\ireg_reg_n_0_[29] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [1]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [29]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [30]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(E),
        .D(\ap_CS_fsm_reg[1] ),
        .Q(\ireg_reg[32]_0 ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [2]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [3]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [4]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [5]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [6]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [7]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[31]_0 [8]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(\ireg[32]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[10]_i_1__0 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [9]),
        .O(\ireg_reg[32]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[11]_i_1__0 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [10]),
        .O(\ireg_reg[32]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[12]_i_1__0 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [11]),
        .O(\ireg_reg[32]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[13]_i_1__0 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [12]),
        .O(\ireg_reg[32]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[14]_i_1__0 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [13]),
        .O(\ireg_reg[32]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[15]_i_1__0 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [14]),
        .O(\ireg_reg[32]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[16]_i_1__0 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [15]),
        .O(\ireg_reg[32]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[17]_i_1__0 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [16]),
        .O(\ireg_reg[32]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[18]_i_1__0 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [17]),
        .O(\ireg_reg[32]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[19]_i_1__0 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [18]),
        .O(\ireg_reg[32]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__4 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [0]),
        .O(\ireg_reg[32]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[20]_i_1__0 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [19]),
        .O(\ireg_reg[32]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[21]_i_1__0 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [20]),
        .O(\ireg_reg[32]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[22]_i_1__0 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [21]),
        .O(\ireg_reg[32]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[23]_i_1__0 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [22]),
        .O(\ireg_reg[32]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[24]_i_1__0 
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [23]),
        .O(\ireg_reg[32]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[25]_i_1__0 
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [24]),
        .O(\ireg_reg[32]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[26]_i_1__0 
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [25]),
        .O(\ireg_reg[32]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[27]_i_1__0 
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [26]),
        .O(\ireg_reg[32]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[28]_i_1__0 
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [27]),
        .O(\ireg_reg[32]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[29]_i_1__0 
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [28]),
        .O(\ireg_reg[32]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__4 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [1]),
        .O(\ireg_reg[32]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[30]_i_1__0 
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [29]),
        .O(\ireg_reg[32]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[31]_i_3 
       (.I0(\ireg_reg_n_0_[31] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [30]),
        .O(\ireg_reg[32]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[32]_i_1 
       (.I0(\ireg_reg[32]_0 ),
        .I1(\ap_CS_fsm_reg[1] ),
        .O(\ireg_reg[32]_1 [31]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__4 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [2]),
        .O(\ireg_reg[32]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__2 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [3]),
        .O(\ireg_reg[32]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[4]_i_1__3 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\odata_int_reg[4] ),
        .O(\ireg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[4]_i_1__4 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\odata_int_reg[4]_0 ),
        .O(\ireg_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_1__1 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [4]),
        .O(\ireg_reg[32]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[5]_i_1__2 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\odata_int_reg[5] ),
        .O(\ireg_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[6]_i_1__0 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [5]),
        .O(\ireg_reg[32]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[6]_i_1__1 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\odata_int_reg[6] ),
        .O(\ireg_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[7]_i_1__0 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [6]),
        .O(\ireg_reg[32]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[8]_i_1__0 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [7]),
        .O(\ireg_reg[32]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[9]_i_1__0 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [8]),
        .O(\ireg_reg[32]_1 [8]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf_22
   (inStream_TREADY,
    Q,
    \ireg_reg[32]_0 ,
    D,
    ap_rst_n,
    SR,
    E,
    ap_clk);
  output inStream_TREADY;
  output [0:0]Q;
  output [31:0]\ireg_reg[32]_0 ;
  input [31:0]D;
  input ap_rst_n;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire inStream_TREADY;
  wire [31:0]\ireg_reg[32]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[24] ;
  wire \ireg_reg_n_0_[25] ;
  wire \ireg_reg_n_0_[26] ;
  wire \ireg_reg_n_0_[27] ;
  wire \ireg_reg_n_0_[28] ;
  wire \ireg_reg_n_0_[29] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[30] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'h08)) 
    inStream_TREADY_INST_0
       (.I0(D[31]),
        .I1(ap_rst_n),
        .I2(Q),
        .O(inStream_TREADY));
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
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(D[10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(D[11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(D[12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(D[13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(D[14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(D[15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(D[16]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(D[17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(D[18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(D[19]),
        .Q(\ireg_reg_n_0_[19] ),
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
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(D[20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(D[21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(D[22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(D[23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(D[24]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(D[25]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(D[26]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(D[27]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(D[28]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(D[29]),
        .Q(\ireg_reg_n_0_[29] ),
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
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(D[30]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(E),
        .D(D[31]),
        .Q(Q),
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
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(D[9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(D[0]),
        .O(\ireg_reg[32]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[10]_i_1 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(Q),
        .I2(D[10]),
        .O(\ireg_reg[32]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[11]_i_1 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(Q),
        .I2(D[11]),
        .O(\ireg_reg[32]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[12]_i_1 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(Q),
        .I2(D[12]),
        .O(\ireg_reg[32]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[13]_i_1 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(Q),
        .I2(D[13]),
        .O(\ireg_reg[32]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[14]_i_1 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(Q),
        .I2(D[14]),
        .O(\ireg_reg[32]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[15]_i_1 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(Q),
        .I2(D[15]),
        .O(\ireg_reg[32]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[16]_i_1 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(Q),
        .I2(D[16]),
        .O(\ireg_reg[32]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[17]_i_1 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(Q),
        .I2(D[17]),
        .O(\ireg_reg[32]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[18]_i_1 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(Q),
        .I2(D[18]),
        .O(\ireg_reg[32]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[19]_i_1 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(Q),
        .I2(D[19]),
        .O(\ireg_reg[32]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(D[1]),
        .O(\ireg_reg[32]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[20]_i_1 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(Q),
        .I2(D[20]),
        .O(\ireg_reg[32]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[21]_i_1 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(Q),
        .I2(D[21]),
        .O(\ireg_reg[32]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[22]_i_1 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(Q),
        .I2(D[22]),
        .O(\ireg_reg[32]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[23]_i_1 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(Q),
        .I2(D[23]),
        .O(\ireg_reg[32]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[24]_i_1 
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(Q),
        .I2(D[24]),
        .O(\ireg_reg[32]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[25]_i_1 
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(Q),
        .I2(D[25]),
        .O(\ireg_reg[32]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[26]_i_1 
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(Q),
        .I2(D[26]),
        .O(\ireg_reg[32]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[27]_i_1 
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(Q),
        .I2(D[27]),
        .O(\ireg_reg[32]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[28]_i_1 
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(Q),
        .I2(D[28]),
        .O(\ireg_reg[32]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[29]_i_1 
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(Q),
        .I2(D[29]),
        .O(\ireg_reg[32]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(D[2]),
        .O(\ireg_reg[32]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[30]_i_1 
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(Q),
        .I2(D[30]),
        .O(\ireg_reg[32]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[32]_i_2 
       (.I0(Q),
        .I1(D[31]),
        .O(\ireg_reg[32]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(D[3]),
        .O(\ireg_reg[32]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(D[4]),
        .O(\ireg_reg[32]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_1 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(D[5]),
        .O(\ireg_reg[32]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[6]_i_1 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(Q),
        .I2(D[6]),
        .O(\ireg_reg[32]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[7]_i_1 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(Q),
        .I2(D[7]),
        .O(\ireg_reg[32]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[8]_i_1 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(Q),
        .I2(D[8]),
        .O(\ireg_reg[32]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[9]_i_1 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(Q),
        .I2(D[9]),
        .O(\ireg_reg[32]_0 [9]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0
   (Q,
    D,
    outStream_TREADY,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[4]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [3:0]D;
  input outStream_TREADY;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[4]_i_1__2_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire outStream_TREADY;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[4]_i_1__2 
       (.I0(Q),
        .I1(outStream_TREADY),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[4]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[4]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[4]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[4]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[4]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(\ireg[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__5 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__6 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__6 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_2__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12
   (Q,
    D,
    ack_out,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[4]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [4:0]D;
  input ack_out;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[4]_i_1__0_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[4]_i_1__0 
       (.I0(Q),
        .I1(ack_out),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(\ireg[4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__1 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[4]_i_2__0 
       (.I0(\ireg_reg[4]_0 [4]),
        .I1(Q),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16
   (Q,
    D,
    ack_out,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[4]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [4:0]D;
  input ack_out;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[4]_i_1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[4]_i_1 
       (.I0(Q),
        .I1(ack_out),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(\ireg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__0 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__0 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[4]_i_2 
       (.I0(\ireg_reg[4]_0 [4]),
        .I1(Q),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8
   (Q,
    D,
    outStream_TREADY,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[4]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [3:0]D;
  input outStream_TREADY;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[4]_i_1__1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire outStream_TREADY;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[4]_i_1__1 
       (.I0(Q),
        .I1(outStream_TREADY),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(\ireg[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__4 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__5 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__5 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_2 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1
   (p_0_in,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    \ireg_reg[2]_0 ,
    outStream_TREADY,
    Q,
    ap_clk);
  output p_0_in;
  output \ireg_reg[1]_0 ;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input \ireg_reg[2]_0 ;
  input outStream_TREADY;
  input [1:0]Q;
  input ap_clk;

  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg[2]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire \ireg_reg[2]_0 ;
  wire outStream_TREADY;
  wire p_0_in;
  wire vld_in;

  LUT6 #(
    .INIT(64'h0000A000A0A0C0A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(Q[0]),
        .I2(ap_rst_n),
        .I3(\ireg_reg[2]_0 ),
        .I4(outStream_TREADY),
        .I5(p_0_in),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A000A0A0C0A0)) 
    \ireg[1]_i_1 
       (.I0(\ireg_reg[1]_0 ),
        .I1(Q[1]),
        .I2(ap_rst_n),
        .I3(\ireg_reg[2]_0 ),
        .I4(outStream_TREADY),
        .I5(p_0_in),
        .O(\ireg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C00080)) 
    \ireg[2]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(\ireg_reg[2]_0 ),
        .I3(outStream_TREADY),
        .I4(p_0_in),
        .O(\ireg[2]_i_1_n_0 ));
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
        .Q(\ireg_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10
   (cdata,
    p_0_in,
    ap_rst_n,
    inStream_TUSER,
    inStream_TVALID,
    \ireg_reg[2]_0 ,
    ack_out,
    ap_clk);
  output [1:0]cdata;
  output p_0_in;
  input ap_rst_n;
  input [1:0]inStream_TUSER;
  input inStream_TVALID;
  input \ireg_reg[2]_0 ;
  input ack_out;
  input ap_clk;

  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg[2]_i_1_n_0 ;
  wire \ireg_reg[2]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire p_0_in;

  LUT6 #(
    .INIT(64'h0000A000A0A0C0A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(inStream_TUSER[0]),
        .I2(ap_rst_n),
        .I3(\ireg_reg[2]_0 ),
        .I4(ack_out),
        .I5(p_0_in),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A000A0A0C0A0)) 
    \ireg[1]_i_1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(inStream_TUSER[1]),
        .I2(ap_rst_n),
        .I3(\ireg_reg[2]_0 ),
        .I4(ack_out),
        .I5(p_0_in),
        .O(\ireg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C00080)) 
    \ireg[2]_i_1 
       (.I0(inStream_TVALID),
        .I1(ap_rst_n),
        .I2(\ireg_reg[2]_0 ),
        .I3(ack_out),
        .I4(p_0_in),
        .O(\ireg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \odata_int[0]_i_2__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(ap_rst_n),
        .I3(inStream_TUSER[0]),
        .O(cdata[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \odata_int[1]_i_2__0 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(ap_rst_n),
        .I3(inStream_TUSER[1]),
        .O(cdata[1]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2
   (p_0_in,
    \ireg_reg[0]_0 ,
    vld_in,
    ap_rst_n,
    \ireg_reg[1]_0 ,
    outStream_TREADY,
    tmp_last_V_reg_201,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input vld_in;
  input ap_rst_n;
  input \ireg_reg[1]_0 ;
  input outStream_TREADY;
  input tmp_last_V_reg_201;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire outStream_TREADY;
  wire p_0_in;
  wire tmp_last_V_reg_201;
  wire vld_in;

  LUT6 #(
    .INIT(64'h0000A000A0A0C0A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(tmp_last_V_reg_201),
        .I2(ap_rst_n),
        .I3(\ireg_reg[1]_0 ),
        .I4(outStream_TREADY),
        .I5(p_0_in),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C00080)) 
    \ireg[1]_i_1 
       (.I0(vld_in),
        .I1(ap_rst_n),
        .I2(\ireg_reg[1]_0 ),
        .I3(outStream_TREADY),
        .I4(p_0_in),
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
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14
   (cdata,
    p_0_in,
    ap_rst_n,
    inStream_TLAST,
    inStream_TVALID,
    \ireg_reg[1]_0 ,
    ack_out,
    ap_clk);
  output [0:0]cdata;
  output p_0_in;
  input ap_rst_n;
  input [0:0]inStream_TLAST;
  input inStream_TVALID;
  input \ireg_reg[1]_0 ;
  input ack_out;
  input ap_clk;

  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]cdata;
  wire [0:0]inStream_TLAST;
  wire inStream_TVALID;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[1]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire p_0_in;

  LUT6 #(
    .INIT(64'h0000A000A0A0C0A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(inStream_TLAST),
        .I2(ap_rst_n),
        .I3(\ireg_reg[1]_0 ),
        .I4(ack_out),
        .I5(p_0_in),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00C00080)) 
    \ireg[1]_i_1 
       (.I0(inStream_TVALID),
        .I1(ap_rst_n),
        .I2(\ireg_reg[1]_0 ),
        .I3(ack_out),
        .I4(p_0_in),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[0]_i_1_n_0 ),
        .Q(\ireg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ireg[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \odata_int[0]_i_2__1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(ap_rst_n),
        .I3(inStream_TLAST),
        .O(cdata));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3
   (Q,
    D,
    outStream_TREADY,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[5]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [4:0]D;
  input outStream_TREADY;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [5:0]\ireg_reg[5]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[5]_i_1__0_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [5:0]\ireg_reg[5]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire outStream_TREADY;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[5]_i_1__0 
       (.I0(Q),
        .I1(outStream_TREADY),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [5]),
        .Q(Q),
        .R(\ireg[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__6 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__7 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__7 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__5 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_2__1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [4]),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18
   (Q,
    D,
    ack_out,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[5]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [5:0]D;
  input ack_out;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [5:0]\ireg_reg[5]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[5]_i_1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [5:0]\ireg_reg[5]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[5]_i_1 
       (.I0(Q),
        .I1(ack_out),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [5]),
        .Q(Q),
        .R(\ireg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__2 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__2 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__2 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__2 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__0 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[5]_i_2 
       (.I0(\ireg_reg[5]_0 [5]),
        .I1(Q),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4
   (Q,
    D,
    outStream_TREADY,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[6]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [5:0]D;
  input outStream_TREADY;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [6:0]\ireg_reg[6]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[6]_i_1__0_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [6:0]\ireg_reg[6]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire outStream_TREADY;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[6]_i_1__0 
       (.I0(Q),
        .I1(outStream_TREADY),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(\ireg[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [6]),
        .Q(Q),
        .R(\ireg[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__7 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__8 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__8 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__6 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__5 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_2__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [5]),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20
   (Q,
    D,
    ack_out,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \ireg_reg[6]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [6:0]D;
  input ack_out;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input [6:0]\ireg_reg[6]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg[6]_i_1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [6:0]\ireg_reg[6]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[6]_i_1 
       (.I0(Q),
        .I1(ack_out),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(\ireg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [6]),
        .Q(Q),
        .R(\ireg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__3 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__3 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__3 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__3 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_1__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[6]_i_2 
       (.I0(\ireg_reg[6]_0 [6]),
        .I1(Q),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf
   (ap_enable_reg_pp0_iter1_reg,
    SR,
    Q,
    E,
    \ireg_reg[32] ,
    icmp_ln13_reg_172,
    ap_rst_n,
    outStream_TREADY,
    \ireg_reg[32]_0 ,
    D,
    ap_clk);
  output ap_enable_reg_pp0_iter1_reg;
  output [0:0]SR;
  output [31:0]Q;
  output [0:0]E;
  input \ireg_reg[32] ;
  input icmp_ln13_reg_172;
  input ap_rst_n;
  input outStream_TREADY;
  input [0:0]\ireg_reg[32]_0 ;
  input [31:0]D;
  input ap_clk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire icmp_ln13_reg_172;
  wire \ireg_reg[32] ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire \odata_int[31]_i_2_n_0 ;
  wire outStream_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[32]_i_2__0 
       (.I0(outStream_TREADY),
        .I1(Q[31]),
        .I2(\ireg_reg[32]_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \ireg[32]_i_4 
       (.I0(\ireg_reg[32] ),
        .I1(icmp_ln13_reg_172),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \odata_int[31]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[31]_i_2 
       (.I0(Q[31]),
        .I1(outStream_TREADY),
        .O(\odata_int[31]_i_2_n_0 ));
  FDRE \odata_int_reg[10] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE \odata_int_reg[11] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_int_reg[12] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_int_reg[13] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_int_reg[14] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_int_reg[15] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_int_reg[16] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_int_reg[17] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_int_reg[18] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \odata_int_reg[19] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[20] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \odata_int_reg[21] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \odata_int_reg[22] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \odata_int_reg[23] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \odata_int_reg[24] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \odata_int_reg[25] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \odata_int_reg[26] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \odata_int_reg[27] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \odata_int_reg[28] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \odata_int_reg[29] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[30] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \odata_int_reg[31] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \odata_int_reg[32] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_int_reg[9] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf_23
   (D,
    ap_rst_n_0,
    E,
    SR,
    \odata_int_reg[32]_0 ,
    \odata_int_reg[32]_1 ,
    \ap_CS_fsm_reg[0] ,
    ap_enable_reg_pp0_iter0_reg,
    \odata_int_reg[32]_2 ,
    \icmp_ln13_reg_172_reg[0] ,
    \icmp_ln13_reg_172_reg[0]_0 ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    Q,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    icmp_ln13_fu_126_p2,
    \ireg_reg[32] ,
    \idx_0_reg_115_reg[0] ,
    \idx_0_reg_115_reg[0]_0 ,
    \idx_0_reg_115_reg[0]_1 ,
    icmp_ln13_reg_172,
    icmp_ln13_reg_172_pp0_iter1_reg,
    \odata_int_reg[0]_0 ,
    \odata_int_reg[32]_3 ,
    ap_clk);
  output [0:0]D;
  output ap_rst_n_0;
  output [0:0]E;
  output [0:0]SR;
  output \odata_int_reg[32]_0 ;
  output [31:0]\odata_int_reg[32]_1 ;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output ap_enable_reg_pp0_iter0_reg;
  output [0:0]\odata_int_reg[32]_2 ;
  output \icmp_ln13_reg_172_reg[0] ;
  output \icmp_ln13_reg_172_reg[0]_0 ;
  input \ap_CS_fsm_reg[2] ;
  input \ap_CS_fsm_reg[2]_0 ;
  input [1:0]Q;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input icmp_ln13_fu_126_p2;
  input [0:0]\ireg_reg[32] ;
  input \idx_0_reg_115_reg[0] ;
  input \idx_0_reg_115_reg[0]_0 ;
  input \idx_0_reg_115_reg[0]_1 ;
  input icmp_ln13_reg_172;
  input icmp_ln13_reg_172_pp0_iter1_reg;
  input [0:0]\odata_int_reg[0]_0 ;
  input [31:0]\odata_int_reg[32]_3 ;
  input ap_clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire icmp_ln13_fu_126_p2;
  wire icmp_ln13_reg_172;
  wire icmp_ln13_reg_172_pp0_iter1_reg;
  wire \icmp_ln13_reg_172_reg[0] ;
  wire \icmp_ln13_reg_172_reg[0]_0 ;
  wire \idx_0_reg_115_reg[0] ;
  wire \idx_0_reg_115_reg[0]_0 ;
  wire \idx_0_reg_115_reg[0]_1 ;
  wire [0:0]\ireg_reg[32] ;
  wire \odata_int[32]_i_1__0_n_0 ;
  wire [0:0]\odata_int_reg[0]_0 ;
  wire \odata_int_reg[32]_0 ;
  wire [31:0]\odata_int_reg[32]_1 ;
  wire [0:0]\odata_int_reg[32]_2 ;
  wire [31:0]\odata_int_reg[32]_3 ;
  wire \tmp_data_V_reg_181[30]_i_2_n_0 ;

  LUT5 #(
    .INIT(32'h001100F1)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(\tmp_data_V_reg_181[30]_i_2_n_0 ),
        .I2(\ap_CS_fsm_reg[2]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hA8A800A8)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln13_fu_126_p2),
        .I4(\tmp_data_V_reg_181[30]_i_2_n_0 ),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \icmp_ln13_reg_172[0]_i_1 
       (.I0(icmp_ln13_fu_126_p2),
        .I1(\tmp_data_V_reg_181[30]_i_2_n_0 ),
        .I2(icmp_ln13_reg_172),
        .O(\icmp_ln13_reg_172_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \icmp_ln13_reg_172_pp0_iter1_reg[0]_i_1 
       (.I0(icmp_ln13_reg_172),
        .I1(\tmp_data_V_reg_181[30]_i_2_n_0 ),
        .I2(icmp_ln13_reg_172_pp0_iter1_reg),
        .O(\icmp_ln13_reg_172_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \idx_0_reg_115[9]_i_1 
       (.I0(Q[0]),
        .I1(\odata_int_reg[32]_0 ),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'h0000080008000800)) 
    \idx_0_reg_115[9]_i_2 
       (.I0(\odata_int_reg[32]_1 [31]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\idx_0_reg_115_reg[0] ),
        .I3(Q[1]),
        .I4(\idx_0_reg_115_reg[0]_0 ),
        .I5(\idx_0_reg_115_reg[0]_1 ),
        .O(\odata_int_reg[32]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[32]_i_1 
       (.I0(\ireg_reg[32] ),
        .I1(\odata_int_reg[32]_0 ),
        .I2(\odata_int_reg[32]_1 [31]),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[32]_i_2 
       (.I0(\odata_int_reg[32]_0 ),
        .I1(\odata_int_reg[32]_1 [31]),
        .I2(\ireg_reg[32] ),
        .O(\odata_int_reg[32]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ireg[32]_i_8 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\odata_int_reg[32]_1 [31]),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[32]_i_1__0 
       (.I0(\odata_int_reg[32]_1 [31]),
        .I1(\odata_int_reg[32]_0 ),
        .O(\odata_int[32]_i_1__0_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [0]),
        .Q(\odata_int_reg[32]_1 [0]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[10] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [10]),
        .Q(\odata_int_reg[32]_1 [10]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[11] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [11]),
        .Q(\odata_int_reg[32]_1 [11]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[12] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [12]),
        .Q(\odata_int_reg[32]_1 [12]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[13] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [13]),
        .Q(\odata_int_reg[32]_1 [13]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[14] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [14]),
        .Q(\odata_int_reg[32]_1 [14]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[15] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [15]),
        .Q(\odata_int_reg[32]_1 [15]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[16] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [16]),
        .Q(\odata_int_reg[32]_1 [16]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[17] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [17]),
        .Q(\odata_int_reg[32]_1 [17]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[18] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [18]),
        .Q(\odata_int_reg[32]_1 [18]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[19] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [19]),
        .Q(\odata_int_reg[32]_1 [19]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [1]),
        .Q(\odata_int_reg[32]_1 [1]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[20] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [20]),
        .Q(\odata_int_reg[32]_1 [20]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[21] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [21]),
        .Q(\odata_int_reg[32]_1 [21]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[22] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [22]),
        .Q(\odata_int_reg[32]_1 [22]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[23] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [23]),
        .Q(\odata_int_reg[32]_1 [23]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[24] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [24]),
        .Q(\odata_int_reg[32]_1 [24]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[25] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [25]),
        .Q(\odata_int_reg[32]_1 [25]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[26] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [26]),
        .Q(\odata_int_reg[32]_1 [26]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[27] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [27]),
        .Q(\odata_int_reg[32]_1 [27]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[28] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [28]),
        .Q(\odata_int_reg[32]_1 [28]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[29] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [29]),
        .Q(\odata_int_reg[32]_1 [29]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [2]),
        .Q(\odata_int_reg[32]_1 [2]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[30] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [30]),
        .Q(\odata_int_reg[32]_1 [30]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[32] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [31]),
        .Q(\odata_int_reg[32]_1 [31]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [3]),
        .Q(\odata_int_reg[32]_1 [3]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [4]),
        .Q(\odata_int_reg[32]_1 [4]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [5]),
        .Q(\odata_int_reg[32]_1 [5]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [6]),
        .Q(\odata_int_reg[32]_1 [6]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [7]),
        .Q(\odata_int_reg[32]_1 [7]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [8]),
        .Q(\odata_int_reg[32]_1 [8]),
        .R(\odata_int_reg[0]_0 ));
  FDRE \odata_int_reg[9] 
       (.C(ap_clk),
        .CE(\odata_int[32]_i_1__0_n_0 ),
        .D(\odata_int_reg[32]_3 [9]),
        .Q(\odata_int_reg[32]_1 [9]),
        .R(\odata_int_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_data_V_reg_181[30]_i_1 
       (.I0(\tmp_data_V_reg_181[30]_i_2_n_0 ),
        .I1(icmp_ln13_fu_126_p2),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF0444FFFFFFFF)) 
    \tmp_data_V_reg_181[30]_i_2 
       (.I0(\odata_int_reg[32]_1 [31]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\idx_0_reg_115_reg[0]_0 ),
        .I3(\idx_0_reg_115_reg[0]_1 ),
        .I4(\idx_0_reg_115_reg[0] ),
        .I5(Q[1]),
        .O(\tmp_data_V_reg_181[30]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0
   (Q,
    E,
    outStream_TREADY,
    \ireg_reg[4] ,
    SR,
    D,
    ap_clk);
  output [4:0]Q;
  output [0:0]E;
  input outStream_TREADY;
  input [0:0]\ireg_reg[4] ;
  input [0:0]SR;
  input [4:0]D;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [0:0]\ireg_reg[4] ;
  wire \odata_int[3]_i_1__8_n_0 ;
  wire outStream_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[4]_i_2__2 
       (.I0(outStream_TREADY),
        .I1(Q[4]),
        .I2(\ireg_reg[4] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[3]_i_1__8 
       (.I0(Q[4]),
        .I1(outStream_TREADY),
        .O(\odata_int[3]_i_1__8_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__8_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__8_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__8_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__8_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__8_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13
   (Q,
    E,
    ack_out,
    \ireg_reg[4] ,
    SR,
    D,
    ap_clk);
  output [4:0]Q;
  output [0:0]E;
  input ack_out;
  input [0:0]\ireg_reg[4] ;
  input [0:0]SR;
  input [4:0]D;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire [0:0]\ireg_reg[4] ;
  wire \odata_int[4]_i_1__7_n_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[4]_i_2__0 
       (.I0(ack_out),
        .I1(Q[4]),
        .I2(\ireg_reg[4] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[4]_i_1__7 
       (.I0(Q[4]),
        .I1(ack_out),
        .O(\odata_int[4]_i_1__7_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17
   (Q,
    E,
    ack_out,
    \ireg_reg[4] ,
    SR,
    D,
    ap_clk);
  output [4:0]Q;
  output [0:0]E;
  input ack_out;
  input [0:0]\ireg_reg[4] ;
  input [0:0]SR;
  input [4:0]D;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire [0:0]\ireg_reg[4] ;
  wire \odata_int[4]_i_1__6_n_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[4]_i_2 
       (.I0(ack_out),
        .I1(Q[4]),
        .I2(\ireg_reg[4] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[4]_i_1__6 
       (.I0(Q[4]),
        .I1(ack_out),
        .O(\odata_int[4]_i_1__6_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9
   (Q,
    E,
    outStream_TREADY,
    \ireg_reg[4] ,
    SR,
    D,
    ap_clk);
  output [4:0]Q;
  output [0:0]E;
  input outStream_TREADY;
  input [0:0]\ireg_reg[4] ;
  input [0:0]SR;
  input [4:0]D;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [0:0]\ireg_reg[4] ;
  wire \odata_int[3]_i_1__7_n_0 ;
  wire outStream_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[4]_i_2__1 
       (.I0(outStream_TREADY),
        .I1(Q[4]),
        .I2(\ireg_reg[4] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[3]_i_1__7 
       (.I0(Q[4]),
        .I1(outStream_TREADY),
        .O(\odata_int[3]_i_1__7_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1
   (\odata_int_reg[2]_0 ,
    outStream_TUSER,
    ap_rst_n,
    outStream_TREADY,
    vld_in,
    p_0_in,
    \odata_int_reg[1]_0 ,
    Q,
    \odata_int_reg[0]_0 ,
    SR,
    ap_clk);
  output \odata_int_reg[2]_0 ;
  output [1:0]outStream_TUSER;
  input ap_rst_n;
  input outStream_TREADY;
  input vld_in;
  input p_0_in;
  input \odata_int_reg[1]_0 ;
  input [1:0]Q;
  input \odata_int_reg[0]_0 ;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int[1]_i_2_n_0 ;
  wire \odata_int[2]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire \odata_int_reg[2]_0 ;
  wire outStream_TREADY;
  wire [1:0]outStream_TUSER;
  wire p_0_in;
  wire vld_in;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[0]_0 ),
        .I1(p_0_in),
        .I2(Q[0]),
        .I3(\odata_int[1]_i_2_n_0 ),
        .I4(outStream_TUSER[0]),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \odata_int[1]_i_1 
       (.I0(\odata_int_reg[1]_0 ),
        .I1(p_0_in),
        .I2(Q[1]),
        .I3(\odata_int[1]_i_2_n_0 ),
        .I4(outStream_TUSER[1]),
        .O(\odata_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \odata_int[1]_i_2 
       (.I0(\odata_int_reg[2]_0 ),
        .I1(ap_rst_n),
        .I2(outStream_TREADY),
        .O(\odata_int[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \odata_int[2]_i_1 
       (.I0(vld_in),
        .I1(p_0_in),
        .I2(\odata_int_reg[2]_0 ),
        .I3(outStream_TREADY),
        .O(\odata_int[2]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(outStream_TUSER[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(outStream_TUSER[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[2]_i_1_n_0 ),
        .Q(\odata_int_reg[2]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11
   (\idx_0_reg_115_reg[1] ,
    \idx_0_reg_115_reg[5] ,
    \odata_int_reg[2]_0 ,
    D,
    Q,
    inStream_TVALID,
    p_0_in,
    ack_out,
    cdata,
    SR,
    ap_clk);
  output \idx_0_reg_115_reg[1] ;
  output \idx_0_reg_115_reg[5] ;
  output \odata_int_reg[2]_0 ;
  output [1:0]D;
  input [9:0]Q;
  input inStream_TVALID;
  input p_0_in;
  input ack_out;
  input [1:0]cdata;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [9:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire [1:0]cdata;
  wire \idx_0_reg_115_reg[1] ;
  wire \idx_0_reg_115_reg[5] ;
  wire inStream_TVALID;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int[2]_i_1_n_0 ;
  wire \odata_int_reg[2]_0 ;
  wire p_0_in;

  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \ireg[32]_i_6 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\idx_0_reg_115_reg[5] ));
  LUT4 #(
    .INIT(16'h0100)) 
    \ireg[32]_i_7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\idx_0_reg_115_reg[1] ));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \odata_int[0]_i_1 
       (.I0(cdata[0]),
        .I1(\odata_int_reg[2]_0 ),
        .I2(ack_out),
        .I3(D[0]),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \odata_int[1]_i_1 
       (.I0(cdata[1]),
        .I1(\odata_int_reg[2]_0 ),
        .I2(ack_out),
        .I3(D[1]),
        .O(\odata_int[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \odata_int[2]_i_1 
       (.I0(inStream_TVALID),
        .I1(p_0_in),
        .I2(\odata_int_reg[2]_0 ),
        .I3(ack_out),
        .O(\odata_int[2]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[2]_i_1_n_0 ),
        .Q(\odata_int_reg[2]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2
   (\odata_int_reg[1]_0 ,
    outStream_TLAST,
    ap_rst_n,
    outStream_TREADY,
    vld_in,
    p_0_in,
    \odata_int_reg[0]_0 ,
    tmp_last_V_reg_201,
    SR,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output [0:0]outStream_TLAST;
  input ap_rst_n;
  input outStream_TREADY;
  input vld_in;
  input p_0_in;
  input \odata_int_reg[0]_0 ;
  input tmp_last_V_reg_201;
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
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire p_0_in;
  wire tmp_last_V_reg_201;
  wire vld_in;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[0]_0 ),
        .I1(p_0_in),
        .I2(tmp_last_V_reg_201),
        .I3(\odata_int[0]_i_2_n_0 ),
        .I4(outStream_TLAST),
        .O(\odata_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \odata_int[0]_i_2 
       (.I0(\odata_int_reg[1]_0 ),
        .I1(ap_rst_n),
        .I2(outStream_TREADY),
        .O(\odata_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \odata_int[1]_i_1 
       (.I0(vld_in),
        .I1(p_0_in),
        .I2(\odata_int_reg[1]_0 ),
        .I3(outStream_TREADY),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(outStream_TLAST),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15
   (\odata_int_reg[1]_0 ,
    \odata_int_reg[0]_0 ,
    inStream_TVALID,
    p_0_in,
    ack_out,
    cdata,
    SR,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output \odata_int_reg[0]_0 ;
  input inStream_TVALID;
  input p_0_in;
  input ack_out;
  input [0:0]cdata;
  input [0:0]SR;
  input ap_clk;

  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire [0:0]cdata;
  wire inStream_TVALID;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire p_0_in;

  LUT4 #(
    .INIT(16'hAEA2)) 
    \odata_int[0]_i_1 
       (.I0(cdata),
        .I1(\odata_int_reg[1]_0 ),
        .I2(ack_out),
        .I3(\odata_int_reg[0]_0 ),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \odata_int[1]_i_1 
       (.I0(inStream_TVALID),
        .I1(p_0_in),
        .I2(\odata_int_reg[1]_0 ),
        .I3(ack_out),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(\odata_int_reg[0]_0 ),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3
   (Q,
    E,
    outStream_TREADY,
    \ireg_reg[5] ,
    SR,
    D,
    ap_clk);
  output [5:0]Q;
  output [0:0]E;
  input outStream_TREADY;
  input [0:0]\ireg_reg[5] ;
  input [0:0]SR;
  input [5:0]D;
  input ap_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [0:0]\ireg_reg[5] ;
  wire \odata_int[4]_i_1__8_n_0 ;
  wire outStream_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[5]_i_2__0 
       (.I0(outStream_TREADY),
        .I1(Q[5]),
        .I2(\ireg_reg[5] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[4]_i_1__8 
       (.I0(Q[5]),
        .I1(outStream_TREADY),
        .O(\odata_int[4]_i_1__8_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__8_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__8_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__8_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__8_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__8_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__8_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19
   (Q,
    E,
    ack_out,
    \ireg_reg[5] ,
    SR,
    D,
    ap_clk);
  output [5:0]Q;
  output [0:0]E;
  input ack_out;
  input [0:0]\ireg_reg[5] ;
  input [0:0]SR;
  input [5:0]D;
  input ap_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire [0:0]\ireg_reg[5] ;
  wire \odata_int[5]_i_1__3_n_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[5]_i_2 
       (.I0(ack_out),
        .I1(Q[5]),
        .I2(\ireg_reg[5] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[5]_i_1__3 
       (.I0(Q[5]),
        .I1(ack_out),
        .O(\odata_int[5]_i_1__3_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4
   (Q,
    E,
    outStream_TREADY,
    \ireg_reg[6] ,
    SR,
    D,
    ap_clk);
  output [6:0]Q;
  output [0:0]E;
  input outStream_TREADY;
  input [0:0]\ireg_reg[6] ;
  input [0:0]SR;
  input [6:0]D;
  input ap_clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [0:0]\ireg_reg[6] ;
  wire \odata_int[5]_i_1__4_n_0 ;
  wire outStream_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[6]_i_2__0 
       (.I0(outStream_TREADY),
        .I1(Q[6]),
        .I2(\ireg_reg[6] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[5]_i_1__4 
       (.I0(Q[6]),
        .I1(outStream_TREADY),
        .O(\odata_int[5]_i_1__4_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__4_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21
   (Q,
    E,
    ack_out,
    \ireg_reg[6] ,
    SR,
    D,
    ap_clk);
  output [6:0]Q;
  output [0:0]E;
  input ack_out;
  input [0:0]\ireg_reg[6] ;
  input [0:0]SR;
  input [6:0]D;
  input ap_clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire [0:0]\ireg_reg[6] ;
  wire \odata_int[6]_i_1__2_n_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[6]_i_2 
       (.I0(ack_out),
        .I1(Q[6]),
        .I2(\ireg_reg[6] ),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[6]_i_1__2 
       (.I0(Q[6]),
        .I1(ack_out),
        .O(\odata_int[6]_i_1__2_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
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
