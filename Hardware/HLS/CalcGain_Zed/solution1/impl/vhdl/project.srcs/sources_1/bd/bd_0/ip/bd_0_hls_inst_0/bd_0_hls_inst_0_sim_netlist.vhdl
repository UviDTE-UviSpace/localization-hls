-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu May 14 15:26:44 2020
-- Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/localization-hls/Hardware/HLS/CalcGain_Zed/solution1/impl/vhdl/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_xil_defaultlib_ibuf is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    count : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TREADY_0 : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    \ireg_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ireg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    icmp_ln13_fu_126_p2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC;
    \count_reg[1]_0\ : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[32]_2\ : in STD_LOGIC;
    \ireg_reg[32]_3\ : in STD_LOGIC;
    \ireg_reg[32]_4\ : in STD_LOGIC;
    \ireg_reg[32]_5\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln13_reg_172 : in STD_LOGIC;
    icmp_ln13_reg_172_pp0_iter1_reg : in STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \odata_int_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_xil_defaultlib_ibuf : entity is "xil_defaultlib_ibuf";
end bd_0_hls_inst_0_xil_defaultlib_ibuf;

architecture STRUCTURE of bd_0_hls_inst_0_xil_defaultlib_ibuf is
  signal \^ap_cs_fsm_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter1_reg\ : STD_LOGIC;
  signal \ireg[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \^ireg_reg[32]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[16]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[17]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[18]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[19]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[20]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[21]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[22]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[23]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[24]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[25]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[26]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[27]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[28]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[29]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[30]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[31]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \odata_int[10]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \odata_int[11]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \odata_int[12]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \odata_int[13]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \odata_int[14]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \odata_int[15]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \odata_int[16]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \odata_int[17]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \odata_int[18]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \odata_int[19]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \odata_int[20]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \odata_int[21]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \odata_int[22]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \odata_int[23]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \odata_int[24]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \odata_int[25]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \odata_int[26]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \odata_int[27]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \odata_int[28]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \odata_int[29]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \odata_int[30]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \odata_int[31]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \odata_int[32]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \odata_int[5]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \odata_int[5]_i_1__2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \odata_int[6]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \odata_int[6]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \odata_int[7]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \odata_int[8]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \odata_int[9]_i_1__0\ : label is "soft_lutpair42";
begin
  \ap_CS_fsm_reg[1]\(0) <= \^ap_cs_fsm_reg[1]\(0);
  ap_enable_reg_pp0_iter1_reg <= \^ap_enable_reg_pp0_iter1_reg\;
  \ireg_reg[32]_0\(0) <= \^ireg_reg[32]_0\(0);
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => Q(0),
      I1 => \ap_CS_fsm_reg[1]_0\,
      I2 => Q(2),
      I3 => ap_block_pp0_stage0_subdone,
      O => D(0)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFAA"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg\,
      I1 => \ireg_reg[32]_3\,
      I2 => \ireg_reg[32]_4\,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => \ap_CS_fsm_reg[1]_1\(0),
      O => ap_block_pp0_stage0_subdone
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888800A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter2_reg,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln13_fu_126_p2,
      I4 => ap_block_pp0_stage0_subdone,
      O => ap_rst_n_0
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A088A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter2_reg_0,
      I2 => ap_enable_reg_pp0_iter2_reg,
      I3 => ap_block_pp0_stage0_subdone,
      I4 => Q(0),
      O => ap_rst_n_1
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFC00000"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^ap_cs_fsm_reg[1]\(0),
      I2 => \count_reg[1]\,
      I3 => \count_reg[1]_0\,
      I4 => ap_rst_n,
      O => outStream_TREADY_0
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]\(0),
      I1 => \count_reg[1]\,
      I2 => \count_reg[1]_0\,
      I3 => outStream_TREADY,
      O => count(0)
    );
\ireg[32]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^ireg_reg[32]_0\(0),
      I1 => outStream_TREADY,
      I2 => \ireg_reg[1]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[32]_i_1__0_n_0\
    );
\ireg[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000008080808"
    )
        port map (
      I0 => \ireg_reg[32]_2\,
      I1 => Q(1),
      I2 => \^ap_enable_reg_pp0_iter1_reg\,
      I3 => \ireg_reg[32]_3\,
      I4 => \ireg_reg[32]_4\,
      I5 => \ireg_reg[32]_5\,
      O => \^ap_cs_fsm_reg[1]\(0)
    );
\ireg[32]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022F0FF2022"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2_reg,
      I1 => icmp_ln13_reg_172,
      I2 => \^ireg_reg[32]_0\(0),
      I3 => ap_rst_n,
      I4 => ap_enable_reg_pp0_iter2_reg_0,
      I5 => icmp_ln13_reg_172_pp0_iter1_reg,
      O => \^ap_enable_reg_pp0_iter1_reg\
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(9),
      Q => \ireg_reg_n_0_[10]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(10),
      Q => \ireg_reg_n_0_[11]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(11),
      Q => \ireg_reg_n_0_[12]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(12),
      Q => \ireg_reg_n_0_[13]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(13),
      Q => \ireg_reg_n_0_[14]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(14),
      Q => \ireg_reg_n_0_[15]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(15),
      Q => \ireg_reg_n_0_[16]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(16),
      Q => \ireg_reg_n_0_[17]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(17),
      Q => \ireg_reg_n_0_[18]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(18),
      Q => \ireg_reg_n_0_[19]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(0),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(19),
      Q => \ireg_reg_n_0_[20]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(20),
      Q => \ireg_reg_n_0_[21]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(21),
      Q => \ireg_reg_n_0_[22]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(22),
      Q => \ireg_reg_n_0_[23]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(23),
      Q => \ireg_reg_n_0_[24]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(24),
      Q => \ireg_reg_n_0_[25]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(25),
      Q => \ireg_reg_n_0_[26]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(26),
      Q => \ireg_reg_n_0_[27]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(27),
      Q => \ireg_reg_n_0_[28]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(28),
      Q => \ireg_reg_n_0_[29]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(1),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(29),
      Q => \ireg_reg_n_0_[30]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(30),
      Q => \ireg_reg_n_0_[31]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \^ap_cs_fsm_reg[1]\(0),
      Q => \^ireg_reg[32]_0\(0),
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(2),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(3),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(4),
      Q => \ireg_reg_n_0_[5]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(5),
      Q => \ireg_reg_n_0_[6]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(6),
      Q => \ireg_reg_n_0_[7]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(7),
      Q => \ireg_reg_n_0_[8]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[31]_0\(8),
      Q => \ireg_reg_n_0_[9]\,
      R => \ireg[32]_i_1__0_n_0\
    );
\odata_int[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[10]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(9),
      O => \ireg_reg[32]_1\(9)
    );
\odata_int[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[11]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(10),
      O => \ireg_reg[32]_1\(10)
    );
\odata_int[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[12]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(11),
      O => \ireg_reg[32]_1\(11)
    );
\odata_int[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[13]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(12),
      O => \ireg_reg[32]_1\(12)
    );
\odata_int[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[14]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(13),
      O => \ireg_reg[32]_1\(13)
    );
\odata_int[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[15]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(14),
      O => \ireg_reg[32]_1\(14)
    );
\odata_int[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[16]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(15),
      O => \ireg_reg[32]_1\(15)
    );
\odata_int[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[17]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(16),
      O => \ireg_reg[32]_1\(16)
    );
\odata_int[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[18]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(17),
      O => \ireg_reg[32]_1\(17)
    );
\odata_int[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[19]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(18),
      O => \ireg_reg[32]_1\(18)
    );
\odata_int[1]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(0),
      O => \ireg_reg[32]_1\(0)
    );
\odata_int[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[20]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(19),
      O => \ireg_reg[32]_1\(19)
    );
\odata_int[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[21]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(20),
      O => \ireg_reg[32]_1\(20)
    );
\odata_int[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[22]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(21),
      O => \ireg_reg[32]_1\(21)
    );
\odata_int[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[23]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(22),
      O => \ireg_reg[32]_1\(22)
    );
\odata_int[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[24]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(23),
      O => \ireg_reg[32]_1\(23)
    );
\odata_int[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[25]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(24),
      O => \ireg_reg[32]_1\(24)
    );
\odata_int[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[26]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(25),
      O => \ireg_reg[32]_1\(25)
    );
\odata_int[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[27]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(26),
      O => \ireg_reg[32]_1\(26)
    );
\odata_int[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[28]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(27),
      O => \ireg_reg[32]_1\(27)
    );
\odata_int[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[29]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(28),
      O => \ireg_reg[32]_1\(28)
    );
\odata_int[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(1),
      O => \ireg_reg[32]_1\(1)
    );
\odata_int[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[30]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(29),
      O => \ireg_reg[32]_1\(29)
    );
\odata_int[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[31]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(30),
      O => \ireg_reg[32]_1\(30)
    );
\odata_int[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ireg_reg[32]_0\(0),
      I1 => \^ap_cs_fsm_reg[1]\(0),
      O => \ireg_reg[32]_1\(31)
    );
\odata_int[3]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(2),
      O => \ireg_reg[32]_1\(2)
    );
\odata_int[4]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(3),
      O => \ireg_reg[32]_1\(3)
    );
\odata_int[4]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]\(0),
      I1 => \odata_int_reg[4]\(0),
      O => \ireg_reg[4]_0\(0)
    );
\odata_int[4]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]\(0),
      I1 => \odata_int_reg[4]_0\(0),
      O => \ireg_reg[4]_1\(0)
    );
\odata_int[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(4),
      O => \ireg_reg[32]_1\(4)
    );
\odata_int[5]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]\(0),
      I1 => \odata_int_reg[5]\(0),
      O => \ireg_reg[5]_0\(0)
    );
\odata_int[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[6]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(5),
      O => \ireg_reg[32]_1\(5)
    );
\odata_int[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]\(0),
      I1 => \odata_int_reg[6]\(0),
      O => \ireg_reg[6]_0\(0)
    );
\odata_int[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(6),
      O => \ireg_reg[32]_1\(6)
    );
\odata_int[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[8]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(7),
      O => \ireg_reg[32]_1\(7)
    );
\odata_int[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[9]\,
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg[31]_0\(8),
      O => \ireg_reg[32]_1\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_xil_defaultlib_ibuf_22 is
  port (
    inStream_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst_n : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_xil_defaultlib_ibuf_22 : entity is "xil_defaultlib_ibuf";
end bd_0_hls_inst_0_xil_defaultlib_ibuf_22;

architecture STRUCTURE of bd_0_hls_inst_0_xil_defaultlib_ibuf_22 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[16]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[17]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[18]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[19]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[20]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[21]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[22]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[23]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[24]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[25]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[26]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[27]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[28]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[29]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[30]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \odata_int[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata_int[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata_int[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata_int[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata_int[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata_int[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata_int[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata_int[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata_int[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata_int[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \odata_int[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata_int[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata_int[22]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata_int[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata_int[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata_int[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata_int[26]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata_int[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata_int[28]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata_int[29]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \odata_int[30]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata_int[32]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \odata_int[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \odata_int[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata_int[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \odata_int[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \odata_int[9]_i_1\ : label is "soft_lutpair11";
begin
  Q(0) <= \^q\(0);
inStream_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => D(31),
      I1 => ap_rst_n,
      I2 => \^q\(0),
      O => inStream_TREADY
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \ireg_reg_n_0_[0]\,
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(10),
      Q => \ireg_reg_n_0_[10]\,
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(11),
      Q => \ireg_reg_n_0_[11]\,
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(12),
      Q => \ireg_reg_n_0_[12]\,
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(13),
      Q => \ireg_reg_n_0_[13]\,
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(14),
      Q => \ireg_reg_n_0_[14]\,
      R => SR(0)
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(15),
      Q => \ireg_reg_n_0_[15]\,
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(16),
      Q => \ireg_reg_n_0_[16]\,
      R => SR(0)
    );
\ireg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(17),
      Q => \ireg_reg_n_0_[17]\,
      R => SR(0)
    );
\ireg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(18),
      Q => \ireg_reg_n_0_[18]\,
      R => SR(0)
    );
\ireg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(19),
      Q => \ireg_reg_n_0_[19]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(1),
      Q => \ireg_reg_n_0_[1]\,
      R => SR(0)
    );
\ireg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(20),
      Q => \ireg_reg_n_0_[20]\,
      R => SR(0)
    );
\ireg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(21),
      Q => \ireg_reg_n_0_[21]\,
      R => SR(0)
    );
\ireg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(22),
      Q => \ireg_reg_n_0_[22]\,
      R => SR(0)
    );
\ireg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(23),
      Q => \ireg_reg_n_0_[23]\,
      R => SR(0)
    );
\ireg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(24),
      Q => \ireg_reg_n_0_[24]\,
      R => SR(0)
    );
\ireg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(25),
      Q => \ireg_reg_n_0_[25]\,
      R => SR(0)
    );
\ireg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(26),
      Q => \ireg_reg_n_0_[26]\,
      R => SR(0)
    );
\ireg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(27),
      Q => \ireg_reg_n_0_[27]\,
      R => SR(0)
    );
\ireg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(28),
      Q => \ireg_reg_n_0_[28]\,
      R => SR(0)
    );
\ireg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(29),
      Q => \ireg_reg_n_0_[29]\,
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(2),
      Q => \ireg_reg_n_0_[2]\,
      R => SR(0)
    );
\ireg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(30),
      Q => \ireg_reg_n_0_[30]\,
      R => SR(0)
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(31),
      Q => \^q\(0),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(3),
      Q => \ireg_reg_n_0_[3]\,
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(4),
      Q => \ireg_reg_n_0_[4]\,
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(5),
      Q => \ireg_reg_n_0_[5]\,
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(6),
      Q => \ireg_reg_n_0_[6]\,
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(7),
      Q => \ireg_reg_n_0_[7]\,
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(8),
      Q => \ireg_reg_n_0_[8]\,
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(9),
      Q => \ireg_reg_n_0_[9]\,
      R => SR(0)
    );
\odata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => D(0),
      O => \ireg_reg[32]_0\(0)
    );
\odata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[10]\,
      I1 => \^q\(0),
      I2 => D(10),
      O => \ireg_reg[32]_0\(10)
    );
\odata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[11]\,
      I1 => \^q\(0),
      I2 => D(11),
      O => \ireg_reg[32]_0\(11)
    );
\odata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[12]\,
      I1 => \^q\(0),
      I2 => D(12),
      O => \ireg_reg[32]_0\(12)
    );
\odata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[13]\,
      I1 => \^q\(0),
      I2 => D(13),
      O => \ireg_reg[32]_0\(13)
    );
\odata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[14]\,
      I1 => \^q\(0),
      I2 => D(14),
      O => \ireg_reg[32]_0\(14)
    );
\odata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[15]\,
      I1 => \^q\(0),
      I2 => D(15),
      O => \ireg_reg[32]_0\(15)
    );
