// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 11 16:05:38 2020
// Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/DMA_HLSGAIN/DMA_HLSGAIN.srcs/sources_1/bd/design_1/ip/design_1_doGain_0_0/design_1_doGain_0_0_sim_netlist.v
// Design      : design_1_doGain_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_doGain_0_0,doGain,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "doGain,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_doGain_0_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s_axi_CTRL_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *) input s_axi_CTRL_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *) output s_axi_CTRL_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *) input [31:0]s_axi_CTRL_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *) input [3:0]s_axi_CTRL_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *) input s_axi_CTRL_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *) output s_axi_CTRL_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *) output [1:0]s_axi_CTRL_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *) output s_axi_CTRL_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *) input s_axi_CTRL_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *) input [4:0]s_axi_CTRL_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *) input s_axi_CTRL_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *) output s_axi_CTRL_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *) output [31:0]s_axi_CTRL_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *) output [1:0]s_axi_CTRL_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *) output s_axi_CTRL_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *) input s_axi_CTRL_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:inStream:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input inStream_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TREADY" *) output inStream_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TDATA" *) input [31:0]inStream_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TDEST" *) input [5:0]inStream_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TKEEP" *) input [3:0]inStream_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TSTRB" *) input [3:0]inStream_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TUSER" *) input [1:0]inStream_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TLAST" *) input [0:0]inStream_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 inStream TID" *) input [4:0]inStream_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 outStream TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME outStream, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output outStream_TVALID;
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
  wire interrupt;
  wire [31:0]outStream_TDATA;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [3:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;
  wire [4:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [4:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire [1:0]s_axi_CTRL_BRESP;
  wire s_axi_CTRL_BVALID;
  wire [31:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire [1:0]s_axi_CTRL_RRESP;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;

  (* C_S_AXI_CTRL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  design_1_doGain_0_0_doGain U0
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
        .interrupt(interrupt),
        .outStream_TDATA(outStream_TDATA),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TID(outStream_TID),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB),
        .outStream_TUSER(outStream_TUSER),
        .outStream_TVALID(outStream_TVALID),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
        .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
        .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
        .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID));
endmodule

(* C_S_AXI_CTRL_ADDR_WIDTH = "5" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "doGain" *) 
module design_1_doGain_0_0_doGain
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
    outStream_TDEST,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_AWADDR,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_BRESP,
    interrupt);
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
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [4:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  input [4:0]s_axi_CTRL_ARADDR;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ARESET;
  wire ack_out;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state5;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_rst_n;
  wire ap_start;
  wire doGain_CTRL_s_axi_U_n_5;
  wire doGain_CTRL_s_axi_U_n_8;
  wire icmp_ln12_fu_138_p2;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire icmp_ln12_reg_188_pp0_iter1_reg;
  wire idx_0_reg_127;
  wire \idx_0_reg_127[9]_i_5_n_0 ;
  wire [9:0]idx_0_reg_127_reg;
  wire [9:0]idx_fu_144_p2;
  wire [31:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [3:0]inStream_TKEEP;
  wire [0:0]inStream_TLAST;
  wire inStream_TREADY;
  wire [3:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire int_isr;
  wire int_isr7_out;
  wire interrupt;
  wire [31:0]\or ;
  wire [31:0]outStream_TDATA;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [3:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;
  wire p_0_in;
  wire p_0_in11_out;
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
  wire regslice_both_inStream_V_data_V_U_n_2;
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
  wire regslice_both_inStream_V_data_V_U_n_3;
  wire regslice_both_inStream_V_data_V_U_n_30;
  wire regslice_both_inStream_V_data_V_U_n_31;
  wire regslice_both_inStream_V_data_V_U_n_32;
  wire regslice_both_inStream_V_data_V_U_n_33;
  wire regslice_both_inStream_V_data_V_U_n_4;
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
  wire regslice_both_inStream_V_user_V_U_n_1;
  wire regslice_both_inStream_V_user_V_U_n_2;
  wire regslice_both_inStream_V_user_V_U_n_3;
  wire regslice_both_inStream_V_user_V_U_n_4;
  wire regslice_both_outStream_V_data_V_U_n_1;
  wire regslice_both_outStream_V_data_V_U_n_2;
  wire regslice_both_outStream_V_data_V_U_n_46;
  wire regslice_both_outStream_V_data_V_U_n_47;
  wire regslice_both_outStream_V_data_V_U_n_6;
  wire regslice_both_outStream_V_data_V_U_n_7;
  wire regslice_both_outStream_V_data_V_U_n_8;
  wire regslice_both_outStream_V_last_V_U_n_0;
  wire [4:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARREADY;
  wire s_axi_CTRL_ARVALID;
  wire [4:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWREADY;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [31:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire s_axi_CTRL_WREADY;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire [5:0]tmp_dest_V_reg_222;
  wire tmp_dest_V_reg_2220;
  wire [4:0]tmp_id_V_reg_217;
  wire [3:0]tmp_keep_V_reg_197;
  wire tmp_last_V_reg_212;
  wire [3:0]tmp_strb_V_reg_202;
  wire [1:0]tmp_user_V_reg_207;
  wire valOut_data_V_fu_178_p2__0_n_100;
  wire valOut_data_V_fu_178_p2__0_n_101;
  wire valOut_data_V_fu_178_p2__0_n_102;
  wire valOut_data_V_fu_178_p2__0_n_103;
  wire valOut_data_V_fu_178_p2__0_n_104;
  wire valOut_data_V_fu_178_p2__0_n_105;
  wire valOut_data_V_fu_178_p2__0_n_106;
  wire valOut_data_V_fu_178_p2__0_n_107;
  wire valOut_data_V_fu_178_p2__0_n_108;
  wire valOut_data_V_fu_178_p2__0_n_109;
  wire valOut_data_V_fu_178_p2__0_n_110;
  wire valOut_data_V_fu_178_p2__0_n_111;
  wire valOut_data_V_fu_178_p2__0_n_112;
  wire valOut_data_V_fu_178_p2__0_n_113;
  wire valOut_data_V_fu_178_p2__0_n_114;
  wire valOut_data_V_fu_178_p2__0_n_115;
  wire valOut_data_V_fu_178_p2__0_n_116;
  wire valOut_data_V_fu_178_p2__0_n_117;
  wire valOut_data_V_fu_178_p2__0_n_118;
  wire valOut_data_V_fu_178_p2__0_n_119;
  wire valOut_data_V_fu_178_p2__0_n_120;
  wire valOut_data_V_fu_178_p2__0_n_121;
  wire valOut_data_V_fu_178_p2__0_n_122;
  wire valOut_data_V_fu_178_p2__0_n_123;
  wire valOut_data_V_fu_178_p2__0_n_124;
  wire valOut_data_V_fu_178_p2__0_n_125;
  wire valOut_data_V_fu_178_p2__0_n_126;
  wire valOut_data_V_fu_178_p2__0_n_127;
  wire valOut_data_V_fu_178_p2__0_n_128;
  wire valOut_data_V_fu_178_p2__0_n_129;
  wire valOut_data_V_fu_178_p2__0_n_130;
  wire valOut_data_V_fu_178_p2__0_n_131;
  wire valOut_data_V_fu_178_p2__0_n_132;
  wire valOut_data_V_fu_178_p2__0_n_133;
  wire valOut_data_V_fu_178_p2__0_n_134;
  wire valOut_data_V_fu_178_p2__0_n_135;
  wire valOut_data_V_fu_178_p2__0_n_136;
  wire valOut_data_V_fu_178_p2__0_n_137;
  wire valOut_data_V_fu_178_p2__0_n_138;
  wire valOut_data_V_fu_178_p2__0_n_139;
  wire valOut_data_V_fu_178_p2__0_n_140;
  wire valOut_data_V_fu_178_p2__0_n_141;
  wire valOut_data_V_fu_178_p2__0_n_142;
  wire valOut_data_V_fu_178_p2__0_n_143;
  wire valOut_data_V_fu_178_p2__0_n_144;
  wire valOut_data_V_fu_178_p2__0_n_145;
  wire valOut_data_V_fu_178_p2__0_n_146;
  wire valOut_data_V_fu_178_p2__0_n_147;
  wire valOut_data_V_fu_178_p2__0_n_148;
  wire valOut_data_V_fu_178_p2__0_n_149;
  wire valOut_data_V_fu_178_p2__0_n_150;
  wire valOut_data_V_fu_178_p2__0_n_151;
  wire valOut_data_V_fu_178_p2__0_n_152;
  wire valOut_data_V_fu_178_p2__0_n_153;
  wire valOut_data_V_fu_178_p2__0_n_24;
  wire valOut_data_V_fu_178_p2__0_n_25;
  wire valOut_data_V_fu_178_p2__0_n_26;
  wire valOut_data_V_fu_178_p2__0_n_27;
  wire valOut_data_V_fu_178_p2__0_n_28;
  wire valOut_data_V_fu_178_p2__0_n_29;
  wire valOut_data_V_fu_178_p2__0_n_30;
  wire valOut_data_V_fu_178_p2__0_n_31;
  wire valOut_data_V_fu_178_p2__0_n_32;
  wire valOut_data_V_fu_178_p2__0_n_33;
  wire valOut_data_V_fu_178_p2__0_n_34;
  wire valOut_data_V_fu_178_p2__0_n_35;
  wire valOut_data_V_fu_178_p2__0_n_36;
  wire valOut_data_V_fu_178_p2__0_n_37;
  wire valOut_data_V_fu_178_p2__0_n_38;
  wire valOut_data_V_fu_178_p2__0_n_39;
  wire valOut_data_V_fu_178_p2__0_n_40;
  wire valOut_data_V_fu_178_p2__0_n_41;
  wire valOut_data_V_fu_178_p2__0_n_42;
  wire valOut_data_V_fu_178_p2__0_n_43;
  wire valOut_data_V_fu_178_p2__0_n_44;
  wire valOut_data_V_fu_178_p2__0_n_45;
  wire valOut_data_V_fu_178_p2__0_n_46;
  wire valOut_data_V_fu_178_p2__0_n_47;
  wire valOut_data_V_fu_178_p2__0_n_48;
  wire valOut_data_V_fu_178_p2__0_n_49;
  wire valOut_data_V_fu_178_p2__0_n_50;
  wire valOut_data_V_fu_178_p2__0_n_51;
  wire valOut_data_V_fu_178_p2__0_n_52;
  wire valOut_data_V_fu_178_p2__0_n_53;
  wire valOut_data_V_fu_178_p2__0_n_58;
  wire valOut_data_V_fu_178_p2__0_n_59;
  wire valOut_data_V_fu_178_p2__0_n_60;
  wire valOut_data_V_fu_178_p2__0_n_61;
  wire valOut_data_V_fu_178_p2__0_n_62;
  wire valOut_data_V_fu_178_p2__0_n_63;
  wire valOut_data_V_fu_178_p2__0_n_64;
  wire valOut_data_V_fu_178_p2__0_n_65;
  wire valOut_data_V_fu_178_p2__0_n_66;
  wire valOut_data_V_fu_178_p2__0_n_67;
  wire valOut_data_V_fu_178_p2__0_n_68;
  wire valOut_data_V_fu_178_p2__0_n_69;
  wire valOut_data_V_fu_178_p2__0_n_70;
  wire valOut_data_V_fu_178_p2__0_n_71;
  wire valOut_data_V_fu_178_p2__0_n_72;
  wire valOut_data_V_fu_178_p2__0_n_73;
  wire valOut_data_V_fu_178_p2__0_n_74;
  wire valOut_data_V_fu_178_p2__0_n_75;
  wire valOut_data_V_fu_178_p2__0_n_76;
  wire valOut_data_V_fu_178_p2__0_n_77;
  wire valOut_data_V_fu_178_p2__0_n_78;
  wire valOut_data_V_fu_178_p2__0_n_79;
  wire valOut_data_V_fu_178_p2__0_n_80;
  wire valOut_data_V_fu_178_p2__0_n_81;
  wire valOut_data_V_fu_178_p2__0_n_82;
  wire valOut_data_V_fu_178_p2__0_n_83;
  wire valOut_data_V_fu_178_p2__0_n_84;
  wire valOut_data_V_fu_178_p2__0_n_85;
  wire valOut_data_V_fu_178_p2__0_n_86;
  wire valOut_data_V_fu_178_p2__0_n_87;
  wire valOut_data_V_fu_178_p2__0_n_88;
  wire valOut_data_V_fu_178_p2__0_n_89;
  wire valOut_data_V_fu_178_p2__0_n_90;
  wire valOut_data_V_fu_178_p2__0_n_91;
  wire valOut_data_V_fu_178_p2__0_n_92;
  wire valOut_data_V_fu_178_p2__0_n_93;
  wire valOut_data_V_fu_178_p2__0_n_94;
  wire valOut_data_V_fu_178_p2__0_n_95;
  wire valOut_data_V_fu_178_p2__0_n_96;
  wire valOut_data_V_fu_178_p2__0_n_97;
  wire valOut_data_V_fu_178_p2__0_n_98;
  wire valOut_data_V_fu_178_p2__0_n_99;
  wire valOut_data_V_fu_178_p2_n_100;
  wire valOut_data_V_fu_178_p2_n_101;
  wire valOut_data_V_fu_178_p2_n_102;
  wire valOut_data_V_fu_178_p2_n_103;
  wire valOut_data_V_fu_178_p2_n_104;
  wire valOut_data_V_fu_178_p2_n_105;
  wire valOut_data_V_fu_178_p2_n_106;
  wire valOut_data_V_fu_178_p2_n_107;
  wire valOut_data_V_fu_178_p2_n_108;
  wire valOut_data_V_fu_178_p2_n_109;
  wire valOut_data_V_fu_178_p2_n_110;
  wire valOut_data_V_fu_178_p2_n_111;
  wire valOut_data_V_fu_178_p2_n_112;
  wire valOut_data_V_fu_178_p2_n_113;
  wire valOut_data_V_fu_178_p2_n_114;
  wire valOut_data_V_fu_178_p2_n_115;
  wire valOut_data_V_fu_178_p2_n_116;
  wire valOut_data_V_fu_178_p2_n_117;
  wire valOut_data_V_fu_178_p2_n_118;
  wire valOut_data_V_fu_178_p2_n_119;
  wire valOut_data_V_fu_178_p2_n_120;
  wire valOut_data_V_fu_178_p2_n_121;
  wire valOut_data_V_fu_178_p2_n_122;
  wire valOut_data_V_fu_178_p2_n_123;
  wire valOut_data_V_fu_178_p2_n_124;
  wire valOut_data_V_fu_178_p2_n_125;
  wire valOut_data_V_fu_178_p2_n_126;
  wire valOut_data_V_fu_178_p2_n_127;
  wire valOut_data_V_fu_178_p2_n_128;
  wire valOut_data_V_fu_178_p2_n_129;
  wire valOut_data_V_fu_178_p2_n_130;
  wire valOut_data_V_fu_178_p2_n_131;
  wire valOut_data_V_fu_178_p2_n_132;
  wire valOut_data_V_fu_178_p2_n_133;
  wire valOut_data_V_fu_178_p2_n_134;
  wire valOut_data_V_fu_178_p2_n_135;
  wire valOut_data_V_fu_178_p2_n_136;
  wire valOut_data_V_fu_178_p2_n_137;
  wire valOut_data_V_fu_178_p2_n_138;
  wire valOut_data_V_fu_178_p2_n_139;
  wire valOut_data_V_fu_178_p2_n_140;
  wire valOut_data_V_fu_178_p2_n_141;
  wire valOut_data_V_fu_178_p2_n_142;
  wire valOut_data_V_fu_178_p2_n_143;
  wire valOut_data_V_fu_178_p2_n_144;
  wire valOut_data_V_fu_178_p2_n_145;
  wire valOut_data_V_fu_178_p2_n_146;
  wire valOut_data_V_fu_178_p2_n_147;
  wire valOut_data_V_fu_178_p2_n_148;
  wire valOut_data_V_fu_178_p2_n_149;
  wire valOut_data_V_fu_178_p2_n_150;
  wire valOut_data_V_fu_178_p2_n_151;
  wire valOut_data_V_fu_178_p2_n_152;
  wire valOut_data_V_fu_178_p2_n_153;
  wire valOut_data_V_fu_178_p2_n_58;
  wire valOut_data_V_fu_178_p2_n_59;
  wire valOut_data_V_fu_178_p2_n_60;
  wire valOut_data_V_fu_178_p2_n_61;
  wire valOut_data_V_fu_178_p2_n_62;
  wire valOut_data_V_fu_178_p2_n_63;
  wire valOut_data_V_fu_178_p2_n_64;
  wire valOut_data_V_fu_178_p2_n_65;
  wire valOut_data_V_fu_178_p2_n_66;
  wire valOut_data_V_fu_178_p2_n_67;
  wire valOut_data_V_fu_178_p2_n_68;
  wire valOut_data_V_fu_178_p2_n_69;
  wire valOut_data_V_fu_178_p2_n_70;
  wire valOut_data_V_fu_178_p2_n_71;
  wire valOut_data_V_fu_178_p2_n_72;
  wire valOut_data_V_fu_178_p2_n_73;
  wire valOut_data_V_fu_178_p2_n_74;
  wire valOut_data_V_fu_178_p2_n_75;
  wire valOut_data_V_fu_178_p2_n_76;
  wire valOut_data_V_fu_178_p2_n_77;
  wire valOut_data_V_fu_178_p2_n_78;
  wire valOut_data_V_fu_178_p2_n_79;
  wire valOut_data_V_fu_178_p2_n_80;
  wire valOut_data_V_fu_178_p2_n_81;
  wire valOut_data_V_fu_178_p2_n_82;
  wire valOut_data_V_fu_178_p2_n_83;
  wire valOut_data_V_fu_178_p2_n_84;
  wire valOut_data_V_fu_178_p2_n_85;
  wire valOut_data_V_fu_178_p2_n_86;
  wire valOut_data_V_fu_178_p2_n_87;
  wire valOut_data_V_fu_178_p2_n_88;
  wire valOut_data_V_fu_178_p2_n_89;
  wire valOut_data_V_fu_178_p2_n_90;
  wire valOut_data_V_fu_178_p2_n_91;
  wire valOut_data_V_fu_178_p2_n_92;
  wire valOut_data_V_fu_178_p2_n_93;
  wire valOut_data_V_fu_178_p2_n_94;
  wire valOut_data_V_fu_178_p2_n_95;
  wire valOut_data_V_fu_178_p2_n_96;
  wire valOut_data_V_fu_178_p2_n_97;
  wire valOut_data_V_fu_178_p2_n_98;
  wire valOut_data_V_fu_178_p2_n_99;
  wire \valOut_data_V_reg_227_reg[0]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[10]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[11]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[12]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[13]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[14]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[15]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[16]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[1]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[2]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[3]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[4]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[5]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[6]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[7]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[8]__0_n_0 ;
  wire \valOut_data_V_reg_227_reg[9]__0_n_0 ;
  wire valOut_data_V_reg_227_reg_n_100;
  wire valOut_data_V_reg_227_reg_n_101;
  wire valOut_data_V_reg_227_reg_n_102;
  wire valOut_data_V_reg_227_reg_n_103;
  wire valOut_data_V_reg_227_reg_n_104;
  wire valOut_data_V_reg_227_reg_n_105;
  wire valOut_data_V_reg_227_reg_n_58;
  wire valOut_data_V_reg_227_reg_n_59;
  wire valOut_data_V_reg_227_reg_n_60;
  wire valOut_data_V_reg_227_reg_n_61;
  wire valOut_data_V_reg_227_reg_n_62;
  wire valOut_data_V_reg_227_reg_n_63;
  wire valOut_data_V_reg_227_reg_n_64;
  wire valOut_data_V_reg_227_reg_n_65;
  wire valOut_data_V_reg_227_reg_n_66;
  wire valOut_data_V_reg_227_reg_n_67;
  wire valOut_data_V_reg_227_reg_n_68;
  wire valOut_data_V_reg_227_reg_n_69;
  wire valOut_data_V_reg_227_reg_n_70;
  wire valOut_data_V_reg_227_reg_n_71;
  wire valOut_data_V_reg_227_reg_n_72;
  wire valOut_data_V_reg_227_reg_n_73;
  wire valOut_data_V_reg_227_reg_n_74;
  wire valOut_data_V_reg_227_reg_n_75;
  wire valOut_data_V_reg_227_reg_n_76;
  wire valOut_data_V_reg_227_reg_n_77;
  wire valOut_data_V_reg_227_reg_n_78;
  wire valOut_data_V_reg_227_reg_n_79;
  wire valOut_data_V_reg_227_reg_n_80;
  wire valOut_data_V_reg_227_reg_n_81;
  wire valOut_data_V_reg_227_reg_n_82;
  wire valOut_data_V_reg_227_reg_n_83;
  wire valOut_data_V_reg_227_reg_n_84;
  wire valOut_data_V_reg_227_reg_n_85;
  wire valOut_data_V_reg_227_reg_n_86;
  wire valOut_data_V_reg_227_reg_n_87;
  wire valOut_data_V_reg_227_reg_n_88;
  wire valOut_data_V_reg_227_reg_n_89;
  wire valOut_data_V_reg_227_reg_n_90;
  wire valOut_data_V_reg_227_reg_n_91;
  wire valOut_data_V_reg_227_reg_n_92;
  wire valOut_data_V_reg_227_reg_n_93;
  wire valOut_data_V_reg_227_reg_n_94;
  wire valOut_data_V_reg_227_reg_n_95;
  wire valOut_data_V_reg_227_reg_n_96;
  wire valOut_data_V_reg_227_reg_n_97;
  wire valOut_data_V_reg_227_reg_n_98;
  wire valOut_data_V_reg_227_reg_n_99;
  wire vld_in;
  wire vld_out;
  wire NLW_valOut_data_V_fu_178_p2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2_OVERFLOW_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2_PATTERNDETECT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_valOut_data_V_fu_178_p2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_valOut_data_V_fu_178_p2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_valOut_data_V_fu_178_p2_CARRYOUT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2__0_OVERFLOW_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_valOut_data_V_fu_178_p2__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_valOut_data_V_fu_178_p2__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_valOut_data_V_fu_178_p2__0_CARRYOUT_UNCONNECTED;
  wire NLW_valOut_data_V_reg_227_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_valOut_data_V_reg_227_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_valOut_data_V_reg_227_reg_OVERFLOW_UNCONNECTED;
  wire NLW_valOut_data_V_reg_227_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_valOut_data_V_reg_227_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_valOut_data_V_reg_227_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_valOut_data_V_reg_227_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_valOut_data_V_reg_227_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_valOut_data_V_reg_227_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_valOut_data_V_reg_227_reg_PCOUT_UNCONNECTED;

  assign s_axi_CTRL_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_8),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_7),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_6),
        .Q(ap_CS_fsm_state5),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(doGain_CTRL_s_axi_U_n_8),
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
  design_1_doGain_0_0_doGain_CTRL_s_axi doGain_CTRL_s_axi_U
       (.ARESET(ARESET),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_WREADY),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .SR(idx_0_reg_127),
        .ack_out(ack_out),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(doGain_CTRL_s_axi_U_n_8),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .icmp_ln12_fu_138_p2(icmp_ln12_fu_138_p2),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\int_ier_reg[0]_0 (doGain_CTRL_s_axi_U_n_5),
        .int_isr(int_isr),
        .int_isr7_out(int_isr7_out),
        .interrupt(interrupt),
        .\or (\or ),
        .p_0_in(p_0_in),
        .p_0_in11_out(p_0_in11_out),
        .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
        .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
        .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
        .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
        .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
        .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
        .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
        .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
        .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
        .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
        .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
        .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID));
  FDRE \icmp_ln12_reg_188_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_47),
        .Q(icmp_ln12_reg_188_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln12_reg_188_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_outStream_V_data_V_U_n_46),
        .Q(icmp_ln12_reg_188),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \idx_0_reg_127[0]_i_1 
       (.I0(idx_0_reg_127_reg[0]),
        .O(idx_fu_144_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx_0_reg_127[1]_i_1 
       (.I0(idx_0_reg_127_reg[0]),
        .I1(idx_0_reg_127_reg[1]),
        .O(idx_fu_144_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idx_0_reg_127[2]_i_1 
       (.I0(idx_0_reg_127_reg[0]),
        .I1(idx_0_reg_127_reg[1]),
        .I2(idx_0_reg_127_reg[2]),
        .O(idx_fu_144_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idx_0_reg_127[3]_i_1 
       (.I0(idx_0_reg_127_reg[1]),
        .I1(idx_0_reg_127_reg[0]),
        .I2(idx_0_reg_127_reg[2]),
        .I3(idx_0_reg_127_reg[3]),
        .O(idx_fu_144_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \idx_0_reg_127[4]_i_1 
       (.I0(idx_0_reg_127_reg[2]),
        .I1(idx_0_reg_127_reg[0]),
        .I2(idx_0_reg_127_reg[1]),
        .I3(idx_0_reg_127_reg[3]),
        .I4(idx_0_reg_127_reg[4]),
        .O(idx_fu_144_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \idx_0_reg_127[5]_i_1 
       (.I0(idx_0_reg_127_reg[3]),
        .I1(idx_0_reg_127_reg[1]),
        .I2(idx_0_reg_127_reg[0]),
        .I3(idx_0_reg_127_reg[2]),
        .I4(idx_0_reg_127_reg[4]),
        .I5(idx_0_reg_127_reg[5]),
        .O(idx_fu_144_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx_0_reg_127[6]_i_1 
       (.I0(\idx_0_reg_127[9]_i_5_n_0 ),
        .I1(idx_0_reg_127_reg[6]),
        .O(idx_fu_144_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \idx_0_reg_127[7]_i_1 
       (.I0(\idx_0_reg_127[9]_i_5_n_0 ),
        .I1(idx_0_reg_127_reg[6]),
        .I2(idx_0_reg_127_reg[7]),
        .O(idx_fu_144_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \idx_0_reg_127[8]_i_1 
       (.I0(idx_0_reg_127_reg[6]),
        .I1(\idx_0_reg_127[9]_i_5_n_0 ),
        .I2(idx_0_reg_127_reg[7]),
        .I3(idx_0_reg_127_reg[8]),
        .O(idx_fu_144_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \idx_0_reg_127[9]_i_3 
       (.I0(idx_0_reg_127_reg[7]),
        .I1(\idx_0_reg_127[9]_i_5_n_0 ),
        .I2(idx_0_reg_127_reg[6]),
        .I3(idx_0_reg_127_reg[8]),
        .I4(idx_0_reg_127_reg[9]),
        .O(idx_fu_144_p2[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \idx_0_reg_127[9]_i_5 
       (.I0(idx_0_reg_127_reg[5]),
        .I1(idx_0_reg_127_reg[3]),
        .I2(idx_0_reg_127_reg[1]),
        .I3(idx_0_reg_127_reg[0]),
        .I4(idx_0_reg_127_reg[2]),
        .I5(idx_0_reg_127_reg[4]),
        .O(\idx_0_reg_127[9]_i_5_n_0 ));
  FDRE \idx_0_reg_127_reg[0] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[0]),
        .Q(idx_0_reg_127_reg[0]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[1] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[1]),
        .Q(idx_0_reg_127_reg[1]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[2] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[2]),
        .Q(idx_0_reg_127_reg[2]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[3] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[3]),
        .Q(idx_0_reg_127_reg[3]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[4] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[4]),
        .Q(idx_0_reg_127_reg[4]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[5] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[5]),
        .Q(idx_0_reg_127_reg[5]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[6] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[6]),
        .Q(idx_0_reg_127_reg[6]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[7] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[7]),
        .Q(idx_0_reg_127_reg[7]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[8] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[8]),
        .Q(idx_0_reg_127_reg[8]),
        .R(idx_0_reg_127));
  FDRE \idx_0_reg_127_reg[9] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(idx_fu_144_p2[9]),
        .Q(idx_0_reg_127_reg[9]),
        .R(idx_0_reg_127));
  design_1_doGain_0_0_regslice_both regslice_both_inStream_V_data_V_U
       (.A({regslice_both_inStream_V_data_V_U_n_2,regslice_both_inStream_V_data_V_U_n_3,regslice_both_inStream_V_data_V_U_n_4,regslice_both_inStream_V_data_V_U_n_5,regslice_both_inStream_V_data_V_U_n_6,regslice_both_inStream_V_data_V_U_n_7,regslice_both_inStream_V_data_V_U_n_8,regslice_both_inStream_V_data_V_U_n_9,regslice_both_inStream_V_data_V_U_n_10,regslice_both_inStream_V_data_V_U_n_11,regslice_both_inStream_V_data_V_U_n_12,regslice_both_inStream_V_data_V_U_n_13,regslice_both_inStream_V_data_V_U_n_14,regslice_both_inStream_V_data_V_U_n_15,regslice_both_inStream_V_data_V_U_n_16,regslice_both_inStream_V_data_V_U_n_17,regslice_both_inStream_V_data_V_U_n_18}),
        .ARESET(ARESET),
        .B({regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_20,regslice_both_inStream_V_data_V_U_n_21,regslice_both_inStream_V_data_V_U_n_22,regslice_both_inStream_V_data_V_U_n_23,regslice_both_inStream_V_data_V_U_n_24,regslice_both_inStream_V_data_V_U_n_25,regslice_both_inStream_V_data_V_U_n_26,regslice_both_inStream_V_data_V_U_n_27,regslice_both_inStream_V_data_V_U_n_28,regslice_both_inStream_V_data_V_U_n_29,regslice_both_inStream_V_data_V_U_n_30,regslice_both_inStream_V_data_V_U_n_31,regslice_both_inStream_V_data_V_U_n_32,regslice_both_inStream_V_data_V_U_n_33}),
        .D({inStream_TVALID,inStream_TDATA}),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_inStream_V_data_V_U_n_1),
        .inStream_TREADY(inStream_TREADY),
        .vld_out(vld_out));
  design_1_doGain_0_0_regslice_both__parameterized9 regslice_both_inStream_V_dest_V_U
       (.ARESET(ARESET),
        .Q({regslice_both_inStream_V_dest_V_U_n_0,regslice_both_inStream_V_dest_V_U_n_1,regslice_both_inStream_V_dest_V_U_n_2,regslice_both_inStream_V_dest_V_U_n_3,regslice_both_inStream_V_dest_V_U_n_4,regslice_both_inStream_V_dest_V_U_n_5}),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TDEST(inStream_TDEST),
        .inStream_TVALID(inStream_TVALID));
  design_1_doGain_0_0_regslice_both__parameterized7 regslice_both_inStream_V_id_V_U
       (.ARESET(ARESET),
        .Q({regslice_both_inStream_V_id_V_U_n_0,regslice_both_inStream_V_id_V_U_n_1,regslice_both_inStream_V_id_V_U_n_2,regslice_both_inStream_V_id_V_U_n_3,regslice_both_inStream_V_id_V_U_n_4}),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TID(inStream_TID),
        .inStream_TVALID(inStream_TVALID));
  design_1_doGain_0_0_regslice_both__parameterized1 regslice_both_inStream_V_keep_V_U
       (.ARESET(ARESET),
        .Q({regslice_both_inStream_V_keep_V_U_n_0,regslice_both_inStream_V_keep_V_U_n_1,regslice_both_inStream_V_keep_V_U_n_2,regslice_both_inStream_V_keep_V_U_n_3}),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TKEEP(inStream_TKEEP),
        .inStream_TVALID(inStream_TVALID));
  design_1_doGain_0_0_regslice_both__parameterized5 regslice_both_inStream_V_last_V_U
       (.ARESET(ARESET),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[0] (regslice_both_inStream_V_last_V_U_n_0));
  design_1_doGain_0_0_regslice_both__parameterized1_0 regslice_both_inStream_V_strb_V_U
       (.ARESET(ARESET),
        .Q({regslice_both_inStream_V_strb_V_U_n_0,regslice_both_inStream_V_strb_V_U_n_1,regslice_both_inStream_V_strb_V_U_n_2,regslice_both_inStream_V_strb_V_U_n_3}),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TSTRB(inStream_TSTRB),
        .inStream_TVALID(inStream_TVALID));
  design_1_doGain_0_0_regslice_both__parameterized3 regslice_both_inStream_V_user_V_U
       (.ARESET(ARESET),
        .D({regslice_both_inStream_V_user_V_U_n_3,regslice_both_inStream_V_user_V_U_n_4}),
        .Q(idx_0_reg_127_reg),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_fu_138_p2(icmp_ln12_fu_138_p2),
        .\idx_0_reg_127_reg[1] (regslice_both_inStream_V_user_V_U_n_2),
        .\idx_0_reg_127_reg[8] (regslice_both_inStream_V_user_V_U_n_1),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID));
  design_1_doGain_0_0_regslice_both_1 regslice_both_outStream_V_data_V_U
       (.ARESET(ARESET),
        .D({regslice_both_outStream_V_data_V_U_n_6,regslice_both_outStream_V_data_V_U_n_7,regslice_both_outStream_V_data_V_U_n_8}),
        .E(tmp_dest_V_reg_2220),
        .P({valOut_data_V_reg_227_reg_n_91,valOut_data_V_reg_227_reg_n_92,valOut_data_V_reg_227_reg_n_93,valOut_data_V_reg_227_reg_n_94,valOut_data_V_reg_227_reg_n_95,valOut_data_V_reg_227_reg_n_96,valOut_data_V_reg_227_reg_n_97,valOut_data_V_reg_227_reg_n_98,valOut_data_V_reg_227_reg_n_99,valOut_data_V_reg_227_reg_n_100,valOut_data_V_reg_227_reg_n_101,valOut_data_V_reg_227_reg_n_102,valOut_data_V_reg_227_reg_n_103,valOut_data_V_reg_227_reg_n_104,valOut_data_V_reg_227_reg_n_105}),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(regslice_both_outStream_V_data_V_U_n_1),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_outStream_V_data_V_U_n_2),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .\count_reg[0]_0 (regslice_both_outStream_V_last_V_U_n_0),
        .icmp_ln12_fu_138_p2(icmp_ln12_fu_138_p2),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .icmp_ln12_reg_188_pp0_iter1_reg(icmp_ln12_reg_188_pp0_iter1_reg),
        .\icmp_ln12_reg_188_reg[0] (vld_in),
        .\icmp_ln12_reg_188_reg[0]_0 (regslice_both_outStream_V_data_V_U_n_46),
        .\icmp_ln12_reg_188_reg[0]_1 (regslice_both_outStream_V_data_V_U_n_47),
        .\idx_0_reg_127[9]_i_4 ({idx_0_reg_127_reg[9:7],idx_0_reg_127_reg[5]}),
        .\idx_0_reg_127_reg[0] (regslice_both_inStream_V_user_V_U_n_1),
        .\idx_0_reg_127_reg[0]_0 (regslice_both_inStream_V_user_V_U_n_2),
        .int_isr(int_isr),
        .int_isr7_out(int_isr7_out),
        .\int_isr_reg[0] (doGain_CTRL_s_axi_U_n_5),
        .\ireg_reg[19] ({\valOut_data_V_reg_227_reg[16]__0_n_0 ,\valOut_data_V_reg_227_reg[15]__0_n_0 ,\valOut_data_V_reg_227_reg[14]__0_n_0 ,\valOut_data_V_reg_227_reg[13]__0_n_0 ,\valOut_data_V_reg_227_reg[12]__0_n_0 ,\valOut_data_V_reg_227_reg[11]__0_n_0 ,\valOut_data_V_reg_227_reg[10]__0_n_0 ,\valOut_data_V_reg_227_reg[9]__0_n_0 ,\valOut_data_V_reg_227_reg[8]__0_n_0 ,\valOut_data_V_reg_227_reg[7]__0_n_0 ,\valOut_data_V_reg_227_reg[6]__0_n_0 ,\valOut_data_V_reg_227_reg[5]__0_n_0 ,\valOut_data_V_reg_227_reg[4]__0_n_0 ,\valOut_data_V_reg_227_reg[3]__0_n_0 ,\valOut_data_V_reg_227_reg[2]__0_n_0 ,\valOut_data_V_reg_227_reg[1]__0_n_0 ,\valOut_data_V_reg_227_reg[0]__0_n_0 }),
        .\ireg_reg[31] ({valOut_data_V_fu_178_p2_n_91,valOut_data_V_fu_178_p2_n_92,valOut_data_V_fu_178_p2_n_93,valOut_data_V_fu_178_p2_n_94,valOut_data_V_fu_178_p2_n_95,valOut_data_V_fu_178_p2_n_96,valOut_data_V_fu_178_p2_n_97,valOut_data_V_fu_178_p2_n_98,valOut_data_V_fu_178_p2_n_99,valOut_data_V_fu_178_p2_n_100,valOut_data_V_fu_178_p2_n_101,valOut_data_V_fu_178_p2_n_102,valOut_data_V_fu_178_p2_n_103,valOut_data_V_fu_178_p2_n_104,valOut_data_V_fu_178_p2_n_105}),
        .\odata_int_reg[32] ({outStream_TVALID,outStream_TDATA}),
        .\odata_int_reg[32]_0 (ap_enable_reg_pp0_iter1_reg_n_0),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in),
        .vld_out(vld_out));
  design_1_doGain_0_0_regslice_both__parameterized9_2 regslice_both_outStream_V_dest_V_U
       (.ARESET(ARESET),
        .D({vld_in,tmp_dest_V_reg_222}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\odata_int_reg[6] (ap_enable_reg_pp0_iter1_reg_n_0),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TREADY(outStream_TREADY));
  design_1_doGain_0_0_regslice_both__parameterized7_3 regslice_both_outStream_V_id_V_U
       (.ARESET(ARESET),
        .D({vld_in,tmp_id_V_reg_217}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\odata_int_reg[5] (ap_enable_reg_pp0_iter1_reg_n_0),
        .outStream_TID(outStream_TID),
        .outStream_TREADY(outStream_TREADY));
  design_1_doGain_0_0_regslice_both__parameterized1_4 regslice_both_outStream_V_keep_V_U
       (.ARESET(ARESET),
        .D({vld_in,tmp_keep_V_reg_197}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\odata_int_reg[4] (ap_enable_reg_pp0_iter1_reg_n_0),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TREADY(outStream_TREADY));
  design_1_doGain_0_0_regslice_both__parameterized5_5 regslice_both_outStream_V_last_V_U
       (.ARESET(ARESET),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_outStream_V_last_V_U_n_0),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[1] (ap_enable_reg_pp0_iter1_reg_n_0),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .tmp_last_V_reg_212(tmp_last_V_reg_212));
  design_1_doGain_0_0_regslice_both__parameterized1_6 regslice_both_outStream_V_strb_V_U
       (.ARESET(ARESET),
        .D({vld_in,tmp_strb_V_reg_202}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\odata_int_reg[4] (ap_enable_reg_pp0_iter1_reg_n_0),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB));
  design_1_doGain_0_0_regslice_both__parameterized3_7 regslice_both_outStream_V_user_V_U
       (.ARESET(ARESET),
        .Q(tmp_user_V_reg_207),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[2] (ap_enable_reg_pp0_iter1_reg_n_0),
        .\odata_int_reg[2] (regslice_both_outStream_V_last_V_U_n_0),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TUSER(outStream_TUSER));
  FDRE \tmp_dest_V_reg_222_reg[0] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_dest_V_U_n_5),
        .Q(tmp_dest_V_reg_222[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_222_reg[1] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_dest_V_U_n_4),
        .Q(tmp_dest_V_reg_222[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_222_reg[2] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_dest_V_U_n_3),
        .Q(tmp_dest_V_reg_222[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_222_reg[3] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_dest_V_U_n_2),
        .Q(tmp_dest_V_reg_222[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_222_reg[4] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_dest_V_U_n_1),
        .Q(tmp_dest_V_reg_222[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_222_reg[5] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_dest_V_U_n_0),
        .Q(tmp_dest_V_reg_222[5]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_217_reg[0] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_id_V_U_n_4),
        .Q(tmp_id_V_reg_217[0]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_217_reg[1] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_id_V_U_n_3),
        .Q(tmp_id_V_reg_217[1]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_217_reg[2] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_id_V_U_n_2),
        .Q(tmp_id_V_reg_217[2]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_217_reg[3] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_id_V_U_n_1),
        .Q(tmp_id_V_reg_217[3]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_217_reg[4] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_id_V_U_n_0),
        .Q(tmp_id_V_reg_217[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_197_reg[0] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_keep_V_U_n_3),
        .Q(tmp_keep_V_reg_197[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_197_reg[1] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_keep_V_U_n_2),
        .Q(tmp_keep_V_reg_197[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_197_reg[2] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_keep_V_U_n_1),
        .Q(tmp_keep_V_reg_197[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_197_reg[3] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_keep_V_U_n_0),
        .Q(tmp_keep_V_reg_197[3]),
        .R(1'b0));
  FDRE \tmp_last_V_reg_212_reg[0] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_last_V_U_n_0),
        .Q(tmp_last_V_reg_212),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_202_reg[0] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_strb_V_U_n_3),
        .Q(tmp_strb_V_reg_202[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_202_reg[1] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_strb_V_U_n_2),
        .Q(tmp_strb_V_reg_202[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_202_reg[2] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_strb_V_U_n_1),
        .Q(tmp_strb_V_reg_202[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_202_reg[3] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_strb_V_U_n_0),
        .Q(tmp_strb_V_reg_202[3]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_207_reg[0] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_user_V_U_n_4),
        .Q(tmp_user_V_reg_207[0]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_207_reg[1] 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(regslice_both_inStream_V_user_V_U_n_3),
        .Q(tmp_user_V_reg_207[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    valOut_data_V_fu_178_p2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\or [16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_valOut_data_V_fu_178_p2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_20,regslice_both_inStream_V_data_V_U_n_21,regslice_both_inStream_V_data_V_U_n_22,regslice_both_inStream_V_data_V_U_n_23,regslice_both_inStream_V_data_V_U_n_24,regslice_both_inStream_V_data_V_U_n_25,regslice_both_inStream_V_data_V_U_n_26,regslice_both_inStream_V_data_V_U_n_27,regslice_both_inStream_V_data_V_U_n_28,regslice_both_inStream_V_data_V_U_n_29,regslice_both_inStream_V_data_V_U_n_30,regslice_both_inStream_V_data_V_U_n_31,regslice_both_inStream_V_data_V_U_n_32,regslice_both_inStream_V_data_V_U_n_33}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_valOut_data_V_fu_178_p2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_valOut_data_V_fu_178_p2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_valOut_data_V_fu_178_p2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(p_0_in11_out),
        .CEA2(ap_NS_fsm1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(regslice_both_inStream_V_data_V_U_n_1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(tmp_dest_V_reg_2220),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_valOut_data_V_fu_178_p2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_valOut_data_V_fu_178_p2_OVERFLOW_UNCONNECTED),
        .P({valOut_data_V_fu_178_p2_n_58,valOut_data_V_fu_178_p2_n_59,valOut_data_V_fu_178_p2_n_60,valOut_data_V_fu_178_p2_n_61,valOut_data_V_fu_178_p2_n_62,valOut_data_V_fu_178_p2_n_63,valOut_data_V_fu_178_p2_n_64,valOut_data_V_fu_178_p2_n_65,valOut_data_V_fu_178_p2_n_66,valOut_data_V_fu_178_p2_n_67,valOut_data_V_fu_178_p2_n_68,valOut_data_V_fu_178_p2_n_69,valOut_data_V_fu_178_p2_n_70,valOut_data_V_fu_178_p2_n_71,valOut_data_V_fu_178_p2_n_72,valOut_data_V_fu_178_p2_n_73,valOut_data_V_fu_178_p2_n_74,valOut_data_V_fu_178_p2_n_75,valOut_data_V_fu_178_p2_n_76,valOut_data_V_fu_178_p2_n_77,valOut_data_V_fu_178_p2_n_78,valOut_data_V_fu_178_p2_n_79,valOut_data_V_fu_178_p2_n_80,valOut_data_V_fu_178_p2_n_81,valOut_data_V_fu_178_p2_n_82,valOut_data_V_fu_178_p2_n_83,valOut_data_V_fu_178_p2_n_84,valOut_data_V_fu_178_p2_n_85,valOut_data_V_fu_178_p2_n_86,valOut_data_V_fu_178_p2_n_87,valOut_data_V_fu_178_p2_n_88,valOut_data_V_fu_178_p2_n_89,valOut_data_V_fu_178_p2_n_90,valOut_data_V_fu_178_p2_n_91,valOut_data_V_fu_178_p2_n_92,valOut_data_V_fu_178_p2_n_93,valOut_data_V_fu_178_p2_n_94,valOut_data_V_fu_178_p2_n_95,valOut_data_V_fu_178_p2_n_96,valOut_data_V_fu_178_p2_n_97,valOut_data_V_fu_178_p2_n_98,valOut_data_V_fu_178_p2_n_99,valOut_data_V_fu_178_p2_n_100,valOut_data_V_fu_178_p2_n_101,valOut_data_V_fu_178_p2_n_102,valOut_data_V_fu_178_p2_n_103,valOut_data_V_fu_178_p2_n_104,valOut_data_V_fu_178_p2_n_105}),
        .PATTERNBDETECT(NLW_valOut_data_V_fu_178_p2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_valOut_data_V_fu_178_p2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({valOut_data_V_fu_178_p2_n_106,valOut_data_V_fu_178_p2_n_107,valOut_data_V_fu_178_p2_n_108,valOut_data_V_fu_178_p2_n_109,valOut_data_V_fu_178_p2_n_110,valOut_data_V_fu_178_p2_n_111,valOut_data_V_fu_178_p2_n_112,valOut_data_V_fu_178_p2_n_113,valOut_data_V_fu_178_p2_n_114,valOut_data_V_fu_178_p2_n_115,valOut_data_V_fu_178_p2_n_116,valOut_data_V_fu_178_p2_n_117,valOut_data_V_fu_178_p2_n_118,valOut_data_V_fu_178_p2_n_119,valOut_data_V_fu_178_p2_n_120,valOut_data_V_fu_178_p2_n_121,valOut_data_V_fu_178_p2_n_122,valOut_data_V_fu_178_p2_n_123,valOut_data_V_fu_178_p2_n_124,valOut_data_V_fu_178_p2_n_125,valOut_data_V_fu_178_p2_n_126,valOut_data_V_fu_178_p2_n_127,valOut_data_V_fu_178_p2_n_128,valOut_data_V_fu_178_p2_n_129,valOut_data_V_fu_178_p2_n_130,valOut_data_V_fu_178_p2_n_131,valOut_data_V_fu_178_p2_n_132,valOut_data_V_fu_178_p2_n_133,valOut_data_V_fu_178_p2_n_134,valOut_data_V_fu_178_p2_n_135,valOut_data_V_fu_178_p2_n_136,valOut_data_V_fu_178_p2_n_137,valOut_data_V_fu_178_p2_n_138,valOut_data_V_fu_178_p2_n_139,valOut_data_V_fu_178_p2_n_140,valOut_data_V_fu_178_p2_n_141,valOut_data_V_fu_178_p2_n_142,valOut_data_V_fu_178_p2_n_143,valOut_data_V_fu_178_p2_n_144,valOut_data_V_fu_178_p2_n_145,valOut_data_V_fu_178_p2_n_146,valOut_data_V_fu_178_p2_n_147,valOut_data_V_fu_178_p2_n_148,valOut_data_V_fu_178_p2_n_149,valOut_data_V_fu_178_p2_n_150,valOut_data_V_fu_178_p2_n_151,valOut_data_V_fu_178_p2_n_152,valOut_data_V_fu_178_p2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(ARESET),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_valOut_data_V_fu_178_p2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    valOut_data_V_fu_178_p2__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,regslice_both_inStream_V_data_V_U_n_2,regslice_both_inStream_V_data_V_U_n_3,regslice_both_inStream_V_data_V_U_n_4,regslice_both_inStream_V_data_V_U_n_5,regslice_both_inStream_V_data_V_U_n_6,regslice_both_inStream_V_data_V_U_n_7,regslice_both_inStream_V_data_V_U_n_8,regslice_both_inStream_V_data_V_U_n_9,regslice_both_inStream_V_data_V_U_n_10,regslice_both_inStream_V_data_V_U_n_11,regslice_both_inStream_V_data_V_U_n_12,regslice_both_inStream_V_data_V_U_n_13,regslice_both_inStream_V_data_V_U_n_14,regslice_both_inStream_V_data_V_U_n_15,regslice_both_inStream_V_data_V_U_n_16,regslice_both_inStream_V_data_V_U_n_17,regslice_both_inStream_V_data_V_U_n_18}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({valOut_data_V_fu_178_p2__0_n_24,valOut_data_V_fu_178_p2__0_n_25,valOut_data_V_fu_178_p2__0_n_26,valOut_data_V_fu_178_p2__0_n_27,valOut_data_V_fu_178_p2__0_n_28,valOut_data_V_fu_178_p2__0_n_29,valOut_data_V_fu_178_p2__0_n_30,valOut_data_V_fu_178_p2__0_n_31,valOut_data_V_fu_178_p2__0_n_32,valOut_data_V_fu_178_p2__0_n_33,valOut_data_V_fu_178_p2__0_n_34,valOut_data_V_fu_178_p2__0_n_35,valOut_data_V_fu_178_p2__0_n_36,valOut_data_V_fu_178_p2__0_n_37,valOut_data_V_fu_178_p2__0_n_38,valOut_data_V_fu_178_p2__0_n_39,valOut_data_V_fu_178_p2__0_n_40,valOut_data_V_fu_178_p2__0_n_41,valOut_data_V_fu_178_p2__0_n_42,valOut_data_V_fu_178_p2__0_n_43,valOut_data_V_fu_178_p2__0_n_44,valOut_data_V_fu_178_p2__0_n_45,valOut_data_V_fu_178_p2__0_n_46,valOut_data_V_fu_178_p2__0_n_47,valOut_data_V_fu_178_p2__0_n_48,valOut_data_V_fu_178_p2__0_n_49,valOut_data_V_fu_178_p2__0_n_50,valOut_data_V_fu_178_p2__0_n_51,valOut_data_V_fu_178_p2__0_n_52,valOut_data_V_fu_178_p2__0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\or [16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_valOut_data_V_fu_178_p2__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_valOut_data_V_fu_178_p2__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_valOut_data_V_fu_178_p2__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(regslice_both_inStream_V_data_V_U_n_1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(p_0_in11_out),
        .CEB2(ap_NS_fsm1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_valOut_data_V_fu_178_p2__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_valOut_data_V_fu_178_p2__0_OVERFLOW_UNCONNECTED),
        .P({valOut_data_V_fu_178_p2__0_n_58,valOut_data_V_fu_178_p2__0_n_59,valOut_data_V_fu_178_p2__0_n_60,valOut_data_V_fu_178_p2__0_n_61,valOut_data_V_fu_178_p2__0_n_62,valOut_data_V_fu_178_p2__0_n_63,valOut_data_V_fu_178_p2__0_n_64,valOut_data_V_fu_178_p2__0_n_65,valOut_data_V_fu_178_p2__0_n_66,valOut_data_V_fu_178_p2__0_n_67,valOut_data_V_fu_178_p2__0_n_68,valOut_data_V_fu_178_p2__0_n_69,valOut_data_V_fu_178_p2__0_n_70,valOut_data_V_fu_178_p2__0_n_71,valOut_data_V_fu_178_p2__0_n_72,valOut_data_V_fu_178_p2__0_n_73,valOut_data_V_fu_178_p2__0_n_74,valOut_data_V_fu_178_p2__0_n_75,valOut_data_V_fu_178_p2__0_n_76,valOut_data_V_fu_178_p2__0_n_77,valOut_data_V_fu_178_p2__0_n_78,valOut_data_V_fu_178_p2__0_n_79,valOut_data_V_fu_178_p2__0_n_80,valOut_data_V_fu_178_p2__0_n_81,valOut_data_V_fu_178_p2__0_n_82,valOut_data_V_fu_178_p2__0_n_83,valOut_data_V_fu_178_p2__0_n_84,valOut_data_V_fu_178_p2__0_n_85,valOut_data_V_fu_178_p2__0_n_86,valOut_data_V_fu_178_p2__0_n_87,valOut_data_V_fu_178_p2__0_n_88,valOut_data_V_fu_178_p2__0_n_89,valOut_data_V_fu_178_p2__0_n_90,valOut_data_V_fu_178_p2__0_n_91,valOut_data_V_fu_178_p2__0_n_92,valOut_data_V_fu_178_p2__0_n_93,valOut_data_V_fu_178_p2__0_n_94,valOut_data_V_fu_178_p2__0_n_95,valOut_data_V_fu_178_p2__0_n_96,valOut_data_V_fu_178_p2__0_n_97,valOut_data_V_fu_178_p2__0_n_98,valOut_data_V_fu_178_p2__0_n_99,valOut_data_V_fu_178_p2__0_n_100,valOut_data_V_fu_178_p2__0_n_101,valOut_data_V_fu_178_p2__0_n_102,valOut_data_V_fu_178_p2__0_n_103,valOut_data_V_fu_178_p2__0_n_104,valOut_data_V_fu_178_p2__0_n_105}),
        .PATTERNBDETECT(NLW_valOut_data_V_fu_178_p2__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_valOut_data_V_fu_178_p2__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({valOut_data_V_fu_178_p2__0_n_106,valOut_data_V_fu_178_p2__0_n_107,valOut_data_V_fu_178_p2__0_n_108,valOut_data_V_fu_178_p2__0_n_109,valOut_data_V_fu_178_p2__0_n_110,valOut_data_V_fu_178_p2__0_n_111,valOut_data_V_fu_178_p2__0_n_112,valOut_data_V_fu_178_p2__0_n_113,valOut_data_V_fu_178_p2__0_n_114,valOut_data_V_fu_178_p2__0_n_115,valOut_data_V_fu_178_p2__0_n_116,valOut_data_V_fu_178_p2__0_n_117,valOut_data_V_fu_178_p2__0_n_118,valOut_data_V_fu_178_p2__0_n_119,valOut_data_V_fu_178_p2__0_n_120,valOut_data_V_fu_178_p2__0_n_121,valOut_data_V_fu_178_p2__0_n_122,valOut_data_V_fu_178_p2__0_n_123,valOut_data_V_fu_178_p2__0_n_124,valOut_data_V_fu_178_p2__0_n_125,valOut_data_V_fu_178_p2__0_n_126,valOut_data_V_fu_178_p2__0_n_127,valOut_data_V_fu_178_p2__0_n_128,valOut_data_V_fu_178_p2__0_n_129,valOut_data_V_fu_178_p2__0_n_130,valOut_data_V_fu_178_p2__0_n_131,valOut_data_V_fu_178_p2__0_n_132,valOut_data_V_fu_178_p2__0_n_133,valOut_data_V_fu_178_p2__0_n_134,valOut_data_V_fu_178_p2__0_n_135,valOut_data_V_fu_178_p2__0_n_136,valOut_data_V_fu_178_p2__0_n_137,valOut_data_V_fu_178_p2__0_n_138,valOut_data_V_fu_178_p2__0_n_139,valOut_data_V_fu_178_p2__0_n_140,valOut_data_V_fu_178_p2__0_n_141,valOut_data_V_fu_178_p2__0_n_142,valOut_data_V_fu_178_p2__0_n_143,valOut_data_V_fu_178_p2__0_n_144,valOut_data_V_fu_178_p2__0_n_145,valOut_data_V_fu_178_p2__0_n_146,valOut_data_V_fu_178_p2__0_n_147,valOut_data_V_fu_178_p2__0_n_148,valOut_data_V_fu_178_p2__0_n_149,valOut_data_V_fu_178_p2__0_n_150,valOut_data_V_fu_178_p2__0_n_151,valOut_data_V_fu_178_p2__0_n_152,valOut_data_V_fu_178_p2__0_n_153}),
        .RSTA(ARESET),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_valOut_data_V_fu_178_p2__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    valOut_data_V_reg_227_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({valOut_data_V_fu_178_p2__0_n_24,valOut_data_V_fu_178_p2__0_n_25,valOut_data_V_fu_178_p2__0_n_26,valOut_data_V_fu_178_p2__0_n_27,valOut_data_V_fu_178_p2__0_n_28,valOut_data_V_fu_178_p2__0_n_29,valOut_data_V_fu_178_p2__0_n_30,valOut_data_V_fu_178_p2__0_n_31,valOut_data_V_fu_178_p2__0_n_32,valOut_data_V_fu_178_p2__0_n_33,valOut_data_V_fu_178_p2__0_n_34,valOut_data_V_fu_178_p2__0_n_35,valOut_data_V_fu_178_p2__0_n_36,valOut_data_V_fu_178_p2__0_n_37,valOut_data_V_fu_178_p2__0_n_38,valOut_data_V_fu_178_p2__0_n_39,valOut_data_V_fu_178_p2__0_n_40,valOut_data_V_fu_178_p2__0_n_41,valOut_data_V_fu_178_p2__0_n_42,valOut_data_V_fu_178_p2__0_n_43,valOut_data_V_fu_178_p2__0_n_44,valOut_data_V_fu_178_p2__0_n_45,valOut_data_V_fu_178_p2__0_n_46,valOut_data_V_fu_178_p2__0_n_47,valOut_data_V_fu_178_p2__0_n_48,valOut_data_V_fu_178_p2__0_n_49,valOut_data_V_fu_178_p2__0_n_50,valOut_data_V_fu_178_p2__0_n_51,valOut_data_V_fu_178_p2__0_n_52,valOut_data_V_fu_178_p2__0_n_53}),
        .ACOUT(NLW_valOut_data_V_reg_227_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\or [31],\or [31],\or [31],\or [31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_valOut_data_V_reg_227_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_valOut_data_V_reg_227_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_valOut_data_V_reg_227_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(p_0_in11_out),
        .CEB2(ap_NS_fsm1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(tmp_dest_V_reg_2220),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_valOut_data_V_reg_227_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_valOut_data_V_reg_227_reg_OVERFLOW_UNCONNECTED),
        .P({valOut_data_V_reg_227_reg_n_58,valOut_data_V_reg_227_reg_n_59,valOut_data_V_reg_227_reg_n_60,valOut_data_V_reg_227_reg_n_61,valOut_data_V_reg_227_reg_n_62,valOut_data_V_reg_227_reg_n_63,valOut_data_V_reg_227_reg_n_64,valOut_data_V_reg_227_reg_n_65,valOut_data_V_reg_227_reg_n_66,valOut_data_V_reg_227_reg_n_67,valOut_data_V_reg_227_reg_n_68,valOut_data_V_reg_227_reg_n_69,valOut_data_V_reg_227_reg_n_70,valOut_data_V_reg_227_reg_n_71,valOut_data_V_reg_227_reg_n_72,valOut_data_V_reg_227_reg_n_73,valOut_data_V_reg_227_reg_n_74,valOut_data_V_reg_227_reg_n_75,valOut_data_V_reg_227_reg_n_76,valOut_data_V_reg_227_reg_n_77,valOut_data_V_reg_227_reg_n_78,valOut_data_V_reg_227_reg_n_79,valOut_data_V_reg_227_reg_n_80,valOut_data_V_reg_227_reg_n_81,valOut_data_V_reg_227_reg_n_82,valOut_data_V_reg_227_reg_n_83,valOut_data_V_reg_227_reg_n_84,valOut_data_V_reg_227_reg_n_85,valOut_data_V_reg_227_reg_n_86,valOut_data_V_reg_227_reg_n_87,valOut_data_V_reg_227_reg_n_88,valOut_data_V_reg_227_reg_n_89,valOut_data_V_reg_227_reg_n_90,valOut_data_V_reg_227_reg_n_91,valOut_data_V_reg_227_reg_n_92,valOut_data_V_reg_227_reg_n_93,valOut_data_V_reg_227_reg_n_94,valOut_data_V_reg_227_reg_n_95,valOut_data_V_reg_227_reg_n_96,valOut_data_V_reg_227_reg_n_97,valOut_data_V_reg_227_reg_n_98,valOut_data_V_reg_227_reg_n_99,valOut_data_V_reg_227_reg_n_100,valOut_data_V_reg_227_reg_n_101,valOut_data_V_reg_227_reg_n_102,valOut_data_V_reg_227_reg_n_103,valOut_data_V_reg_227_reg_n_104,valOut_data_V_reg_227_reg_n_105}),
        .PATTERNBDETECT(NLW_valOut_data_V_reg_227_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_valOut_data_V_reg_227_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({valOut_data_V_fu_178_p2__0_n_106,valOut_data_V_fu_178_p2__0_n_107,valOut_data_V_fu_178_p2__0_n_108,valOut_data_V_fu_178_p2__0_n_109,valOut_data_V_fu_178_p2__0_n_110,valOut_data_V_fu_178_p2__0_n_111,valOut_data_V_fu_178_p2__0_n_112,valOut_data_V_fu_178_p2__0_n_113,valOut_data_V_fu_178_p2__0_n_114,valOut_data_V_fu_178_p2__0_n_115,valOut_data_V_fu_178_p2__0_n_116,valOut_data_V_fu_178_p2__0_n_117,valOut_data_V_fu_178_p2__0_n_118,valOut_data_V_fu_178_p2__0_n_119,valOut_data_V_fu_178_p2__0_n_120,valOut_data_V_fu_178_p2__0_n_121,valOut_data_V_fu_178_p2__0_n_122,valOut_data_V_fu_178_p2__0_n_123,valOut_data_V_fu_178_p2__0_n_124,valOut_data_V_fu_178_p2__0_n_125,valOut_data_V_fu_178_p2__0_n_126,valOut_data_V_fu_178_p2__0_n_127,valOut_data_V_fu_178_p2__0_n_128,valOut_data_V_fu_178_p2__0_n_129,valOut_data_V_fu_178_p2__0_n_130,valOut_data_V_fu_178_p2__0_n_131,valOut_data_V_fu_178_p2__0_n_132,valOut_data_V_fu_178_p2__0_n_133,valOut_data_V_fu_178_p2__0_n_134,valOut_data_V_fu_178_p2__0_n_135,valOut_data_V_fu_178_p2__0_n_136,valOut_data_V_fu_178_p2__0_n_137,valOut_data_V_fu_178_p2__0_n_138,valOut_data_V_fu_178_p2__0_n_139,valOut_data_V_fu_178_p2__0_n_140,valOut_data_V_fu_178_p2__0_n_141,valOut_data_V_fu_178_p2__0_n_142,valOut_data_V_fu_178_p2__0_n_143,valOut_data_V_fu_178_p2__0_n_144,valOut_data_V_fu_178_p2__0_n_145,valOut_data_V_fu_178_p2__0_n_146,valOut_data_V_fu_178_p2__0_n_147,valOut_data_V_fu_178_p2__0_n_148,valOut_data_V_fu_178_p2__0_n_149,valOut_data_V_fu_178_p2__0_n_150,valOut_data_V_fu_178_p2__0_n_151,valOut_data_V_fu_178_p2__0_n_152,valOut_data_V_fu_178_p2__0_n_153}),
        .PCOUT(NLW_valOut_data_V_reg_227_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_valOut_data_V_reg_227_reg_UNDERFLOW_UNCONNECTED));
  FDRE \valOut_data_V_reg_227_reg[0]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_105),
        .Q(\valOut_data_V_reg_227_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[10]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_95),
        .Q(\valOut_data_V_reg_227_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[11]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_94),
        .Q(\valOut_data_V_reg_227_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[12]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_93),
        .Q(\valOut_data_V_reg_227_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[13]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_92),
        .Q(\valOut_data_V_reg_227_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[14]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_91),
        .Q(\valOut_data_V_reg_227_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[15]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_90),
        .Q(\valOut_data_V_reg_227_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[16]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_89),
        .Q(\valOut_data_V_reg_227_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[1]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_104),
        .Q(\valOut_data_V_reg_227_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[2]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_103),
        .Q(\valOut_data_V_reg_227_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[3]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_102),
        .Q(\valOut_data_V_reg_227_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[4]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_101),
        .Q(\valOut_data_V_reg_227_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[5]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_100),
        .Q(\valOut_data_V_reg_227_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[6]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_99),
        .Q(\valOut_data_V_reg_227_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[7]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_98),
        .Q(\valOut_data_V_reg_227_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[8]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_97),
        .Q(\valOut_data_V_reg_227_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \valOut_data_V_reg_227_reg[9]__0 
       (.C(ap_clk),
        .CE(tmp_dest_V_reg_2220),
        .D(valOut_data_V_fu_178_p2__0_n_96),
        .Q(\valOut_data_V_reg_227_reg[9]__0_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "doGain_CTRL_s_axi" *) 
module design_1_doGain_0_0_doGain_CTRL_s_axi
   (\FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    p_0_in11_out,
    \FSM_onehot_wstate_reg[2]_0 ,
    ap_start,
    \int_ier_reg[0]_0 ,
    p_0_in,
    SR,
    ap_enable_reg_pp0_iter0_reg,
    ap_NS_fsm1,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_RVALID,
    \or ,
    interrupt,
    s_axi_CTRL_RDATA,
    ARESET,
    ap_clk,
    ap_done,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_ARADDR,
    Q,
    ack_out,
    ap_enable_reg_pp0_iter0,
    ap_rst_n,
    icmp_ln12_reg_1880,
    icmp_ln12_fu_138_p2,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_RREADY,
    s_axi_CTRL_AWADDR,
    int_isr7_out,
    int_isr);
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output p_0_in11_out;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output ap_start;
  output \int_ier_reg[0]_0 ;
  output p_0_in;
  output [0:0]SR;
  output ap_enable_reg_pp0_iter0_reg;
  output ap_NS_fsm1;
  output s_axi_CTRL_BVALID;
  output s_axi_CTRL_RVALID;
  output [31:0]\or ;
  output interrupt;
  output [31:0]s_axi_CTRL_RDATA;
  input ARESET;
  input ap_clk;
  input ap_done;
  input s_axi_CTRL_ARVALID;
  input s_axi_CTRL_AWVALID;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  input [4:0]s_axi_CTRL_ARADDR;
  input [0:0]Q;
  input ack_out;
  input ap_enable_reg_pp0_iter0;
  input ap_rst_n;
  input icmp_ln12_reg_1880;
  input icmp_ln12_fu_138_p2;
  input s_axi_CTRL_BREADY;
  input s_axi_CTRL_RREADY;
  input [4:0]s_axi_CTRL_AWADDR;
  input int_isr7_out;
  input int_isr;

  wire ARESET;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire [31:0]gain;
  wire icmp_ln12_fu_138_p2;
  wire icmp_ln12_reg_1880;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire \int_gain[31]_i_3_n_0 ;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg[0]_0 ;
  wire int_isr;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire interrupt;
  wire [31:0]\or ;
  wire p_0_in;
  wire p_0_in11_out;
  wire p_1_in;
  wire [7:0]rdata_data;
  wire \rdata_data[0]_i_2_n_0 ;
  wire \rdata_data[1]_i_2_n_0 ;
  wire \rdata_data[31]_i_1_n_0 ;
  wire \rdata_data[7]_i_2_n_0 ;
  wire [2:1]rnext;
  wire [4:0]s_axi_CTRL_ARADDR;
  wire s_axi_CTRL_ARVALID;
  wire [4:0]s_axi_CTRL_AWADDR;
  wire s_axi_CTRL_AWVALID;
  wire s_axi_CTRL_BREADY;
  wire s_axi_CTRL_BVALID;
  wire [31:0]s_axi_CTRL_RDATA;
  wire s_axi_CTRL_RREADY;
  wire s_axi_CTRL_RVALID;
  wire [31:0]s_axi_CTRL_WDATA;
  wire [3:0]s_axi_CTRL_WSTRB;
  wire s_axi_CTRL_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF727)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_ARVALID),
        .I2(s_axi_CTRL_RVALID),
        .I3(s_axi_CTRL_RREADY),
        .O(rnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_CTRL_RREADY),
        .I1(s_axi_CTRL_RVALID),
        .I2(s_axi_CTRL_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_CTRL_RVALID),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_CTRL_AWVALID),
        .I3(s_axi_CTRL_BREADY),
        .I4(s_axi_CTRL_BVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_CTRL_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_CTRL_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_CTRL_BREADY),
        .I1(s_axi_CTRL_BVALID),
        .I2(s_axi_CTRL_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_CTRL_BVALID),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000EA00EA00EA00)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_start),
        .I2(Q),
        .I3(ap_rst_n),
        .I4(icmp_ln12_reg_1880),
        .I5(icmp_ln12_fu_138_p2),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT3 #(
    .INIT(8'h08)) 
    \idx_0_reg_127[9]_i_1 
       (.I0(Q),
        .I1(ap_start),
        .I2(ack_out),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFF0000)) 
    int_ap_done_i_1
       (.I0(ar_hs),
        .I1(s_axi_CTRL_ARADDR[4]),
        .I2(int_ap_done_i_2_n_0),
        .I3(\rdata_data[7]_i_2_n_0 ),
        .I4(ap_done),
        .I5(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_done_i_2
       (.I0(s_axi_CTRL_ARADDR[3]),
        .I1(s_axi_CTRL_ARADDR[2]),
        .O(int_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(ARESET));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done),
        .Q(int_ap_ready),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    int_ap_start_i_2
       (.I0(\int_ier[1]_i_2_n_0 ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_CTRL_WDATA[0]),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_auto_restart),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(ARESET));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[0]),
        .O(\or [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[10]_i_1 
       (.I0(s_axi_CTRL_WDATA[10]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[10]),
        .O(\or [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[11]_i_1 
       (.I0(s_axi_CTRL_WDATA[11]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[11]),
        .O(\or [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[12]_i_1 
       (.I0(s_axi_CTRL_WDATA[12]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[12]),
        .O(\or [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[13]_i_1 
       (.I0(s_axi_CTRL_WDATA[13]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[13]),
        .O(\or [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[14]_i_1 
       (.I0(s_axi_CTRL_WDATA[14]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[14]),
        .O(\or [14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[15]_i_1 
       (.I0(s_axi_CTRL_WDATA[15]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[15]),
        .O(\or [15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[16]_i_1 
       (.I0(s_axi_CTRL_WDATA[16]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[16]),
        .O(\or [16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[17]_i_1 
       (.I0(s_axi_CTRL_WDATA[17]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[17]),
        .O(\or [17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[18]_i_1 
       (.I0(s_axi_CTRL_WDATA[18]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[18]),
        .O(\or [18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[19]_i_1 
       (.I0(s_axi_CTRL_WDATA[19]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[19]),
        .O(\or [19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[1]),
        .O(\or [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[20]_i_1 
       (.I0(s_axi_CTRL_WDATA[20]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[20]),
        .O(\or [20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[21]_i_1 
       (.I0(s_axi_CTRL_WDATA[21]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[21]),
        .O(\or [21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[22]_i_1 
       (.I0(s_axi_CTRL_WDATA[22]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[22]),
        .O(\or [22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[23]_i_1 
       (.I0(s_axi_CTRL_WDATA[23]),
        .I1(s_axi_CTRL_WSTRB[2]),
        .I2(gain[23]),
        .O(\or [23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[24]_i_1 
       (.I0(s_axi_CTRL_WDATA[24]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[24]),
        .O(\or [24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[25]_i_1 
       (.I0(s_axi_CTRL_WDATA[25]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[25]),
        .O(\or [25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[26]_i_1 
       (.I0(s_axi_CTRL_WDATA[26]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[26]),
        .O(\or [26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[27]_i_1 
       (.I0(s_axi_CTRL_WDATA[27]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[27]),
        .O(\or [27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[28]_i_1 
       (.I0(s_axi_CTRL_WDATA[28]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[28]),
        .O(\or [28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[29]_i_1 
       (.I0(s_axi_CTRL_WDATA[29]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[29]),
        .O(\or [29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[2]_i_1 
       (.I0(s_axi_CTRL_WDATA[2]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[2]),
        .O(\or [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[30]_i_1 
       (.I0(s_axi_CTRL_WDATA[30]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[30]),
        .O(\or [30]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_gain[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_gain[31]_i_3_n_0 ),
        .O(p_0_in11_out));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[31]_i_2 
       (.I0(s_axi_CTRL_WDATA[31]),
        .I1(s_axi_CTRL_WSTRB[3]),
        .I2(gain[31]),
        .O(\or [31]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_gain[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(s_axi_CTRL_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[0] ),
        .O(\int_gain[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[3]_i_1 
       (.I0(s_axi_CTRL_WDATA[3]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[3]),
        .O(\or [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[4]_i_1 
       (.I0(s_axi_CTRL_WDATA[4]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[4]),
        .O(\or [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[5]_i_1 
       (.I0(s_axi_CTRL_WDATA[5]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[5]),
        .O(\or [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[6]_i_1 
       (.I0(s_axi_CTRL_WDATA[6]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[6]),
        .O(\or [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[7]_i_1 
       (.I0(s_axi_CTRL_WDATA[7]),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(gain[7]),
        .O(\or [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[8]_i_1 
       (.I0(s_axi_CTRL_WDATA[8]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[8]),
        .O(\or [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_gain[9]_i_1 
       (.I0(s_axi_CTRL_WDATA[9]),
        .I1(s_axi_CTRL_WSTRB[1]),
        .I2(gain[9]),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [0]),
        .Q(gain[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [10]),
        .Q(gain[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [11]),
        .Q(gain[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [12]),
        .Q(gain[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [13]),
        .Q(gain[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [14]),
        .Q(gain[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [15]),
        .Q(gain[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [16]),
        .Q(gain[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [17]),
        .Q(gain[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [18]),
        .Q(gain[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [19]),
        .Q(gain[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [1]),
        .Q(gain[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [20]),
        .Q(gain[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [21]),
        .Q(gain[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [22]),
        .Q(gain[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [23]),
        .Q(gain[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [24]),
        .Q(gain[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [25]),
        .Q(gain[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [26]),
        .Q(gain[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [27]),
        .Q(gain[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [28]),
        .Q(gain[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [29]),
        .Q(gain[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [2]),
        .Q(gain[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [30]),
        .Q(gain[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [31]),
        .Q(gain[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [3]),
        .Q(gain[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [4]),
        .Q(gain[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [5]),
        .Q(gain[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [6]),
        .Q(gain[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [7]),
        .Q(gain[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [8]),
        .Q(gain[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_gain_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in11_out),
        .D(\or [9]),
        .Q(gain[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg[0]_0 ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(s_axi_CTRL_WSTRB[0]),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(s_axi_CTRL_WVALID),
        .I5(\waddr_reg_n_0_[1] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg[0]_0 ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_isr7_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_WDATA[1]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_isr),
        .I5(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(ARESET));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'h00AA0CAA00000000)) 
    \rdata_data[0]_i_1 
       (.I0(\rdata_data[0]_i_2_n_0 ),
        .I1(gain[0]),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(\rdata_data[7]_i_2_n_0 ),
        .O(rdata_data[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata_data[0]_i_2 
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[3]),
        .I4(ap_start),
        .I5(\int_ier_reg[0]_0 ),
        .O(\rdata_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA0CAA00000000)) 
    \rdata_data[1]_i_1 
       (.I0(\rdata_data[1]_i_2_n_0 ),
        .I1(gain[1]),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(\rdata_data[7]_i_2_n_0 ),
        .O(rdata_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \rdata_data[1]_i_2 
       (.I0(int_ap_done),
        .I1(p_0_in),
        .I2(s_axi_CTRL_ARADDR[2]),
        .I3(s_axi_CTRL_ARADDR[3]),
        .I4(p_1_in),
        .O(\rdata_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \rdata_data[2]_i_1 
       (.I0(int_ap_idle),
        .I1(gain[2]),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(\rdata_data[7]_i_2_n_0 ),
        .O(rdata_data[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \rdata_data[31]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_CTRL_ARADDR[1]),
        .I2(s_axi_CTRL_ARADDR[0]),
        .I3(s_axi_CTRL_ARADDR[2]),
        .I4(s_axi_CTRL_ARADDR[4]),
        .I5(s_axi_CTRL_ARADDR[3]),
        .O(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[31]_i_2 
       (.I0(s_axi_CTRL_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \rdata_data[3]_i_1 
       (.I0(int_ap_ready),
        .I1(gain[3]),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(\rdata_data[7]_i_2_n_0 ),
        .O(rdata_data[3]));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \rdata_data[7]_i_1 
       (.I0(int_auto_restart),
        .I1(gain[7]),
        .I2(s_axi_CTRL_ARADDR[3]),
        .I3(s_axi_CTRL_ARADDR[4]),
        .I4(s_axi_CTRL_ARADDR[2]),
        .I5(\rdata_data[7]_i_2_n_0 ),
        .O(rdata_data[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \rdata_data[7]_i_2 
       (.I0(s_axi_CTRL_ARADDR[1]),
        .I1(s_axi_CTRL_ARADDR[0]),
        .O(\rdata_data[7]_i_2_n_0 ));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[0]),
        .Q(s_axi_CTRL_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[10]),
        .Q(s_axi_CTRL_RDATA[10]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[11]),
        .Q(s_axi_CTRL_RDATA[11]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[12]),
        .Q(s_axi_CTRL_RDATA[12]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[13]),
        .Q(s_axi_CTRL_RDATA[13]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[14]),
        .Q(s_axi_CTRL_RDATA[14]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[15]),
        .Q(s_axi_CTRL_RDATA[15]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[16]),
        .Q(s_axi_CTRL_RDATA[16]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[17]),
        .Q(s_axi_CTRL_RDATA[17]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[18]),
        .Q(s_axi_CTRL_RDATA[18]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[19]),
        .Q(s_axi_CTRL_RDATA[19]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[1]),
        .Q(s_axi_CTRL_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[20]),
        .Q(s_axi_CTRL_RDATA[20]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[21]),
        .Q(s_axi_CTRL_RDATA[21]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[22]),
        .Q(s_axi_CTRL_RDATA[22]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[23]),
        .Q(s_axi_CTRL_RDATA[23]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[24]),
        .Q(s_axi_CTRL_RDATA[24]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[25]),
        .Q(s_axi_CTRL_RDATA[25]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[26]),
        .Q(s_axi_CTRL_RDATA[26]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[27]),
        .Q(s_axi_CTRL_RDATA[27]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[28]),
        .Q(s_axi_CTRL_RDATA[28]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[29]),
        .Q(s_axi_CTRL_RDATA[29]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[2]),
        .Q(s_axi_CTRL_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[30]),
        .Q(s_axi_CTRL_RDATA[30]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[31]),
        .Q(s_axi_CTRL_RDATA[31]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[3]),
        .Q(s_axi_CTRL_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[4]),
        .Q(s_axi_CTRL_RDATA[4]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[5]),
        .Q(s_axi_CTRL_RDATA[5]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[6]),
        .Q(s_axi_CTRL_RDATA[6]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[7]),
        .Q(s_axi_CTRL_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[8]),
        .Q(s_axi_CTRL_RDATA[8]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(gain[9]),
        .Q(s_axi_CTRL_RDATA[9]),
        .R(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    valOut_data_V_fu_178_p2_i_1
       (.I0(ap_start),
        .I1(Q),
        .O(ap_NS_fsm1));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_CTRL_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both
   (vld_out,
    ap_rst_n_0,
    A,
    B,
    inStream_TREADY,
    ARESET,
    ap_clk,
    ap_rst_n,
    ack_out,
    D);
  output vld_out;
  output ap_rst_n_0;
  output [16:0]A;
  output [14:0]B;
  output inStream_TREADY;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input ack_out;
  input [32:0]D;

  wire [16:0]A;
  wire ARESET;
  wire [14:0]B;
  wire [32:0]D;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire inStream_TREADY;
  wire ireg01_out;
  wire obuf_inst_n_2;
  wire p_0_in;
  wire vld_out;

  design_1_doGain_0_0_xil_defaultlib_ibuf_22 ibuf_inst
       (.A(A),
        .B(B),
        .D(D),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TREADY(inStream_TREADY));
  design_1_doGain_0_0_xil_defaultlib_obuf_23 obuf_inst
       (.ARESET(ARESET),
        .D(D[32]),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_2),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .\odata_int_reg[32]_0 (vld_out));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both_1
   (ARESET,
    ap_enable_reg_pp0_iter0_reg,
    ap_enable_reg_pp0_iter1_reg,
    icmp_ln12_reg_1880,
    int_isr7_out,
    int_isr,
    D,
    ap_done,
    ack_out,
    E,
    \icmp_ln12_reg_188_reg[0] ,
    \odata_int_reg[32] ,
    \icmp_ln12_reg_188_reg[0]_0 ,
    \icmp_ln12_reg_188_reg[0]_1 ,
    ap_clk,
    ap_enable_reg_pp0_iter0,
    \odata_int_reg[32]_0 ,
    ap_rst_n,
    icmp_ln12_fu_138_p2,
    ap_enable_reg_pp0_iter2_reg,
    Q,
    ap_start,
    outStream_TREADY,
    \count_reg[0]_0 ,
    icmp_ln12_reg_188,
    \int_isr_reg[0] ,
    p_0_in,
    \idx_0_reg_127_reg[0] ,
    \idx_0_reg_127_reg[0]_0 ,
    vld_out,
    \idx_0_reg_127[9]_i_4 ,
    icmp_ln12_reg_188_pp0_iter1_reg,
    P,
    \ireg_reg[31] ,
    \ireg_reg[19] );
  output ARESET;
  output ap_enable_reg_pp0_iter0_reg;
  output ap_enable_reg_pp0_iter1_reg;
  output icmp_ln12_reg_1880;
  output int_isr7_out;
  output int_isr;
  output [2:0]D;
  output ap_done;
  output ack_out;
  output [0:0]E;
  output [0:0]\icmp_ln12_reg_188_reg[0] ;
  output [32:0]\odata_int_reg[32] ;
  output \icmp_ln12_reg_188_reg[0]_0 ;
  output \icmp_ln12_reg_188_reg[0]_1 ;
  input ap_clk;
  input ap_enable_reg_pp0_iter0;
  input \odata_int_reg[32]_0 ;
  input ap_rst_n;
  input icmp_ln12_fu_138_p2;
  input ap_enable_reg_pp0_iter2_reg;
  input [2:0]Q;
  input ap_start;
  input outStream_TREADY;
  input \count_reg[0]_0 ;
  input icmp_ln12_reg_188;
  input \int_isr_reg[0] ;
  input p_0_in;
  input \idx_0_reg_127_reg[0] ;
  input \idx_0_reg_127_reg[0]_0 ;
  input vld_out;
  input [3:0]\idx_0_reg_127[9]_i_4 ;
  input icmp_ln12_reg_188_pp0_iter1_reg;
  input [14:0]P;
  input [14:0]\ireg_reg[31] ;
  input [16:0]\ireg_reg[19] ;

  wire ARESET;
  wire [2:0]D;
  wire [0:0]E;
  wire [14:0]P;
  wire [2:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ap_start;
  wire [1:1]count;
  wire \count_reg[0]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
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
  wire ibuf_inst_n_40;
  wire ibuf_inst_n_41;
  wire ibuf_inst_n_42;
  wire ibuf_inst_n_43;
  wire icmp_ln12_fu_138_p2;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire icmp_ln12_reg_188_pp0_iter1_reg;
  wire [0:0]\icmp_ln12_reg_188_reg[0] ;
  wire \icmp_ln12_reg_188_reg[0]_0 ;
  wire \icmp_ln12_reg_188_reg[0]_1 ;
  wire [3:0]\idx_0_reg_127[9]_i_4 ;
  wire \idx_0_reg_127_reg[0] ;
  wire \idx_0_reg_127_reg[0]_0 ;
  wire int_isr;
  wire int_isr7_out;
  wire \int_isr_reg[0] ;
  wire ireg01_out;
  wire [16:0]\ireg_reg[19] ;
  wire [14:0]\ireg_reg[31] ;
  wire obuf_inst_n_0;
  wire obuf_inst_n_2;
  wire [32:0]\odata_int_reg[32] ;
  wire \odata_int_reg[32]_0 ;
  wire outStream_TREADY;
  wire p_0_in;
  wire p_0_in_0;
  wire vld_out;

  LUT6 #(
    .INIT(64'hA222FFFFA222A222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[2]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(outStream_TREADY),
        .I4(ap_start),
        .I5(Q[0]),
        .O(D[0]));
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
        .R(ARESET));
  design_1_doGain_0_0_xil_defaultlib_ibuf ibuf_inst
       (.D(D[2:1]),
        .E(E),
        .P(P),
        .Q(Q[1:0]),
        .SR(obuf_inst_n_2),
        .ack_out(ack_out),
        .\ap_CS_fsm_reg[1] (icmp_ln12_reg_1880),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ibuf_inst_n_2),
        .ap_start(ap_start),
        .count(count),
        .\count_reg[0] (\count_reg_n_0_[1] ),
        .\count_reg[0]_0 (\count_reg_n_0_[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .icmp_ln12_fu_138_p2(icmp_ln12_fu_138_p2),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_188_pp0_iter1_reg(icmp_ln12_reg_188_pp0_iter1_reg),
        .\icmp_ln12_reg_188_reg[0] (\icmp_ln12_reg_188_reg[0] ),
        .\icmp_ln12_reg_188_reg[0]_0 (\icmp_ln12_reg_188_reg[0]_0 ),
        .\icmp_ln12_reg_188_reg[0]_1 (\icmp_ln12_reg_188_reg[0]_1 ),
        .\idx_0_reg_127_reg[0] (\idx_0_reg_127_reg[0] ),
        .\idx_0_reg_127_reg[0]_0 (\idx_0_reg_127_reg[0]_0 ),
        .\idx_0_reg_127_reg[0]_1 (obuf_inst_n_0),
        .\ireg_reg[19]_0 (\ireg_reg[19] ),
        .\ireg_reg[31]_0 (\ireg_reg[31] ),
        .\ireg_reg[32]_0 (p_0_in_0),
        .\ireg_reg[32]_1 ({ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39,ibuf_inst_n_40,ibuf_inst_n_41,ibuf_inst_n_42,ibuf_inst_n_43}),
        .\ireg_reg[32]_2 (ireg01_out),
        .\odata_int_reg[32] (\odata_int_reg[32]_0 ),
        .outStream_TREADY(outStream_TREADY),
        .vld_out(vld_out));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    int_ap_ready_i_1
       (.I0(Q[2]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(outStream_TREADY),
        .O(ap_done));
  LUT5 #(
    .INIT(32'h8F000000)) 
    \int_isr[0]_i_2 
       (.I0(outStream_TREADY),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(Q[2]),
        .I4(\int_isr_reg[0] ),
        .O(int_isr7_out));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h8F000000)) 
    \int_isr[1]_i_2 
       (.I0(outStream_TREADY),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(Q[2]),
        .I4(p_0_in),
        .O(int_isr));
  design_1_doGain_0_0_xil_defaultlib_obuf obuf_inst
       (.D({ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39,ibuf_inst_n_40,ibuf_inst_n_41,ibuf_inst_n_42,ibuf_inst_n_43}),
        .Q(\odata_int_reg[32] ),
        .SR(ARESET),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\idx_0_reg_127[9]_i_4 (\idx_0_reg_127[9]_i_4 ),
        .\idx_0_reg_127_reg[9] (obuf_inst_n_0),
        .\ireg_reg[32] (p_0_in_0),
        .\odata_int_reg[32]_0 (ireg01_out),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TREADY_0(obuf_inst_n_2));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized1
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TKEEP,
    ap_clk,
    ARESET);
  output [3:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [3:0]inStream_TKEEP;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [3:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire [3:0]inStream_TKEEP;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0_16 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .\ireg_reg[4]_0 ({inStream_TVALID,inStream_TKEEP}));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0_17 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[3]_0 (Q));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized1_0
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TSTRB,
    ap_clk,
    ARESET);
  output [3:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [3:0]inStream_TSTRB;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [3:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire [3:0]inStream_TSTRB;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0_12 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .\ireg_reg[4]_0 ({inStream_TVALID,inStream_TSTRB}));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0_13 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[3]_0 (Q));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized1_4
   (outStream_TKEEP,
    outStream_TREADY,
    ap_rst_n,
    icmp_ln12_reg_188,
    \odata_int_reg[4] ,
    icmp_ln12_reg_1880,
    D,
    ap_clk,
    ARESET);
  output [3:0]outStream_TKEEP;
  input outStream_TREADY;
  input ap_rst_n;
  input icmp_ln12_reg_188;
  input \odata_int_reg[4] ;
  input icmp_ln12_reg_1880;
  input [4:0]D;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [4:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire \odata_int_reg[4] ;
  wire [3:0]outStream_TKEEP;
  wire outStream_TREADY;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0_8 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[4]_0 (D),
        .\odata_int_reg[4] (\odata_int_reg[4] ));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0_9 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized1_6
   (outStream_TSTRB,
    outStream_TREADY,
    ap_rst_n,
    icmp_ln12_reg_188,
    \odata_int_reg[4] ,
    icmp_ln12_reg_1880,
    D,
    ap_clk,
    ARESET);
  output [3:0]outStream_TSTRB;
  input outStream_TREADY;
  input ap_rst_n;
  input icmp_ln12_reg_188;
  input \odata_int_reg[4] ;
  input icmp_ln12_reg_1880;
  input [4:0]D;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [4:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]cdata;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire \odata_int_reg[4] ;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[4]_0 (D),
        .\odata_int_reg[4] (\odata_int_reg[4] ));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized3
   (icmp_ln12_fu_138_p2,
    \idx_0_reg_127_reg[8] ,
    \idx_0_reg_127_reg[1] ,
    D,
    Q,
    ap_rst_n,
    inStream_TUSER,
    inStream_TVALID,
    ack_out,
    ap_clk,
    ARESET);
  output icmp_ln12_fu_138_p2;
  output \idx_0_reg_127_reg[8] ;
  output \idx_0_reg_127_reg[1] ;
  output [1:0]D;
  input [9:0]Q;
  input ap_rst_n;
  input [1:0]inStream_TUSER;
  input inStream_TVALID;
  input ack_out;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [1:0]D;
  wire [9:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire icmp_ln12_fu_138_p2;
  wire \idx_0_reg_127_reg[1] ;
  wire \idx_0_reg_127_reg[8] ;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire obuf_inst_n_3;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized1_10 ibuf_inst
       (.ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cdata(cdata),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID),
        .\ireg_reg[2]_0 (obuf_inst_n_3),
        .p_0_in(p_0_in));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized1_11 obuf_inst
       (.ARESET(ARESET),
        .D(D),
        .Q(Q),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .cdata(cdata),
        .icmp_ln12_fu_138_p2(icmp_ln12_fu_138_p2),
        .\idx_0_reg_127_reg[1] (\idx_0_reg_127_reg[1] ),
        .\idx_0_reg_127_reg[8] (\idx_0_reg_127_reg[8] ),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[2]_0 (obuf_inst_n_3),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized3_7
   (outStream_TUSER,
    outStream_TREADY,
    ap_rst_n,
    icmp_ln12_reg_1880,
    \ireg_reg[2] ,
    icmp_ln12_reg_188,
    Q,
    ap_clk,
    \odata_int_reg[2] ,
    ARESET);
  output [1:0]outStream_TUSER;
  input outStream_TREADY;
  input ap_rst_n;
  input icmp_ln12_reg_1880;
  input \ireg_reg[2] ;
  input icmp_ln12_reg_188;
  input [1:0]Q;
  input ap_clk;
  input \odata_int_reg[2] ;
  input ARESET;

  wire ARESET;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire cstop;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_2;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire \ireg_reg[2] ;
  wire obuf_inst_n_1;
  wire \odata_int_reg[2] ;
  wire outStream_TREADY;
  wire [1:0]outStream_TUSER;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized1 ibuf_inst
       (.Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cstop(cstop),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[0]_0 (ibuf_inst_n_2),
        .\ireg_reg[1]_0 (ibuf_inst_n_1),
        .\ireg_reg[1]_1 (obuf_inst_n_1),
        .\ireg_reg[2]_0 (\ireg_reg[2] ),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized1 obuf_inst
       (.ARESET(ARESET),
        .Q(Q),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cstop(cstop),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\odata_int_reg[0]_0 (ibuf_inst_n_2),
        .\odata_int_reg[1]_0 (ibuf_inst_n_1),
        .\odata_int_reg[2]_0 (obuf_inst_n_1),
        .\odata_int_reg[2]_1 (\odata_int_reg[2] ),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TUSER(outStream_TUSER),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized5
   (\odata_int_reg[0] ,
    ap_rst_n,
    inStream_TLAST,
    inStream_TVALID,
    ack_out,
    ap_clk,
    ARESET);
  output \odata_int_reg[0] ;
  input ap_rst_n;
  input [0:0]inStream_TLAST;
  input inStream_TVALID;
  input ack_out;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]cdata;
  wire [0:0]inStream_TLAST;
  wire inStream_TVALID;
  wire obuf_inst_n_0;
  wire \odata_int_reg[0] ;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized2_14 ibuf_inst
       (.ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cdata(cdata),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TVALID(inStream_TVALID),
        .\ireg_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized2_15 obuf_inst
       (.ARESET(ARESET),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .cdata(cdata),
        .inStream_TVALID(inStream_TVALID),
        .\odata_int_reg[0]_0 (\odata_int_reg[0] ),
        .\odata_int_reg[1]_0 (obuf_inst_n_0),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized5_5
   (ap_enable_reg_pp0_iter1_reg,
    outStream_TLAST,
    \ireg_reg[1] ,
    icmp_ln12_reg_188,
    outStream_TREADY,
    ap_rst_n,
    icmp_ln12_reg_1880,
    tmp_last_V_reg_212,
    ap_clk,
    ARESET);
  output ap_enable_reg_pp0_iter1_reg;
  output [0:0]outStream_TLAST;
  input \ireg_reg[1] ;
  input icmp_ln12_reg_188;
  input outStream_TREADY;
  input ap_rst_n;
  input icmp_ln12_reg_1880;
  input tmp_last_V_reg_212;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire cstop;
  wire ibuf_inst_n_1;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire \ireg_reg[1] ;
  wire obuf_inst_n_2;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire p_0_in;
  wire tmp_last_V_reg_212;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized2 ibuf_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cstop(cstop),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[0]_0 (ibuf_inst_n_1),
        .\ireg_reg[0]_1 (obuf_inst_n_2),
        .\ireg_reg[1]_0 (\ireg_reg[1] ),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in),
        .tmp_last_V_reg_212(tmp_last_V_reg_212));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized2 obuf_inst
       (.ARESET(ARESET),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .cstop(cstop),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\odata_int_reg[0]_0 (ibuf_inst_n_1),
        .\odata_int_reg[1]_0 (obuf_inst_n_2),
        .\odata_int_reg[1]_1 (\ireg_reg[1] ),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .p_0_in(p_0_in),
        .tmp_last_V_reg_212(tmp_last_V_reg_212));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized7
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TID,
    ap_clk,
    ARESET);
  output [4:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [4:0]inStream_TID;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [4:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]cdata;
  wire [4:0]inStream_TID;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized3_18 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .\ireg_reg[5]_0 ({inStream_TVALID,inStream_TID}));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized3_19 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[4]_0 (Q));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized7_3
   (outStream_TID,
    outStream_TREADY,
    ap_rst_n,
    icmp_ln12_reg_188,
    \odata_int_reg[5] ,
    icmp_ln12_reg_1880,
    D,
    ap_clk,
    ARESET);
  output [4:0]outStream_TID;
  input outStream_TREADY;
  input ap_rst_n;
  input icmp_ln12_reg_188;
  input \odata_int_reg[5] ;
  input icmp_ln12_reg_1880;
  input [5:0]D;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [5:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]cdata;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire \odata_int_reg[5] ;
  wire [4:0]outStream_TID;
  wire outStream_TREADY;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized3 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[5]_0 (D),
        .\odata_int_reg[5] (\odata_int_reg[5] ));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized3 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .outStream_TID(outStream_TID),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized9
   (Q,
    ack_out,
    ap_rst_n,
    inStream_TVALID,
    inStream_TDEST,
    ap_clk,
    ARESET);
  output [5:0]Q;
  input ack_out;
  input ap_rst_n;
  input inStream_TVALID;
  input [5:0]inStream_TDEST;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [5:0]Q;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire [6:0]cdata;
  wire [5:0]inStream_TDEST;
  wire inStream_TVALID;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized4_20 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .\ireg_reg[6]_0 ({inStream_TVALID,inStream_TDEST}));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized4_21 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\odata_int_reg[5]_0 (Q));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module design_1_doGain_0_0_regslice_both__parameterized9_2
   (outStream_TDEST,
    outStream_TREADY,
    ap_rst_n,
    icmp_ln12_reg_188,
    \odata_int_reg[6] ,
    icmp_ln12_reg_1880,
    D,
    ap_clk,
    ARESET);
  output [5:0]outStream_TDEST;
  input outStream_TREADY;
  input ap_rst_n;
  input icmp_ln12_reg_188;
  input \odata_int_reg[6] ;
  input icmp_ln12_reg_1880;
  input [6:0]D;
  input ap_clk;
  input ARESET;

  wire ARESET;
  wire [6:0]D;
  wire ap_clk;
  wire ap_rst_n;
  wire [6:0]cdata;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire \odata_int_reg[6] ;
  wire [5:0]outStream_TDEST;
  wire outStream_TREADY;
  wire p_0_in;

  design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized4 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .icmp_ln12_reg_188(icmp_ln12_reg_188),
        .icmp_ln12_reg_1880(icmp_ln12_reg_1880),
        .\ireg_reg[6]_0 (D),
        .\odata_int_reg[6] (\odata_int_reg[6] ));
  design_1_doGain_0_0_xil_defaultlib_obuf__parameterized4 obuf_inst
       (.ARESET(ARESET),
        .D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TREADY(outStream_TREADY));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf
   (ap_enable_reg_pp0_iter0_reg,
    ap_enable_reg_pp0_iter1_reg,
    ap_rst_n_0,
    \ap_CS_fsm_reg[1] ,
    count,
    D,
    ack_out,
    E,
    \icmp_ln12_reg_188_reg[0] ,
    \ireg_reg[32]_0 ,
    \ireg_reg[32]_1 ,
    \icmp_ln12_reg_188_reg[0]_0 ,
    \icmp_ln12_reg_188_reg[0]_1 ,
    ap_enable_reg_pp0_iter0,
    \odata_int_reg[32] ,
    ap_rst_n,
    icmp_ln12_fu_138_p2,
    ap_enable_reg_pp0_iter2_reg,
    Q,
    ap_start,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    outStream_TREADY,
    \count_reg[0]_1 ,
    icmp_ln12_reg_188,
    ap_done,
    \idx_0_reg_127_reg[0] ,
    \idx_0_reg_127_reg[0]_0 ,
    \idx_0_reg_127_reg[0]_1 ,
    vld_out,
    icmp_ln12_reg_188_pp0_iter1_reg,
    P,
    \ireg_reg[31]_0 ,
    \ireg_reg[19]_0 ,
    SR,
    \ireg_reg[32]_2 ,
    ap_clk);
  output ap_enable_reg_pp0_iter0_reg;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_rst_n_0;
  output \ap_CS_fsm_reg[1] ;
  output [0:0]count;
  output [1:0]D;
  output ack_out;
  output [0:0]E;
  output [0:0]\icmp_ln12_reg_188_reg[0] ;
  output [0:0]\ireg_reg[32]_0 ;
  output [32:0]\ireg_reg[32]_1 ;
  output \icmp_ln12_reg_188_reg[0]_0 ;
  output \icmp_ln12_reg_188_reg[0]_1 ;
  input ap_enable_reg_pp0_iter0;
  input \odata_int_reg[32] ;
  input ap_rst_n;
  input icmp_ln12_fu_138_p2;
  input ap_enable_reg_pp0_iter2_reg;
  input [1:0]Q;
  input ap_start;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input outStream_TREADY;
  input \count_reg[0]_1 ;
  input icmp_ln12_reg_188;
  input ap_done;
  input \idx_0_reg_127_reg[0] ;
  input \idx_0_reg_127_reg[0]_0 ;
  input \idx_0_reg_127_reg[0]_1 ;
  input vld_out;
  input icmp_ln12_reg_188_pp0_iter1_reg;
  input [14:0]P;
  input [14:0]\ireg_reg[31]_0 ;
  input [16:0]\ireg_reg[19]_0 ;
  input [0:0]SR;
  input [0:0]\ireg_reg[32]_2 ;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [14:0]P;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_start;
  wire [0:0]count;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire icmp_ln12_fu_138_p2;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_188_pp0_iter1_reg;
  wire [0:0]\icmp_ln12_reg_188_reg[0] ;
  wire \icmp_ln12_reg_188_reg[0]_0 ;
  wire \icmp_ln12_reg_188_reg[0]_1 ;
  wire \idx_0_reg_127[9]_i_6_n_0 ;
  wire \idx_0_reg_127_reg[0] ;
  wire \idx_0_reg_127_reg[0]_0 ;
  wire \idx_0_reg_127_reg[0]_1 ;
  wire \ireg[19]_i_2_n_0 ;
  wire \ireg[19]_i_3_n_0 ;
  wire \ireg[19]_i_4_n_0 ;
  wire \ireg[23]_i_2_n_0 ;
  wire \ireg[23]_i_3_n_0 ;
  wire \ireg[23]_i_4_n_0 ;
  wire \ireg[23]_i_5_n_0 ;
  wire \ireg[27]_i_2_n_0 ;
  wire \ireg[27]_i_3_n_0 ;
  wire \ireg[27]_i_4_n_0 ;
  wire \ireg[27]_i_5_n_0 ;
  wire \ireg[31]_i_2_n_0 ;
  wire \ireg[31]_i_3_n_0 ;
  wire \ireg[31]_i_4_n_0 ;
  wire \ireg[31]_i_5_n_0 ;
  wire [16:0]\ireg_reg[19]_0 ;
  wire \ireg_reg[19]_i_1_n_0 ;
  wire \ireg_reg[19]_i_1_n_1 ;
  wire \ireg_reg[19]_i_1_n_2 ;
  wire \ireg_reg[19]_i_1_n_3 ;
  wire \ireg_reg[23]_i_1_n_0 ;
  wire \ireg_reg[23]_i_1_n_1 ;
  wire \ireg_reg[23]_i_1_n_2 ;
  wire \ireg_reg[23]_i_1_n_3 ;
  wire \ireg_reg[27]_i_1_n_0 ;
  wire \ireg_reg[27]_i_1_n_1 ;
  wire \ireg_reg[27]_i_1_n_2 ;
  wire \ireg_reg[27]_i_1_n_3 ;
  wire [14:0]\ireg_reg[31]_0 ;
  wire \ireg_reg[31]_i_1_n_1 ;
  wire \ireg_reg[31]_i_1_n_2 ;
  wire \ireg_reg[31]_i_1_n_3 ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire [32:0]\ireg_reg[32]_1 ;
  wire [0:0]\ireg_reg[32]_2 ;
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
  wire \ireg_reg_n_0_[31] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire \odata_int_reg[32] ;
  wire outStream_TREADY;
  wire [31:16]valOut_data_V_reg_227_reg__1;
  wire vld_out;
  wire [3:3]\NLW_ireg_reg[31]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEEC0)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5053)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm[2]_i_2_n_0 ),
        .I1(ap_done),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFFF0F7)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(icmp_ln12_fu_138_p2),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_enable_reg_pp0_iter2_reg),
        .I4(\odata_int_reg[32] ),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\odata_int_reg[32] ),
        .I2(ap_rst_n),
        .I3(icmp_ln12_fu_138_p2),
        .I4(ap_block_pp0_stage0_subdone),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'h00A0C0A0C0A0C0A0)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(\odata_int_reg[32] ),
        .I1(ap_enable_reg_pp0_iter2_reg),
        .I2(ap_rst_n),
        .I3(ap_block_pp0_stage0_subdone),
        .I4(Q[0]),
        .I5(ap_start),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT6 #(
    .INIT(64'hA8A820A020A020A0)) 
    \count[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\count_reg[0] ),
        .I2(\count_reg[0]_0 ),
        .I3(outStream_TREADY),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(\count_reg[0]_1 ),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hFBFBFBFBF3FBFBFB)) 
    \count[1]_i_1 
       (.I0(\count_reg[0] ),
        .I1(\count_reg[0]_0 ),
        .I2(outStream_TREADY),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(\odata_int_reg[32] ),
        .I5(icmp_ln12_reg_188),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln12_reg_188[0]_i_1 
       (.I0(icmp_ln12_fu_138_p2),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(icmp_ln12_reg_188),
        .O(\icmp_ln12_reg_188_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln12_reg_188_pp0_iter1_reg[0]_i_1 
       (.I0(icmp_ln12_reg_188),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(icmp_ln12_reg_188_pp0_iter1_reg),
        .O(\icmp_ln12_reg_188_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \idx_0_reg_127[9]_i_2 
       (.I0(icmp_ln12_fu_138_p2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(Q[1]),
        .O(ack_out));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFAAAA)) 
    \idx_0_reg_127[9]_i_4 
       (.I0(\idx_0_reg_127[9]_i_6_n_0 ),
        .I1(\idx_0_reg_127_reg[0] ),
        .I2(\idx_0_reg_127_reg[0]_0 ),
        .I3(\idx_0_reg_127_reg[0]_1 ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(vld_out),
        .O(ap_block_pp0_stage0_subdone));
  LUT6 #(
    .INIT(64'h20222022F0FF2022)) 
    \idx_0_reg_127[9]_i_6 
       (.I0(\odata_int_reg[32] ),
        .I1(icmp_ln12_reg_188),
        .I2(\ireg_reg[32]_0 ),
        .I3(ap_rst_n),
        .I4(ap_enable_reg_pp0_iter2_reg),
        .I5(icmp_ln12_reg_188_pp0_iter1_reg),
        .O(\idx_0_reg_127[9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[19]_i_2 
       (.I0(P[2]),
        .I1(\ireg_reg[31]_0 [2]),
        .O(\ireg[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[19]_i_3 
       (.I0(P[1]),
        .I1(\ireg_reg[31]_0 [1]),
        .O(\ireg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[19]_i_4 
       (.I0(P[0]),
        .I1(\ireg_reg[31]_0 [0]),
        .O(\ireg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[23]_i_2 
       (.I0(P[6]),
        .I1(\ireg_reg[31]_0 [6]),
        .O(\ireg[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[23]_i_3 
       (.I0(P[5]),
        .I1(\ireg_reg[31]_0 [5]),
        .O(\ireg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[23]_i_4 
       (.I0(P[4]),
        .I1(\ireg_reg[31]_0 [4]),
        .O(\ireg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[23]_i_5 
       (.I0(P[3]),
        .I1(\ireg_reg[31]_0 [3]),
        .O(\ireg[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[27]_i_2 
       (.I0(P[10]),
        .I1(\ireg_reg[31]_0 [10]),
        .O(\ireg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[27]_i_3 
       (.I0(P[9]),
        .I1(\ireg_reg[31]_0 [9]),
        .O(\ireg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[27]_i_4 
       (.I0(P[8]),
        .I1(\ireg_reg[31]_0 [8]),
        .O(\ireg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[27]_i_5 
       (.I0(P[7]),
        .I1(\ireg_reg[31]_0 [7]),
        .O(\ireg[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[31]_i_2 
       (.I0(P[14]),
        .I1(\ireg_reg[31]_0 [14]),
        .O(\ireg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[31]_i_3 
       (.I0(P[13]),
        .I1(\ireg_reg[31]_0 [13]),
        .O(\ireg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[31]_i_4 
       (.I0(P[12]),
        .I1(\ireg_reg[31]_0 [12]),
        .O(\ireg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[31]_i_5 
       (.I0(P[11]),
        .I1(\ireg_reg[31]_0 [11]),
        .O(\ireg[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ireg[32]_i_3 
       (.I0(icmp_ln12_reg_188),
        .I1(\odata_int_reg[32] ),
        .I2(\ap_CS_fsm_reg[1] ),
        .O(\icmp_ln12_reg_188_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[16]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[19]),
        .Q(\ireg_reg_n_0_[19] ),
        .R(SR));
  CARRY4 \ireg_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\ireg_reg[19]_i_1_n_0 ,\ireg_reg[19]_i_1_n_1 ,\ireg_reg[19]_i_1_n_2 ,\ireg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({P[2:0],1'b0}),
        .O(valOut_data_V_reg_227_reg__1[19:16]),
        .S({\ireg[19]_i_2_n_0 ,\ireg[19]_i_3_n_0 ,\ireg[19]_i_4_n_0 ,\ireg_reg[19]_0 [16]}));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  CARRY4 \ireg_reg[23]_i_1 
       (.CI(\ireg_reg[19]_i_1_n_0 ),
        .CO({\ireg_reg[23]_i_1_n_0 ,\ireg_reg[23]_i_1_n_1 ,\ireg_reg[23]_i_1_n_2 ,\ireg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(P[6:3]),
        .O(valOut_data_V_reg_227_reg__1[23:20]),
        .S({\ireg[23]_i_2_n_0 ,\ireg[23]_i_3_n_0 ,\ireg[23]_i_4_n_0 ,\ireg[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[24]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[25]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[26]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[27]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(SR));
  CARRY4 \ireg_reg[27]_i_1 
       (.CI(\ireg_reg[23]_i_1_n_0 ),
        .CO({\ireg_reg[27]_i_1_n_0 ,\ireg_reg[27]_i_1_n_1 ,\ireg_reg[27]_i_1_n_2 ,\ireg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(P[10:7]),
        .O(valOut_data_V_reg_227_reg__1[27:24]),
        .S({\ireg[27]_i_2_n_0 ,\ireg[27]_i_3_n_0 ,\ireg[27]_i_4_n_0 ,\ireg[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[28]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[29]),
        .Q(\ireg_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[30]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(valOut_data_V_reg_227_reg__1[31]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(SR));
  CARRY4 \ireg_reg[31]_i_1 
       (.CI(\ireg_reg[27]_i_1_n_0 ),
        .CO({\NLW_ireg_reg[31]_i_1_CO_UNCONNECTED [3],\ireg_reg[31]_i_1_n_1 ,\ireg_reg[31]_i_1_n_2 ,\ireg_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,P[13:11]}),
        .O(valOut_data_V_reg_227_reg__1[31:28]),
        .S({\ireg[31]_i_2_n_0 ,\ireg[31]_i_3_n_0 ,\ireg[31]_i_4_n_0 ,\ireg[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\icmp_ln12_reg_188_reg[0] ),
        .Q(\ireg_reg[32]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [8]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(\ireg_reg[32]_2 ),
        .D(\ireg_reg[19]_0 [9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__3 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [0]),
        .O(\ireg_reg[32]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[10]_i_1 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [10]),
        .O(\ireg_reg[32]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[11]_i_1 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [11]),
        .O(\ireg_reg[32]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[12]_i_1 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [12]),
        .O(\ireg_reg[32]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[13]_i_1 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [13]),
        .O(\ireg_reg[32]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[14]_i_1 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [14]),
        .O(\ireg_reg[32]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[15]_i_1 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [15]),
        .O(\ireg_reg[32]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[16]_i_1 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[16]),
        .O(\ireg_reg[32]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[17]_i_1 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[17]),
        .O(\ireg_reg[32]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[18]_i_1 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[18]),
        .O(\ireg_reg[32]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[19]_i_1 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[19]),
        .O(\ireg_reg[32]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__3 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [1]),
        .O(\ireg_reg[32]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[20]_i_1 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[20]),
        .O(\ireg_reg[32]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[21]_i_1 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[21]),
        .O(\ireg_reg[32]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[22]_i_1 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[22]),
        .O(\ireg_reg[32]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[23]_i_1 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[23]),
        .O(\ireg_reg[32]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[24]_i_1 
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[24]),
        .O(\ireg_reg[32]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[25]_i_1 
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[25]),
        .O(\ireg_reg[32]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[26]_i_1 
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[26]),
        .O(\ireg_reg[32]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[27]_i_1 
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[27]),
        .O(\ireg_reg[32]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[28]_i_1 
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[28]),
        .O(\ireg_reg[32]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[29]_i_1 
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[29]),
        .O(\ireg_reg[32]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__3 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [2]),
        .O(\ireg_reg[32]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[30]_i_1 
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[30]),
        .O(\ireg_reg[32]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[31]_i_3 
       (.I0(\ireg_reg_n_0_[31] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(valOut_data_V_reg_227_reg__1[31]),
        .O(\ireg_reg[32]_1 [31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \odata_int[32]_i_1 
       (.I0(\ireg_reg[32]_0 ),
        .I1(icmp_ln12_reg_188),
        .I2(\odata_int_reg[32] ),
        .I3(\ap_CS_fsm_reg[1] ),
        .O(\ireg_reg[32]_1 [32]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \odata_int[32]_i_2 
       (.I0(Q[1]),
        .I1(ap_block_pp0_stage0_subdone),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__3 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [3]),
        .O(\ireg_reg[32]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [4]),
        .O(\ireg_reg[32]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_1__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [5]),
        .O(\ireg_reg[32]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[6]_i_1 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [6]),
        .O(\ireg_reg[32]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[7]_i_1 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [7]),
        .O(\ireg_reg[32]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[8]_i_1 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [8]),
        .O(\ireg_reg[32]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[9]_i_1 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[19]_0 [9]),
        .O(\ireg_reg[32]_1 [9]));
  LUT2 #(
    .INIT(4'h2)) 
    valOut_data_V_fu_178_p2_i_3
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(icmp_ln12_fu_138_p2),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf_22
   (A,
    Q,
    B,
    inStream_TREADY,
    ap_rst_n,
    D,
    SR,
    E,
    ap_clk);
  output [16:0]A;
  output [0:0]Q;
  output [14:0]B;
  output inStream_TREADY;
  input ap_rst_n;
  input [32:0]D;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [16:0]A;
  wire [14:0]B;
  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire inStream_TREADY;
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
  wire \ireg_reg_n_0_[31] ;
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
       (.I0(D[32]),
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
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(D[31]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(E),
        .D(D[32]),
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
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_1
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[16]),
        .O(A[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_10
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[7]),
        .O(A[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_11
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[6]),
        .O(A[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_12
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[5]),
        .O(A[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_13
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[4]),
        .O(A[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_14
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[3]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_15
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[2]),
        .O(A[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_16
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[1]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_17
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[0]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_2
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[15]),
        .O(A[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_3
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[14]),
        .O(A[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_4
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[13]),
        .O(A[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_5
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[12]),
        .O(A[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_6
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[11]),
        .O(A[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_7
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[10]),
        .O(A[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_8
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[9]),
        .O(A[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2__0_i_9
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[8]),
        .O(A[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_10
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[25]),
        .O(B[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_11
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[24]),
        .O(B[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_12
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[23]),
        .O(B[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_13
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[22]),
        .O(B[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_14
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[21]),
        .O(B[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_15
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[20]),
        .O(B[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_16
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[19]),
        .O(B[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_17
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[18]),
        .O(B[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_18
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[17]),
        .O(B[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_4
       (.I0(\ireg_reg_n_0_[31] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[31]),
        .O(B[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_5
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[30]),
        .O(B[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_6
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[29]),
        .O(B[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_7
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[28]),
        .O(B[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_8
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[27]),
        .O(B[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    valOut_data_V_fu_178_p2_i_9
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(Q),
        .I2(ap_rst_n),
        .I3(D[26]),
        .O(B[9]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0
   (D,
    Q,
    icmp_ln12_reg_188,
    \odata_int_reg[4] ,
    icmp_ln12_reg_1880,
    \ireg_reg[4]_0 ,
    SR,
    E,
    ap_clk);
  output [4:0]D;
  output [0:0]Q;
  input icmp_ln12_reg_188;
  input \odata_int_reg[4] ;
  input icmp_ln12_reg_1880;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \odata_int_reg[4] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__5 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__5 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__5 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_2__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \odata_int[4]_i_1__3 
       (.I0(Q),
        .I1(icmp_ln12_reg_188),
        .I2(\odata_int_reg[4] ),
        .I3(icmp_ln12_reg_1880),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0_12
   (D,
    Q,
    \ireg_reg[4]_0 ,
    SR,
    E,
    ap_clk);
  output [4:0]D;
  output [0:0]Q;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__0 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__0 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[4]_i_2__0 
       (.I0(Q),
        .I1(\ireg_reg[4]_0 [4]),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0_16
   (D,
    Q,
    \ireg_reg[4]_0 ,
    SR,
    E,
    ap_clk);
  output [4:0]D;
  output [0:0]Q;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[4]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[4]_0 [4]),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized0_8
   (D,
    Q,
    icmp_ln12_reg_188,
    \odata_int_reg[4] ,
    icmp_ln12_reg_1880,
    \ireg_reg[4]_0 ,
    SR,
    E,
    ap_clk);
  output [4:0]D;
  output [0:0]Q;
  input icmp_ln12_reg_188;
  input \odata_int_reg[4] ;
  input icmp_ln12_reg_1880;
  input [4:0]\ireg_reg[4]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire [4:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \odata_int_reg[4] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[4]_0 [4]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__4 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__4 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__4 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_2 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[4]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \odata_int[4]_i_1__2 
       (.I0(Q),
        .I1(icmp_ln12_reg_188),
        .I2(\odata_int_reg[4] ),
        .I3(icmp_ln12_reg_1880),
        .O(D[4]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized1
   (p_0_in,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    icmp_ln12_reg_1880,
    \ireg_reg[2]_0 ,
    icmp_ln12_reg_188,
    ap_rst_n,
    cstop,
    Q,
    \ireg_reg[1]_1 ,
    outStream_TREADY,
    ap_clk);
  output p_0_in;
  output \ireg_reg[1]_0 ;
  output \ireg_reg[0]_0 ;
  input icmp_ln12_reg_1880;
  input \ireg_reg[2]_0 ;
  input icmp_ln12_reg_188;
  input ap_rst_n;
  input cstop;
  input [1:0]Q;
  input \ireg_reg[1]_1 ;
  input outStream_TREADY;
  input ap_clk;

  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire cstop;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg[2]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[1]_0 ;
  wire \ireg_reg[1]_1 ;
  wire \ireg_reg[2]_0 ;
  wire outStream_TREADY;
  wire p_0_in;

  LUT6 #(
    .INIT(64'h00A000A0A0C000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(Q[0]),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(\ireg_reg[1]_1 ),
        .I5(outStream_TREADY),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A0A0C000A0)) 
    \ireg[1]_i_1 
       (.I0(\ireg_reg[1]_0 ),
        .I1(Q[1]),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(\ireg_reg[1]_1 ),
        .I5(outStream_TREADY),
        .O(\ireg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00080000000000)) 
    \ireg[2]_i_1 
       (.I0(icmp_ln12_reg_1880),
        .I1(\ireg_reg[2]_0 ),
        .I2(icmp_ln12_reg_188),
        .I3(ap_rst_n),
        .I4(p_0_in),
        .I5(cstop),
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
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized1_10
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
    .INIT(64'h00A000A0A0C000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(inStream_TUSER[0]),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(\ireg_reg[2]_0 ),
        .I5(ack_out),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A0A0C000A0)) 
    \ireg[1]_i_1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(inStream_TUSER[1]),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(\ireg_reg[2]_0 ),
        .I5(ack_out),
        .O(\ireg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000C800)) 
    \ireg[2]_i_1 
       (.I0(inStream_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(\ireg_reg[2]_0 ),
        .I4(ack_out),
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
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized2
   (p_0_in,
    \ireg_reg[0]_0 ,
    icmp_ln12_reg_1880,
    \ireg_reg[1]_0 ,
    icmp_ln12_reg_188,
    ap_rst_n,
    cstop,
    tmp_last_V_reg_212,
    \ireg_reg[0]_1 ,
    outStream_TREADY,
    ap_clk);
  output p_0_in;
  output \ireg_reg[0]_0 ;
  input icmp_ln12_reg_1880;
  input \ireg_reg[1]_0 ;
  input icmp_ln12_reg_188;
  input ap_rst_n;
  input cstop;
  input tmp_last_V_reg_212;
  input \ireg_reg[0]_1 ;
  input outStream_TREADY;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n;
  wire cstop;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire \ireg[0]_i_1_n_0 ;
  wire \ireg[1]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire \ireg_reg[1]_0 ;
  wire outStream_TREADY;
  wire p_0_in;
  wire tmp_last_V_reg_212;

  LUT6 #(
    .INIT(64'h00A000A0A0C000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg[0]_0 ),
        .I1(tmp_last_V_reg_212),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(\ireg_reg[0]_1 ),
        .I5(outStream_TREADY),
        .O(\ireg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00080000000000)) 
    \ireg[1]_i_1 
       (.I0(icmp_ln12_reg_1880),
        .I1(\ireg_reg[1]_0 ),
        .I2(icmp_ln12_reg_188),
        .I3(ap_rst_n),
        .I4(p_0_in),
        .I5(cstop),
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
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized2_14
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
    .INIT(64'h00A000A0A0C000A0)) 
    \ireg[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(inStream_TLAST),
        .I2(ap_rst_n),
        .I3(p_0_in),
        .I4(\ireg_reg[1]_0 ),
        .I5(ack_out),
        .O(\ireg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000C800)) 
    \ireg[1]_i_1 
       (.I0(inStream_TVALID),
        .I1(ap_rst_n),
        .I2(p_0_in),
        .I3(\ireg_reg[1]_0 ),
        .I4(ack_out),
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
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized3
   (D,
    Q,
    icmp_ln12_reg_188,
    \odata_int_reg[5] ,
    icmp_ln12_reg_1880,
    \ireg_reg[5]_0 ,
    SR,
    E,
    ap_clk);
  output [5:0]D;
  output [0:0]Q;
  input icmp_ln12_reg_188;
  input \odata_int_reg[5] ;
  input icmp_ln12_reg_1880;
  input [5:0]\ireg_reg[5]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire [5:0]\ireg_reg[5]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \odata_int_reg[5] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [5]),
        .Q(Q),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__6 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__6 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__6 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__4 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_2__1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \odata_int[5]_i_1__1 
       (.I0(Q),
        .I1(icmp_ln12_reg_188),
        .I2(\odata_int_reg[5] ),
        .I3(icmp_ln12_reg_1880),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized3_18
   (D,
    Q,
    \ireg_reg[5]_0 ,
    SR,
    E,
    ap_clk);
  output [5:0]D;
  output [0:0]Q;
  input [5:0]\ireg_reg[5]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [5:0]\ireg_reg[5]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[5]_0 [5]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__1 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[5]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[5]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[5]_0 [5]),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized4
   (D,
    Q,
    icmp_ln12_reg_188,
    \odata_int_reg[6] ,
    icmp_ln12_reg_1880,
    \ireg_reg[6]_0 ,
    SR,
    E,
    ap_clk);
  output [6:0]D;
  output [0:0]Q;
  input icmp_ln12_reg_188;
  input \odata_int_reg[6] ;
  input icmp_ln12_reg_1880;
  input [6:0]\ireg_reg[6]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire [6:0]\ireg_reg[6]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \odata_int_reg[6] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [6]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__7 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__7 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__7 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__5 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__4 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_2__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \odata_int[6]_i_1__0 
       (.I0(Q),
        .I1(icmp_ln12_reg_188),
        .I2(\odata_int_reg[6] ),
        .I3(icmp_ln12_reg_1880),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_ibuf" *) 
module design_1_doGain_0_0_xil_defaultlib_ibuf__parameterized4_20
   (D,
    Q,
    \ireg_reg[6]_0 ,
    SR,
    E,
    ap_clk);
  output [6:0]D;
  output [0:0]Q;
  input [6:0]\ireg_reg[6]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [6:0]\ireg_reg[6]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[6]_0 [6]),
        .Q(Q),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[0]_i_1__2 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[1]_i_1__2 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[2]_i_1__2 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[3]_i_1__2 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[4]_i_1__0 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata_int[5]_i_1 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(\ireg_reg[6]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata_int[6]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[6]_0 [6]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf
   (\idx_0_reg_127_reg[9] ,
    SR,
    outStream_TREADY_0,
    Q,
    \odata_int_reg[32]_0 ,
    \idx_0_reg_127[9]_i_4 ,
    ap_rst_n,
    outStream_TREADY,
    \ireg_reg[32] ,
    D,
    ap_clk);
  output \idx_0_reg_127_reg[9] ;
  output [0:0]SR;
  output [0:0]outStream_TREADY_0;
  output [32:0]Q;
  output [0:0]\odata_int_reg[32]_0 ;
  input [3:0]\idx_0_reg_127[9]_i_4 ;
  input ap_rst_n;
  input outStream_TREADY;
  input [0:0]\ireg_reg[32] ;
  input [32:0]D;
  input ap_clk;

  wire [32:0]D;
  wire [32:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [3:0]\idx_0_reg_127[9]_i_4 ;
  wire \idx_0_reg_127_reg[9] ;
  wire [0:0]\ireg_reg[32] ;
  wire \odata_int[31]_i_2_n_0 ;
  wire [0:0]\odata_int_reg[32]_0 ;
  wire outStream_TREADY;
  wire [0:0]outStream_TREADY_0;

  LUT4 #(
    .INIT(16'h8000)) 
    \idx_0_reg_127[9]_i_7 
       (.I0(\idx_0_reg_127[9]_i_4 [3]),
        .I1(\idx_0_reg_127[9]_i_4 [2]),
        .I2(\idx_0_reg_127[9]_i_4 [1]),
        .I3(\idx_0_reg_127[9]_i_4 [0]),
        .O(\idx_0_reg_127_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[32]_i_1__0 
       (.I0(outStream_TREADY),
        .I1(Q[32]),
        .I2(\ireg_reg[32] ),
        .I3(ap_rst_n),
        .O(outStream_TREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[32]_i_2__0 
       (.I0(Q[32]),
        .I1(outStream_TREADY),
        .I2(\ireg_reg[32] ),
        .O(\odata_int_reg[32]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \odata_int[31]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[31]_i_2 
       (.I0(Q[32]),
        .I1(outStream_TREADY),
        .O(\odata_int[31]_i_2_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_int_reg[10] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_int_reg[11] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_int_reg[12] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_int_reg[13] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_int_reg[14] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_int_reg[15] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_int_reg[16] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_int_reg[17] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \odata_int_reg[18] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \odata_int_reg[19] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_int_reg[20] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \odata_int_reg[21] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \odata_int_reg[22] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \odata_int_reg[23] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \odata_int_reg[24] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \odata_int_reg[25] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \odata_int_reg[26] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \odata_int_reg[27] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \odata_int_reg[28] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \odata_int_reg[29] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_int_reg[30] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \odata_int_reg[31] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \odata_int_reg[32] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_int_reg[7] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_int_reg[8] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \odata_int_reg[9] 
       (.C(ap_clk),
        .CE(\odata_int[31]_i_2_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf_23
   (\odata_int_reg[32]_0 ,
    ap_rst_n_0,
    SR,
    E,
    ARESET,
    ap_clk,
    ap_rst_n,
    ack_out,
    Q,
    D);
  output \odata_int_reg[32]_0 ;
  output ap_rst_n_0;
  output [0:0]SR;
  output [0:0]E;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input ack_out;
  input [0:0]Q;
  input [0:0]D;

  wire ARESET;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire \odata_int[32]_i_1__0_n_0 ;
  wire \odata_int_reg[32]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[32]_i_1 
       (.I0(ack_out),
        .I1(\odata_int_reg[32]_0 ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[32]_i_2 
       (.I0(\odata_int_reg[32]_0 ),
        .I1(ack_out),
        .I2(Q),
        .O(E));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \odata_int[32]_i_1__0 
       (.I0(ack_out),
        .I1(\odata_int_reg[32]_0 ),
        .I2(Q),
        .I3(D),
        .O(\odata_int[32]_i_1__0_n_0 ));
  FDRE \odata_int_reg[32] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[32]_i_1__0_n_0 ),
        .Q(\odata_int_reg[32]_0 ),
        .R(ARESET));
  LUT3 #(
    .INIT(8'hA2)) 
    valOut_data_V_fu_178_p2_i_2
       (.I0(ap_rst_n),
        .I1(\odata_int_reg[32]_0 ),
        .I2(ack_out),
        .O(ap_rst_n_0));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0
   (SR,
    E,
    outStream_TSTRB,
    outStream_TREADY,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [3:0]outStream_TSTRB;
  input outStream_TREADY;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [4:0]D;
  input ap_clk;

  wire ARESET;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[3]_i_1__7_n_0 ;
  wire \odata_int_reg_n_0_[4] ;
  wire outStream_TREADY;
  wire [3:0]outStream_TSTRB;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[4]_i_1__2 
       (.I0(outStream_TREADY),
        .I1(\odata_int_reg_n_0_[4] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[4]_i_2__2 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(outStream_TREADY),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[3]_i_1__7 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(outStream_TREADY),
        .O(\odata_int[3]_i_1__7_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[0]),
        .Q(outStream_TSTRB[0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[1]),
        .Q(outStream_TSTRB[1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[2]),
        .Q(outStream_TSTRB[2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[3]),
        .Q(outStream_TSTRB[3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__7_n_0 ),
        .D(D[4]),
        .Q(\odata_int_reg_n_0_[4] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0_13
   (SR,
    E,
    \odata_int_reg[3]_0 ,
    ack_out,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [3:0]\odata_int_reg[3]_0 ;
  input ack_out;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [4:0]D;
  input ap_clk;

  wire ARESET;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[4]_i_1__6_n_0 ;
  wire [3:0]\odata_int_reg[3]_0 ;
  wire \odata_int_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[4]_i_1__0 
       (.I0(ack_out),
        .I1(\odata_int_reg_n_0_[4] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[4]_i_2__0 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(ack_out),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[4]_i_1__6 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(ack_out),
        .O(\odata_int[4]_i_1__6_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[0]),
        .Q(\odata_int_reg[3]_0 [0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[1]),
        .Q(\odata_int_reg[3]_0 [1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[2]),
        .Q(\odata_int_reg[3]_0 [2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[3]),
        .Q(\odata_int_reg[3]_0 [3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__6_n_0 ),
        .D(D[4]),
        .Q(\odata_int_reg_n_0_[4] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0_17
   (SR,
    E,
    \odata_int_reg[3]_0 ,
    ack_out,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [3:0]\odata_int_reg[3]_0 ;
  input ack_out;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [4:0]D;
  input ap_clk;

  wire ARESET;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[4]_i_1__5_n_0 ;
  wire [3:0]\odata_int_reg[3]_0 ;
  wire \odata_int_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[4]_i_1 
       (.I0(ack_out),
        .I1(\odata_int_reg_n_0_[4] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[4]_i_2 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(ack_out),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[4]_i_1__5 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(ack_out),
        .O(\odata_int[4]_i_1__5_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__5_n_0 ),
        .D(D[0]),
        .Q(\odata_int_reg[3]_0 [0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__5_n_0 ),
        .D(D[1]),
        .Q(\odata_int_reg[3]_0 [1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__5_n_0 ),
        .D(D[2]),
        .Q(\odata_int_reg[3]_0 [2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__5_n_0 ),
        .D(D[3]),
        .Q(\odata_int_reg[3]_0 [3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__5_n_0 ),
        .D(D[4]),
        .Q(\odata_int_reg_n_0_[4] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized0_9
   (SR,
    E,
    outStream_TKEEP,
    outStream_TREADY,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [3:0]outStream_TKEEP;
  input outStream_TREADY;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [4:0]D;
  input ap_clk;

  wire ARESET;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[3]_i_1__6_n_0 ;
  wire \odata_int_reg_n_0_[4] ;
  wire [3:0]outStream_TKEEP;
  wire outStream_TREADY;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[4]_i_1__1 
       (.I0(outStream_TREADY),
        .I1(\odata_int_reg_n_0_[4] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[4]_i_2__1 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(outStream_TREADY),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[3]_i_1__6 
       (.I0(\odata_int_reg_n_0_[4] ),
        .I1(outStream_TREADY),
        .O(\odata_int[3]_i_1__6_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__6_n_0 ),
        .D(D[0]),
        .Q(outStream_TKEEP[0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__6_n_0 ),
        .D(D[1]),
        .Q(outStream_TKEEP[1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__6_n_0 ),
        .D(D[2]),
        .Q(outStream_TKEEP[2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__6_n_0 ),
        .D(D[3]),
        .Q(outStream_TKEEP[3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[3]_i_1__6_n_0 ),
        .D(D[4]),
        .Q(\odata_int_reg_n_0_[4] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized1
   (cstop,
    \odata_int_reg[2]_0 ,
    outStream_TUSER,
    outStream_TREADY,
    ap_rst_n,
    p_0_in,
    \odata_int_reg[2]_1 ,
    icmp_ln12_reg_1880,
    \odata_int_reg[1]_0 ,
    Q,
    \odata_int_reg[0]_0 ,
    ARESET,
    ap_clk);
  output cstop;
  output \odata_int_reg[2]_0 ;
  output [1:0]outStream_TUSER;
  input outStream_TREADY;
  input ap_rst_n;
  input p_0_in;
  input \odata_int_reg[2]_1 ;
  input icmp_ln12_reg_1880;
  input \odata_int_reg[1]_0 ;
  input [1:0]Q;
  input \odata_int_reg[0]_0 ;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire cstop;
  wire icmp_ln12_reg_1880;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int[2]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire \odata_int_reg[2]_0 ;
  wire \odata_int_reg[2]_1 ;
  wire outStream_TREADY;
  wire [1:0]outStream_TUSER;
  wire p_0_in;

  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[0]_0 ),
        .I1(p_0_in),
        .I2(Q[0]),
        .I3(cstop),
        .I4(outStream_TUSER[0]),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \odata_int[1]_i_1 
       (.I0(\odata_int_reg[1]_0 ),
        .I1(p_0_in),
        .I2(Q[1]),
        .I3(cstop),
        .I4(outStream_TUSER[1]),
        .O(\odata_int[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \odata_int[1]_i_2 
       (.I0(outStream_TREADY),
        .I1(\odata_int_reg[2]_0 ),
        .I2(ap_rst_n),
        .O(cstop));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \odata_int[2]_i_1 
       (.I0(p_0_in),
        .I1(\odata_int_reg[2]_1 ),
        .I2(icmp_ln12_reg_1880),
        .I3(\odata_int_reg[2]_0 ),
        .I4(outStream_TREADY),
        .O(\odata_int[2]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(outStream_TUSER[0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(outStream_TUSER[1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[2]_i_1_n_0 ),
        .Q(\odata_int_reg[2]_0 ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized1_11
   (icmp_ln12_fu_138_p2,
    \idx_0_reg_127_reg[8] ,
    \idx_0_reg_127_reg[1] ,
    \odata_int_reg[2]_0 ,
    D,
    Q,
    p_0_in,
    inStream_TVALID,
    ack_out,
    cdata,
    ARESET,
    ap_clk);
  output icmp_ln12_fu_138_p2;
  output \idx_0_reg_127_reg[8] ;
  output \idx_0_reg_127_reg[1] ;
  output \odata_int_reg[2]_0 ;
  output [1:0]D;
  input [9:0]Q;
  input p_0_in;
  input inStream_TVALID;
  input ack_out;
  input [1:0]cdata;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire [1:0]D;
  wire [9:0]Q;
  wire ack_out;
  wire ap_clk;
  wire [1:0]cdata;
  wire icmp_ln12_fu_138_p2;
  wire \idx_0_reg_127_reg[1] ;
  wire \idx_0_reg_127_reg[8] ;
  wire inStream_TVALID;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int[2]_i_1_n_0 ;
  wire \odata_int_reg[2]_0 ;
  wire p_0_in;

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
       (.I0(p_0_in),
        .I1(inStream_TVALID),
        .I2(\odata_int_reg[2]_0 ),
        .I3(ack_out),
        .O(\odata_int[2]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[2]_i_1_n_0 ),
        .Q(\odata_int_reg[2]_0 ),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    valOut_data_V_fu_178_p2_i_19
       (.I0(\idx_0_reg_127_reg[8] ),
        .I1(\idx_0_reg_127_reg[1] ),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(icmp_ln12_fu_138_p2));
  LUT6 #(
    .INIT(64'h00D500D5D5D500D5)) 
    valOut_data_V_fu_178_p2_i_20
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\idx_0_reg_127_reg[8] ));
  LUT4 #(
    .INIT(16'h0001)) 
    valOut_data_V_fu_178_p2_i_21
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[2]),
        .O(\idx_0_reg_127_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized2
   (ap_enable_reg_pp0_iter1_reg,
    cstop,
    \odata_int_reg[1]_0 ,
    outStream_TLAST,
    \odata_int_reg[1]_1 ,
    icmp_ln12_reg_188,
    outStream_TREADY,
    ap_rst_n,
    p_0_in,
    icmp_ln12_reg_1880,
    \odata_int_reg[0]_0 ,
    tmp_last_V_reg_212,
    ARESET,
    ap_clk);
  output ap_enable_reg_pp0_iter1_reg;
  output cstop;
  output \odata_int_reg[1]_0 ;
  output [0:0]outStream_TLAST;
  input \odata_int_reg[1]_1 ;
  input icmp_ln12_reg_188;
  input outStream_TREADY;
  input ap_rst_n;
  input p_0_in;
  input icmp_ln12_reg_1880;
  input \odata_int_reg[0]_0 ;
  input tmp_last_V_reg_212;
  input ARESET;
  input ap_clk;

  wire ARESET;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire cstop;
  wire icmp_ln12_reg_188;
  wire icmp_ln12_reg_1880;
  wire \odata_int[0]_i_1_n_0 ;
  wire \odata_int[1]_i_1_n_0 ;
  wire \odata_int_reg[0]_0 ;
  wire \odata_int_reg[1]_0 ;
  wire \odata_int_reg[1]_1 ;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire p_0_in;
  wire tmp_last_V_reg_212;

  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \odata_int[0]_i_1 
       (.I0(\odata_int_reg[0]_0 ),
        .I1(p_0_in),
        .I2(tmp_last_V_reg_212),
        .I3(cstop),
        .I4(outStream_TLAST),
        .O(\odata_int[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \odata_int[0]_i_2 
       (.I0(outStream_TREADY),
        .I1(\odata_int_reg[1]_0 ),
        .I2(ap_rst_n),
        .O(cstop));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \odata_int[1]_i_1 
       (.I0(p_0_in),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(icmp_ln12_reg_1880),
        .I3(\odata_int_reg[1]_0 ),
        .I4(outStream_TREADY),
        .O(\odata_int[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \odata_int[2]_i_2 
       (.I0(\odata_int_reg[1]_1 ),
        .I1(icmp_ln12_reg_188),
        .O(ap_enable_reg_pp0_iter1_reg));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(outStream_TLAST),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized2_15
   (\odata_int_reg[1]_0 ,
    \odata_int_reg[0]_0 ,
    p_0_in,
    inStream_TVALID,
    ack_out,
    cdata,
    ARESET,
    ap_clk);
  output \odata_int_reg[1]_0 ;
  output \odata_int_reg[0]_0 ;
  input p_0_in;
  input inStream_TVALID;
  input ack_out;
  input [0:0]cdata;
  input ARESET;
  input ap_clk;

  wire ARESET;
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
       (.I0(p_0_in),
        .I1(inStream_TVALID),
        .I2(\odata_int_reg[1]_0 ),
        .I3(ack_out),
        .O(\odata_int[1]_i_1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[0]_i_1_n_0 ),
        .Q(\odata_int_reg[0]_0 ),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\odata_int[1]_i_1_n_0 ),
        .Q(\odata_int_reg[1]_0 ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized3
   (SR,
    E,
    outStream_TID,
    outStream_TREADY,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [4:0]outStream_TID;
  input outStream_TREADY;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [5:0]D;
  input ap_clk;

  wire ARESET;
  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[4]_i_1__7_n_0 ;
  wire \odata_int_reg_n_0_[5] ;
  wire [4:0]outStream_TID;
  wire outStream_TREADY;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[5]_i_1__0 
       (.I0(outStream_TREADY),
        .I1(\odata_int_reg_n_0_[5] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[5]_i_2__0 
       (.I0(\odata_int_reg_n_0_[5] ),
        .I1(outStream_TREADY),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[4]_i_1__7 
       (.I0(\odata_int_reg_n_0_[5] ),
        .I1(outStream_TREADY),
        .O(\odata_int[4]_i_1__7_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[0]),
        .Q(outStream_TID[0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[1]),
        .Q(outStream_TID[1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[2]),
        .Q(outStream_TID[2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[3]),
        .Q(outStream_TID[3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[4]),
        .Q(outStream_TID[4]),
        .R(ARESET));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[4]_i_1__7_n_0 ),
        .D(D[5]),
        .Q(\odata_int_reg_n_0_[5] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized3_19
   (SR,
    E,
    \odata_int_reg[4]_0 ,
    ack_out,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [4:0]\odata_int_reg[4]_0 ;
  input ack_out;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [5:0]D;
  input ap_clk;

  wire ARESET;
  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[5]_i_1__2_n_0 ;
  wire [4:0]\odata_int_reg[4]_0 ;
  wire \odata_int_reg_n_0_[5] ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[5]_i_1 
       (.I0(ack_out),
        .I1(\odata_int_reg_n_0_[5] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[5]_i_2 
       (.I0(\odata_int_reg_n_0_[5] ),
        .I1(ack_out),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[5]_i_1__2 
       (.I0(\odata_int_reg_n_0_[5] ),
        .I1(ack_out),
        .O(\odata_int[5]_i_1__2_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__2_n_0 ),
        .D(D[0]),
        .Q(\odata_int_reg[4]_0 [0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__2_n_0 ),
        .D(D[1]),
        .Q(\odata_int_reg[4]_0 [1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__2_n_0 ),
        .D(D[2]),
        .Q(\odata_int_reg[4]_0 [2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__2_n_0 ),
        .D(D[3]),
        .Q(\odata_int_reg[4]_0 [3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__2_n_0 ),
        .D(D[4]),
        .Q(\odata_int_reg[4]_0 [4]),
        .R(ARESET));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__2_n_0 ),
        .D(D[5]),
        .Q(\odata_int_reg_n_0_[5] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized4
   (SR,
    E,
    outStream_TDEST,
    outStream_TREADY,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [5:0]outStream_TDEST;
  input outStream_TREADY;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [6:0]D;
  input ap_clk;

  wire ARESET;
  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[5]_i_1__3_n_0 ;
  wire \odata_int_reg_n_0_[6] ;
  wire [5:0]outStream_TDEST;
  wire outStream_TREADY;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[6]_i_1__0 
       (.I0(outStream_TREADY),
        .I1(\odata_int_reg_n_0_[6] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[6]_i_2__0 
       (.I0(\odata_int_reg_n_0_[6] ),
        .I1(outStream_TREADY),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[5]_i_1__3 
       (.I0(\odata_int_reg_n_0_[6] ),
        .I1(outStream_TREADY),
        .O(\odata_int[5]_i_1__3_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[0]),
        .Q(outStream_TDEST[0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[1]),
        .Q(outStream_TDEST[1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[2]),
        .Q(outStream_TDEST[2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[3]),
        .Q(outStream_TDEST[3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[4]),
        .Q(outStream_TDEST[4]),
        .R(ARESET));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[5]),
        .Q(outStream_TDEST[5]),
        .R(ARESET));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[5]_i_1__3_n_0 ),
        .D(D[6]),
        .Q(\odata_int_reg_n_0_[6] ),
        .R(ARESET));
endmodule

(* ORIG_REF_NAME = "xil_defaultlib_obuf" *) 
module design_1_doGain_0_0_xil_defaultlib_obuf__parameterized4_21
   (SR,
    E,
    \odata_int_reg[5]_0 ,
    ack_out,
    Q,
    ap_rst_n,
    ARESET,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [5:0]\odata_int_reg[5]_0 ;
  input ack_out;
  input [0:0]Q;
  input ap_rst_n;
  input ARESET;
  input [6:0]D;
  input ap_clk;

  wire ARESET;
  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ack_out;
  wire ap_clk;
  wire ap_rst_n;
  wire \odata_int[6]_i_1__1_n_0 ;
  wire [5:0]\odata_int_reg[5]_0 ;
  wire \odata_int_reg_n_0_[6] ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB0FF)) 
    \ireg[6]_i_1 
       (.I0(ack_out),
        .I1(\odata_int_reg_n_0_[6] ),
        .I2(Q),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ireg[6]_i_2 
       (.I0(\odata_int_reg_n_0_[6] ),
        .I1(ack_out),
        .I2(Q),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \odata_int[6]_i_1__1 
       (.I0(\odata_int_reg_n_0_[6] ),
        .I1(ack_out),
        .O(\odata_int[6]_i_1__1_n_0 ));
  FDRE \odata_int_reg[0] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[0]),
        .Q(\odata_int_reg[5]_0 [0]),
        .R(ARESET));
  FDRE \odata_int_reg[1] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[1]),
        .Q(\odata_int_reg[5]_0 [1]),
        .R(ARESET));
  FDRE \odata_int_reg[2] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[2]),
        .Q(\odata_int_reg[5]_0 [2]),
        .R(ARESET));
  FDRE \odata_int_reg[3] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[3]),
        .Q(\odata_int_reg[5]_0 [3]),
        .R(ARESET));
  FDRE \odata_int_reg[4] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[4]),
        .Q(\odata_int_reg[5]_0 [4]),
        .R(ARESET));
  FDRE \odata_int_reg[5] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[5]),
        .Q(\odata_int_reg[5]_0 [5]),
        .R(ARESET));
  FDRE \odata_int_reg[6] 
       (.C(ap_clk),
        .CE(\odata_int[6]_i_1__1_n_0 ),
        .D(D[6]),
        .Q(\odata_int_reg_n_0_[6] ),
        .R(ARESET));
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
