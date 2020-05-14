--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu May 14 15:26:02 2020
--Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
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
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_tvalid : in STD_LOGIC;
    inStream_tready : out STD_LOGIC;
    inStream_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_tvalid : out STD_LOGIC;
    outStream_tready : in STD_LOGIC;
    outStream_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outStream_tdest : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_tid : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_tdata(31 downto 0) => inStream_tdata(31 downto 0),
      inStream_tdest(5 downto 0) => inStream_tdest(5 downto 0),
      inStream_tid(4 downto 0) => inStream_tid(4 downto 0),
      inStream_tkeep(3 downto 0) => inStream_tkeep(3 downto 0),
      inStream_tlast(0) => inStream_tlast(0),
      inStream_tready => inStream_tready,
      inStream_tstrb(3 downto 0) => inStream_tstrb(3 downto 0),
      inStream_tuser(1 downto 0) => inStream_tuser(1 downto 0),
      inStream_tvalid => inStream_tvalid,
      outStream_tdata(31 downto 0) => outStream_tdata(31 downto 0),
      outStream_tdest(5 downto 0) => outStream_tdest(5 downto 0),
      outStream_tid(4 downto 0) => outStream_tid(4 downto 0),
      outStream_tkeep(3 downto 0) => outStream_tkeep(3 downto 0),
      outStream_tlast(0) => outStream_tlast(0),
      outStream_tready => outStream_tready,
      outStream_tstrb(3 downto 0) => outStream_tstrb(3 downto 0),
      outStream_tuser(1 downto 0) => outStream_tuser(1 downto 0),
      outStream_tvalid => outStream_tvalid
    );
end STRUCTURE;