\odata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[16]\,
      I1 => \^q\(0),
      I2 => D(16),
      O => \ireg_reg[32]_0\(16)
    );
\odata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[17]\,
      I1 => \^q\(0),
      I2 => D(17),
      O => \ireg_reg[32]_0\(17)
    );
\odata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[18]\,
      I1 => \^q\(0),
      I2 => D(18),
      O => \ireg_reg[32]_0\(18)
    );
\odata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[19]\,
      I1 => \^q\(0),
      I2 => D(19),
      O => \ireg_reg[32]_0\(19)
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => D(1),
      O => \ireg_reg[32]_0\(1)
    );
\odata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[20]\,
      I1 => \^q\(0),
      I2 => D(20),
      O => \ireg_reg[32]_0\(20)
    );
\odata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[21]\,
      I1 => \^q\(0),
      I2 => D(21),
      O => \ireg_reg[32]_0\(21)
    );
\odata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[22]\,
      I1 => \^q\(0),
      I2 => D(22),
      O => \ireg_reg[32]_0\(22)
    );
\odata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[23]\,
      I1 => \^q\(0),
      I2 => D(23),
      O => \ireg_reg[32]_0\(23)
    );
\odata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[24]\,
      I1 => \^q\(0),
      I2 => D(24),
      O => \ireg_reg[32]_0\(24)
    );
\odata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[25]\,
      I1 => \^q\(0),
      I2 => D(25),
      O => \ireg_reg[32]_0\(25)
    );
\odata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[26]\,
      I1 => \^q\(0),
      I2 => D(26),
      O => \ireg_reg[32]_0\(26)
    );
\odata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[27]\,
      I1 => \^q\(0),
      I2 => D(27),
      O => \ireg_reg[32]_0\(27)
    );
\odata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[28]\,
      I1 => \^q\(0),
      I2 => D(28),
      O => \ireg_reg[32]_0\(28)
    );
\odata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[29]\,
      I1 => \^q\(0),
      I2 => D(29),
      O => \ireg_reg[32]_0\(29)
    );
\odata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => D(2),
      O => \ireg_reg[32]_0\(2)
    );
\odata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[30]\,
      I1 => \^q\(0),
      I2 => D(30),
      O => \ireg_reg[32]_0\(30)
    );
\odata_int[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => D(31),
      O => \ireg_reg[32]_0\(31)
    );
\odata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => D(3),
      O => \ireg_reg[32]_0\(3)
    );
\odata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => D(4),
      O => \ireg_reg[32]_0\(4)
    );
\odata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => D(5),
      O => \ireg_reg[32]_0\(5)
    );
\odata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => D(6),
      O => \ireg_reg[32]_0\(6)
    );
\odata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => D(7),
      O => \ireg_reg[32]_0\(7)
    );
\odata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[8]\,
      I1 => \^q\(0),
      I2 => D(8),
      O => \ireg_reg[32]_0\(8)
    );
\odata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[9]\,
      I1 => \^q\(0),
      I2 => D(9),
      O => \ireg_reg[32]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_1__5\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__6\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \odata_int[3]_i_2__0\ : label is "soft_lutpair57";
begin
  Q(0) <= \^q\(0);
\ireg[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => outStream_TREADY,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[4]_i_1__2_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[4]_i_1__2_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[4]_i_1__2_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[4]_i_1__2_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[4]_i_1__2_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(4),
      Q => \^q\(0),
      R => \ireg[4]_i_1__2_n_0\
    );
\odata_int[0]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \odata_int[4]_i_2__0\ : label is "soft_lutpair27";
begin
  Q(0) <= \^q\(0);
\ireg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => ack_out,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[4]_i_1__0_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[4]_i_1__0_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[4]_i_1__0_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[4]_i_1__0_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[4]_i_1__0_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(4),
      Q => \^q\(0),
      R => \ireg[4]_i_1__0_n_0\
    );
\odata_int[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(3),
      O => D(3)
    );
