--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu May 14 17:08:41 2020
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
    video_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tready : out STD_LOGIC;
    video_in_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tvalid : in STD_LOGIC;
    video_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tready : in STD_LOGIC;
    video_out_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tvalid : out STD_LOGIC
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    video_in_tvalid : in STD_LOGIC;
    video_in_tready : out STD_LOGIC;
    video_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tvalid : out STD_LOGIC;
    video_out_tready : in STD_LOGIC;
    video_out_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tdest : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      video_in_tdata(7 downto 0) => video_in_tdata(7 downto 0),
      video_in_tdest(0) => video_in_tdest(0),
      video_in_tid(0) => video_in_tid(0),
      video_in_tkeep(0) => video_in_tkeep(0),
      video_in_tlast(0) => video_in_tlast(0),
      video_in_tready => video_in_tready,
      video_in_tstrb(0) => video_in_tstrb(0),
      video_in_tuser(0) => video_in_tuser(0),
      video_in_tvalid => video_in_tvalid,
      video_out_tdata(7 downto 0) => video_out_tdata(7 downto 0),
      video_out_tdest(0) => video_out_tdest(0),
      video_out_tid(0) => video_out_tid(0),
      video_out_tkeep(0) => video_out_tkeep(0),
      video_out_tlast(0) => video_out_tlast(0),
      video_out_tready => video_out_tready,
      video_out_tstrb(0) => video_out_tstrb(0),
      video_out_tuser(0) => video_out_tuser(0),
      video_out_tvalid => video_out_tvalid
    );
end STRUCTURE;
