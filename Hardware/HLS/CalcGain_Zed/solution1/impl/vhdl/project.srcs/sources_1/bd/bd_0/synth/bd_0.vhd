--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu May 14 15:26:02 2020
--Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inStream_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_tready : out STD_LOGIC;
    inStream_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_tvalid : in STD_LOGIC;
    outStream_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outStream_tdest : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_tready : in STD_LOGIC;
    outStream_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_tvalid : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TVALID : out STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    outStream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component bd_0_hls_inst_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_rst_n_0_1 : STD_LOGIC;
  signal hls_inst_outStream_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_inst_outStream_TDEST : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hls_inst_outStream_TID : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal hls_inst_outStream_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hls_inst_outStream_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_outStream_TREADY : STD_LOGIC;
  signal hls_inst_outStream_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hls_inst_outStream_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hls_inst_outStream_TVALID : STD_LOGIC;
  signal inStream_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inStream_0_1_TDEST : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal inStream_0_1_TID : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal inStream_0_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inStream_0_1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal inStream_0_1_TREADY : STD_LOGIC;
  signal inStream_0_1_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inStream_0_1_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal inStream_0_1_TVALID : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF inStream:outStream, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of inStream_tready : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of inStream_tvalid : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of outStream_tready : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of outStream_tvalid : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of inStream_tdata : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_PARAMETER of inStream_tdata : signal is "XIL_INTERFACENAME inStream, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2";
  attribute X_INTERFACE_INFO of inStream_tdest : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of inStream_tid : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of inStream_tkeep : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of inStream_tlast : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of inStream_tstrb : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of inStream_tuser : signal is "xilinx.com:interface:axis:1.0 inStream ";
  attribute X_INTERFACE_INFO of outStream_tdata : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_PARAMETER of outStream_tdata : signal is "XIL_INTERFACENAME outStream, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2";
  attribute X_INTERFACE_INFO of outStream_tdest : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of outStream_tid : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of outStream_tkeep : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of outStream_tlast : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of outStream_tstrb : signal is "xilinx.com:interface:axis:1.0 outStream ";
  attribute X_INTERFACE_INFO of outStream_tuser : signal is "xilinx.com:interface:axis:1.0 outStream ";
begin
  ap_clk_0_1 <= ap_clk;
  ap_rst_n_0_1 <= ap_rst_n;
  hls_inst_outStream_TREADY <= outStream_tready;
  inStream_0_1_TDATA(31 downto 0) <= inStream_tdata(31 downto 0);
  inStream_0_1_TDEST(5 downto 0) <= inStream_tdest(5 downto 0);
  inStream_0_1_TID(4 downto 0) <= inStream_tid(4 downto 0);
  inStream_0_1_TKEEP(3 downto 0) <= inStream_tkeep(3 downto 0);
  inStream_0_1_TLAST(0) <= inStream_tlast(0);
  inStream_0_1_TSTRB(3 downto 0) <= inStream_tstrb(3 downto 0);
  inStream_0_1_TUSER(1 downto 0) <= inStream_tuser(1 downto 0);
  inStream_0_1_TVALID <= inStream_tvalid;
  inStream_tready <= inStream_0_1_TREADY;
  outStream_tdata(31 downto 0) <= hls_inst_outStream_TDATA(31 downto 0);
  outStream_tdest(5 downto 0) <= hls_inst_outStream_TDEST(5 downto 0);
  outStream_tid(4 downto 0) <= hls_inst_outStream_TID(4 downto 0);
  outStream_tkeep(3 downto 0) <= hls_inst_outStream_TKEEP(3 downto 0);
  outStream_tlast(0) <= hls_inst_outStream_TLAST(0);
  outStream_tstrb(3 downto 0) <= hls_inst_outStream_TSTRB(3 downto 0);
  outStream_tuser(1 downto 0) <= hls_inst_outStream_TUSER(1 downto 0);
  outStream_tvalid <= hls_inst_outStream_TVALID;
hls_inst: component bd_0_hls_inst_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_rst_n => ap_rst_n_0_1,
      inStream_TDATA(31 downto 0) => inStream_0_1_TDATA(31 downto 0),
      inStream_TDEST(5 downto 0) => inStream_0_1_TDEST(5 downto 0),
      inStream_TID(4 downto 0) => inStream_0_1_TID(4 downto 0),
      inStream_TKEEP(3 downto 0) => inStream_0_1_TKEEP(3 downto 0),
      inStream_TLAST(0) => inStream_0_1_TLAST(0),
      inStream_TREADY => inStream_0_1_TREADY,
      inStream_TSTRB(3 downto 0) => inStream_0_1_TSTRB(3 downto 0),
      inStream_TUSER(1 downto 0) => inStream_0_1_TUSER(1 downto 0),
      inStream_TVALID => inStream_0_1_TVALID,
      outStream_TDATA(31 downto 0) => hls_inst_outStream_TDATA(31 downto 0),
      outStream_TDEST(5 downto 0) => hls_inst_outStream_TDEST(5 downto 0),
      outStream_TID(4 downto 0) => hls_inst_outStream_TID(4 downto 0),
      outStream_TKEEP(3 downto 0) => hls_inst_outStream_TKEEP(3 downto 0),
      outStream_TLAST(0) => hls_inst_outStream_TLAST(0),
      outStream_TREADY => hls_inst_outStream_TREADY,
      outStream_TSTRB(3 downto 0) => hls_inst_outStream_TSTRB(3 downto 0),
      outStream_TUSER(1 downto 0) => hls_inst_outStream_TUSER(1 downto 0),
      outStream_TVALID => hls_inst_outStream_TVALID
    );
end STRUCTURE;