\odata_int[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ireg_reg[4]_0\(4),
      I1 => \^q\(0),
      O => D(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \odata_int[4]_i_2\ : label is "soft_lutpair25";
begin
  Q(0) <= \^q\(0);
\ireg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => ack_out,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[4]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[4]_i_1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[4]_i_1_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[4]_i_1_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[4]_i_1_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(4),
      Q => \^q\(0),
      R => \ireg[4]_i_1_n_0\
    );
\odata_int[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(3),
      O => D(3)
    );
\odata_int[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ireg_reg[4]_0\(4),
      I1 => \^q\(0),
      O => D(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_1__4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__5\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \odata_int[3]_i_2\ : label is "soft_lutpair54";
begin
  Q(0) <= \^q\(0);
\ireg[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => outStream_TREADY,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[4]_i_1__1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[4]_i_1__1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[4]_i_1__1_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[4]_i_1__1_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[4]_i_1__1_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[4]_0\(4),
      Q => \^q\(0),
      R => \ireg[4]_i_1__1_n_0\
    );
\odata_int[0]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[4]_0\(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1\ is
  port (
    p_0_in : out STD_LOGIC;
    \ireg_reg[1]_0\ : out STD_LOGIC;
    \ireg_reg[0]_0\ : out STD_LOGIC;
    vld_in : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[2]_0\ : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1\ is
  signal \ireg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[2]_i_1_n_0\ : STD_LOGIC;
  signal \^ireg_reg[0]_0\ : STD_LOGIC;
  signal \^ireg_reg[1]_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
begin
  \ireg_reg[0]_0\ <= \^ireg_reg[0]_0\;
  \ireg_reg[1]_0\ <= \^ireg_reg[1]_0\;
  p_0_in <= \^p_0_in\;
\ireg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A000A0A0C0A0"
    )
        port map (
      I0 => \^ireg_reg[0]_0\,
      I1 => Q(0),
      I2 => ap_rst_n,
      I3 => \ireg_reg[2]_0\,
      I4 => outStream_TREADY,
      I5 => \^p_0_in\,
      O => \ireg[0]_i_1_n_0\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A000A0A0C0A0"
    )
        port map (
      I0 => \^ireg_reg[1]_0\,
      I1 => Q(1),
      I2 => ap_rst_n,
      I3 => \ireg_reg[2]_0\,
      I4 => outStream_TREADY,
      I5 => \^p_0_in\,
      O => \ireg[1]_i_1_n_0\
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C00080"
    )
        port map (
      I0 => vld_in,
      I1 => ap_rst_n,
      I2 => \ireg_reg[2]_0\,
      I3 => outStream_TREADY,
      I4 => \^p_0_in\,
      O => \ireg[2]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[0]_i_1_n_0\,
      Q => \^ireg_reg[0]_0\,
      R => '0'
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[1]_i_1_n_0\,
      Q => \^ireg_reg[1]_0\,
      R => '0'
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[2]_i_1_n_0\,
      Q => \^p_0_in\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10\ is
  port (
    cdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    \ireg_reg[2]_0\ : in STD_LOGIC;
    ack_out : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10\ is
  signal \ireg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
\ireg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A000A0A0C0A0"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => inStream_TUSER(0),
      I2 => ap_rst_n,
      I3 => \ireg_reg[2]_0\,
      I4 => ack_out,
      I5 => \^p_0_in\,
      O => \ireg[0]_i_1_n_0\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A000A0A0C0A0"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => inStream_TUSER(1),
      I2 => ap_rst_n,
      I3 => \ireg_reg[2]_0\,
      I4 => ack_out,
      I5 => \^p_0_in\,
      O => \ireg[1]_i_1_n_0\
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C00080"
    )
        port map (
      I0 => inStream_TVALID,
      I1 => ap_rst_n,
      I2 => \ireg_reg[2]_0\,
      I3 => ack_out,
      I4 => \^p_0_in\,
      O => \ireg[2]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[0]_i_1_n_0\,
      Q => \ireg_reg_n_0_[0]\,
      R => '0'
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[1]_i_1_n_0\,
      Q => \ireg_reg_n_0_[1]\,
      R => '0'
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[2]_i_1_n_0\,
      Q => \^p_0_in\,
      R => '0'
    );
\odata_int[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^p_0_in\,
      I2 => ap_rst_n,
      I3 => inStream_TUSER(0),
      O => cdata(0)
    );
\odata_int[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^p_0_in\,
      I2 => ap_rst_n,
      I3 => inStream_TUSER(1),
      O => cdata(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2\ is
  port (
    p_0_in : out STD_LOGIC;
    \ireg_reg[0]_0\ : out STD_LOGIC;
    vld_in : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    tmp_last_V_reg_201 : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2\ is
  signal \ireg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ireg_reg[0]_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
begin
  \ireg_reg[0]_0\ <= \^ireg_reg[0]_0\;
  p_0_in <= \^p_0_in\;
\ireg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A000A0A0C0A0"
    )
        port map (
      I0 => \^ireg_reg[0]_0\,
      I1 => tmp_last_V_reg_201,
      I2 => ap_rst_n,
      I3 => \ireg_reg[1]_0\,
      I4 => outStream_TREADY,
      I5 => \^p_0_in\,
      O => \ireg[0]_i_1_n_0\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C00080"
    )
        port map (
      I0 => vld_in,
      I1 => ap_rst_n,
      I2 => \ireg_reg[1]_0\,
      I3 => outStream_TREADY,
      I4 => \^p_0_in\,
      O => \ireg[1]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[0]_i_1_n_0\,
      Q => \^ireg_reg[0]_0\,
      R => '0'
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[1]_i_1_n_0\,
      Q => \^p_0_in\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14\ is
  port (
    cdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TVALID : in STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC;
    ack_out : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14\ is
  signal \ireg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
\ireg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A000A0A0C0A0"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => inStream_TLAST(0),
      I2 => ap_rst_n,
      I3 => \ireg_reg[1]_0\,
      I4 => ack_out,
      I5 => \^p_0_in\,
      O => \ireg[0]_i_1_n_0\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C00080"
    )
        port map (
      I0 => inStream_TVALID,
      I1 => ap_rst_n,
      I2 => \ireg_reg[1]_0\,
      I3 => ack_out,
      I4 => \^p_0_in\,
      O => \ireg[1]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[0]_i_1_n_0\,
      Q => \ireg_reg_n_0_[0]\,
      R => '0'
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ireg[1]_i_1_n_0\,
      Q => \^p_0_in\,
      R => '0'
    );
\odata_int[0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^p_0_in\,
      I2 => ap_rst_n,
      I3 => inStream_TLAST(0),
      O => cdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__7\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__7\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__5\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \odata_int[4]_i_2__1\ : label is "soft_lutpair52";
begin
  Q(0) <= \^q\(0);
\ireg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => outStream_TREADY,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[5]_i_1__0_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[5]_i_1__0_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[5]_i_1__0_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[5]_i_1__0_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[5]_i_1__0_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[5]_i_1__0_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(5),
      Q => \^q\(0),
      R => \ireg[5]_i_1__0_n_0\
    );
\odata_int[0]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(3),
      O => D(3)
    );
\odata_int[4]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(4),
      O => D(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[5]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \odata_int[5]_i_2\ : label is "soft_lutpair22";
begin
  Q(0) <= \^q\(0);
\ireg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => ack_out,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[5]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[5]_i_1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[5]_i_1_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[5]_i_1_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[5]_i_1_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[5]_i_1_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[5]_0\(5),
      Q => \^q\(0),
      R => \ireg[5]_i_1_n_0\
    );
\odata_int[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(3),
      O => D(3)
    );
\odata_int[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[5]_0\(4),
      O => D(4)
    );
\odata_int[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ireg_reg[5]_0\(5),
      I1 => \^q\(0),
      O => D(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_1__7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__8\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__8\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__6\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \odata_int[5]_i_2__0\ : label is "soft_lutpair49";
begin
  Q(0) <= \^q\(0);
\ireg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => outStream_TREADY,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(5),
      Q => \ireg_reg_n_0_[5]\,
      R => \ireg[6]_i_1__0_n_0\
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(6),
      Q => \^q\(0),
      R => \ireg[6]_i_1__0_n_0\
    );
\odata_int[0]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(3),
      O => D(3)
    );
\odata_int[4]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(4),
      O => D(4)
    );
\odata_int[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(5),
      O => D(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20\ : entity is "xil_defaultlib_ibuf";
end \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[6]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \odata_int[5]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \odata_int[6]_i_2\ : label is "soft_lutpair19";
begin
  Q(0) <= \^q\(0);
\ireg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => ack_out,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[6]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[6]_i_1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[6]_i_1_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[6]_i_1_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[6]_i_1_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[6]_i_1_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(5),
      Q => \ireg_reg_n_0_[5]\,
      R => \ireg[6]_i_1_n_0\
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[6]_0\(6),
      Q => \^q\(0),
      R => \ireg[6]_i_1_n_0\
    );
\odata_int[0]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(0),
      O => D(0)
    );
\odata_int[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(1),
      O => D(1)
    );
\odata_int[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(2),
      O => D(2)
    );
\odata_int[3]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(3),
      O => D(3)
    );
\odata_int[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(4),
      O => D(4)
    );
\odata_int[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[6]_0\(5),
      O => D(5)
    );
\odata_int[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ireg_reg[6]_0\(6),
      I1 => \^q\(0),
      O => D(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_xil_defaultlib_obuf is
  port (
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]\ : in STD_LOGIC;
    icmp_ln13_reg_172 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[32]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_xil_defaultlib_obuf : entity is "xil_defaultlib_obuf";
end bd_0_hls_inst_0_xil_defaultlib_obuf;

architecture STRUCTURE of bd_0_hls_inst_0_xil_defaultlib_obuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata_int[31]_i_2_n_0\ : STD_LOGIC;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  SR(0) <= \^sr\(0);
\ireg[32]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^q\(31),
      I2 => \ireg_reg[32]_0\(0),
      O => E(0)
    );
\ireg[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ireg_reg[32]\,
      I1 => icmp_ln13_reg_172,
      O => ap_enable_reg_pp0_iter1_reg
    );
\odata_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\odata_int[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(31),
      I1 => outStream_TREADY,
      O => \odata_int[31]_i_2_n_0\
    );
\odata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\odata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\odata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\odata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\odata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\odata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\odata_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\odata_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\odata_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\odata_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\odata_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\odata_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(21),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\odata_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(22),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\odata_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(23),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\odata_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(24),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\odata_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(25),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\odata_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(26),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\odata_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(27),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\odata_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(28),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(29),
      Q => \^q\(29),
      R => \^sr\(0)
    );
\odata_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(30),
      Q => \^q\(30),
      R => \^sr\(0)
    );
\odata_int_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(31),
      Q => \^q\(31),
      R => \^sr\(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\odata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[31]_i_2_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_xil_defaultlib_obuf_23 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[32]_0\ : out STD_LOGIC;
    \odata_int_reg[32]_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    \odata_int_reg[32]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln13_reg_172_reg[0]\ : out STD_LOGIC;
    \icmp_ln13_reg_172_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    icmp_ln13_fu_126_p2 : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \idx_0_reg_115_reg[0]\ : in STD_LOGIC;
    \idx_0_reg_115_reg[0]_0\ : in STD_LOGIC;
    \idx_0_reg_115_reg[0]_1\ : in STD_LOGIC;
    icmp_ln13_reg_172 : in STD_LOGIC;
    icmp_ln13_reg_172_pp0_iter1_reg : in STD_LOGIC;
    \odata_int_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[32]_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_xil_defaultlib_obuf_23 : entity is "xil_defaultlib_obuf";
end bd_0_hls_inst_0_xil_defaultlib_obuf_23;

architecture STRUCTURE of bd_0_hls_inst_0_xil_defaultlib_obuf_23 is
  signal \odata_int[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[32]_0\ : STD_LOGIC;
  signal \^odata_int_reg[32]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tmp_data_V_reg_181[30]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \icmp_ln13_reg_172[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \icmp_ln13_reg_172_pp0_iter1_reg[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ireg[32]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ireg[32]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tmp_data_V_reg_181[30]_i_1\ : label is "soft_lutpair16";
begin
  \odata_int_reg[32]_0\ <= \^odata_int_reg[32]_0\;
  \odata_int_reg[32]_1\(31 downto 0) <= \^odata_int_reg[32]_1\(31 downto 0);
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001100F1"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\,
      I1 => \tmp_data_V_reg_181[30]_i_2_n_0\,
      I2 => \ap_CS_fsm_reg[2]_0\,
      I3 => Q(0),
      I4 => Q(1),
      O => D(0)
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A800A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln13_fu_126_p2,
      I4 => \tmp_data_V_reg_181[30]_i_2_n_0\,
      O => ap_rst_n_0
    );
\icmp_ln13_reg_172[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => icmp_ln13_fu_126_p2,
      I1 => \tmp_data_V_reg_181[30]_i_2_n_0\,
      I2 => icmp_ln13_reg_172,
      O => \icmp_ln13_reg_172_reg[0]\
    );
\icmp_ln13_reg_172_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => icmp_ln13_reg_172,
      I1 => \tmp_data_V_reg_181[30]_i_2_n_0\,
      I2 => icmp_ln13_reg_172_pp0_iter1_reg,
      O => \icmp_ln13_reg_172_reg[0]_0\
    );
\idx_0_reg_115[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => \^odata_int_reg[32]_0\,
      O => \ap_CS_fsm_reg[0]\(0)
    );
\idx_0_reg_115[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080008000800"
    )
        port map (
      I0 => \^odata_int_reg[32]_1\(31),
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \idx_0_reg_115_reg[0]\,
      I3 => Q(1),
      I4 => \idx_0_reg_115_reg[0]_0\,
      I5 => \idx_0_reg_115_reg[0]_1\,
      O => \^odata_int_reg[32]_0\
    );
\ireg[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \ireg_reg[32]\(0),
      I1 => \^odata_int_reg[32]_0\,
      I2 => \^odata_int_reg[32]_1\(31),
      I3 => ap_rst_n,
      O => SR(0)
    );
\ireg[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^odata_int_reg[32]_0\,
      I1 => \^odata_int_reg[32]_1\(31),
      I2 => \ireg_reg[32]\(0),
      O => \odata_int_reg[32]_2\(0)
    );
\ireg[32]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \^odata_int_reg[32]_1\(31),
      O => ap_enable_reg_pp0_iter0_reg
    );
\odata_int[32]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^odata_int_reg[32]_1\(31),
      I1 => \^odata_int_reg[32]_0\,
      O => \odata_int[32]_i_1__0_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(0),
      Q => \^odata_int_reg[32]_1\(0),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(10),
      Q => \^odata_int_reg[32]_1\(10),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(11),
      Q => \^odata_int_reg[32]_1\(11),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(12),
      Q => \^odata_int_reg[32]_1\(12),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(13),
      Q => \^odata_int_reg[32]_1\(13),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(14),
      Q => \^odata_int_reg[32]_1\(14),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(15),
      Q => \^odata_int_reg[32]_1\(15),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(16),
      Q => \^odata_int_reg[32]_1\(16),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(17),
      Q => \^odata_int_reg[32]_1\(17),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(18),
      Q => \^odata_int_reg[32]_1\(18),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(19),
      Q => \^odata_int_reg[32]_1\(19),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(1),
      Q => \^odata_int_reg[32]_1\(1),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(20),
      Q => \^odata_int_reg[32]_1\(20),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(21),
      Q => \^odata_int_reg[32]_1\(21),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(22),
      Q => \^odata_int_reg[32]_1\(22),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(23),
      Q => \^odata_int_reg[32]_1\(23),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(24),
      Q => \^odata_int_reg[32]_1\(24),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(25),
      Q => \^odata_int_reg[32]_1\(25),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(26),
      Q => \^odata_int_reg[32]_1\(26),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(27),
      Q => \^odata_int_reg[32]_1\(27),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(28),
      Q => \^odata_int_reg[32]_1\(28),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(29),
      Q => \^odata_int_reg[32]_1\(29),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(2),
      Q => \^odata_int_reg[32]_1\(2),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(30),
      Q => \^odata_int_reg[32]_1\(30),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(31),
      Q => \^odata_int_reg[32]_1\(31),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(3),
      Q => \^odata_int_reg[32]_1\(3),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(4),
      Q => \^odata_int_reg[32]_1\(4),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(5),
      Q => \^odata_int_reg[32]_1\(5),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(6),
      Q => \^odata_int_reg[32]_1\(6),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(7),
      Q => \^odata_int_reg[32]_1\(7),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(8),
      Q => \^odata_int_reg[32]_1\(8),
      R => \odata_int_reg[0]_0\(0)
    );
\odata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[32]_i_1__0_n_0\,
      D => \odata_int_reg[32]_3\(9),
      Q => \^odata_int_reg[32]_1\(9),
      R => \odata_int_reg[0]_0\(0)
    );
\tmp_data_V_reg_181[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tmp_data_V_reg_181[30]_i_2_n_0\,
      I1 => icmp_ln13_fu_126_p2,
      O => E(0)
    );
\tmp_data_V_reg_181[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0444FFFFFFFF"
    )
        port map (
      I0 => \^odata_int_reg[32]_1\(31),
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \idx_0_reg_115_reg[0]_0\,
      I3 => \idx_0_reg_115_reg[0]_1\,
      I4 => \idx_0_reg_115_reg[0]\,
      I5 => Q(1),
      O => \tmp_data_V_reg_181[30]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \odata_int[3]_i_1__8_n_0\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\ireg[4]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^q\(4),
      I2 => \ireg_reg[4]\(0),
      O => E(0)
    );
\odata_int[3]_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(4),
      I1 => outStream_TREADY,
      O => \odata_int[3]_i_1__8_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__8_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__8_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__8_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__8_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__8_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \odata_int[4]_i_1__7_n_0\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\ireg[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ack_out,
      I1 => \^q\(4),
      I2 => \ireg_reg[4]\(0),
      O => E(0)
    );
\odata_int[4]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(4),
      I1 => ack_out,
      O => \odata_int[4]_i_1__7_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__7_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__7_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__7_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__7_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__7_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \odata_int[4]_i_1__6_n_0\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\ireg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ack_out,
      I1 => \^q\(4),
      I2 => \ireg_reg[4]\(0),
      O => E(0)
    );
\odata_int[4]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(4),
      I1 => ack_out,
      O => \odata_int[4]_i_1__6_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__6_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__6_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__6_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__6_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__6_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \odata_int[3]_i_1__7_n_0\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\ireg[4]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^q\(4),
      I2 => \ireg_reg[4]\(0),
      O => E(0)
    );
\odata_int[3]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(4),
      I1 => outStream_TREADY,
      O => \odata_int[3]_i_1__7_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__7_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__7_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__7_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__7_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[3]_i_1__7_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1\ is
  port (
    \odata_int_reg[2]_0\ : out STD_LOGIC;
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    vld_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \odata_int_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \odata_int_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1\ is
  signal \odata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \odata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[2]_0\ : STD_LOGIC;
  signal \^outstream_tuser\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[1]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1\ : label is "soft_lutpair59";
begin
  \odata_int_reg[2]_0\ <= \^odata_int_reg[2]_0\;
  outStream_TUSER(1 downto 0) <= \^outstream_tuser\(1 downto 0);
\odata_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \odata_int_reg[0]_0\,
      I1 => p_0_in,
      I2 => Q(0),
      I3 => \odata_int[1]_i_2_n_0\,
      I4 => \^outstream_tuser\(0),
      O => \odata_int[0]_i_1_n_0\
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \odata_int_reg[1]_0\,
      I1 => p_0_in,
      I2 => Q(1),
      I3 => \odata_int[1]_i_2_n_0\,
      I4 => \^outstream_tuser\(1),
      O => \odata_int[1]_i_1_n_0\
    );
\odata_int[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => \^odata_int_reg[2]_0\,
      I1 => ap_rst_n,
      I2 => outStream_TREADY,
      O => \odata_int[1]_i_2_n_0\
    );
\odata_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => vld_in,
      I1 => p_0_in,
      I2 => \^odata_int_reg[2]_0\,
      I3 => outStream_TREADY,
      O => \odata_int[2]_i_1_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[0]_i_1_n_0\,
      Q => \^outstream_tuser\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[1]_i_1_n_0\,
      Q => \^outstream_tuser\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[2]_i_1_n_0\,
      Q => \^odata_int_reg[2]_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11\ is
  port (
    \idx_0_reg_115_reg[1]\ : out STD_LOGIC;
    \idx_0_reg_115_reg[5]\ : out STD_LOGIC;
    \odata_int_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    ack_out : in STD_LOGIC;
    cdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \odata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[2]_0\ : STD_LOGIC;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  \odata_int_reg[2]_0\ <= \^odata_int_reg[2]_0\;
\ireg[32]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(6),
      I3 => Q(7),
      I4 => Q(9),
      I5 => Q(8),
      O => \idx_0_reg_115_reg[5]\
    );
\ireg[32]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      O => \idx_0_reg_115_reg[1]\
    );
