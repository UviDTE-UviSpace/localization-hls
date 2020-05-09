-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:filter:1.0
-- IP Revision: 2005071515

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_0_hls_inst_0 IS
  PORT (
    video_in_TVALID : IN STD_LOGIC;
    video_in_TREADY : OUT STD_LOGIC;
    video_in_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    video_in_TKEEP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    video_in_TSTRB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    video_in_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_in_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_in_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_in_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_out_TVALID : OUT STD_LOGIC;
    video_out_TREADY : IN STD_LOGIC;
    video_out_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    video_out_TKEEP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    video_out_TSTRB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    video_out_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_out_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_out_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC
  );
END bd_0_hls_inst_0;

ARCHITECTURE bd_0_hls_inst_0_arch OF bd_0_hls_inst_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "yes";
  COMPONENT filter IS
    PORT (
      video_in_TVALID : IN STD_LOGIC;
      video_in_TREADY : OUT STD_LOGIC;
      video_in_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      video_in_TKEEP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      video_in_TSTRB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      video_in_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_in_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_in_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_in_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_out_TVALID : OUT STD_LOGIC;
      video_out_TREADY : IN STD_LOGIC;
      video_out_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      video_out_TKEEP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      video_out_TSTRB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      video_out_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_out_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_out_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC
    );
  END COMPONENT filter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "filter,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_0_hls_inst_0_arch : ARCHITECTURE IS "bd_0_hls_inst_0,filter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "bd_0_hls_inst_0,filter,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=filter,x_ipVersion=1.0,x_ipCoreRevision=2005071515,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TID";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF video_out_TVALID: SIGNAL IS "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 2, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF video_out_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TID";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF video_in_TVALID: SIGNAL IS "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 2, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF video_in_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TVALID";
BEGIN
  U0 : filter
    PORT MAP (
      video_in_TVALID => video_in_TVALID,
      video_in_TREADY => video_in_TREADY,
      video_in_TDATA => video_in_TDATA,
      video_in_TKEEP => video_in_TKEEP,
      video_in_TSTRB => video_in_TSTRB,
      video_in_TUSER => video_in_TUSER,
      video_in_TLAST => video_in_TLAST,
      video_in_TID => video_in_TID,
      video_in_TDEST => video_in_TDEST,
      video_out_TVALID => video_out_TVALID,
      video_out_TREADY => video_out_TREADY,
      video_out_TDATA => video_out_TDATA,
      video_out_TKEEP => video_out_TKEEP,
      video_out_TSTRB => video_out_TSTRB,
      video_out_TUSER => video_out_TUSER,
      video_out_TLAST => video_out_TLAST,
      video_out_TID => video_out_TID,
      video_out_TDEST => video_out_TDEST,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n
    );
END bd_0_hls_inst_0_arch;