\odata_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => cdata(0),
      I1 => \^odata_int_reg[2]_0\,
      I2 => ack_out,
      I3 => \^d\(0),
      O => \odata_int[0]_i_1_n_0\
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => cdata(1),
      I1 => \^odata_int_reg[2]_0\,
      I2 => ack_out,
      I3 => \^d\(1),
      O => \odata_int[1]_i_1_n_0\
    );
\odata_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => inStream_TVALID,
      I1 => p_0_in,
      I2 => \^odata_int_reg[2]_0\,
      I3 => ack_out,
      O => \odata_int[2]_i_1_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[0]_i_1_n_0\,
      Q => \^d\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[1]_i_1_n_0\,
      Q => \^d\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[2]_i_1_n_0\,
      Q => \^odata_int_reg[2]_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2\ is
  port (
    \odata_int_reg[1]_0\ : out STD_LOGIC;
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    vld_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \odata_int_reg[0]_0\ : in STD_LOGIC;
    tmp_last_V_reg_201 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2\ is
  signal \odata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[1]_0\ : STD_LOGIC;
  signal \^outstream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1\ : label is "soft_lutpair56";
begin
  \odata_int_reg[1]_0\ <= \^odata_int_reg[1]_0\;
  outStream_TLAST(0) <= \^outstream_tlast\(0);
\odata_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \odata_int_reg[0]_0\,
      I1 => p_0_in,
      I2 => tmp_last_V_reg_201,
      I3 => \odata_int[0]_i_2_n_0\,
      I4 => \^outstream_tlast\(0),
      O => \odata_int[0]_i_1_n_0\
    );
\odata_int[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => \^odata_int_reg[1]_0\,
      I1 => ap_rst_n,
      I2 => outStream_TREADY,
      O => \odata_int[0]_i_2_n_0\
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => vld_in,
      I1 => p_0_in,
      I2 => \^odata_int_reg[1]_0\,
      I3 => outStream_TREADY,
      O => \odata_int[1]_i_1_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[0]_i_1_n_0\,
      Q => \^outstream_tlast\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[1]_i_1_n_0\,
      Q => \^odata_int_reg[1]_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15\ is
  port (
    \odata_int_reg[1]_0\ : out STD_LOGIC;
    \odata_int_reg[0]_0\ : out STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    ack_out : in STD_LOGIC;
    cdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15\ is
  signal \odata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[0]_0\ : STD_LOGIC;
  signal \^odata_int_reg[1]_0\ : STD_LOGIC;
begin
  \odata_int_reg[0]_0\ <= \^odata_int_reg[0]_0\;
  \odata_int_reg[1]_0\ <= \^odata_int_reg[1]_0\;
\odata_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => cdata(0),
      I1 => \^odata_int_reg[1]_0\,
      I2 => ack_out,
      I3 => \^odata_int_reg[0]_0\,
      O => \odata_int[0]_i_1_n_0\
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => inStream_TVALID,
      I1 => p_0_in,
      I2 => \^odata_int_reg[1]_0\,
      I3 => ack_out,
      O => \odata_int[1]_i_1_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[0]_i_1_n_0\,
      Q => \^odata_int_reg[0]_0\,
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[1]_i_1_n_0\,
      Q => \^odata_int_reg[1]_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \odata_int[4]_i_1__8_n_0\ : STD_LOGIC;
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\ireg[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^q\(5),
      I2 => \ireg_reg[5]\(0),
      O => E(0)
    );
\odata_int[4]_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(5),
      I1 => outStream_TREADY,
      O => \odata_int[4]_i_1__8_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__8_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__8_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__8_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__8_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__8_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[4]_i_1__8_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \odata_int[5]_i_1__3_n_0\ : STD_LOGIC;
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\ireg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ack_out,
      I1 => \^q\(5),
      I2 => \ireg_reg[5]\(0),
      O => E(0)
    );
\odata_int[5]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(5),
      I1 => ack_out,
      O => \odata_int[5]_i_1__3_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__3_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__3_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__3_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__3_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__3_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__3_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \odata_int[5]_i_1__4_n_0\ : STD_LOGIC;
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\ireg[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^q\(6),
      I2 => \ireg_reg[6]\(0),
      O => E(0)
    );
\odata_int[5]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(6),
      I1 => outStream_TREADY,
      O => \odata_int[5]_i_1__4_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => SR(0)
    );
\odata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[5]_i_1__4_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_out : in STD_LOGIC;
    \ireg_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21\ : entity is "xil_defaultlib_obuf";
end \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21\;

architecture STRUCTURE of \bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \odata_int[6]_i_1__2_n_0\ : STD_LOGIC;
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\ireg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ack_out,
      I1 => \^q\(6),
      I2 => \ireg_reg[6]\(0),
      O => E(0)
    );
\odata_int[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(6),
      I1 => ack_out,
      O => \odata_int[6]_i_1__2_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => SR(0)
    );
\odata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[6]_i_1__2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_regslice_both is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_out : out STD_LOGIC;
    \odata_int_reg[32]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    \icmp_ln13_reg_172_reg[0]\ : out STD_LOGIC;
    \icmp_ln13_reg_172_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    icmp_ln13_fu_126_p2 : in STD_LOGIC;
    \idx_0_reg_115_reg[0]\ : in STD_LOGIC;
    \idx_0_reg_115_reg[0]_0\ : in STD_LOGIC;
    \idx_0_reg_115_reg[0]_1\ : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 30 downto 0 );
    icmp_ln13_reg_172 : in STD_LOGIC;
    icmp_ln13_reg_172_pp0_iter1_reg : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \odata_int_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_regslice_both : entity is "regslice_both";
end bd_0_hls_inst_0_regslice_both;

architecture STRUCTURE of bd_0_hls_inst_0_regslice_both is
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_19 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_21 : STD_LOGIC;
  signal ibuf_inst_n_22 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_25 : STD_LOGIC;
  signal ibuf_inst_n_26 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_28 : STD_LOGIC;
  signal ibuf_inst_n_29 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_30 : STD_LOGIC;
  signal ibuf_inst_n_31 : STD_LOGIC;
  signal ibuf_inst_n_32 : STD_LOGIC;
  signal ibuf_inst_n_33 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_7 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.bd_0_hls_inst_0_xil_defaultlib_ibuf_22
     port map (
      D(31) => inStream_TVALID,
      D(30 downto 0) => inStream_TDATA(30 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_3,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TREADY => inStream_TREADY,
      \ireg_reg[32]_0\(31) => ibuf_inst_n_2,
      \ireg_reg[32]_0\(30) => ibuf_inst_n_3,
      \ireg_reg[32]_0\(29) => ibuf_inst_n_4,
      \ireg_reg[32]_0\(28) => ibuf_inst_n_5,
      \ireg_reg[32]_0\(27) => ibuf_inst_n_6,
      \ireg_reg[32]_0\(26) => ibuf_inst_n_7,
      \ireg_reg[32]_0\(25) => ibuf_inst_n_8,
      \ireg_reg[32]_0\(24) => ibuf_inst_n_9,
      \ireg_reg[32]_0\(23) => ibuf_inst_n_10,
      \ireg_reg[32]_0\(22) => ibuf_inst_n_11,
      \ireg_reg[32]_0\(21) => ibuf_inst_n_12,
      \ireg_reg[32]_0\(20) => ibuf_inst_n_13,
      \ireg_reg[32]_0\(19) => ibuf_inst_n_14,
      \ireg_reg[32]_0\(18) => ibuf_inst_n_15,
      \ireg_reg[32]_0\(17) => ibuf_inst_n_16,
      \ireg_reg[32]_0\(16) => ibuf_inst_n_17,
      \ireg_reg[32]_0\(15) => ibuf_inst_n_18,
      \ireg_reg[32]_0\(14) => ibuf_inst_n_19,
      \ireg_reg[32]_0\(13) => ibuf_inst_n_20,
      \ireg_reg[32]_0\(12) => ibuf_inst_n_21,
      \ireg_reg[32]_0\(11) => ibuf_inst_n_22,
      \ireg_reg[32]_0\(10) => ibuf_inst_n_23,
      \ireg_reg[32]_0\(9) => ibuf_inst_n_24,
      \ireg_reg[32]_0\(8) => ibuf_inst_n_25,
      \ireg_reg[32]_0\(7) => ibuf_inst_n_26,
      \ireg_reg[32]_0\(6) => ibuf_inst_n_27,
      \ireg_reg[32]_0\(5) => ibuf_inst_n_28,
      \ireg_reg[32]_0\(4) => ibuf_inst_n_29,
      \ireg_reg[32]_0\(3) => ibuf_inst_n_30,
      \ireg_reg[32]_0\(2) => ibuf_inst_n_31,
      \ireg_reg[32]_0\(1) => ibuf_inst_n_32,
      \ireg_reg[32]_0\(0) => ibuf_inst_n_33
    );
obuf_inst: entity work.bd_0_hls_inst_0_xil_defaultlib_obuf_23
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => obuf_inst_n_3,
      \ap_CS_fsm_reg[0]\(0) => SR(0),
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm_reg[2]\,
      \ap_CS_fsm_reg[2]_0\ => \ap_CS_fsm_reg[2]_0\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      icmp_ln13_fu_126_p2 => icmp_ln13_fu_126_p2,
      icmp_ln13_reg_172 => icmp_ln13_reg_172,
      icmp_ln13_reg_172_pp0_iter1_reg => icmp_ln13_reg_172_pp0_iter1_reg,
      \icmp_ln13_reg_172_reg[0]\ => \icmp_ln13_reg_172_reg[0]\,
      \icmp_ln13_reg_172_reg[0]_0\ => \icmp_ln13_reg_172_reg[0]_0\,
      \idx_0_reg_115_reg[0]\ => \idx_0_reg_115_reg[0]\,
      \idx_0_reg_115_reg[0]_0\ => \idx_0_reg_115_reg[0]_0\,
      \idx_0_reg_115_reg[0]_1\ => \idx_0_reg_115_reg[0]_1\,
      \ireg_reg[32]\(0) => p_0_in,
      \odata_int_reg[0]_0\(0) => \odata_int_reg[0]\(0),
      \odata_int_reg[32]_0\ => ack_out,
      \odata_int_reg[32]_1\(31 downto 0) => \odata_int_reg[32]\(31 downto 0),
      \odata_int_reg[32]_2\(0) => ireg01_out,
      \odata_int_reg[32]_3\(31) => ibuf_inst_n_2,
      \odata_int_reg[32]_3\(30) => ibuf_inst_n_3,
      \odata_int_reg[32]_3\(29) => ibuf_inst_n_4,
      \odata_int_reg[32]_3\(28) => ibuf_inst_n_5,
      \odata_int_reg[32]_3\(27) => ibuf_inst_n_6,
      \odata_int_reg[32]_3\(26) => ibuf_inst_n_7,
      \odata_int_reg[32]_3\(25) => ibuf_inst_n_8,
      \odata_int_reg[32]_3\(24) => ibuf_inst_n_9,
      \odata_int_reg[32]_3\(23) => ibuf_inst_n_10,
      \odata_int_reg[32]_3\(22) => ibuf_inst_n_11,
      \odata_int_reg[32]_3\(21) => ibuf_inst_n_12,
      \odata_int_reg[32]_3\(20) => ibuf_inst_n_13,
      \odata_int_reg[32]_3\(19) => ibuf_inst_n_14,
      \odata_int_reg[32]_3\(18) => ibuf_inst_n_15,
      \odata_int_reg[32]_3\(17) => ibuf_inst_n_16,
      \odata_int_reg[32]_3\(16) => ibuf_inst_n_17,
      \odata_int_reg[32]_3\(15) => ibuf_inst_n_18,
      \odata_int_reg[32]_3\(14) => ibuf_inst_n_19,
      \odata_int_reg[32]_3\(13) => ibuf_inst_n_20,
      \odata_int_reg[32]_3\(12) => ibuf_inst_n_21,
      \odata_int_reg[32]_3\(11) => ibuf_inst_n_22,
      \odata_int_reg[32]_3\(10) => ibuf_inst_n_23,
      \odata_int_reg[32]_3\(9) => ibuf_inst_n_24,
      \odata_int_reg[32]_3\(8) => ibuf_inst_n_25,
      \odata_int_reg[32]_3\(7) => ibuf_inst_n_26,
      \odata_int_reg[32]_3\(6) => ibuf_inst_n_27,
      \odata_int_reg[32]_3\(5) => ibuf_inst_n_28,
      \odata_int_reg[32]_3\(4) => ibuf_inst_n_29,
      \odata_int_reg[32]_3\(3) => ibuf_inst_n_30,
      \odata_int_reg[32]_3\(2) => ibuf_inst_n_31,
      \odata_int_reg[32]_3\(1) => ibuf_inst_n_32,
      \odata_int_reg[32]_3\(0) => ibuf_inst_n_33
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_regslice_both_1 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    \odata_int_reg[32]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \count_reg[0]_0\ : out STD_LOGIC;
    \ireg_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    icmp_ln13_fu_126_p2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC;
    \ireg_reg[32]_0\ : in STD_LOGIC;
    \ireg_reg[32]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln13_reg_172 : in STD_LOGIC;
    icmp_ln13_reg_172_pp0_iter1_reg : in STD_LOGIC;
    \ireg_reg[31]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \odata_int_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_regslice_both_1 : entity is "regslice_both";
end bd_0_hls_inst_0_regslice_both_1;

architecture STRUCTURE of bd_0_hls_inst_0_regslice_both_1 is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_19 : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_21 : STD_LOGIC;
  signal ibuf_inst_n_22 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_25 : STD_LOGIC;
  signal ibuf_inst_n_26 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_28 : STD_LOGIC;
  signal ibuf_inst_n_29 : STD_LOGIC;
  signal ibuf_inst_n_30 : STD_LOGIC;
  signal ibuf_inst_n_31 : STD_LOGIC;
  signal ibuf_inst_n_32 : STD_LOGIC;
  signal ibuf_inst_n_33 : STD_LOGIC;
  signal ibuf_inst_n_34 : STD_LOGIC;
  signal ibuf_inst_n_35 : STD_LOGIC;
  signal ibuf_inst_n_36 : STD_LOGIC;
  signal ibuf_inst_n_37 : STD_LOGIC;
  signal ibuf_inst_n_38 : STD_LOGIC;
  signal ibuf_inst_n_39 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal \^odata_int_reg[32]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_3\ : label is "soft_lutpair48";
begin
  SR(0) <= \^sr\(0);
  \odata_int_reg[32]\(31 downto 0) <= \^odata_int_reg[32]\(31 downto 0);
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => Q(2),
      I1 => outStream_TREADY,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => D(0)
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AFF"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => outStream_TREADY,
      I3 => Q(2),
      O => \count_reg[0]_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_5,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => count(1),
      Q => \count_reg_n_0_[1]\,
      R => \^sr\(0)
    );
ibuf_inst: entity work.bd_0_hls_inst_0_xil_defaultlib_ibuf
     port map (
      D(0) => D(1),
      E(0) => ireg01_out,
      Q(2 downto 0) => Q(2 downto 0),
      \ap_CS_fsm_reg[1]\(0) => vld_in,
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[1]_1\(0) => \ap_CS_fsm_reg[1]_0\(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg,
      ap_enable_reg_pp0_iter2_reg => ap_enable_reg_pp0_iter2_reg,
      ap_enable_reg_pp0_iter2_reg_0 => ap_enable_reg_pp0_iter2_reg_0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ap_rst_n_1 => ap_rst_n_1,
      count(0) => count(1),
      \count_reg[1]\ => \count_reg_n_0_[1]\,
      \count_reg[1]_0\ => \count_reg_n_0_[0]\,
      icmp_ln13_fu_126_p2 => icmp_ln13_fu_126_p2,
      icmp_ln13_reg_172 => icmp_ln13_reg_172,
      icmp_ln13_reg_172_pp0_iter1_reg => icmp_ln13_reg_172_pp0_iter1_reg,
      \ireg_reg[1]_0\(0) => \^odata_int_reg[32]\(31),
      \ireg_reg[31]_0\(30 downto 0) => \ireg_reg[31]\(30 downto 0),
      \ireg_reg[32]_0\(0) => p_0_in,
      \ireg_reg[32]_1\(31) => ibuf_inst_n_8,
      \ireg_reg[32]_1\(30) => ibuf_inst_n_9,
      \ireg_reg[32]_1\(29) => ibuf_inst_n_10,
      \ireg_reg[32]_1\(28) => ibuf_inst_n_11,
      \ireg_reg[32]_1\(27) => ibuf_inst_n_12,
      \ireg_reg[32]_1\(26) => ibuf_inst_n_13,
      \ireg_reg[32]_1\(25) => ibuf_inst_n_14,
      \ireg_reg[32]_1\(24) => ibuf_inst_n_15,
      \ireg_reg[32]_1\(23) => ibuf_inst_n_16,
      \ireg_reg[32]_1\(22) => ibuf_inst_n_17,
      \ireg_reg[32]_1\(21) => ibuf_inst_n_18,
      \ireg_reg[32]_1\(20) => ibuf_inst_n_19,
      \ireg_reg[32]_1\(19) => ibuf_inst_n_20,
      \ireg_reg[32]_1\(18) => ibuf_inst_n_21,
      \ireg_reg[32]_1\(17) => ibuf_inst_n_22,
      \ireg_reg[32]_1\(16) => ibuf_inst_n_23,
      \ireg_reg[32]_1\(15) => ibuf_inst_n_24,
      \ireg_reg[32]_1\(14) => ibuf_inst_n_25,
      \ireg_reg[32]_1\(13) => ibuf_inst_n_26,
      \ireg_reg[32]_1\(12) => ibuf_inst_n_27,
      \ireg_reg[32]_1\(11) => ibuf_inst_n_28,
      \ireg_reg[32]_1\(10) => ibuf_inst_n_29,
      \ireg_reg[32]_1\(9) => ibuf_inst_n_30,
      \ireg_reg[32]_1\(8) => ibuf_inst_n_31,
      \ireg_reg[32]_1\(7) => ibuf_inst_n_32,
      \ireg_reg[32]_1\(6) => ibuf_inst_n_33,
      \ireg_reg[32]_1\(5) => ibuf_inst_n_34,
      \ireg_reg[32]_1\(4) => ibuf_inst_n_35,
      \ireg_reg[32]_1\(3) => ibuf_inst_n_36,
      \ireg_reg[32]_1\(2) => ibuf_inst_n_37,
      \ireg_reg[32]_1\(1) => ibuf_inst_n_38,
      \ireg_reg[32]_1\(0) => ibuf_inst_n_39,
      \ireg_reg[32]_2\ => obuf_inst_n_0,
      \ireg_reg[32]_3\ => \ireg_reg[32]\,
      \ireg_reg[32]_4\ => \ireg_reg[32]_0\,
      \ireg_reg[32]_5\ => \ireg_reg[32]_1\,
      \ireg_reg[4]_0\(0) => \ireg_reg[4]\(0),
      \ireg_reg[4]_1\(0) => \ireg_reg[4]_0\(0),
      \ireg_reg[5]_0\(0) => \ireg_reg[5]\(0),
      \ireg_reg[6]_0\(0) => \ireg_reg[6]\(0),
      \odata_int_reg[4]\(0) => \odata_int_reg[4]\(0),
      \odata_int_reg[4]_0\(0) => \odata_int_reg[4]_0\(0),
      \odata_int_reg[5]\(0) => \odata_int_reg[5]\(0),
      \odata_int_reg[6]\(0) => \odata_int_reg[6]\(0),
      outStream_TREADY => outStream_TREADY,
      outStream_TREADY_0 => ibuf_inst_n_5
    );
obuf_inst: entity work.bd_0_hls_inst_0_xil_defaultlib_obuf
     port map (
      D(31) => ibuf_inst_n_8,
      D(30) => ibuf_inst_n_9,
      D(29) => ibuf_inst_n_10,
      D(28) => ibuf_inst_n_11,
      D(27) => ibuf_inst_n_12,
      D(26) => ibuf_inst_n_13,
      D(25) => ibuf_inst_n_14,
      D(24) => ibuf_inst_n_15,
      D(23) => ibuf_inst_n_16,
      D(22) => ibuf_inst_n_17,
      D(21) => ibuf_inst_n_18,
      D(20) => ibuf_inst_n_19,
      D(19) => ibuf_inst_n_20,
      D(18) => ibuf_inst_n_21,
      D(17) => ibuf_inst_n_22,
      D(16) => ibuf_inst_n_23,
      D(15) => ibuf_inst_n_24,
      D(14) => ibuf_inst_n_25,
      D(13) => ibuf_inst_n_26,
      D(12) => ibuf_inst_n_27,
      D(11) => ibuf_inst_n_28,
      D(10) => ibuf_inst_n_29,
      D(9) => ibuf_inst_n_30,
      D(8) => ibuf_inst_n_31,
      D(7) => ibuf_inst_n_32,
      D(6) => ibuf_inst_n_33,
      D(5) => ibuf_inst_n_34,
      D(4) => ibuf_inst_n_35,
      D(3) => ibuf_inst_n_36,
      D(2) => ibuf_inst_n_37,
      D(1) => ibuf_inst_n_38,
      D(0) => ibuf_inst_n_39,
      E(0) => ireg01_out,
      Q(31 downto 0) => \^odata_int_reg[32]\(31 downto 0),
      SR(0) => \^sr\(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1_reg => obuf_inst_n_0,
      ap_rst_n => ap_rst_n,
      icmp_ln13_reg_172 => icmp_ln13_reg_172,
      \ireg_reg[32]\ => ap_enable_reg_pp0_iter2_reg,
      \ireg_reg[32]_0\(0) => p_0_in,
      outStream_TREADY => outStream_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ack_out : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized1\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized1\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized1\ is
  signal cdata : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_16\
     port map (
      D(4 downto 0) => cdata(4 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[4]_0\(4) => inStream_TVALID,
      \ireg_reg[4]_0\(3 downto 0) => inStream_TKEEP(3 downto 0)
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_17\
     port map (
      D(4 downto 0) => cdata(4 downto 0),
      E(0) => ireg01_out,
      Q(4) => obuf_inst_n_0,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      ack_out => ack_out,
      ap_clk => ap_clk,
      \ireg_reg[4]\(0) => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized1_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ack_out : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized1_0\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized1_0\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized1_0\ is
  signal cdata : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_12\
     port map (
      D(4 downto 0) => cdata(4 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[4]_0\(4) => inStream_TVALID,
      \ireg_reg[4]_0\(3 downto 0) => inStream_TSTRB(3 downto 0)
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_13\
     port map (
      D(4 downto 0) => cdata(4 downto 0),
      E(0) => ireg01_out,
      Q(4) => obuf_inst_n_0,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      ack_out => ack_out,
      ap_clk => ap_clk,
      \ireg_reg[4]\(0) => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized1_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized1_4\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized1_4\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized1_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0_8\
     port map (
      D(3 downto 0) => cdata(3 downto 0),
      E(0) => ireg01_out,
      Q(0) => \^q\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[4]_0\(4 downto 0) => \ireg_reg[4]\(4 downto 0),
      outStream_TREADY => outStream_TREADY
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0_9\
     port map (
      D(4) => D(0),
      D(3 downto 0) => cdata(3 downto 0),
      E(0) => ireg01_out,
      Q(4) => obuf_inst_n_0,
      Q(3 downto 0) => outStream_TKEEP(3 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \ireg_reg[4]\(0) => \^q\(0),
      outStream_TREADY => outStream_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized1_6\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized1_6\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized1_6\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized1_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized0\
     port map (
      D(3 downto 0) => cdata(3 downto 0),
      E(0) => ireg01_out,
      Q(0) => \^q\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[4]_0\(4 downto 0) => \ireg_reg[4]\(4 downto 0),
      outStream_TREADY => outStream_TREADY
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized0\
     port map (
      D(4) => D(0),
      D(3 downto 0) => cdata(3 downto 0),
      E(0) => ireg01_out,
      Q(4) => obuf_inst_n_0,
      Q(3 downto 0) => outStream_TSTRB(3 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \ireg_reg[4]\(0) => \^q\(0),
      outStream_TREADY => outStream_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized3\ is
  port (
    \idx_0_reg_115_reg[1]\ : out STD_LOGIC;
    \idx_0_reg_115_reg[5]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_rst_n : in STD_LOGIC;
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    ack_out : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized3\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized3\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized3\ is
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal obuf_inst_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1_10\
     port map (
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      cdata(1 downto 0) => cdata(1 downto 0),
      inStream_TUSER(1 downto 0) => inStream_TUSER(1 downto 0),
      inStream_TVALID => inStream_TVALID,
      \ireg_reg[2]_0\ => obuf_inst_n_2,
      p_0_in => p_0_in
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1_11\
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(9 downto 0) => Q(9 downto 0),
      SR(0) => SR(0),
      ack_out => ack_out,
      ap_clk => ap_clk,
      cdata(1 downto 0) => cdata(1 downto 0),
      \idx_0_reg_115_reg[1]\ => \idx_0_reg_115_reg[1]\,
      \idx_0_reg_115_reg[5]\ => \idx_0_reg_115_reg[5]\,
      inStream_TVALID => inStream_TVALID,
      \odata_int_reg[2]_0\ => obuf_inst_n_2,
      p_0_in => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized3_7\ is
  port (
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    vld_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized3_7\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized3_7\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized3_7\ is
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized1\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\ => ibuf_inst_n_2,
      \ireg_reg[1]_0\ => ibuf_inst_n_1,
      \ireg_reg[2]_0\ => obuf_inst_n_0,
      outStream_TREADY => outStream_TREADY,
      p_0_in => p_0_in,
      vld_in => vld_in
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized1\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_int_reg[0]_0\ => ibuf_inst_n_2,
      \odata_int_reg[1]_0\ => ibuf_inst_n_1,
      \odata_int_reg[2]_0\ => obuf_inst_n_0,
      outStream_TREADY => outStream_TREADY,
      outStream_TUSER(1 downto 0) => outStream_TUSER(1 downto 0),
      p_0_in => p_0_in,
      vld_in => vld_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized5\ is
  port (
    \odata_int_reg[0]\ : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TVALID : in STD_LOGIC;
    ack_out : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized5\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized5\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized5\ is
  signal cdata : STD_LOGIC_VECTOR ( 0 to 0 );
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2_14\
     port map (
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      cdata(0) => cdata(0),
      inStream_TLAST(0) => inStream_TLAST(0),
      inStream_TVALID => inStream_TVALID,
      \ireg_reg[1]_0\ => obuf_inst_n_0,
      p_0_in => p_0_in
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2_15\
     port map (
      SR(0) => SR(0),
      ack_out => ack_out,
      ap_clk => ap_clk,
      cdata(0) => cdata(0),
      inStream_TVALID => inStream_TVALID,
      \odata_int_reg[0]_0\ => \odata_int_reg[0]\,
      \odata_int_reg[1]_0\ => obuf_inst_n_0,
      p_0_in => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized5_5\ is
  port (
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    vld_in : in STD_LOGIC;
    tmp_last_V_reg_201 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized5_5\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized5_5\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized5_5\ is
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized2\
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\ => ibuf_inst_n_1,
      \ireg_reg[1]_0\ => obuf_inst_n_0,
      outStream_TREADY => outStream_TREADY,
      p_0_in => p_0_in,
      tmp_last_V_reg_201 => tmp_last_V_reg_201,
      vld_in => vld_in
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized2\
     port map (
      SR(0) => SR(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_int_reg[0]_0\ => ibuf_inst_n_1,
      \odata_int_reg[1]_0\ => obuf_inst_n_0,
      outStream_TLAST(0) => outStream_TLAST(0),
      outStream_TREADY => outStream_TREADY,
      p_0_in => p_0_in,
      tmp_last_V_reg_201 => tmp_last_V_reg_201,
      vld_in => vld_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ack_out : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized7\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized7\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized7\ is
  signal cdata : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3_18\
     port map (
      D(5 downto 0) => cdata(5 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[5]_0\(5) => inStream_TVALID,
      \ireg_reg[5]_0\(4 downto 0) => inStream_TID(4 downto 0)
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3_19\
     port map (
      D(5 downto 0) => cdata(5 downto 0),
      E(0) => ireg01_out,
      Q(5) => obuf_inst_n_0,
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => SR(0),
      ack_out => ack_out,
      ap_clk => ap_clk,
      \ireg_reg[5]\(0) => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized7_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized7_3\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized7_3\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized7_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cdata : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized3\
     port map (
      D(4 downto 0) => cdata(4 downto 0),
      E(0) => ireg01_out,
      Q(0) => \^q\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[5]_0\(5 downto 0) => \ireg_reg[5]\(5 downto 0),
      outStream_TREADY => outStream_TREADY
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized3\
     port map (
      D(5) => D(0),
      D(4 downto 0) => cdata(4 downto 0),
      E(0) => ireg01_out,
      Q(5) => obuf_inst_n_0,
      Q(4 downto 0) => outStream_TID(4 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \ireg_reg[5]\(0) => \^q\(0),
      outStream_TREADY => outStream_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized9\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ack_out : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized9\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized9\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized9\ is
  signal cdata : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4_20\
     port map (
      D(6 downto 0) => cdata(6 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[6]_0\(6) => inStream_TVALID,
      \ireg_reg[6]_0\(5 downto 0) => inStream_TDEST(5 downto 0)
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4_21\
     port map (
      D(6 downto 0) => cdata(6 downto 0),
      E(0) => ireg01_out,
      Q(6) => obuf_inst_n_0,
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => SR(0),
      ack_out => ack_out,
      ap_clk => ap_clk,
      \ireg_reg[6]\(0) => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_0_hls_inst_0_regslice_both__parameterized9_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_0_hls_inst_0_regslice_both__parameterized9_2\ : entity is "regslice_both";
end \bd_0_hls_inst_0_regslice_both__parameterized9_2\;

architecture STRUCTURE of \bd_0_hls_inst_0_regslice_both__parameterized9_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cdata : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
ibuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_ibuf__parameterized4\
     port map (
      D(5 downto 0) => cdata(5 downto 0),
      E(0) => ireg01_out,
      Q(0) => \^q\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[6]_0\(6 downto 0) => \ireg_reg[6]\(6 downto 0),
      outStream_TREADY => outStream_TREADY
    );
obuf_inst: entity work.\bd_0_hls_inst_0_xil_defaultlib_obuf__parameterized4\
     port map (
      D(6) => D(0),
      D(5 downto 0) => cdata(5 downto 0),
      E(0) => ireg01_out,
      Q(6) => obuf_inst_n_0,
      Q(5 downto 0) => outStream_TDEST(5 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \ireg_reg[6]\(0) => \^q\(0),
      outStream_TREADY => outStream_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_doGain is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outStream_TVALID : out STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_doGain : entity is "doGain";
end bd_0_hls_inst_0_doGain;

architecture STRUCTURE of bd_0_hls_inst_0_doGain is
  signal \<const0>\ : STD_LOGIC;
  signal ack_out : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_0 : STD_LOGIC;
  signal ap_rst : STD_LOGIC;
  signal cdata : STD_LOGIC_VECTOR ( 6 to 6 );
  signal cdata_0 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal cdata_1 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal cdata_2 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \ibuf_inst/p_0_in\ : STD_LOGIC;
  signal \ibuf_inst/p_0_in_3\ : STD_LOGIC;
  signal \ibuf_inst/p_0_in_4\ : STD_LOGIC;
  signal \ibuf_inst/p_0_in_5\ : STD_LOGIC;
  signal icmp_ln13_fu_126_p2 : STD_LOGIC;
  signal icmp_ln13_reg_172 : STD_LOGIC;
  signal icmp_ln13_reg_172_pp0_iter1_reg : STD_LOGIC;
  signal idx_0_reg_115 : STD_LOGIC;
  signal \idx_0_reg_115[9]_i_4_n_0\ : STD_LOGIC;
  signal idx_0_reg_115_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal idx_fu_132_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^outstream_tdata\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal regslice_both_inStream_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_21 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_22 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_23 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_24 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_25 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_26 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_27 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_28 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_29 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_30 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_31 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_32 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_33 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_34 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_35 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_37 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_39 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_40 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_9 : STD_LOGIC;
  signal regslice_both_inStream_V_dest_V_U_n_0 : STD_LOGIC;
  signal regslice_both_inStream_V_dest_V_U_n_1 : STD_LOGIC;
  signal regslice_both_inStream_V_dest_V_U_n_2 : STD_LOGIC;
  signal regslice_both_inStream_V_dest_V_U_n_3 : STD_LOGIC;
  signal regslice_both_inStream_V_dest_V_U_n_4 : STD_LOGIC;
  signal regslice_both_inStream_V_dest_V_U_n_5 : STD_LOGIC;
  signal regslice_both_inStream_V_id_V_U_n_0 : STD_LOGIC;
  signal regslice_both_inStream_V_id_V_U_n_1 : STD_LOGIC;
  signal regslice_both_inStream_V_id_V_U_n_2 : STD_LOGIC;
  signal regslice_both_inStream_V_id_V_U_n_3 : STD_LOGIC;
  signal regslice_both_inStream_V_id_V_U_n_4 : STD_LOGIC;
  signal regslice_both_inStream_V_keep_V_U_n_0 : STD_LOGIC;
  signal regslice_both_inStream_V_keep_V_U_n_1 : STD_LOGIC;
  signal regslice_both_inStream_V_keep_V_U_n_2 : STD_LOGIC;
  signal regslice_both_inStream_V_keep_V_U_n_3 : STD_LOGIC;
  signal regslice_both_inStream_V_last_V_U_n_0 : STD_LOGIC;
  signal regslice_both_inStream_V_strb_V_U_n_0 : STD_LOGIC;
  signal regslice_both_inStream_V_strb_V_U_n_1 : STD_LOGIC;
  signal regslice_both_inStream_V_strb_V_U_n_2 : STD_LOGIC;
  signal regslice_both_inStream_V_strb_V_U_n_3 : STD_LOGIC;
  signal regslice_both_inStream_V_user_V_U_n_0 : STD_LOGIC;
  signal regslice_both_inStream_V_user_V_U_n_1 : STD_LOGIC;
  signal regslice_both_inStream_V_user_V_U_n_2 : STD_LOGIC;
  signal regslice_both_inStream_V_user_V_U_n_3 : STD_LOGIC;
  signal regslice_both_outStream_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_outStream_V_data_V_U_n_2 : STD_LOGIC;
  signal regslice_both_outStream_V_data_V_U_n_39 : STD_LOGIC;
  signal regslice_both_outStream_V_data_V_U_n_6 : STD_LOGIC;
  signal tmp_data_V_reg_181 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal tmp_data_V_reg_1810 : STD_LOGIC;
  signal tmp_dest_V_reg_211 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tmp_id_V_reg_206 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tmp_keep_V_reg_186 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp_last_V_reg_201 : STD_LOGIC;
  signal tmp_strb_V_reg_191 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp_user_V_reg_196 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vld_in : STD_LOGIC;
  signal vld_out : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \idx_0_reg_115[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \idx_0_reg_115[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \idx_0_reg_115[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \idx_0_reg_115[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \idx_0_reg_115[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \idx_0_reg_115[6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \idx_0_reg_115[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \idx_0_reg_115[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \idx_0_reg_115[9]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \tmp_data_V_reg_181[30]_i_3\ : label is "soft_lutpair60";
begin
  outStream_TDATA(31 downto 1) <= \^outstream_tdata\(31 downto 1);
  outStream_TDATA(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => regslice_both_inStream_V_user_V_U_n_0,
      I3 => regslice_both_inStream_V_user_V_U_n_1,
      I4 => ap_enable_reg_pp0_iter2_reg_n_0,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \ap_CS_fsm_reg_n_0_[2]\,
      R => ap_rst
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_inStream_V_data_V_U_n_1,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_outStream_V_data_V_U_n_1,
      Q => ap_enable_reg_pp0_iter1_reg_n_0,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_outStream_V_data_V_U_n_2,
      Q => ap_enable_reg_pp0_iter2_reg_n_0,
      R => '0'
    );
\icmp_ln13_reg_172_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_inStream_V_data_V_U_n_40,
      Q => icmp_ln13_reg_172_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln13_reg_172_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_inStream_V_data_V_U_n_39,
      Q => icmp_ln13_reg_172,
      R => '0'
    );
\idx_0_reg_115[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idx_0_reg_115_reg(0),
      O => idx_fu_132_p2(0)
    );
\idx_0_reg_115[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => idx_0_reg_115_reg(0),
      I1 => idx_0_reg_115_reg(1),
      O => idx_fu_132_p2(1)
    );
\idx_0_reg_115[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => idx_0_reg_115_reg(1),
      I1 => idx_0_reg_115_reg(0),
      I2 => idx_0_reg_115_reg(2),
      O => idx_fu_132_p2(2)
    );
\idx_0_reg_115[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => idx_0_reg_115_reg(2),
      I1 => idx_0_reg_115_reg(0),
      I2 => idx_0_reg_115_reg(1),
      I3 => idx_0_reg_115_reg(3),
      O => idx_fu_132_p2(3)
    );
\idx_0_reg_115[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => idx_0_reg_115_reg(3),
      I1 => idx_0_reg_115_reg(1),
      I2 => idx_0_reg_115_reg(0),
      I3 => idx_0_reg_115_reg(2),
      I4 => idx_0_reg_115_reg(4),
      O => idx_fu_132_p2(4)
    );
\idx_0_reg_115[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => idx_0_reg_115_reg(2),
      I1 => idx_0_reg_115_reg(0),
      I2 => idx_0_reg_115_reg(1),
      I3 => idx_0_reg_115_reg(3),
      I4 => idx_0_reg_115_reg(4),
      I5 => idx_0_reg_115_reg(5),
      O => idx_fu_132_p2(5)
    );
\idx_0_reg_115[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \idx_0_reg_115[9]_i_4_n_0\,
      I1 => idx_0_reg_115_reg(6),
      O => idx_fu_132_p2(6)
    );
\idx_0_reg_115[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => idx_0_reg_115_reg(6),
      I1 => \idx_0_reg_115[9]_i_4_n_0\,
      I2 => idx_0_reg_115_reg(7),
      O => idx_fu_132_p2(7)
    );
\idx_0_reg_115[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => idx_0_reg_115_reg(7),
      I1 => \idx_0_reg_115[9]_i_4_n_0\,
      I2 => idx_0_reg_115_reg(6),
      I3 => idx_0_reg_115_reg(8),
      O => idx_fu_132_p2(8)
    );
\idx_0_reg_115[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => idx_0_reg_115_reg(8),
      I1 => idx_0_reg_115_reg(6),
      I2 => \idx_0_reg_115[9]_i_4_n_0\,
      I3 => idx_0_reg_115_reg(7),
      I4 => idx_0_reg_115_reg(9),
      O => idx_fu_132_p2(9)
    );
\idx_0_reg_115[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => idx_0_reg_115_reg(2),
      I1 => idx_0_reg_115_reg(0),
      I2 => idx_0_reg_115_reg(1),
      I3 => idx_0_reg_115_reg(3),
      I4 => idx_0_reg_115_reg(4),
      I5 => idx_0_reg_115_reg(5),
      O => \idx_0_reg_115[9]_i_4_n_0\
    );
\idx_0_reg_115_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(0),
      Q => idx_0_reg_115_reg(0),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(1),
      Q => idx_0_reg_115_reg(1),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(2),
      Q => idx_0_reg_115_reg(2),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(3),
      Q => idx_0_reg_115_reg(3),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(4),
      Q => idx_0_reg_115_reg(4),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(5),
      Q => idx_0_reg_115_reg(5),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(6),
      Q => idx_0_reg_115_reg(6),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(7),
      Q => idx_0_reg_115_reg(7),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(8),
      Q => idx_0_reg_115_reg(8),
      R => idx_0_reg_115
    );
\idx_0_reg_115_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => idx_fu_132_p2(9),
      Q => idx_0_reg_115_reg(9),
      R => idx_0_reg_115
    );
regslice_both_inStream_V_data_V_U: entity work.bd_0_hls_inst_0_regslice_both
     port map (
      D(0) => ap_NS_fsm(2),
      E(0) => tmp_data_V_reg_1810,
      Q(1) => ap_CS_fsm_pp0_stage0,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => idx_0_reg_115,
      ack_out => ack_out,
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm[2]_i_2_n_0\,
      \ap_CS_fsm_reg[2]_0\ => regslice_both_outStream_V_data_V_U_n_39,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => regslice_both_inStream_V_data_V_U_n_37,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_inStream_V_data_V_U_n_1,
      icmp_ln13_fu_126_p2 => icmp_ln13_fu_126_p2,
      icmp_ln13_reg_172 => icmp_ln13_reg_172,
      icmp_ln13_reg_172_pp0_iter1_reg => icmp_ln13_reg_172_pp0_iter1_reg,
      \icmp_ln13_reg_172_reg[0]\ => regslice_both_inStream_V_data_V_U_n_39,
      \icmp_ln13_reg_172_reg[0]_0\ => regslice_both_inStream_V_data_V_U_n_40,
      \idx_0_reg_115_reg[0]\ => regslice_both_outStream_V_data_V_U_n_6,
      \idx_0_reg_115_reg[0]_0\ => regslice_both_inStream_V_user_V_U_n_0,
      \idx_0_reg_115_reg[0]_1\ => regslice_both_inStream_V_user_V_U_n_1,
      inStream_TDATA(30 downto 0) => inStream_TDATA(30 downto 0),
      inStream_TREADY => inStream_TREADY,
      inStream_TVALID => inStream_TVALID,
      \odata_int_reg[0]\(0) => ap_rst,
      \odata_int_reg[32]\(31) => vld_out,
      \odata_int_reg[32]\(30) => regslice_both_inStream_V_data_V_U_n_5,
      \odata_int_reg[32]\(29) => regslice_both_inStream_V_data_V_U_n_6,
      \odata_int_reg[32]\(28) => regslice_both_inStream_V_data_V_U_n_7,
      \odata_int_reg[32]\(27) => regslice_both_inStream_V_data_V_U_n_8,
      \odata_int_reg[32]\(26) => regslice_both_inStream_V_data_V_U_n_9,
      \odata_int_reg[32]\(25) => regslice_both_inStream_V_data_V_U_n_10,
      \odata_int_reg[32]\(24) => regslice_both_inStream_V_data_V_U_n_11,
      \odata_int_reg[32]\(23) => regslice_both_inStream_V_data_V_U_n_12,
      \odata_int_reg[32]\(22) => regslice_both_inStream_V_data_V_U_n_13,
      \odata_int_reg[32]\(21) => regslice_both_inStream_V_data_V_U_n_14,
      \odata_int_reg[32]\(20) => regslice_both_inStream_V_data_V_U_n_15,
      \odata_int_reg[32]\(19) => regslice_both_inStream_V_data_V_U_n_16,
      \odata_int_reg[32]\(18) => regslice_both_inStream_V_data_V_U_n_17,
      \odata_int_reg[32]\(17) => regslice_both_inStream_V_data_V_U_n_18,
      \odata_int_reg[32]\(16) => regslice_both_inStream_V_data_V_U_n_19,
      \odata_int_reg[32]\(15) => regslice_both_inStream_V_data_V_U_n_20,
      \odata_int_reg[32]\(14) => regslice_both_inStream_V_data_V_U_n_21,
      \odata_int_reg[32]\(13) => regslice_both_inStream_V_data_V_U_n_22,
      \odata_int_reg[32]\(12) => regslice_both_inStream_V_data_V_U_n_23,
      \odata_int_reg[32]\(11) => regslice_both_inStream_V_data_V_U_n_24,
      \odata_int_reg[32]\(10) => regslice_both_inStream_V_data_V_U_n_25,
      \odata_int_reg[32]\(9) => regslice_both_inStream_V_data_V_U_n_26,
      \odata_int_reg[32]\(8) => regslice_both_inStream_V_data_V_U_n_27,
      \odata_int_reg[32]\(7) => regslice_both_inStream_V_data_V_U_n_28,
      \odata_int_reg[32]\(6) => regslice_both_inStream_V_data_V_U_n_29,
      \odata_int_reg[32]\(5) => regslice_both_inStream_V_data_V_U_n_30,
      \odata_int_reg[32]\(4) => regslice_both_inStream_V_data_V_U_n_31,
      \odata_int_reg[32]\(3) => regslice_both_inStream_V_data_V_U_n_32,
      \odata_int_reg[32]\(2) => regslice_both_inStream_V_data_V_U_n_33,
      \odata_int_reg[32]\(1) => regslice_both_inStream_V_data_V_U_n_34,
      \odata_int_reg[32]\(0) => regslice_both_inStream_V_data_V_U_n_35
    );
regslice_both_inStream_V_dest_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized9\
     port map (
      Q(5) => regslice_both_inStream_V_dest_V_U_n_0,
      Q(4) => regslice_both_inStream_V_dest_V_U_n_1,
      Q(3) => regslice_both_inStream_V_dest_V_U_n_2,
      Q(2) => regslice_both_inStream_V_dest_V_U_n_3,
      Q(1) => regslice_both_inStream_V_dest_V_U_n_4,
      Q(0) => regslice_both_inStream_V_dest_V_U_n_5,
      SR(0) => ap_rst,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TDEST(5 downto 0) => inStream_TDEST(5 downto 0),
      inStream_TVALID => inStream_TVALID
    );
regslice_both_inStream_V_id_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized7\
     port map (
      Q(4) => regslice_both_inStream_V_id_V_U_n_0,
      Q(3) => regslice_both_inStream_V_id_V_U_n_1,
      Q(2) => regslice_both_inStream_V_id_V_U_n_2,
      Q(1) => regslice_both_inStream_V_id_V_U_n_3,
      Q(0) => regslice_both_inStream_V_id_V_U_n_4,
      SR(0) => ap_rst,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TID(4 downto 0) => inStream_TID(4 downto 0),
      inStream_TVALID => inStream_TVALID
    );
regslice_both_inStream_V_keep_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized1\
     port map (
      Q(3) => regslice_both_inStream_V_keep_V_U_n_0,
      Q(2) => regslice_both_inStream_V_keep_V_U_n_1,
      Q(1) => regslice_both_inStream_V_keep_V_U_n_2,
      Q(0) => regslice_both_inStream_V_keep_V_U_n_3,
      SR(0) => ap_rst,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TKEEP(3 downto 0) => inStream_TKEEP(3 downto 0),
      inStream_TVALID => inStream_TVALID
    );
regslice_both_inStream_V_last_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized5\
     port map (
      SR(0) => ap_rst,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TLAST(0) => inStream_TLAST(0),
      inStream_TVALID => inStream_TVALID,
      \odata_int_reg[0]\ => regslice_both_inStream_V_last_V_U_n_0
    );
regslice_both_inStream_V_strb_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized1_0\
     port map (
      Q(3) => regslice_both_inStream_V_strb_V_U_n_0,
      Q(2) => regslice_both_inStream_V_strb_V_U_n_1,
      Q(1) => regslice_both_inStream_V_strb_V_U_n_2,
      Q(0) => regslice_both_inStream_V_strb_V_U_n_3,
      SR(0) => ap_rst,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TSTRB(3 downto 0) => inStream_TSTRB(3 downto 0),
      inStream_TVALID => inStream_TVALID
    );
regslice_both_inStream_V_user_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized3\
     port map (
      D(1) => regslice_both_inStream_V_user_V_U_n_2,
      D(0) => regslice_both_inStream_V_user_V_U_n_3,
      Q(9 downto 0) => idx_0_reg_115_reg(9 downto 0),
      SR(0) => ap_rst,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \idx_0_reg_115_reg[1]\ => regslice_both_inStream_V_user_V_U_n_0,
      \idx_0_reg_115_reg[5]\ => regslice_both_inStream_V_user_V_U_n_1,
      inStream_TUSER(1 downto 0) => inStream_TUSER(1 downto 0),
      inStream_TVALID => inStream_TVALID
    );
regslice_both_outStream_V_data_V_U: entity work.bd_0_hls_inst_0_regslice_both_1
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      Q(2) => \ap_CS_fsm_reg_n_0_[2]\,
      Q(1) => ap_CS_fsm_pp0_stage0,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst,
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm[2]_i_2_n_0\,
      \ap_CS_fsm_reg[1]_0\(0) => vld_out,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1_reg => regslice_both_outStream_V_data_V_U_n_6,
      ap_enable_reg_pp0_iter2_reg => ap_enable_reg_pp0_iter1_reg_n_0,
      ap_enable_reg_pp0_iter2_reg_0 => ap_enable_reg_pp0_iter2_reg_n_0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_outStream_V_data_V_U_n_1,
      ap_rst_n_1 => regslice_both_outStream_V_data_V_U_n_2,
      \count_reg[0]_0\ => regslice_both_outStream_V_data_V_U_n_39,
      icmp_ln13_fu_126_p2 => icmp_ln13_fu_126_p2,
      icmp_ln13_reg_172 => icmp_ln13_reg_172,
      icmp_ln13_reg_172_pp0_iter1_reg => icmp_ln13_reg_172_pp0_iter1_reg,
      \ireg_reg[31]\(30 downto 0) => tmp_data_V_reg_181(30 downto 0),
      \ireg_reg[32]\ => regslice_both_inStream_V_user_V_U_n_1,
      \ireg_reg[32]_0\ => regslice_both_inStream_V_user_V_U_n_0,
      \ireg_reg[32]_1\ => regslice_both_inStream_V_data_V_U_n_37,
      \ireg_reg[4]\(0) => cdata_2(4),
      \ireg_reg[4]_0\(0) => cdata_1(4),
      \ireg_reg[5]\(0) => cdata_0(5),
      \ireg_reg[6]\(0) => cdata(6),
      \odata_int_reg[32]\(31) => outStream_TVALID,
      \odata_int_reg[32]\(30 downto 0) => \^outstream_tdata\(31 downto 1),
      \odata_int_reg[4]\(0) => \ibuf_inst/p_0_in_4\,
      \odata_int_reg[4]_0\(0) => \ibuf_inst/p_0_in_5\,
      \odata_int_reg[5]\(0) => \ibuf_inst/p_0_in_3\,
      \odata_int_reg[6]\(0) => \ibuf_inst/p_0_in\,
      outStream_TREADY => outStream_TREADY,
      vld_in => vld_in
    );
regslice_both_outStream_V_dest_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized9_2\
     port map (
      D(0) => cdata(6),
      Q(0) => \ibuf_inst/p_0_in\,
      SR(0) => ap_rst,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[6]\(6) => vld_in,
      \ireg_reg[6]\(5 downto 0) => tmp_dest_V_reg_211(5 downto 0),
      outStream_TDEST(5 downto 0) => outStream_TDEST(5 downto 0),
      outStream_TREADY => outStream_TREADY
    );
regslice_both_outStream_V_id_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized7_3\
     port map (
      D(0) => cdata_0(5),
      Q(0) => \ibuf_inst/p_0_in_3\,
      SR(0) => ap_rst,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[5]\(5) => vld_in,
      \ireg_reg[5]\(4 downto 0) => tmp_id_V_reg_206(4 downto 0),
      outStream_TID(4 downto 0) => outStream_TID(4 downto 0),
      outStream_TREADY => outStream_TREADY
    );
regslice_both_outStream_V_keep_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized1_4\
     port map (
      D(0) => cdata_2(4),
      Q(0) => \ibuf_inst/p_0_in_4\,
      SR(0) => ap_rst,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[4]\(4) => vld_in,
      \ireg_reg[4]\(3 downto 0) => tmp_keep_V_reg_186(3 downto 0),
      outStream_TKEEP(3 downto 0) => outStream_TKEEP(3 downto 0),
      outStream_TREADY => outStream_TREADY
    );
regslice_both_outStream_V_last_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized5_5\
     port map (
      SR(0) => ap_rst,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      outStream_TLAST(0) => outStream_TLAST(0),
      outStream_TREADY => outStream_TREADY,
      tmp_last_V_reg_201 => tmp_last_V_reg_201,
      vld_in => vld_in
    );
regslice_both_outStream_V_strb_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized1_6\
     port map (
      D(0) => cdata_1(4),
      Q(0) => \ibuf_inst/p_0_in_5\,
      SR(0) => ap_rst,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[4]\(4) => vld_in,
      \ireg_reg[4]\(3 downto 0) => tmp_strb_V_reg_191(3 downto 0),
      outStream_TREADY => outStream_TREADY,
      outStream_TSTRB(3 downto 0) => outStream_TSTRB(3 downto 0)
    );
regslice_both_outStream_V_user_V_U: entity work.\bd_0_hls_inst_0_regslice_both__parameterized3_7\
     port map (
      Q(1 downto 0) => tmp_user_V_reg_196(1 downto 0),
      SR(0) => ap_rst,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      outStream_TREADY => outStream_TREADY,
      outStream_TUSER(1 downto 0) => outStream_TUSER(1 downto 0),
      vld_in => vld_in
    );
\tmp_data_V_reg_181[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => regslice_both_inStream_V_user_V_U_n_1,
      I1 => idx_0_reg_115_reg(3),
      I2 => idx_0_reg_115_reg(2),
      I3 => idx_0_reg_115_reg(0),
      I4 => idx_0_reg_115_reg(1),
      O => icmp_ln13_fu_126_p2
    );
\tmp_data_V_reg_181_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_35,
      Q => tmp_data_V_reg_181(0),
      R => '0'
    );
\tmp_data_V_reg_181_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_25,
      Q => tmp_data_V_reg_181(10),
      R => '0'
    );
\tmp_data_V_reg_181_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_24,
      Q => tmp_data_V_reg_181(11),
      R => '0'
    );
\tmp_data_V_reg_181_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_23,
      Q => tmp_data_V_reg_181(12),
      R => '0'
    );
\tmp_data_V_reg_181_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_22,
      Q => tmp_data_V_reg_181(13),
      R => '0'
    );
\tmp_data_V_reg_181_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_21,
      Q => tmp_data_V_reg_181(14),
      R => '0'
    );
\tmp_data_V_reg_181_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_20,
      Q => tmp_data_V_reg_181(15),
      R => '0'
    );
\tmp_data_V_reg_181_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_19,
      Q => tmp_data_V_reg_181(16),
      R => '0'
    );
\tmp_data_V_reg_181_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_18,
      Q => tmp_data_V_reg_181(17),
      R => '0'
    );
\tmp_data_V_reg_181_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_17,
      Q => tmp_data_V_reg_181(18),
      R => '0'
    );
\tmp_data_V_reg_181_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_16,
      Q => tmp_data_V_reg_181(19),
      R => '0'
    );
\tmp_data_V_reg_181_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_34,
      Q => tmp_data_V_reg_181(1),
      R => '0'
    );
\tmp_data_V_reg_181_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_15,
      Q => tmp_data_V_reg_181(20),
      R => '0'
    );
\tmp_data_V_reg_181_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_14,
      Q => tmp_data_V_reg_181(21),
      R => '0'
    );
\tmp_data_V_reg_181_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_13,
      Q => tmp_data_V_reg_181(22),
      R => '0'
    );
\tmp_data_V_reg_181_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_12,
      Q => tmp_data_V_reg_181(23),
      R => '0'
    );
\tmp_data_V_reg_181_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_11,
      Q => tmp_data_V_reg_181(24),
      R => '0'
    );
\tmp_data_V_reg_181_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_10,
      Q => tmp_data_V_reg_181(25),
      R => '0'
    );
\tmp_data_V_reg_181_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_9,
      Q => tmp_data_V_reg_181(26),
      R => '0'
    );
\tmp_data_V_reg_181_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_8,
      Q => tmp_data_V_reg_181(27),
      R => '0'
    );
\tmp_data_V_reg_181_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_7,
      Q => tmp_data_V_reg_181(28),
      R => '0'
    );
\tmp_data_V_reg_181_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_6,
      Q => tmp_data_V_reg_181(29),
      R => '0'
    );
\tmp_data_V_reg_181_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_33,
      Q => tmp_data_V_reg_181(2),
      R => '0'
    );
\tmp_data_V_reg_181_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_5,
      Q => tmp_data_V_reg_181(30),
      R => '0'
    );
\tmp_data_V_reg_181_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_32,
      Q => tmp_data_V_reg_181(3),
      R => '0'
    );
\tmp_data_V_reg_181_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_31,
      Q => tmp_data_V_reg_181(4),
      R => '0'
    );
\tmp_data_V_reg_181_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_30,
      Q => tmp_data_V_reg_181(5),
      R => '0'
    );
\tmp_data_V_reg_181_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_29,
      Q => tmp_data_V_reg_181(6),
      R => '0'
    );
\tmp_data_V_reg_181_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_28,
      Q => tmp_data_V_reg_181(7),
      R => '0'
    );
\tmp_data_V_reg_181_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_27,
      Q => tmp_data_V_reg_181(8),
      R => '0'
    );
\tmp_data_V_reg_181_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_data_V_U_n_26,
      Q => tmp_data_V_reg_181(9),
      R => '0'
    );
\tmp_dest_V_reg_211_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_dest_V_U_n_5,
      Q => tmp_dest_V_reg_211(0),
      R => '0'
    );
\tmp_dest_V_reg_211_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_dest_V_U_n_4,
      Q => tmp_dest_V_reg_211(1),
      R => '0'
    );
\tmp_dest_V_reg_211_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_dest_V_U_n_3,
      Q => tmp_dest_V_reg_211(2),
      R => '0'
    );
\tmp_dest_V_reg_211_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_dest_V_U_n_2,
      Q => tmp_dest_V_reg_211(3),
      R => '0'
    );
\tmp_dest_V_reg_211_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_dest_V_U_n_1,
      Q => tmp_dest_V_reg_211(4),
      R => '0'
    );
\tmp_dest_V_reg_211_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_dest_V_U_n_0,
      Q => tmp_dest_V_reg_211(5),
      R => '0'
    );
\tmp_id_V_reg_206_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_id_V_U_n_4,
      Q => tmp_id_V_reg_206(0),
      R => '0'
    );
\tmp_id_V_reg_206_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_id_V_U_n_3,
      Q => tmp_id_V_reg_206(1),
      R => '0'
    );
\tmp_id_V_reg_206_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_id_V_U_n_2,
      Q => tmp_id_V_reg_206(2),
      R => '0'
    );
\tmp_id_V_reg_206_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_id_V_U_n_1,
      Q => tmp_id_V_reg_206(3),
      R => '0'
    );
\tmp_id_V_reg_206_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_id_V_U_n_0,
      Q => tmp_id_V_reg_206(4),
      R => '0'
    );
\tmp_keep_V_reg_186_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_keep_V_U_n_3,
      Q => tmp_keep_V_reg_186(0),
      R => '0'
    );
\tmp_keep_V_reg_186_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_keep_V_U_n_2,
      Q => tmp_keep_V_reg_186(1),
      R => '0'
    );
\tmp_keep_V_reg_186_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_keep_V_U_n_1,
      Q => tmp_keep_V_reg_186(2),
      R => '0'
    );
\tmp_keep_V_reg_186_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_keep_V_U_n_0,
      Q => tmp_keep_V_reg_186(3),
      R => '0'
    );
\tmp_last_V_reg_201_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_last_V_U_n_0,
      Q => tmp_last_V_reg_201,
      R => '0'
    );
\tmp_strb_V_reg_191_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_strb_V_U_n_3,
      Q => tmp_strb_V_reg_191(0),
      R => '0'
    );
\tmp_strb_V_reg_191_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_strb_V_U_n_2,
      Q => tmp_strb_V_reg_191(1),
      R => '0'
    );
\tmp_strb_V_reg_191_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_strb_V_U_n_1,
      Q => tmp_strb_V_reg_191(2),
      R => '0'
    );
\tmp_strb_V_reg_191_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_strb_V_U_n_0,
      Q => tmp_strb_V_reg_191(3),
      R => '0'
    );
\tmp_user_V_reg_196_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_user_V_U_n_3,
      Q => tmp_user_V_reg_196(0),
      R => '0'
    );
\tmp_user_V_reg_196_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_1810,
      D => regslice_both_inStream_V_user_V_U_n_2,
      Q => tmp_user_V_reg_196(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,doGain,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_0_hls_inst_0 : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of bd_0_hls_inst_0 : entity is "doGain,Vivado 2019.2";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF inStream:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of inStream_TREADY : signal is "xilinx.com:interface:axis:1.0 inStream TREADY";
  attribute x_interface_info of inStream_TVALID : signal is "xilinx.com:interface:axis:1.0 inStream TVALID";
  attribute x_interface_parameter of inStream_TVALID : signal is "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute x_interface_info of outStream_TREADY : signal is "xilinx.com:interface:axis:1.0 outStream TREADY";
  attribute x_interface_info of outStream_TVALID : signal is "xilinx.com:interface:axis:1.0 outStream TVALID";
  attribute x_interface_parameter of outStream_TVALID : signal is "XIL_INTERFACENAME outStream, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute x_interface_info of inStream_TDATA : signal is "xilinx.com:interface:axis:1.0 inStream TDATA";
  attribute x_interface_info of inStream_TDEST : signal is "xilinx.com:interface:axis:1.0 inStream TDEST";
  attribute x_interface_info of inStream_TID : signal is "xilinx.com:interface:axis:1.0 inStream TID";
  attribute x_interface_info of inStream_TKEEP : signal is "xilinx.com:interface:axis:1.0 inStream TKEEP";
  attribute x_interface_info of inStream_TLAST : signal is "xilinx.com:interface:axis:1.0 inStream TLAST";
  attribute x_interface_info of inStream_TSTRB : signal is "xilinx.com:interface:axis:1.0 inStream TSTRB";
  attribute x_interface_info of inStream_TUSER : signal is "xilinx.com:interface:axis:1.0 inStream TUSER";
  attribute x_interface_info of outStream_TDATA : signal is "xilinx.com:interface:axis:1.0 outStream TDATA";
  attribute x_interface_info of outStream_TDEST : signal is "xilinx.com:interface:axis:1.0 outStream TDEST";
  attribute x_interface_info of outStream_TID : signal is "xilinx.com:interface:axis:1.0 outStream TID";
  attribute x_interface_info of outStream_TKEEP : signal is "xilinx.com:interface:axis:1.0 outStream TKEEP";
  attribute x_interface_info of outStream_TLAST : signal is "xilinx.com:interface:axis:1.0 outStream TLAST";
  attribute x_interface_info of outStream_TSTRB : signal is "xilinx.com:interface:axis:1.0 outStream TSTRB";
  attribute x_interface_info of outStream_TUSER : signal is "xilinx.com:interface:axis:1.0 outStream TUSER";
begin
U0: entity work.bd_0_hls_inst_0_doGain
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TDATA(31 downto 0) => inStream_TDATA(31 downto 0),
      inStream_TDEST(5 downto 0) => inStream_TDEST(5 downto 0),
      inStream_TID(4 downto 0) => inStream_TID(4 downto 0),
      inStream_TKEEP(3 downto 0) => inStream_TKEEP(3 downto 0),
      inStream_TLAST(0) => inStream_TLAST(0),
      inStream_TREADY => inStream_TREADY,
      inStream_TSTRB(3 downto 0) => inStream_TSTRB(3 downto 0),
      inStream_TUSER(1 downto 0) => inStream_TUSER(1 downto 0),
      inStream_TVALID => inStream_TVALID,
      outStream_TDATA(31 downto 0) => outStream_TDATA(31 downto 0),
      outStream_TDEST(5 downto 0) => outStream_TDEST(5 downto 0),
      outStream_TID(4 downto 0) => outStream_TID(4 downto 0),
      outStream_TKEEP(3 downto 0) => outStream_TKEEP(3 downto 0),
      outStream_TLAST(0) => outStream_TLAST(0),
      outStream_TREADY => outStream_TREADY,
      outStream_TSTRB(3 downto 0) => outStream_TSTRB(3 downto 0),
      outStream_TUSER(1 downto 0) => outStream_TUSER(1 downto 0),
      outStream_TVALID => outStream_TVALID
    );
end STRUCTURE;
