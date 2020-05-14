-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu May 14 21:41:15 2020
-- Host        : DESKTOP-LVJ56DR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/localization-hls/Hardware/vivado/ZedBoard_DMA_SimpleDesign/ZedBoard_DMA_SimpleDesign.srcs/sources_1/bd/design_1/ip/design_1_passthrough_0_0/design_1_passthrough_0_0_sim_netlist.vhdl
-- Design      : design_1_passthrough_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_fifo_w10_d2_A is
  port (
    img_1_rows_V_c4_full_n : out STD_LOGIC;
    img_1_rows_V_c4_empty_n : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_for_Mat2AXIvideo_DMA_U0_empty_n : in STD_LOGIC;
    img_1_cols_V_c5_empty_n : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_fifo_w10_d2_A : entity is "fifo_w10_d2_A";
end design_1_passthrough_0_0_fifo_w10_d2_A;

architecture STRUCTURE of design_1_passthrough_0_0_fifo_w10_d2_A is
  signal \^img_1_rows_v_c4_empty_n\ : STD_LOGIC;
  signal \^img_1_rows_v_c4_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__1_n_0\ : STD_LOGIC;
  signal \^internal_empty_n_reg_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair18";
begin
  img_1_rows_V_c4_empty_n <= \^img_1_rows_v_c4_empty_n\;
  img_1_rows_V_c4_full_n <= \^img_1_rows_v_c4_full_n\;
  internal_empty_n_reg_0 <= \^internal_empty_n_reg_0\;
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_full_n_reg_0,
      I3 => internal_full_n_reg_1,
      I4 => \^img_1_rows_v_c4_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__1_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__1_n_0\,
      Q => \^img_1_rows_v_c4_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0FFFFFFF0FF"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \^img_1_rows_v_c4_full_n\,
      I3 => ap_rst_n,
      I4 => internal_full_n_reg_0,
      I5 => internal_full_n_reg_1,
      O => \internal_full_n_i_1__0_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__0_n_0\,
      Q => \^img_1_rows_v_c4_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__2_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^internal_empty_n_reg_0\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^img_1_rows_v_c4_empty_n\,
      I1 => Q(0),
      I2 => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      I3 => img_1_cols_V_c5_empty_n,
      I4 => internal_full_n_reg_1,
      O => \^internal_empty_n_reg_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__2_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_fifo_w10_d2_A_1 is
  port (
    img_1_rows_V_c_full_n : out STD_LOGIC;
    img_1_rows_V_c_empty_n : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    img_1_cols_V_c_full_n : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_fifo_w10_d2_A_1 : entity is "fifo_w10_d2_A";
end design_1_passthrough_0_0_fifo_w10_d2_A_1;

architecture STRUCTURE of design_1_passthrough_0_0_fifo_w10_d2_A_1 is
  signal \^img_1_rows_v_c_empty_n\ : STD_LOGIC;
  signal \^img_1_rows_v_c_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__3_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__2_n_0\ : STD_LOGIC;
  signal \^internal_full_n_reg_0\ : STD_LOGIC;
  signal mOutPtr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of internal_empty_n_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__0\ : label is "soft_lutpair19";
begin
  img_1_rows_V_c_empty_n <= \^img_1_rows_v_c_empty_n\;
  img_1_rows_V_c_full_n <= \^img_1_rows_v_c_full_n\;
  internal_full_n_reg_0 <= \^internal_full_n_reg_0\;
\internal_empty_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => mOutPtr(1),
      I1 => mOutPtr(0),
      I2 => internal_full_n_reg_1,
      I3 => \^internal_full_n_reg_0\,
      I4 => \^img_1_rows_v_c_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__3_n_0\
    );
internal_empty_n_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^img_1_rows_v_c_full_n\,
      I1 => img_1_cols_V_c_full_n,
      O => \^internal_full_n_reg_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__3_n_0\,
      Q => \^img_1_rows_v_c_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF0FFF0F"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => mOutPtr(1),
      I2 => ap_rst_n,
      I3 => internal_full_n_reg_1,
      I4 => img_1_cols_V_c_full_n,
      I5 => \^img_1_rows_v_c_full_n\,
      O => \internal_full_n_i_1__2_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__2_n_0\,
      Q => \^img_1_rows_v_c_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"708F8F70"
    )
        port map (
      I0 => \^img_1_rows_v_c_full_n\,
      I1 => img_1_cols_V_c_full_n,
      I2 => internal_full_n_reg_1,
      I3 => mOutPtr(0),
      I4 => mOutPtr(1),
      O => \mOutPtr[1]_i_2__0_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1_n_0\,
      Q => mOutPtr(0),
      S => ap_rst
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__0_n_0\,
      Q => mOutPtr(1),
      S => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_fifo_w11_d2_A is
  port (
    img_1_cols_V_c5_full_n : out STD_LOGIC;
    img_1_cols_V_c5_empty_n : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    img_1_cols_V_c_empty_n : in STD_LOGIC;
    img_1_rows_V_c_empty_n : in STD_LOGIC;
    img_1_rows_V_c4_full_n : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_for_Mat2AXIvideo_DMA_U0_full_n : in STD_LOGIC;
    start_for_Mat2AXIvideo_DMA_U0_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    img_1_rows_V_c4_empty_n : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_fifo_w11_d2_A : entity is "fifo_w11_d2_A";
end design_1_passthrough_0_0_fifo_w11_d2_A;

architecture STRUCTURE of design_1_passthrough_0_0_fifo_w11_d2_A is
  signal \^img_1_cols_v_c5_empty_n\ : STD_LOGIC;
  signal \^img_1_cols_v_c5_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__0_n_0\ : STD_LOGIC;
  signal \^internal_empty_n_reg_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2\ : label is "soft_lutpair15";
begin
  img_1_cols_V_c5_empty_n <= \^img_1_cols_v_c5_empty_n\;
  img_1_cols_V_c5_full_n <= \^img_1_cols_v_c5_full_n\;
  internal_empty_n_reg_0 <= \^internal_empty_n_reg_0\;
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFF7FFFFFFF"
    )
        port map (
      I0 => \^img_1_cols_v_c5_full_n\,
      I1 => img_1_cols_V_c_empty_n,
      I2 => img_1_rows_V_c_empty_n,
      I3 => img_1_rows_V_c4_full_n,
      I4 => start_once_reg,
      I5 => start_for_Mat2AXIvideo_DMA_U0_full_n,
      O => internal_full_n_reg_0
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^img_1_cols_v_c5_empty_n\,
      I1 => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      I2 => Q(0),
      I3 => img_1_rows_V_c4_empty_n,
      O => \^internal_empty_n_reg_0\
    );
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \^internal_empty_n_reg_0\,
      I3 => internal_full_n_reg_1,
      I4 => \^img_1_cols_v_c5_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__0_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__0_n_0\,
      Q => \^img_1_cols_v_c5_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0FFFFFFF0FF"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \^img_1_cols_v_c5_full_n\,
      I3 => ap_rst_n,
      I4 => \^internal_empty_n_reg_0\,
      I5 => internal_full_n_reg_1,
      O => \internal_full_n_i_1__1_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__1_n_0\,
      Q => \^img_1_cols_v_c5_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__1_n_0\
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_fifo_w11_d2_A_0 is
  port (
    img_1_cols_V_c_full_n : out STD_LOGIC;
    img_1_cols_V_c_empty_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    img_1_rows_V_c_full_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_fifo_w11_d2_A_0 : entity is "fifo_w11_d2_A";
end design_1_passthrough_0_0_fifo_w11_d2_A_0;

architecture STRUCTURE of design_1_passthrough_0_0_fifo_w11_d2_A_0 is
  signal \^img_1_cols_v_c_empty_n\ : STD_LOGIC;
  signal \^img_1_cols_v_c_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__2_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__0\ : label is "soft_lutpair16";
begin
  img_1_cols_V_c_empty_n <= \^img_1_cols_v_c_empty_n\;
  img_1_cols_V_c_full_n <= \^img_1_cols_v_c_full_n\;
\internal_empty_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_full_n_reg_0,
      I3 => internal_empty_n_reg_0,
      I4 => \^img_1_cols_v_c_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__2_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__2_n_0\,
      Q => \^img_1_cols_v_c_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFF0FFFFFFF0F"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => ap_rst_n,
      I3 => internal_full_n_reg_0,
      I4 => \^img_1_cols_v_c_full_n\,
      I5 => img_1_rows_V_c_full_n,
      O => \internal_full_n_i_1__3_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__3_n_0\,
      Q => \^img_1_cols_v_c_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__0_n_0\
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"708F8F70"
    )
        port map (
      I0 => img_1_rows_V_c_full_n,
      I1 => \^img_1_cols_v_c_full_n\,
      I2 => internal_full_n_reg_0,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1__0_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__0_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__0_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg is
  port (
    \ireg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_int_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_int_reg[7]_0\ : in STD_LOGIC;
    \odata_int_reg[0]\ : in STD_LOGIC;
    \odata_int_reg[0]_0\ : in STD_LOGIC;
    ce : in STD_LOGIC;
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg : entity is "fifo_w8_d2_A_shiftReg";
end design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg;

architecture STRUCTURE of design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg is
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg[0][7]_0\(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce,
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
\ireg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][0]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][0]\,
      O => D(0)
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][1]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][1]\,
      O => D(1)
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][2]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][2]\,
      O => D(2)
    );
\ireg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][3]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][3]\,
      O => D(3)
    );
\ireg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][4]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][4]\,
      O => D(4)
    );
\ireg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][5]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][5]\,
      O => D(5)
    );
\ireg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][6]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][6]\,
      O => D(6)
    );
\ireg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][7]\,
      I1 => \odata_int_reg[0]\,
      I2 => \odata_int_reg[0]_0\,
      I3 => \SRL_SIG_reg_n_0_[0][7]\,
      O => D(7)
    );
\odata_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(0),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][0]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][0]\,
      O => \ireg_reg[7]\(0)
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(1),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][1]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][1]\,
      O => \ireg_reg[7]\(1)
    );
\odata_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(2),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][2]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][2]\,
      O => \ireg_reg[7]\(2)
    );
\odata_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(3),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][3]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][3]\,
      O => \ireg_reg[7]\(3)
    );
\odata_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(4),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][4]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][4]\,
      O => \ireg_reg[7]\(4)
    );
\odata_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(5),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][5]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][5]\,
      O => \ireg_reg[7]\(5)
    );
\odata_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(6),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][6]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][6]\,
      O => \ireg_reg[7]\(6)
    );
\odata_int[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BB8888B888"
    )
        port map (
      I0 => \odata_int_reg[7]\(7),
      I1 => \odata_int_reg[7]_0\,
      I2 => \SRL_SIG_reg_n_0_[1][7]\,
      I3 => \odata_int_reg[0]\,
      I4 => \odata_int_reg[0]_0\,
      I5 => \SRL_SIG_reg_n_0_[0][7]\,
      O => \ireg_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_start_for_Mat2AXIbkb is
  port (
    start_for_Mat2AXIvideo_DMA_U0_full_n : out STD_LOGIC;
    start_for_Mat2AXIvideo_DMA_U0_empty_n : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]_0\ : in STD_LOGIC;
    ap_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_start_for_Mat2AXIbkb : entity is "start_for_Mat2AXIbkb";
end design_1_passthrough_0_0_start_for_Mat2AXIbkb;

architecture STRUCTURE of design_1_passthrough_0_0_start_for_Mat2AXIbkb is
  signal A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \internal_empty_n_i_1__4_n_0\ : STD_LOGIC;
  signal \internal_empty_n_i_2__0_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \^start_for_mat2axivideo_dma_u0_empty_n\ : STD_LOGIC;
  signal \^start_for_mat2axivideo_dma_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair20";
begin
  start_for_Mat2AXIvideo_DMA_U0_empty_n <= \^start_for_mat2axivideo_dma_u0_empty_n\;
  start_for_Mat2AXIvideo_DMA_U0_full_n <= \^start_for_mat2axivideo_dma_u0_full_n\;
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^start_for_mat2axivideo_dma_u0_full_n\,
      I1 => start_once_reg,
      O => internal_full_n_reg_0
    );
\internal_empty_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => A(1),
      I1 => A(0),
      I2 => \mOutPtr_reg[1]_0\,
      I3 => \internal_empty_n_i_2__0_n_0\,
      I4 => \^start_for_mat2axivideo_dma_u0_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__4_n_0\
    );
\internal_empty_n_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^start_for_mat2axivideo_dma_u0_full_n\,
      I1 => start_once_reg,
      O => \internal_empty_n_i_2__0_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__4_n_0\,
      Q => \^start_for_mat2axivideo_dma_u0_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFD5555"
    )
        port map (
      I0 => ap_rst_n,
      I1 => A(1),
      I2 => A(0),
      I3 => start_once_reg,
      I4 => \^start_for_mat2axivideo_dma_u0_full_n\,
      I5 => \mOutPtr_reg[1]_0\,
      O => \internal_full_n_i_1__4_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__4_n_0\,
      Q => \^start_for_mat2axivideo_dma_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD2DDD2222D222"
    )
        port map (
      I0 => \^start_for_mat2axivideo_dma_u0_full_n\,
      I1 => start_once_reg,
      I2 => \^start_for_mat2axivideo_dma_u0_empty_n\,
      I3 => CO(0),
      I4 => \mOutPtr_reg[0]_0\,
      I5 => A(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BDBB4244"
    )
        port map (
      I0 => A(0),
      I1 => \mOutPtr_reg[1]_0\,
      I2 => start_once_reg,
      I3 => \^start_for_mat2axivideo_dma_u0_full_n\,
      I4 => A(1),
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => A(0),
      S => ap_rst
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => A(1),
      S => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_xil_defaultlib_ibuf is
  port (
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    \icmp_ln54_reg_288_reg[0]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    t_V_1_reg_170 : out STD_LOGIC;
    t_V_1_reg_1700 : out STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[8]_1\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ireg_reg[8]_2\ : out STD_LOGIC;
    \icmp_ln879_reg_283_reg[0]\ : out STD_LOGIC;
    \icmp_ln54_reg_288_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[8]_3\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg_0 : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]_1\ : in STD_LOGIC;
    \t_V_1_reg_170_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln54_reg_288_reg[0]_1\ : in STD_LOGIC;
    img_1_data_stream_0_empty_n : in STD_LOGIC;
    icmp_ln54_reg_288_pp0_iter1_reg : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_last_V_reg_297_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln879_reg_283 : in STD_LOGIC;
    tmp_last_V_reg_297 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \ireg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_xil_defaultlib_ibuf : entity is "xil_defaultlib_ibuf";
end design_1_passthrough_0_0_xil_defaultlib_ibuf;

architecture STRUCTURE of design_1_passthrough_0_0_xil_defaultlib_ibuf is
  signal \^icmp_ln54_reg_288_reg[0]\ : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal \ireg[8]_i_4_n_0\ : STD_LOGIC;
  signal \^ireg_reg[8]_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ireg_reg[8]_2\ : STD_LOGIC;
  signal \^t_v_1_reg_1700\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \icmp_ln54_reg_288[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ireg[8]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata_int[7]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \odata_int[8]_i_1\ : label is "soft_lutpair12";
begin
  \icmp_ln54_reg_288_reg[0]\ <= \^icmp_ln54_reg_288_reg[0]\;
  \ireg_reg[8]_1\(8 downto 0) <= \^ireg_reg[8]_1\(8 downto 0);
  \ireg_reg[8]_2\ <= \^ireg_reg[8]_2\;
  t_V_1_reg_1700 <= \^t_v_1_reg_1700\;
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2_reg_0,
      I1 => \ireg[8]_i_4_n_0\,
      I2 => \ap_CS_fsm_reg[2]_1\,
      I3 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222000"
    )
        port map (
      I0 => Q(1),
      I1 => \ireg[8]_i_4_n_0\,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => CO(0),
      I4 => \ap_CS_fsm_reg[3]\,
      I5 => \ireg_reg[8]_3\,
      O => D(1)
    );
\ap_enable_reg_pp0_iter0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDF0000000000"
    )
        port map (
      I0 => CO(0),
      I1 => \ireg[8]_i_4_n_0\,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter2_reg_0,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => ap_rst_n,
      O => \ap_CS_fsm_reg[2]\
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5C00000"
    )
        port map (
      I0 => CO(0),
      I1 => \ireg_reg[8]_3\,
      I2 => \ireg[8]_i_4_n_0\,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter1_reg
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F400000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2_reg_0,
      I1 => \ap_CS_fsm_reg[3]\,
      I2 => \ireg[8]_i_4_n_0\,
      I3 => \ireg_reg[8]_3\,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter2_reg
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F0FA00"
    )
        port map (
      I0 => ap_rst_n,
      I1 => video_out_TREADY,
      I2 => \^icmp_ln54_reg_288_reg[0]\,
      I3 => \count_reg[0]\,
      I4 => \count_reg[0]_0\,
      O => ap_rst_n_0
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \^icmp_ln54_reg_288_reg[0]\,
      I1 => \count_reg[0]_0\,
      I2 => \count_reg[0]\,
      I3 => video_out_TREADY,
      O => count(0)
    );
\icmp_ln54_reg_288[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => CO(0),
      I1 => Q(1),
      I2 => \ireg[8]_i_4_n_0\,
      I3 => \icmp_ln54_reg_288_reg[0]_1\,
      O => \ap_CS_fsm_reg[2]_0\
    );
\icmp_ln54_reg_288_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \icmp_ln54_reg_288_reg[0]_1\,
      I1 => Q(1),
      I2 => \ireg[8]_i_4_n_0\,
      I3 => icmp_ln54_reg_288_pp0_iter1_reg,
      O => \icmp_ln54_reg_288_reg[0]_0\
    );
\ireg[8]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ireg_reg[8]_1\(8),
      I1 => \ireg_reg[0]_0\(0),
      I2 => video_out_TREADY,
      O => ireg01_out
    );
\ireg[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \icmp_ln54_reg_288_reg[0]_1\,
      I1 => \ireg_reg[8]_3\,
      I2 => Q(1),
      I3 => \ireg[8]_i_4_n_0\,
      O => \^icmp_ln54_reg_288_reg[0]\
    );
\ireg[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFF0C0C04040404"
    )
        port map (
      I0 => img_1_data_stream_0_empty_n,
      I1 => \ireg_reg[8]_3\,
      I2 => \icmp_ln54_reg_288_reg[0]_1\,
      I3 => icmp_ln54_reg_288_pp0_iter1_reg,
      I4 => \ap_CS_fsm_reg[3]\,
      I5 => \^ireg_reg[8]_2\,
      O => \ireg[8]_i_4_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(0),
      Q => \^ireg_reg[8]_1\(0),
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(1),
      Q => \^ireg_reg[8]_1\(1),
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(2),
      Q => \^ireg_reg[8]_1\(2),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(3),
      Q => \^ireg_reg[8]_1\(3),
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(4),
      Q => \^ireg_reg[8]_1\(4),
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(5),
      Q => \^ireg_reg[8]_1\(5),
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(6),
      Q => \^ireg_reg[8]_1\(6),
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[7]_0\(7),
      Q => \^ireg_reg[8]_1\(7),
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \^icmp_ln54_reg_288_reg[0]\,
      Q => \^ireg_reg[8]_1\(8),
      R => SR(0)
    );
\odata_int[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ireg_reg[8]_1\(8),
      I1 => ap_rst_n,
      O => \^ireg_reg[8]_2\
    );
\odata_int[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ireg_reg[8]_1\(8),
      I1 => \^icmp_ln54_reg_288_reg[0]\,
      O => \ireg_reg[8]_0\(0)
    );
\t_V_1_reg_170[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A222"
    )
        port map (
      I0 => Q(0),
      I1 => \count_reg[0]\,
      I2 => video_out_TREADY,
      I3 => \count_reg[0]_0\,
      I4 => \t_V_1_reg_170_reg[0]\(0),
      I5 => \^t_v_1_reg_1700\,
      O => t_V_1_reg_170
    );
\t_V_1_reg_170[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \ireg[8]_i_4_n_0\,
      I2 => Q(1),
      I3 => CO(0),
      O => \^t_v_1_reg_1700\
    );
\tmp_last_V_reg_297[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \tmp_last_V_reg_297_reg[0]\(0),
      I1 => icmp_ln879_reg_283,
      I2 => CO(0),
      I3 => Q(1),
      I4 => \ireg[8]_i_4_n_0\,
      I5 => tmp_last_V_reg_297,
      O => \icmp_ln879_reg_283_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_xil_defaultlib_ibuf_6 is
  port (
    internal_full_n_reg : out STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    img_1_data_stream_0_full_n : in STD_LOGIC;
    \t_V_2_reg_196_reg[0]\ : in STD_LOGIC;
    icmp_ln25_reg_260 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_rst_n : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_xil_defaultlib_ibuf_6 : entity is "xil_defaultlib_ibuf";
end design_1_passthrough_0_0_xil_defaultlib_ibuf_6;

architecture STRUCTURE of design_1_passthrough_0_0_xil_defaultlib_ibuf_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata_int[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata_int[3]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata_int[4]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata_int[5]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata_int[6]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata_int[7]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata_int[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of video_in_TREADY_INST_0 : label is "soft_lutpair4";
begin
  Q(0) <= \^q\(0);
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
      Q => \^q\(0),
      R => SR(0)
    );
\odata_int[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => D(0),
      O => \ireg_reg[8]_0\(0)
    );
\odata_int[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => D(1),
      O => \ireg_reg[8]_0\(1)
    );
\odata_int[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => D(2),
      O => \ireg_reg[8]_0\(2)
    );
\odata_int[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => D(3),
      O => \ireg_reg[8]_0\(3)
    );
\odata_int[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => D(4),
      O => \ireg_reg[8]_0\(4)
    );
\odata_int[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => D(5),
      O => \ireg_reg[8]_0\(5)
    );
\odata_int[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => D(6),
      O => \ireg_reg[8]_0\(6)
    );
\odata_int[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => D(7),
      O => \ireg_reg[8]_0\(7)
    );
\odata_int[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => D(8),
      O => \ireg_reg[8]_0\(8)
    );
\tmp_data_V_reg_269[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => img_1_data_stream_0_full_n,
      I1 => \t_V_2_reg_196_reg[0]\,
      I2 => icmp_ln25_reg_260,
      O => internal_full_n_reg
    );
video_in_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => D(8),
      I1 => ap_rst_n,
      I2 => \^q\(0),
      O => video_in_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0\ is
  port (
    p_0_in : out STD_LOGIC;
    \ireg_reg[0]_0\ : out STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    \ireg_reg[1]_1\ : in STD_LOGIC;
    tmp_last_V_reg_297 : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0\ : entity is "xil_defaultlib_ibuf";
end \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0\;

architecture STRUCTURE of \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0\ is
  signal \ireg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ireg_reg[0]_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
begin
  \ireg_reg[0]_0\ <= \^ireg_reg[0]_0\;
  p_0_in <= \^p_0_in\;
\ireg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0A0C000A000A0"
    )
        port map (
      I0 => \^ireg_reg[0]_0\,
      I1 => tmp_last_V_reg_297,
      I2 => ap_rst_n,
      I3 => \^p_0_in\,
      I4 => video_out_TREADY,
      I5 => \ireg_reg[1]_1\,
      O => \ireg[0]_i_1_n_0\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C80000"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => ap_rst_n,
      I2 => \^p_0_in\,
      I3 => video_out_TREADY,
      I4 => \ireg_reg[1]_1\,
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
entity \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3\ is
  port (
    p_0_in : out STD_LOGIC;
    \ireg_reg[0]_0\ : out STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    \ireg_reg[1]_1\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3\ : entity is "xil_defaultlib_ibuf";
end \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3\;

architecture STRUCTURE of \design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3\ is
  signal \ireg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ireg_reg[0]_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
begin
  \ireg_reg[0]_0\ <= \^ireg_reg[0]_0\;
  p_0_in <= \^p_0_in\;
\ireg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088C0808"
    )
        port map (
      I0 => \^ireg_reg[0]_0\,
      I1 => ap_rst_n,
      I2 => \^p_0_in\,
      I3 => video_out_TREADY,
      I4 => \ireg_reg[1]_1\,
      O => \ireg[0]_i_1_n_0\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C80000"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => ap_rst_n,
      I2 => \^p_0_in\,
      I3 => video_out_TREADY,
      I4 => \ireg_reg[1]_1\,
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
entity design_1_passthrough_0_0_xil_defaultlib_obuf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \odata_int_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_xil_defaultlib_obuf : entity is "xil_defaultlib_obuf";
end design_1_passthrough_0_0_xil_defaultlib_obuf;

architecture STRUCTURE of design_1_passthrough_0_0_xil_defaultlib_obuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata_int[7]_i_2_n_0\ : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  SR(0) <= \^sr\(0);
\ireg[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(8),
      I1 => video_out_TREADY,
      I2 => \ireg_reg[0]\(0),
      I3 => ap_rst_n,
      O => \odata_int_reg[8]_0\(0)
    );
\odata_int[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\odata_int[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => video_out_TREADY,
      I1 => \^q\(8),
      O => \odata_int[7]_i_2_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\odata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata_int[7]_i_2_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_xil_defaultlib_obuf_7 is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ce : out STD_LOGIC;
    t_V_2_reg_196 : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln25_reg_260_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter00 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[1][0]\ : in STD_LOGIC;
    img_1_data_stream_0_full_n : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \t_V_2_reg_196_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \t_V_2_reg_196_reg[0]_0\ : in STD_LOGIC;
    icmp_ln25_reg_260 : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_xil_defaultlib_obuf_7 : entity is "xil_defaultlib_obuf";
end design_1_passthrough_0_0_xil_defaultlib_obuf_7;

architecture STRUCTURE of design_1_passthrough_0_0_xil_defaultlib_obuf_7 is
  signal \^ap_enable_reg_pp0_iter0_reg\ : STD_LOGIC;
  signal \icmp_ln25_reg_260[0]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal vld_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ireg[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ireg[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \t_V_2_reg_196[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmp_data_V_reg_269[7]_i_1\ : label is "soft_lutpair5";
begin
  ap_enable_reg_pp0_iter0_reg <= \^ap_enable_reg_pp0_iter0_reg\;
\SRL_SIG[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020002020"
    )
        port map (
      I0 => Q(1),
      I1 => \SRL_SIG_reg[1][0]\,
      I2 => img_1_data_stream_0_full_n,
      I3 => vld_out,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => CO(0),
      O => ce
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44C000C000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter00,
      I1 => ap_rst_n,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \icmp_ln25_reg_260[0]_i_2_n_0\,
      I4 => ap_enable_reg_pp0_iter1_reg,
      I5 => ap_enable_reg_pp0_iter1_reg_0,
      O => ap_rst_n_0
    );
\icmp_ln25_reg_260[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => icmp_ln25_reg_260,
      I1 => \icmp_ln25_reg_260[0]_i_2_n_0\,
      I2 => Q(1),
      I3 => CO(0),
      O => \icmp_ln25_reg_260_reg[0]\
    );
\icmp_ln25_reg_260[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404FF0404"
    )
        port map (
      I0 => icmp_ln25_reg_260,
      I1 => ap_enable_reg_pp0_iter1_reg,
      I2 => img_1_data_stream_0_full_n,
      I3 => vld_out,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => CO(0),
      O => \icmp_ln25_reg_260[0]_i_2_n_0\
    );
\ireg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => vld_out,
      I1 => \^ap_enable_reg_pp0_iter0_reg\,
      I2 => \ireg_reg[0]\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\ireg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ireg_reg[0]\(0),
      I1 => vld_out,
      I2 => \^ap_enable_reg_pp0_iter0_reg\,
      O => E(0)
    );
\odata_int[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter0_reg\,
      I1 => vld_out,
      O => p_0_in
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(0),
      Q => \odata_int_reg[7]_0\(0),
      R => ap_rst
    );
\odata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(1),
      Q => \odata_int_reg[7]_0\(1),
      R => ap_rst
    );
\odata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(2),
      Q => \odata_int_reg[7]_0\(2),
      R => ap_rst
    );
\odata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(3),
      Q => \odata_int_reg[7]_0\(3),
      R => ap_rst
    );
\odata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(4),
      Q => \odata_int_reg[7]_0\(4),
      R => ap_rst
    );
\odata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(5),
      Q => \odata_int_reg[7]_0\(5),
      R => ap_rst
    );
\odata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(6),
      Q => \odata_int_reg[7]_0\(6),
      R => ap_rst
    );
\odata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(7),
      Q => \odata_int_reg[7]_0\(7),
      R => ap_rst
    );
\odata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(8),
      Q => vld_out,
      R => ap_rst
    );
\t_V_2_reg_196[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \t_V_2_reg_196_reg[0]\(0),
      I1 => Q(0),
      I2 => \^ap_enable_reg_pp0_iter0_reg\,
      O => t_V_2_reg_196
    );
\t_V_2_reg_196[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => CO(0),
      I1 => ap_enable_reg_pp0_iter0,
      I2 => vld_out,
      I3 => \t_V_2_reg_196_reg[0]_0\,
      I4 => Q(1),
      O => \^ap_enable_reg_pp0_iter0_reg\
    );
\tmp_data_V_reg_269[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002022"
    )
        port map (
      I0 => Q(1),
      I1 => \t_V_2_reg_196_reg[0]_0\,
      I2 => vld_out,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => CO(0),
      O => \ap_CS_fsm_reg[2]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0\ is
  port (
    \odata_int_reg[1]_0\ : out STD_LOGIC;
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \odata_int_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[0]_0\ : in STD_LOGIC;
    tmp_last_V_reg_297 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0\ : entity is "xil_defaultlib_obuf";
end \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0\;

architecture STRUCTURE of \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0\ is
  signal \odata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[1]_0\ : STD_LOGIC;
  signal \^video_out_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata_int[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \odata_int[1]_i_1\ : label is "soft_lutpair14";
begin
  \odata_int_reg[1]_0\ <= \^odata_int_reg[1]_0\;
  video_out_TLAST(0) <= \^video_out_tlast\(0);
\odata_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \odata_int_reg[0]_0\,
      I1 => p_0_in,
      I2 => tmp_last_V_reg_297,
      I3 => \odata_int[0]_i_2_n_0\,
      I4 => \^video_out_tlast\(0),
      O => \odata_int[0]_i_1_n_0\
    );
\odata_int[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => ap_rst_n,
      I1 => video_out_TREADY,
      I2 => \^odata_int_reg[1]_0\,
      O => \odata_int[0]_i_2_n_0\
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => p_0_in,
      I1 => \odata_int_reg[1]_1\(0),
      I2 => video_out_TREADY,
      I3 => \^odata_int_reg[1]_0\,
      O => \odata_int[1]_i_1_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[0]_i_1_n_0\,
      Q => \^video_out_tlast\(0),
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
entity \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4\ is
  port (
    \odata_int_reg[1]_0\ : out STD_LOGIC;
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    \odata_int_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TREADY : in STD_LOGIC;
    \odata_int_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4\ : entity is "xil_defaultlib_obuf";
end \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4\;

architecture STRUCTURE of \design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4\ is
  signal \odata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \odata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \^odata_int_reg[1]_0\ : STD_LOGIC;
  signal \^video_out_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \odata_int_reg[1]_0\ <= \^odata_int_reg[1]_0\;
  video_out_TSTRB(0) <= \^video_out_tstrb\(0);
\odata_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBBB0BB"
    )
        port map (
      I0 => \odata_int_reg[0]_0\,
      I1 => p_0_in,
      I2 => video_out_TREADY,
      I3 => \^odata_int_reg[1]_0\,
      I4 => \^video_out_tstrb\(0),
      O => \odata_int[0]_i_1_n_0\
    );
\odata_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => p_0_in,
      I1 => \odata_int_reg[1]_1\(0),
      I2 => video_out_TREADY,
      I3 => \^odata_int_reg[1]_0\,
      O => \odata_int[1]_i_1_n_0\
    );
\odata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \odata_int[0]_i_1_n_0\,
      Q => \^video_out_tstrb\(0),
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
entity design_1_passthrough_0_0_fifo_w8_d2_A is
  port (
    img_1_data_stream_0_full_n : out STD_LOGIC;
    img_1_data_stream_0_empty_n : out STD_LOGIC;
    \ireg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ce : in STD_LOGIC;
    Mat2AXIvideo_DMA_U0_img_data_stream_V_read : in STD_LOGIC;
    \odata_int_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_int_reg[7]_0\ : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_fifo_w8_d2_A : entity is "fifo_w8_d2_A";
end design_1_passthrough_0_0_fifo_w8_d2_A;

architecture STRUCTURE of design_1_passthrough_0_0_fifo_w8_d2_A is
  signal \^img_1_data_stream_0_empty_n\ : STD_LOGIC;
  signal \^img_1_data_stream_0_full_n\ : STD_LOGIC;
  signal internal_empty_n_i_1_n_0 : STD_LOGIC;
  signal internal_full_n_i_1_n_0 : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair17";
begin
  img_1_data_stream_0_empty_n <= \^img_1_data_stream_0_empty_n\;
  img_1_data_stream_0_full_n <= \^img_1_data_stream_0_full_n\;
U_fifo_w8_d2_A_shiftReg: entity work.design_1_passthrough_0_0_fifo_w8_d2_A_shiftReg
     port map (
      D(7 downto 0) => D(7 downto 0),
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => \SRL_SIG_reg[0][7]\(7 downto 0),
      ap_clk => ap_clk,
      ce => ce,
      \ireg_reg[7]\(7 downto 0) => \ireg_reg[7]\(7 downto 0),
      \odata_int_reg[0]\ => \mOutPtr_reg_n_0_[0]\,
      \odata_int_reg[0]_0\ => \mOutPtr_reg_n_0_[1]\,
      \odata_int_reg[7]\(7 downto 0) => \odata_int_reg[7]\(7 downto 0),
      \odata_int_reg[7]_0\ => \odata_int_reg[7]_0\
    );
internal_empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
      I3 => ce,
      I4 => \^img_1_data_stream_0_empty_n\,
      I5 => ap_rst_n,
      O => internal_empty_n_i_1_n_0
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_i_1_n_0,
      Q => \^img_1_data_stream_0_empty_n\,
      R => '0'
    );
internal_full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^img_1_data_stream_0_full_n\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      I4 => ce,
      I5 => Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
      O => internal_full_n_i_1_n_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_i_1_n_0,
      Q => \^img_1_data_stream_0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
      I1 => ce,
      I2 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => ce,
      I2 => Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
      I3 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_regslice_both is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \icmp_ln54_reg_288_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    t_V_1_reg_170 : out STD_LOGIC;
    t_V_1_reg_1700 : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    \ireg_reg[8]\ : out STD_LOGIC;
    \odata_int_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \icmp_ln879_reg_283_reg[0]\ : out STD_LOGIC;
    \icmp_ln879_reg_283_reg[0]_0\ : out STD_LOGIC;
    \icmp_ln54_reg_288_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC;
    \ireg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[8]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_1\ : in STD_LOGIC;
    \t_V_1_reg_170_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_for_Mat2AXIvideo_DMA_U0_empty_n : in STD_LOGIC;
    \icmp_ln54_reg_288_reg[0]_1\ : in STD_LOGIC;
    img_1_data_stream_0_empty_n : in STD_LOGIC;
    icmp_ln54_reg_288_pp0_iter1_reg : in STD_LOGIC;
    \tmp_last_V_reg_297_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln879_reg_283 : in STD_LOGIC;
    tmp_last_V_reg_297 : in STD_LOGIC;
    \icmp_ln879_reg_283_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_int_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_regslice_both : entity is "regslice_both";
end design_1_passthrough_0_0_regslice_both;

architecture STRUCTURE of design_1_passthrough_0_0_regslice_both is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[2]_i_2__0_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal obuf_inst_n_10 : STD_LOGIC;
  signal \^odata_int_reg[8]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_V_reg_278[31]_i_1\ : label is "soft_lutpair13";
begin
  SR(0) <= \^sr\(0);
  \odata_int_reg[8]\(8 downto 0) <= \^odata_int_reg[8]\(8 downto 0);
\ap_CS_fsm[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DDD"
    )
        port map (
      I0 => Q(0),
      I1 => \count_reg_n_0_[0]\,
      I2 => video_out_TREADY,
      I3 => \count_reg_n_0_[1]\,
      O => \ap_CS_fsm_reg[1]\
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7000"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => video_out_TREADY,
      I2 => \count_reg_n_0_[0]\,
      I3 => Q(0),
      I4 => \ap_CS_fsm_reg[1]_0\,
      I5 => Q(2),
      O => D(0)
    );
\ap_CS_fsm[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40550000"
    )
        port map (
      I0 => \t_V_1_reg_170_reg[0]\(0),
      I1 => \count_reg_n_0_[1]\,
      I2 => video_out_TREADY,
      I3 => \count_reg_n_0_[0]\,
      I4 => Q(0),
      O => \ap_CS_fsm[2]_i_2__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_2,
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
\i_V_reg_278[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F00"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => video_out_TREADY,
      I2 => \count_reg_n_0_[0]\,
      I3 => Q(0),
      O => E(0)
    );
ibuf_inst: entity work.design_1_passthrough_0_0_xil_defaultlib_ibuf
     port map (
      CO(0) => CO(0),
      D(1 downto 0) => D(2 downto 1),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => obuf_inst_n_10,
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm_reg[2]\,
      \ap_CS_fsm_reg[2]_0\ => \ap_CS_fsm_reg[2]_0\,
      \ap_CS_fsm_reg[2]_1\ => \ap_CS_fsm_reg[2]_1\,
      \ap_CS_fsm_reg[3]\ => \ap_CS_fsm_reg[3]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg,
      ap_enable_reg_pp0_iter2_reg => ap_enable_reg_pp0_iter2_reg,
      ap_enable_reg_pp0_iter2_reg_0 => \ap_CS_fsm[2]_i_2__0_n_0\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ibuf_inst_n_2,
      count(0) => count(1),
      \count_reg[0]\ => \count_reg_n_0_[0]\,
      \count_reg[0]_0\ => \count_reg_n_0_[1]\,
      icmp_ln54_reg_288_pp0_iter1_reg => icmp_ln54_reg_288_pp0_iter1_reg,
      \icmp_ln54_reg_288_reg[0]\ => \icmp_ln54_reg_288_reg[0]\(0),
      \icmp_ln54_reg_288_reg[0]_0\ => \icmp_ln54_reg_288_reg[0]_0\,
      \icmp_ln54_reg_288_reg[0]_1\ => \icmp_ln54_reg_288_reg[0]_1\,
      icmp_ln879_reg_283 => icmp_ln879_reg_283,
      \icmp_ln879_reg_283_reg[0]\ => \icmp_ln879_reg_283_reg[0]\,
      img_1_data_stream_0_empty_n => img_1_data_stream_0_empty_n,
      \ireg_reg[0]_0\(0) => \^odata_int_reg[8]\(8),
      \ireg_reg[7]_0\(7 downto 0) => \ireg_reg[7]_0\(7 downto 0),
      \ireg_reg[8]_0\(0) => ibuf_inst_n_10,
      \ireg_reg[8]_1\(8) => p_0_in,
      \ireg_reg[8]_1\(7 downto 0) => \ireg_reg[7]\(7 downto 0),
      \ireg_reg[8]_2\ => \ireg_reg[8]\,
      \ireg_reg[8]_3\ => \ireg_reg[8]_0\,
      t_V_1_reg_170 => t_V_1_reg_170,
      t_V_1_reg_1700 => t_V_1_reg_1700,
      \t_V_1_reg_170_reg[0]\(0) => \t_V_1_reg_170_reg[0]\(0),
      tmp_last_V_reg_297 => tmp_last_V_reg_297,
      \tmp_last_V_reg_297_reg[0]\(0) => \tmp_last_V_reg_297_reg[0]\(0),
      video_out_TREADY => video_out_TREADY
    );
\icmp_ln879_reg_283[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \icmp_ln879_reg_283_reg[0]_1\(0),
      I1 => \ap_CS_fsm[2]_i_2__0_n_0\,
      I2 => icmp_ln879_reg_283,
      O => \icmp_ln879_reg_283_reg[0]_0\
    );
\mOutPtr[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080008000800080"
    )
        port map (
      I0 => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      I1 => \t_V_1_reg_170_reg[0]\(0),
      I2 => Q(0),
      I3 => \count_reg_n_0_[0]\,
      I4 => video_out_TREADY,
      I5 => \count_reg_n_0_[1]\,
      O => internal_empty_n_reg
    );
obuf_inst: entity work.design_1_passthrough_0_0_xil_defaultlib_obuf
     port map (
      D(8) => ibuf_inst_n_10,
      D(7 downto 0) => \odata_int_reg[7]\(7 downto 0),
      Q(8 downto 0) => \^odata_int_reg[8]\(8 downto 0),
      SR(0) => \^sr\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]\(0) => p_0_in,
      \odata_int_reg[8]_0\(0) => obuf_inst_n_10,
      video_out_TREADY => video_out_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_regslice_both_5 is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ce : out STD_LOGIC;
    t_V_2_reg_196 : out STD_LOGIC;
    ack_out : out STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    \icmp_ln25_reg_260_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter00 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[1][0]\ : in STD_LOGIC;
    img_1_data_stream_0_full_n : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \t_V_2_reg_196_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln25_reg_260 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_regslice_both_5 : entity is "regslice_both";
end design_1_passthrough_0_0_regslice_both_5;

architecture STRUCTURE of design_1_passthrough_0_0_regslice_both_5 is
  signal ibuf_inst_n_0 : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_7 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_6 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.design_1_passthrough_0_0_xil_defaultlib_ibuf_6
     port map (
      D(8 downto 0) => D(8 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_6,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      icmp_ln25_reg_260 => icmp_ln25_reg_260,
      img_1_data_stream_0_full_n => img_1_data_stream_0_full_n,
      internal_full_n_reg => ibuf_inst_n_0,
      \ireg_reg[8]_0\(8) => ibuf_inst_n_3,
      \ireg_reg[8]_0\(7) => ibuf_inst_n_4,
      \ireg_reg[8]_0\(6) => ibuf_inst_n_5,
      \ireg_reg[8]_0\(5) => ibuf_inst_n_6,
      \ireg_reg[8]_0\(4) => ibuf_inst_n_7,
      \ireg_reg[8]_0\(3) => ibuf_inst_n_8,
      \ireg_reg[8]_0\(2) => ibuf_inst_n_9,
      \ireg_reg[8]_0\(1) => ibuf_inst_n_10,
      \ireg_reg[8]_0\(0) => ibuf_inst_n_11,
      \t_V_2_reg_196_reg[0]\ => ap_enable_reg_pp0_iter1_reg,
      video_in_TREADY => video_in_TREADY
    );
obuf_inst: entity work.design_1_passthrough_0_0_xil_defaultlib_obuf_7
     port map (
      CO(0) => CO(0),
      D(8) => ibuf_inst_n_3,
      D(7) => ibuf_inst_n_4,
      D(6) => ibuf_inst_n_5,
      D(5) => ibuf_inst_n_6,
      D(4) => ibuf_inst_n_7,
      D(3) => ibuf_inst_n_8,
      D(2) => ibuf_inst_n_9,
      D(1) => ibuf_inst_n_10,
      D(0) => ibuf_inst_n_11,
      E(0) => ireg01_out,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => obuf_inst_n_6,
      \SRL_SIG_reg[1][0]\ => \SRL_SIG_reg[1][0]\,
      \ap_CS_fsm_reg[2]\(0) => E(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter00 => ap_enable_reg_pp0_iter00,
      ap_enable_reg_pp0_iter0_reg => ack_out,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg,
      ap_enable_reg_pp0_iter1_reg_0 => ap_enable_reg_pp0_iter1_reg_0,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ce => ce,
      icmp_ln25_reg_260 => icmp_ln25_reg_260,
      \icmp_ln25_reg_260_reg[0]\ => \icmp_ln25_reg_260_reg[0]\,
      img_1_data_stream_0_full_n => img_1_data_stream_0_full_n,
      \ireg_reg[0]\(0) => p_0_in,
      \odata_int_reg[7]_0\(7 downto 0) => \odata_int_reg[7]\(7 downto 0),
      t_V_2_reg_196 => t_V_2_reg_196,
      \t_V_2_reg_196_reg[0]\(0) => \t_V_2_reg_196_reg[0]\(0),
      \t_V_2_reg_196_reg[0]_0\ => ibuf_inst_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_passthrough_0_0_regslice_both__parameterized1\ is
  port (
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_int_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_passthrough_0_0_regslice_both__parameterized1\ : entity is "regslice_both";
end \design_1_passthrough_0_0_regslice_both__parameterized1\;

architecture STRUCTURE of \design_1_passthrough_0_0_regslice_both__parameterized1\ is
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0_3\
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\ => ibuf_inst_n_1,
      \ireg_reg[1]_0\(0) => \odata_int_reg[1]\(0),
      \ireg_reg[1]_1\ => obuf_inst_n_0,
      p_0_in => p_0_in,
      video_out_TREADY => video_out_TREADY
    );
obuf_inst: entity work.\design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0_4\
     port map (
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \odata_int_reg[0]_0\ => ibuf_inst_n_1,
      \odata_int_reg[1]_0\ => obuf_inst_n_0,
      \odata_int_reg[1]_1\(0) => \odata_int_reg[1]\(0),
      p_0_in => p_0_in,
      video_out_TREADY => video_out_TREADY,
      video_out_TSTRB(0) => video_out_TSTRB(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_passthrough_0_0_regslice_both__parameterized1_2\ is
  port (
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    \odata_int_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_last_V_reg_297 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_passthrough_0_0_regslice_both__parameterized1_2\ : entity is "regslice_both";
end \design_1_passthrough_0_0_regslice_both__parameterized1_2\;

architecture STRUCTURE of \design_1_passthrough_0_0_regslice_both__parameterized1_2\ is
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\design_1_passthrough_0_0_xil_defaultlib_ibuf__parameterized0\
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\ => ibuf_inst_n_1,
      \ireg_reg[1]_0\(0) => \odata_int_reg[1]\(0),
      \ireg_reg[1]_1\ => obuf_inst_n_0,
      p_0_in => p_0_in,
      tmp_last_V_reg_297 => tmp_last_V_reg_297,
      video_out_TREADY => video_out_TREADY
    );
obuf_inst: entity work.\design_1_passthrough_0_0_xil_defaultlib_obuf__parameterized0\
     port map (
      SR(0) => SR(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_int_reg[0]_0\ => ibuf_inst_n_1,
      \odata_int_reg[1]_0\ => obuf_inst_n_0,
      \odata_int_reg[1]_1\(0) => \odata_int_reg[1]\(0),
      p_0_in => p_0_in,
      tmp_last_V_reg_297 => tmp_last_V_reg_297,
      video_out_TLAST(0) => video_out_TLAST(0),
      video_out_TREADY => video_out_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_AXIvideo2Mat_DMA is
  port (
    start_once_reg : out STD_LOGIC;
    ce : out STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TREADY : out STD_LOGIC;
    \tmp_data_V_reg_269_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    img_1_data_stream_0_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[0]_1\ : in STD_LOGIC;
    img_1_rows_V_c4_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_for_Mat2AXIvideo_DMA_U0_empty_n : in STD_LOGIC;
    img_1_cols_V_c5_empty_n : in STD_LOGIC;
    img_1_cols_V_c_full_n : in STD_LOGIC;
    img_1_rows_V_c_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC;
    img_1_rows_V_c4_full_n : in STD_LOGIC;
    img_1_rows_V_c_empty_n : in STD_LOGIC;
    img_1_cols_V_c_empty_n : in STD_LOGIC;
    img_1_cols_V_c5_full_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    start_for_Mat2AXIvideo_DMA_U0_full_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_AXIvideo2Mat_DMA : entity is "AXIvideo2Mat_DMA";
end design_1_passthrough_0_0_AXIvideo2Mat_DMA;

architecture STRUCTURE of design_1_passthrough_0_0_AXIvideo2Mat_DMA is
  signal \SRL_SIG[0][7]_i_2_n_0\ : STD_LOGIC;
  signal ack_out : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[0]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ap_NS_fsm2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_n_1\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__0_n_3\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__1_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm2_carry__1_n_3\ : STD_LOGIC;
  signal ap_NS_fsm2_carry_i_1_n_0 : STD_LOGIC;
  signal ap_NS_fsm2_carry_i_2_n_0 : STD_LOGIC;
  signal ap_NS_fsm2_carry_i_3_n_0 : STD_LOGIC;
  signal ap_NS_fsm2_carry_i_4_n_0 : STD_LOGIC;
  signal ap_NS_fsm2_carry_n_0 : STD_LOGIC;
  signal ap_NS_fsm2_carry_n_1 : STD_LOGIC;
  signal ap_NS_fsm2_carry_n_2 : STD_LOGIC;
  signal ap_NS_fsm2_carry_n_3 : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_n_1\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__0_n_3\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__1_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm3_carry__1_n_3\ : STD_LOGIC;
  signal ap_NS_fsm3_carry_i_1_n_0 : STD_LOGIC;
  signal ap_NS_fsm3_carry_i_2_n_0 : STD_LOGIC;
  signal ap_NS_fsm3_carry_i_3_n_0 : STD_LOGIC;
  signal ap_NS_fsm3_carry_i_4_n_0 : STD_LOGIC;
  signal ap_NS_fsm3_carry_n_0 : STD_LOGIC;
  signal ap_NS_fsm3_carry_n_1 : STD_LOGIC;
  signal ap_NS_fsm3_carry_n_2 : STD_LOGIC;
  signal ap_NS_fsm3_carry_n_3 : STD_LOGIC;
  signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter00 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal i_V_fu_220_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_V_reg_255 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i_V_reg_255_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_255_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_255_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_255_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_255_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal icmp_ln22_fu_215_p2 : STD_LOGIC;
  signal icmp_ln25_reg_260 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_0 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_9 : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal start_once_reg_i_1_n_0 : STD_LOGIC;
  signal t_V_2_reg_196 : STD_LOGIC;
  signal \t_V_2_reg_196[0]_i_4_n_0\ : STD_LOGIC;
  signal t_V_2_reg_196_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \t_V_2_reg_196_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_196_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal t_V_reg_185 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t_V_reg_185_0 : STD_LOGIC;
  signal NLW_ap_NS_fsm2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_NS_fsm2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ap_NS_fsm3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm3_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_NS_fsm3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_V_reg_255_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_V_reg_255_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_t_V_2_reg_196_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair8";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__2\ : label is "soft_lutpair9";
begin
  \ap_CS_fsm_reg[0]_0\ <= \^ap_cs_fsm_reg[0]_0\;
  start_once_reg <= \^start_once_reg\;
\SRL_SIG[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => icmp_ln25_reg_260,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      O => \SRL_SIG[0][7]_i_2_n_0\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => icmp_ln22_fu_215_p2,
      I1 => ap_CS_fsm_state2,
      I2 => \ap_CS_fsm_reg[0]_1\,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => \^ap_cs_fsm_reg[0]_0\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => \ap_CS_fsm_reg[1]_0\,
      I2 => img_1_rows_V_c4_full_n,
      I3 => img_1_rows_V_c_empty_n,
      I4 => img_1_cols_V_c_empty_n,
      I5 => img_1_cols_V_c5_full_n,
      O => \^ap_cs_fsm_reg[0]_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => icmp_ln22_fu_215_p2,
      I1 => ap_CS_fsm_state2,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \ap_CS_fsm[2]_i_2_n_0\,
      I4 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => icmp_ln25_reg_260,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => img_1_data_stream_0_full_n,
      I3 => ap_condition_pp0_exit_iter0_state3,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808800000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => icmp_ln25_reg_260,
      I3 => ap_enable_reg_pp0_iter1_reg_n_0,
      I4 => img_1_data_stream_0_full_n,
      I5 => ap_condition_pp0_exit_iter0_state3,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
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
      Q => ap_CS_fsm_state2,
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
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
ap_NS_fsm2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ap_NS_fsm2_carry_n_0,
      CO(2) => ap_NS_fsm2_carry_n_1,
      CO(1) => ap_NS_fsm2_carry_n_2,
      CO(0) => ap_NS_fsm2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ap_NS_fsm2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ap_NS_fsm2_carry_i_1_n_0,
      S(2) => ap_NS_fsm2_carry_i_2_n_0,
      S(1) => ap_NS_fsm2_carry_i_3_n_0,
      S(0) => ap_NS_fsm2_carry_i_4_n_0
    );
\ap_NS_fsm2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ap_NS_fsm2_carry_n_0,
      CO(3) => \ap_NS_fsm2_carry__0_n_0\,
      CO(2) => \ap_NS_fsm2_carry__0_n_1\,
      CO(1) => \ap_NS_fsm2_carry__0_n_2\,
      CO(0) => \ap_NS_fsm2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ap_NS_fsm2_carry__0_i_1_n_0\,
      S(2) => \ap_NS_fsm2_carry__0_i_2_n_0\,
      S(1) => \ap_NS_fsm2_carry__0_i_3_n_0\,
      S(0) => \ap_NS_fsm2_carry__0_i_4_n_0\
    );
\ap_NS_fsm2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(23),
      I1 => t_V_reg_185(22),
      I2 => t_V_reg_185(21),
      O => \ap_NS_fsm2_carry__0_i_1_n_0\
    );
\ap_NS_fsm2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(20),
      I1 => t_V_reg_185(19),
      I2 => t_V_reg_185(18),
      O => \ap_NS_fsm2_carry__0_i_2_n_0\
    );
\ap_NS_fsm2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(17),
      I1 => t_V_reg_185(16),
      I2 => t_V_reg_185(15),
      O => \ap_NS_fsm2_carry__0_i_3_n_0\
    );
\ap_NS_fsm2_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(14),
      I1 => t_V_reg_185(13),
      I2 => t_V_reg_185(12),
      O => \ap_NS_fsm2_carry__0_i_4_n_0\
    );
\ap_NS_fsm2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm2_carry__0_n_0\,
      CO(3) => \NLW_ap_NS_fsm2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln22_fu_215_p2,
      CO(1) => \ap_NS_fsm2_carry__1_n_2\,
      CO(0) => \ap_NS_fsm2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ap_NS_fsm2_carry__1_i_1_n_0\,
      S(1) => \ap_NS_fsm2_carry__1_i_2_n_0\,
      S(0) => \ap_NS_fsm2_carry__1_i_3_n_0\
    );
\ap_NS_fsm2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_185(30),
      I1 => t_V_reg_185(31),
      O => \ap_NS_fsm2_carry__1_i_1_n_0\
    );
\ap_NS_fsm2_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(29),
      I1 => t_V_reg_185(28),
      I2 => t_V_reg_185(27),
      O => \ap_NS_fsm2_carry__1_i_2_n_0\
    );
\ap_NS_fsm2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(26),
      I1 => t_V_reg_185(25),
      I2 => t_V_reg_185(24),
      O => \ap_NS_fsm2_carry__1_i_3_n_0\
    );
ap_NS_fsm2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(11),
      I1 => t_V_reg_185(10),
      I2 => t_V_reg_185(9),
      O => ap_NS_fsm2_carry_i_1_n_0
    );
ap_NS_fsm2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_reg_185(6),
      I1 => t_V_reg_185(8),
      I2 => t_V_reg_185(7),
      O => ap_NS_fsm2_carry_i_2_n_0
    );
ap_NS_fsm2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_reg_185(3),
      I1 => t_V_reg_185(5),
      I2 => t_V_reg_185(4),
      O => ap_NS_fsm2_carry_i_3_n_0
    );
ap_NS_fsm2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_185(0),
      I1 => t_V_reg_185(2),
      I2 => t_V_reg_185(1),
      O => ap_NS_fsm2_carry_i_4_n_0
    );
ap_NS_fsm3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ap_NS_fsm3_carry_n_0,
      CO(2) => ap_NS_fsm3_carry_n_1,
      CO(1) => ap_NS_fsm3_carry_n_2,
      CO(0) => ap_NS_fsm3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ap_NS_fsm3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ap_NS_fsm3_carry_i_1_n_0,
      S(2) => ap_NS_fsm3_carry_i_2_n_0,
      S(1) => ap_NS_fsm3_carry_i_3_n_0,
      S(0) => ap_NS_fsm3_carry_i_4_n_0
    );
\ap_NS_fsm3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ap_NS_fsm3_carry_n_0,
      CO(3) => \ap_NS_fsm3_carry__0_n_0\,
      CO(2) => \ap_NS_fsm3_carry__0_n_1\,
      CO(1) => \ap_NS_fsm3_carry__0_n_2\,
      CO(0) => \ap_NS_fsm3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ap_NS_fsm3_carry__0_i_1_n_0\,
      S(2) => \ap_NS_fsm3_carry__0_i_2_n_0\,
      S(1) => \ap_NS_fsm3_carry__0_i_3_n_0\,
      S(0) => \ap_NS_fsm3_carry__0_i_4_n_0\
    );
\ap_NS_fsm3_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(23),
      I1 => t_V_2_reg_196_reg(22),
      I2 => t_V_2_reg_196_reg(21),
      O => \ap_NS_fsm3_carry__0_i_1_n_0\
    );
\ap_NS_fsm3_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(20),
      I1 => t_V_2_reg_196_reg(19),
      I2 => t_V_2_reg_196_reg(18),
      O => \ap_NS_fsm3_carry__0_i_2_n_0\
    );
\ap_NS_fsm3_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(17),
      I1 => t_V_2_reg_196_reg(16),
      I2 => t_V_2_reg_196_reg(15),
      O => \ap_NS_fsm3_carry__0_i_3_n_0\
    );
\ap_NS_fsm3_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(14),
      I1 => t_V_2_reg_196_reg(13),
      I2 => t_V_2_reg_196_reg(12),
      O => \ap_NS_fsm3_carry__0_i_4_n_0\
    );
\ap_NS_fsm3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm3_carry__0_n_0\,
      CO(3) => \NLW_ap_NS_fsm3_carry__1_CO_UNCONNECTED\(3),
      CO(2) => ap_condition_pp0_exit_iter0_state3,
      CO(1) => \ap_NS_fsm3_carry__1_n_2\,
      CO(0) => \ap_NS_fsm3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ap_NS_fsm3_carry__1_i_1_n_0\,
      S(1) => \ap_NS_fsm3_carry__1_i_2_n_0\,
      S(0) => \ap_NS_fsm3_carry__1_i_3_n_0\
    );
\ap_NS_fsm3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_2_reg_196_reg(30),
      I1 => t_V_2_reg_196_reg(31),
      O => \ap_NS_fsm3_carry__1_i_1_n_0\
    );
\ap_NS_fsm3_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(29),
      I1 => t_V_2_reg_196_reg(28),
      I2 => t_V_2_reg_196_reg(27),
      O => \ap_NS_fsm3_carry__1_i_2_n_0\
    );
\ap_NS_fsm3_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(26),
      I1 => t_V_2_reg_196_reg(25),
      I2 => t_V_2_reg_196_reg(24),
      O => \ap_NS_fsm3_carry__1_i_3_n_0\
    );
ap_NS_fsm3_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_2_reg_196_reg(10),
      I1 => t_V_2_reg_196_reg(9),
      I2 => t_V_2_reg_196_reg(11),
      O => ap_NS_fsm3_carry_i_1_n_0
    );
ap_NS_fsm3_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_2_reg_196_reg(6),
      I1 => t_V_2_reg_196_reg(7),
      I2 => t_V_2_reg_196_reg(8),
      O => ap_NS_fsm3_carry_i_2_n_0
    );
ap_NS_fsm3_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(5),
      I1 => t_V_2_reg_196_reg(4),
      I2 => t_V_2_reg_196_reg(3),
      O => ap_NS_fsm3_carry_i_3_n_0
    );
ap_NS_fsm3_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_196_reg(0),
      I1 => t_V_2_reg_196_reg(2),
      I2 => t_V_2_reg_196_reg(1),
      O => ap_NS_fsm3_carry_i_4_n_0
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD0D0000000000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \ap_CS_fsm[2]_i_2_n_0\,
      I2 => icmp_ln22_fu_215_p2,
      I3 => ap_CS_fsm_state2,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => ap_rst_n,
      O => ap_enable_reg_pp0_iter0_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => icmp_ln22_fu_215_p2,
      O => ap_enable_reg_pp0_iter00
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_0,
      Q => ap_enable_reg_pp0_iter1_reg_n_0,
      R => '0'
    );
\i_V_reg_255[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_185(0),
      O => i_V_fu_220_p2(0)
    );
\i_V_reg_255_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(0),
      Q => i_V_reg_255(0),
      R => '0'
    );
\i_V_reg_255_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(10),
      Q => i_V_reg_255(10),
      R => '0'
    );
\i_V_reg_255_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(11),
      Q => i_V_reg_255(11),
      R => '0'
    );
\i_V_reg_255_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(12),
      Q => i_V_reg_255(12),
      R => '0'
    );
\i_V_reg_255_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[8]_i_1_n_0\,
      CO(3) => \i_V_reg_255_reg[12]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[12]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[12]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(12 downto 9),
      S(3 downto 0) => t_V_reg_185(12 downto 9)
    );
\i_V_reg_255_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(13),
      Q => i_V_reg_255(13),
      R => '0'
    );
\i_V_reg_255_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(14),
      Q => i_V_reg_255(14),
      R => '0'
    );
\i_V_reg_255_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(15),
      Q => i_V_reg_255(15),
      R => '0'
    );
\i_V_reg_255_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(16),
      Q => i_V_reg_255(16),
      R => '0'
    );
\i_V_reg_255_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[12]_i_1_n_0\,
      CO(3) => \i_V_reg_255_reg[16]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[16]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[16]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(16 downto 13),
      S(3 downto 0) => t_V_reg_185(16 downto 13)
    );
\i_V_reg_255_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(17),
      Q => i_V_reg_255(17),
      R => '0'
    );
\i_V_reg_255_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(18),
      Q => i_V_reg_255(18),
      R => '0'
    );
\i_V_reg_255_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(19),
      Q => i_V_reg_255(19),
      R => '0'
    );
\i_V_reg_255_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(1),
      Q => i_V_reg_255(1),
      R => '0'
    );
\i_V_reg_255_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(20),
      Q => i_V_reg_255(20),
      R => '0'
    );
\i_V_reg_255_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[16]_i_1_n_0\,
      CO(3) => \i_V_reg_255_reg[20]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[20]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[20]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(20 downto 17),
      S(3 downto 0) => t_V_reg_185(20 downto 17)
    );
\i_V_reg_255_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(21),
      Q => i_V_reg_255(21),
      R => '0'
    );
\i_V_reg_255_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(22),
      Q => i_V_reg_255(22),
      R => '0'
    );
\i_V_reg_255_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(23),
      Q => i_V_reg_255(23),
      R => '0'
    );
\i_V_reg_255_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(24),
      Q => i_V_reg_255(24),
      R => '0'
    );
\i_V_reg_255_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[20]_i_1_n_0\,
      CO(3) => \i_V_reg_255_reg[24]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[24]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[24]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(24 downto 21),
      S(3 downto 0) => t_V_reg_185(24 downto 21)
    );
\i_V_reg_255_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(25),
      Q => i_V_reg_255(25),
      R => '0'
    );
\i_V_reg_255_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(26),
      Q => i_V_reg_255(26),
      R => '0'
    );
\i_V_reg_255_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(27),
      Q => i_V_reg_255(27),
      R => '0'
    );
\i_V_reg_255_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(28),
      Q => i_V_reg_255(28),
      R => '0'
    );
\i_V_reg_255_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[24]_i_1_n_0\,
      CO(3) => \i_V_reg_255_reg[28]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[28]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[28]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(28 downto 25),
      S(3 downto 0) => t_V_reg_185(28 downto 25)
    );
\i_V_reg_255_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(29),
      Q => i_V_reg_255(29),
      R => '0'
    );
\i_V_reg_255_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(2),
      Q => i_V_reg_255(2),
      R => '0'
    );
\i_V_reg_255_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(30),
      Q => i_V_reg_255(30),
      R => '0'
    );
\i_V_reg_255_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(31),
      Q => i_V_reg_255(31),
      R => '0'
    );
\i_V_reg_255_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_i_V_reg_255_reg[31]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_V_reg_255_reg[31]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_V_reg_255_reg[31]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => i_V_fu_220_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => t_V_reg_185(31 downto 29)
    );
\i_V_reg_255_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(3),
      Q => i_V_reg_255(3),
      R => '0'
    );
\i_V_reg_255_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(4),
      Q => i_V_reg_255(4),
      R => '0'
    );
\i_V_reg_255_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_V_reg_255_reg[4]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[4]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[4]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[4]_i_1_n_3\,
      CYINIT => t_V_reg_185(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(4 downto 1),
      S(3 downto 0) => t_V_reg_185(4 downto 1)
    );
\i_V_reg_255_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(5),
      Q => i_V_reg_255(5),
      R => '0'
    );
\i_V_reg_255_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(6),
      Q => i_V_reg_255(6),
      R => '0'
    );
\i_V_reg_255_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(7),
      Q => i_V_reg_255(7),
      R => '0'
    );
\i_V_reg_255_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(8),
      Q => i_V_reg_255(8),
      R => '0'
    );
\i_V_reg_255_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_255_reg[4]_i_1_n_0\,
      CO(3) => \i_V_reg_255_reg[8]_i_1_n_0\,
      CO(2) => \i_V_reg_255_reg[8]_i_1_n_1\,
      CO(1) => \i_V_reg_255_reg[8]_i_1_n_2\,
      CO(0) => \i_V_reg_255_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_220_p2(8 downto 5),
      S(3 downto 0) => t_V_reg_185(8 downto 5)
    );
\i_V_reg_255_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_220_p2(9),
      Q => i_V_reg_255(9),
      R => '0'
    );
\icmp_ln25_reg_260_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_5,
      Q => icmp_ln25_reg_260,
      R => '0'
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[0]_0\,
      I1 => img_1_rows_V_c4_empty_n,
      I2 => Q(0),
      I3 => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      I4 => img_1_cols_V_c5_empty_n,
      O => E(0)
    );
\mOutPtr[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[0]_0\,
      I1 => img_1_cols_V_c_full_n,
      I2 => img_1_rows_V_c_full_n,
      O => internal_full_n_reg(0)
    );
regslice_both_AXI_video_strm_V_data_V_U: entity work.design_1_passthrough_0_0_regslice_both_5
     port map (
      CO(0) => ap_condition_pp0_exit_iter0_state3,
      D(8 downto 0) => D(8 downto 0),
      E(0) => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      Q(1) => ap_CS_fsm_pp0_stage0,
      Q(0) => ap_CS_fsm_state2,
      \SRL_SIG_reg[1][0]\ => \SRL_SIG[0][7]_i_2_n_0\,
      ack_out => ack_out,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter00 => ap_enable_reg_pp0_iter00,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg_n_0,
      ap_enable_reg_pp0_iter1_reg_0 => \ap_CS_fsm[2]_i_2_n_0\,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_AXI_video_strm_V_data_V_U_n_0,
      ce => ce,
      icmp_ln25_reg_260 => icmp_ln25_reg_260,
      \icmp_ln25_reg_260_reg[0]\ => regslice_both_AXI_video_strm_V_data_V_U_n_5,
      img_1_data_stream_0_full_n => img_1_data_stream_0_full_n,
      \odata_int_reg[7]\(7) => regslice_both_AXI_video_strm_V_data_V_U_n_7,
      \odata_int_reg[7]\(6) => regslice_both_AXI_video_strm_V_data_V_U_n_8,
      \odata_int_reg[7]\(5) => regslice_both_AXI_video_strm_V_data_V_U_n_9,
      \odata_int_reg[7]\(4) => regslice_both_AXI_video_strm_V_data_V_U_n_10,
      \odata_int_reg[7]\(3) => regslice_both_AXI_video_strm_V_data_V_U_n_11,
      \odata_int_reg[7]\(2) => regslice_both_AXI_video_strm_V_data_V_U_n_12,
      \odata_int_reg[7]\(1) => regslice_both_AXI_video_strm_V_data_V_U_n_13,
      \odata_int_reg[7]\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_14,
      t_V_2_reg_196 => t_V_2_reg_196,
      \t_V_2_reg_196_reg[0]\(0) => icmp_ln22_fu_215_p2,
      video_in_TREADY => video_in_TREADY
    );
start_once_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Mat2AXIvideo_DMA_U0_full_n,
      I2 => icmp_ln22_fu_215_p2,
      I3 => ap_CS_fsm_state2,
      O => start_once_reg_i_1_n_0
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => start_once_reg_i_1_n_0,
      Q => \^start_once_reg\,
      R => ap_rst
    );
\t_V_2_reg_196[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_2_reg_196_reg(0),
      O => \t_V_2_reg_196[0]_i_4_n_0\
    );
\t_V_2_reg_196_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[0]_i_3_n_7\,
      Q => t_V_2_reg_196_reg(0),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \t_V_2_reg_196_reg[0]_i_3_n_0\,
      CO(2) => \t_V_2_reg_196_reg[0]_i_3_n_1\,
      CO(1) => \t_V_2_reg_196_reg[0]_i_3_n_2\,
      CO(0) => \t_V_2_reg_196_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \t_V_2_reg_196_reg[0]_i_3_n_4\,
      O(2) => \t_V_2_reg_196_reg[0]_i_3_n_5\,
      O(1) => \t_V_2_reg_196_reg[0]_i_3_n_6\,
      O(0) => \t_V_2_reg_196_reg[0]_i_3_n_7\,
      S(3 downto 1) => t_V_2_reg_196_reg(3 downto 1),
      S(0) => \t_V_2_reg_196[0]_i_4_n_0\
    );
\t_V_2_reg_196_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[8]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(10),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[8]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(11),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[12]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(12),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[8]_i_1_n_0\,
      CO(3) => \t_V_2_reg_196_reg[12]_i_1_n_0\,
      CO(2) => \t_V_2_reg_196_reg[12]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[12]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[12]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[12]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[12]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[12]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(15 downto 12)
    );
\t_V_2_reg_196_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[12]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(13),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[12]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(14),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[12]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(15),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[16]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(16),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[12]_i_1_n_0\,
      CO(3) => \t_V_2_reg_196_reg[16]_i_1_n_0\,
      CO(2) => \t_V_2_reg_196_reg[16]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[16]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[16]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[16]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[16]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[16]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(19 downto 16)
    );
\t_V_2_reg_196_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[16]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(17),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[16]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(18),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[16]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(19),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[0]_i_3_n_6\,
      Q => t_V_2_reg_196_reg(1),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[20]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(20),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[16]_i_1_n_0\,
      CO(3) => \t_V_2_reg_196_reg[20]_i_1_n_0\,
      CO(2) => \t_V_2_reg_196_reg[20]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[20]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[20]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[20]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[20]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[20]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(23 downto 20)
    );
\t_V_2_reg_196_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[20]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(21),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[20]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(22),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[20]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(23),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[24]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(24),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[20]_i_1_n_0\,
      CO(3) => \t_V_2_reg_196_reg[24]_i_1_n_0\,
      CO(2) => \t_V_2_reg_196_reg[24]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[24]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[24]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[24]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[24]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[24]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(27 downto 24)
    );
\t_V_2_reg_196_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[24]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(25),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[24]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(26),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[24]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(27),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[28]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(28),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[24]_i_1_n_0\,
      CO(3) => \NLW_t_V_2_reg_196_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \t_V_2_reg_196_reg[28]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[28]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[28]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[28]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[28]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[28]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(31 downto 28)
    );
\t_V_2_reg_196_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[28]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(29),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[0]_i_3_n_5\,
      Q => t_V_2_reg_196_reg(2),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[28]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(30),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[28]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(31),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[0]_i_3_n_4\,
      Q => t_V_2_reg_196_reg(3),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[4]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(4),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[0]_i_3_n_0\,
      CO(3) => \t_V_2_reg_196_reg[4]_i_1_n_0\,
      CO(2) => \t_V_2_reg_196_reg[4]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[4]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[4]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[4]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[4]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[4]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(7 downto 4)
    );
\t_V_2_reg_196_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[4]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(5),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[4]_i_1_n_5\,
      Q => t_V_2_reg_196_reg(6),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[4]_i_1_n_4\,
      Q => t_V_2_reg_196_reg(7),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[8]_i_1_n_7\,
      Q => t_V_2_reg_196_reg(8),
      R => t_V_2_reg_196
    );
\t_V_2_reg_196_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_196_reg[4]_i_1_n_0\,
      CO(3) => \t_V_2_reg_196_reg[8]_i_1_n_0\,
      CO(2) => \t_V_2_reg_196_reg[8]_i_1_n_1\,
      CO(1) => \t_V_2_reg_196_reg[8]_i_1_n_2\,
      CO(0) => \t_V_2_reg_196_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_196_reg[8]_i_1_n_4\,
      O(2) => \t_V_2_reg_196_reg[8]_i_1_n_5\,
      O(1) => \t_V_2_reg_196_reg[8]_i_1_n_6\,
      O(0) => \t_V_2_reg_196_reg[8]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_196_reg(11 downto 8)
    );
\t_V_2_reg_196_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out,
      D => \t_V_2_reg_196_reg[8]_i_1_n_6\,
      Q => t_V_2_reg_196_reg(9),
      R => t_V_2_reg_196
    );
\t_V_reg_185[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[0]_0\,
      I1 => ap_CS_fsm_state5,
      O => t_V_reg_185_0
    );
\t_V_reg_185_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(0),
      Q => t_V_reg_185(0),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(10),
      Q => t_V_reg_185(10),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(11),
      Q => t_V_reg_185(11),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(12),
      Q => t_V_reg_185(12),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(13),
      Q => t_V_reg_185(13),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(14),
      Q => t_V_reg_185(14),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(15),
      Q => t_V_reg_185(15),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(16),
      Q => t_V_reg_185(16),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(17),
      Q => t_V_reg_185(17),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(18),
      Q => t_V_reg_185(18),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(19),
      Q => t_V_reg_185(19),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(1),
      Q => t_V_reg_185(1),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(20),
      Q => t_V_reg_185(20),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(21),
      Q => t_V_reg_185(21),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(22),
      Q => t_V_reg_185(22),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(23),
      Q => t_V_reg_185(23),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(24),
      Q => t_V_reg_185(24),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(25),
      Q => t_V_reg_185(25),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(26),
      Q => t_V_reg_185(26),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(27),
      Q => t_V_reg_185(27),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(28),
      Q => t_V_reg_185(28),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(29),
      Q => t_V_reg_185(29),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(2),
      Q => t_V_reg_185(2),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(30),
      Q => t_V_reg_185(30),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(31),
      Q => t_V_reg_185(31),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(3),
      Q => t_V_reg_185(3),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(4),
      Q => t_V_reg_185(4),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(5),
      Q => t_V_reg_185(5),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(6),
      Q => t_V_reg_185(6),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(7),
      Q => t_V_reg_185(7),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(8),
      Q => t_V_reg_185(8),
      R => t_V_reg_185_0
    );
\t_V_reg_185_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_255(9),
      Q => t_V_reg_185(9),
      R => t_V_reg_185_0
    );
\tmp_data_V_reg_269_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_14,
      Q => \tmp_data_V_reg_269_reg[7]_0\(0),
      R => '0'
    );
\tmp_data_V_reg_269_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_13,
      Q => \tmp_data_V_reg_269_reg[7]_0\(1),
      R => '0'
    );
\tmp_data_V_reg_269_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_12,
      Q => \tmp_data_V_reg_269_reg[7]_0\(2),
      R => '0'
    );
\tmp_data_V_reg_269_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_11,
      Q => \tmp_data_V_reg_269_reg[7]_0\(3),
      R => '0'
    );
\tmp_data_V_reg_269_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_10,
      Q => \tmp_data_V_reg_269_reg[7]_0\(4),
      R => '0'
    );
\tmp_data_V_reg_269_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_9,
      Q => \tmp_data_V_reg_269_reg[7]_0\(5),
      R => '0'
    );
\tmp_data_V_reg_269_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_8,
      Q => \tmp_data_V_reg_269_reg[7]_0\(6),
      R => '0'
    );
\tmp_data_V_reg_269_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_7,
      Q => \tmp_data_V_reg_269_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_Mat2AXIvideo_DMA is
  port (
    ap_rst : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Mat2AXIvideo_DMA_U0_img_data_stream_V_read : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \ireg_reg[8]\ : out STD_LOGIC;
    \odata_int_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ireg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC;
    start_for_Mat2AXIvideo_DMA_U0_empty_n : in STD_LOGIC;
    img_1_cols_V_c5_empty_n : in STD_LOGIC;
    img_1_rows_V_c4_empty_n : in STD_LOGIC;
    img_1_data_stream_0_empty_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_int_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_Mat2AXIvideo_DMA : entity is "Mat2AXIvideo_DMA";
end design_1_passthrough_0_0_Mat2AXIvideo_DMA;

architecture STRUCTURE of design_1_passthrough_0_0_Mat2AXIvideo_DMA is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mat2axivideo_dma_u0_img_data_stream_v_read\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[2]_i_3_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_n_1\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__0_n_3\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__1_n_2\ : STD_LOGIC;
  signal \ap_NS_fsm4_carry__1_n_3\ : STD_LOGIC;
  signal ap_NS_fsm4_carry_i_1_n_0 : STD_LOGIC;
  signal ap_NS_fsm4_carry_i_2_n_0 : STD_LOGIC;
  signal ap_NS_fsm4_carry_i_3_n_0 : STD_LOGIC;
  signal ap_NS_fsm4_carry_i_4_n_0 : STD_LOGIC;
  signal ap_NS_fsm4_carry_n_0 : STD_LOGIC;
  signal ap_NS_fsm4_carry_n_1 : STD_LOGIC;
  signal ap_NS_fsm4_carry_n_2 : STD_LOGIC;
  signal ap_NS_fsm4_carry_n_3 : STD_LOGIC;
  signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_0 : STD_LOGIC;
  signal \^ap_rst\ : STD_LOGIC;
  signal i_V_fu_214_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_V_reg_278 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_V_reg_2780 : STD_LOGIC;
  signal \i_V_reg_278_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_278_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_278_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_278_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_278_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal icmp_ln54_reg_288_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln54_reg_288_reg_n_0_[0]\ : STD_LOGIC;
  signal icmp_ln879_1_fu_244_p2 : STD_LOGIC;
  signal icmp_ln879_fu_224_p2 : STD_LOGIC;
  signal icmp_ln879_reg_283 : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_n_1\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_n_2\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__0_n_3\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__1_n_2\ : STD_LOGIC;
  signal \icmp_ln879_reg_2830_carry__1_n_3\ : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_i_1_n_0 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_i_2_n_0 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_i_3_n_0 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_i_4_n_0 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_n_0 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_n_1 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_n_2 : STD_LOGIC;
  signal icmp_ln879_reg_2830_carry_n_3 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_2 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_23 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_24 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_25 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_26 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_7 : STD_LOGIC;
  signal t_V_1_reg_170 : STD_LOGIC;
  signal t_V_1_reg_1700 : STD_LOGIC;
  signal \t_V_1_reg_170[0]_i_4_n_0\ : STD_LOGIC;
  signal t_V_1_reg_170_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \t_V_1_reg_170_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_1_reg_170_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal t_V_reg_159 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t_V_reg_159_0 : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_last_V_fu_249_p20_carry__1_n_3\ : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_n_0 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_n_1 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_n_2 : STD_LOGIC;
  signal tmp_last_V_fu_249_p20_carry_n_3 : STD_LOGIC;
  signal tmp_last_V_reg_297 : STD_LOGIC;
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ap_NS_fsm4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm4_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_NS_fsm4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_V_reg_278_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_V_reg_278_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_icmp_ln879_reg_2830_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_icmp_ln879_reg_2830_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_icmp_ln879_reg_2830_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_icmp_ln879_reg_2830_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t_V_1_reg_170_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tmp_last_V_fu_249_p20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_last_V_fu_249_p20_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_last_V_fu_249_p20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_last_V_fu_249_p20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
begin
  CO(0) <= \^co\(0);
  Mat2AXIvideo_DMA_U0_img_data_stream_V_read <= \^mat2axivideo_dma_u0_img_data_stream_v_read\;
  Q(0) <= \^q\(0);
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
  ap_rst <= \^ap_rst\;
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F070F0FFFF70F0"
    )
        port map (
      I0 => img_1_cols_V_c5_empty_n,
      I1 => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      I2 => \^q\(0),
      I3 => img_1_rows_V_c4_empty_n,
      I4 => \^co\(0),
      I5 => \^ap_cs_fsm_reg[1]_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBB"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => ap_enable_reg_pp0_iter2_reg_n_0,
      I2 => ap_condition_pp0_exit_iter0_state3,
      I3 => ap_enable_reg_pp0_iter0,
      O => \ap_CS_fsm[2]_i_3_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => \^ap_rst\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage0,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state6,
      R => \^ap_rst\
    );
\ap_NS_fsm3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ap_NS_fsm3_inferred__0/i__carry_n_0\,
      CO(2) => \ap_NS_fsm3_inferred__0/i__carry_n_1\,
      CO(1) => \ap_NS_fsm3_inferred__0/i__carry_n_2\,
      CO(0) => \ap_NS_fsm3_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\ap_NS_fsm3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm3_inferred__0/i__carry_n_0\,
      CO(3) => \ap_NS_fsm3_inferred__0/i__carry__0_n_0\,
      CO(2) => \ap_NS_fsm3_inferred__0/i__carry__0_n_1\,
      CO(1) => \ap_NS_fsm3_inferred__0/i__carry__0_n_2\,
      CO(0) => \ap_NS_fsm3_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\ap_NS_fsm3_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm3_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \^co\(0),
      CO(1) => \ap_NS_fsm3_inferred__0/i__carry__1_n_2\,
      CO(0) => \ap_NS_fsm3_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
ap_NS_fsm4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ap_NS_fsm4_carry_n_0,
      CO(2) => ap_NS_fsm4_carry_n_1,
      CO(1) => ap_NS_fsm4_carry_n_2,
      CO(0) => ap_NS_fsm4_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ap_NS_fsm4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ap_NS_fsm4_carry_i_1_n_0,
      S(2) => ap_NS_fsm4_carry_i_2_n_0,
      S(1) => ap_NS_fsm4_carry_i_3_n_0,
      S(0) => ap_NS_fsm4_carry_i_4_n_0
    );
\ap_NS_fsm4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ap_NS_fsm4_carry_n_0,
      CO(3) => \ap_NS_fsm4_carry__0_n_0\,
      CO(2) => \ap_NS_fsm4_carry__0_n_1\,
      CO(1) => \ap_NS_fsm4_carry__0_n_2\,
      CO(0) => \ap_NS_fsm4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ap_NS_fsm4_carry__0_i_1_n_0\,
      S(2) => \ap_NS_fsm4_carry__0_i_2_n_0\,
      S(1) => \ap_NS_fsm4_carry__0_i_3_n_0\,
      S(0) => \ap_NS_fsm4_carry__0_i_4_n_0\
    );
\ap_NS_fsm4_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(23),
      I1 => t_V_1_reg_170_reg(22),
      I2 => t_V_1_reg_170_reg(21),
      O => \ap_NS_fsm4_carry__0_i_1_n_0\
    );
\ap_NS_fsm4_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(20),
      I1 => t_V_1_reg_170_reg(19),
      I2 => t_V_1_reg_170_reg(18),
      O => \ap_NS_fsm4_carry__0_i_2_n_0\
    );
\ap_NS_fsm4_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(17),
      I1 => t_V_1_reg_170_reg(16),
      I2 => t_V_1_reg_170_reg(15),
      O => \ap_NS_fsm4_carry__0_i_3_n_0\
    );
\ap_NS_fsm4_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(14),
      I1 => t_V_1_reg_170_reg(13),
      I2 => t_V_1_reg_170_reg(12),
      O => \ap_NS_fsm4_carry__0_i_4_n_0\
    );
\ap_NS_fsm4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm4_carry__0_n_0\,
      CO(3) => \NLW_ap_NS_fsm4_carry__1_CO_UNCONNECTED\(3),
      CO(2) => ap_condition_pp0_exit_iter0_state3,
      CO(1) => \ap_NS_fsm4_carry__1_n_2\,
      CO(0) => \ap_NS_fsm4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ap_NS_fsm4_carry__1_i_1_n_0\,
      S(1) => \ap_NS_fsm4_carry__1_i_2_n_0\,
      S(0) => \ap_NS_fsm4_carry__1_i_3_n_0\
    );
\ap_NS_fsm4_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_1_reg_170_reg(30),
      I1 => t_V_1_reg_170_reg(31),
      O => \ap_NS_fsm4_carry__1_i_1_n_0\
    );
\ap_NS_fsm4_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(29),
      I1 => t_V_1_reg_170_reg(28),
      I2 => t_V_1_reg_170_reg(27),
      O => \ap_NS_fsm4_carry__1_i_2_n_0\
    );
\ap_NS_fsm4_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(26),
      I1 => t_V_1_reg_170_reg(25),
      I2 => t_V_1_reg_170_reg(24),
      O => \ap_NS_fsm4_carry__1_i_3_n_0\
    );
ap_NS_fsm4_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_1_reg_170_reg(11),
      I1 => t_V_1_reg_170_reg(9),
      I2 => t_V_1_reg_170_reg(10),
      O => ap_NS_fsm4_carry_i_1_n_0
    );
ap_NS_fsm4_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_1_reg_170_reg(8),
      I1 => t_V_1_reg_170_reg(7),
      I2 => t_V_1_reg_170_reg(6),
      O => ap_NS_fsm4_carry_i_2_n_0
    );
ap_NS_fsm4_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(5),
      I1 => t_V_1_reg_170_reg(4),
      I2 => t_V_1_reg_170_reg(3),
      O => ap_NS_fsm4_carry_i_3_n_0
    );
ap_NS_fsm4_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(0),
      I1 => t_V_1_reg_170_reg(2),
      I2 => t_V_1_reg_170_reg(1),
      O => ap_NS_fsm4_carry_i_4_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_7,
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
      D => regslice_both_AXI_video_strm_V_data_V_U_n_1,
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
      D => regslice_both_AXI_video_strm_V_data_V_U_n_2,
      Q => ap_enable_reg_pp0_iter2_reg_n_0,
      R => '0'
    );
\i_V_reg_278[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_159(0),
      O => i_V_fu_214_p2(0)
    );
\i_V_reg_278_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(0),
      Q => i_V_reg_278(0),
      R => '0'
    );
\i_V_reg_278_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(10),
      Q => i_V_reg_278(10),
      R => '0'
    );
\i_V_reg_278_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(11),
      Q => i_V_reg_278(11),
      R => '0'
    );
\i_V_reg_278_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(12),
      Q => i_V_reg_278(12),
      R => '0'
    );
\i_V_reg_278_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[8]_i_1_n_0\,
      CO(3) => \i_V_reg_278_reg[12]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[12]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[12]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(12 downto 9),
      S(3 downto 0) => t_V_reg_159(12 downto 9)
    );
\i_V_reg_278_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(13),
      Q => i_V_reg_278(13),
      R => '0'
    );
\i_V_reg_278_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(14),
      Q => i_V_reg_278(14),
      R => '0'
    );
\i_V_reg_278_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(15),
      Q => i_V_reg_278(15),
      R => '0'
    );
\i_V_reg_278_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(16),
      Q => i_V_reg_278(16),
      R => '0'
    );
\i_V_reg_278_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[12]_i_1_n_0\,
      CO(3) => \i_V_reg_278_reg[16]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[16]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[16]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(16 downto 13),
      S(3 downto 0) => t_V_reg_159(16 downto 13)
    );
\i_V_reg_278_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(17),
      Q => i_V_reg_278(17),
      R => '0'
    );
\i_V_reg_278_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(18),
      Q => i_V_reg_278(18),
      R => '0'
    );
\i_V_reg_278_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(19),
      Q => i_V_reg_278(19),
      R => '0'
    );
\i_V_reg_278_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(1),
      Q => i_V_reg_278(1),
      R => '0'
    );
\i_V_reg_278_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(20),
      Q => i_V_reg_278(20),
      R => '0'
    );
\i_V_reg_278_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[16]_i_1_n_0\,
      CO(3) => \i_V_reg_278_reg[20]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[20]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[20]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(20 downto 17),
      S(3 downto 0) => t_V_reg_159(20 downto 17)
    );
\i_V_reg_278_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(21),
      Q => i_V_reg_278(21),
      R => '0'
    );
\i_V_reg_278_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(22),
      Q => i_V_reg_278(22),
      R => '0'
    );
\i_V_reg_278_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(23),
      Q => i_V_reg_278(23),
      R => '0'
    );
\i_V_reg_278_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(24),
      Q => i_V_reg_278(24),
      R => '0'
    );
\i_V_reg_278_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[20]_i_1_n_0\,
      CO(3) => \i_V_reg_278_reg[24]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[24]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[24]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(24 downto 21),
      S(3 downto 0) => t_V_reg_159(24 downto 21)
    );
\i_V_reg_278_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(25),
      Q => i_V_reg_278(25),
      R => '0'
    );
\i_V_reg_278_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(26),
      Q => i_V_reg_278(26),
      R => '0'
    );
\i_V_reg_278_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(27),
      Q => i_V_reg_278(27),
      R => '0'
    );
\i_V_reg_278_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(28),
      Q => i_V_reg_278(28),
      R => '0'
    );
\i_V_reg_278_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[24]_i_1_n_0\,
      CO(3) => \i_V_reg_278_reg[28]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[28]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[28]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(28 downto 25),
      S(3 downto 0) => t_V_reg_159(28 downto 25)
    );
\i_V_reg_278_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(29),
      Q => i_V_reg_278(29),
      R => '0'
    );
\i_V_reg_278_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(2),
      Q => i_V_reg_278(2),
      R => '0'
    );
\i_V_reg_278_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(30),
      Q => i_V_reg_278(30),
      R => '0'
    );
\i_V_reg_278_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(31),
      Q => i_V_reg_278(31),
      R => '0'
    );
\i_V_reg_278_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_i_V_reg_278_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_V_reg_278_reg[31]_i_2_n_2\,
      CO(0) => \i_V_reg_278_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_V_reg_278_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => i_V_fu_214_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => t_V_reg_159(31 downto 29)
    );
\i_V_reg_278_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(3),
      Q => i_V_reg_278(3),
      R => '0'
    );
\i_V_reg_278_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(4),
      Q => i_V_reg_278(4),
      R => '0'
    );
\i_V_reg_278_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_V_reg_278_reg[4]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[4]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[4]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[4]_i_1_n_3\,
      CYINIT => t_V_reg_159(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(4 downto 1),
      S(3 downto 0) => t_V_reg_159(4 downto 1)
    );
\i_V_reg_278_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(5),
      Q => i_V_reg_278(5),
      R => '0'
    );
\i_V_reg_278_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(6),
      Q => i_V_reg_278(6),
      R => '0'
    );
\i_V_reg_278_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(7),
      Q => i_V_reg_278(7),
      R => '0'
    );
\i_V_reg_278_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(8),
      Q => i_V_reg_278(8),
      R => '0'
    );
\i_V_reg_278_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_278_reg[4]_i_1_n_0\,
      CO(3) => \i_V_reg_278_reg[8]_i_1_n_0\,
      CO(2) => \i_V_reg_278_reg[8]_i_1_n_1\,
      CO(1) => \i_V_reg_278_reg[8]_i_1_n_2\,
      CO(0) => \i_V_reg_278_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_214_p2(8 downto 5),
      S(3 downto 0) => t_V_reg_159(8 downto 5)
    );
\i_V_reg_278_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2780,
      D => i_V_fu_214_p2(9),
      Q => i_V_reg_278(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(23),
      I1 => t_V_reg_159(22),
      I2 => t_V_reg_159(21),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(20),
      I1 => t_V_reg_159(19),
      I2 => t_V_reg_159(18),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(17),
      I1 => t_V_reg_159(16),
      I2 => t_V_reg_159(15),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(14),
      I1 => t_V_reg_159(13),
      I2 => t_V_reg_159(12),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_159(30),
      I1 => t_V_reg_159(31),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(29),
      I1 => t_V_reg_159(28),
      I2 => t_V_reg_159(27),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(26),
      I1 => t_V_reg_159(25),
      I2 => t_V_reg_159(24),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(11),
      I1 => t_V_reg_159(10),
      I2 => t_V_reg_159(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_reg_159(6),
      I1 => t_V_reg_159(8),
      I2 => t_V_reg_159(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_reg_159(3),
      I1 => t_V_reg_159(5),
      I2 => t_V_reg_159(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(0),
      I1 => t_V_reg_159(2),
      I2 => t_V_reg_159(1),
      O => \i__carry_i_4_n_0\
    );
\icmp_ln54_reg_288_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_25,
      Q => icmp_ln54_reg_288_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln54_reg_288_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_26,
      Q => \icmp_ln54_reg_288_reg_n_0_[0]\,
      R => '0'
    );
icmp_ln879_reg_2830_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln879_reg_2830_carry_n_0,
      CO(2) => icmp_ln879_reg_2830_carry_n_1,
      CO(1) => icmp_ln879_reg_2830_carry_n_2,
      CO(0) => icmp_ln879_reg_2830_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_icmp_ln879_reg_2830_carry_O_UNCONNECTED(3 downto 0),
      S(3) => icmp_ln879_reg_2830_carry_i_1_n_0,
      S(2) => icmp_ln879_reg_2830_carry_i_2_n_0,
      S(1) => icmp_ln879_reg_2830_carry_i_3_n_0,
      S(0) => icmp_ln879_reg_2830_carry_i_4_n_0
    );
\icmp_ln879_reg_2830_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => icmp_ln879_reg_2830_carry_n_0,
      CO(3) => \icmp_ln879_reg_2830_carry__0_n_0\,
      CO(2) => \icmp_ln879_reg_2830_carry__0_n_1\,
      CO(1) => \icmp_ln879_reg_2830_carry__0_n_2\,
      CO(0) => \icmp_ln879_reg_2830_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_icmp_ln879_reg_2830_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \icmp_ln879_reg_2830_carry__0_i_1_n_0\,
      S(2) => \icmp_ln879_reg_2830_carry__0_i_2_n_0\,
      S(1) => \icmp_ln879_reg_2830_carry__0_i_3_n_0\,
      S(0) => \icmp_ln879_reg_2830_carry__0_i_4_n_0\
    );
\icmp_ln879_reg_2830_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(23),
      I1 => t_V_reg_159(22),
      I2 => t_V_reg_159(21),
      O => \icmp_ln879_reg_2830_carry__0_i_1_n_0\
    );
\icmp_ln879_reg_2830_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(20),
      I1 => t_V_reg_159(19),
      I2 => t_V_reg_159(18),
      O => \icmp_ln879_reg_2830_carry__0_i_2_n_0\
    );
\icmp_ln879_reg_2830_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(17),
      I1 => t_V_reg_159(16),
      I2 => t_V_reg_159(15),
      O => \icmp_ln879_reg_2830_carry__0_i_3_n_0\
    );
\icmp_ln879_reg_2830_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(14),
      I1 => t_V_reg_159(13),
      I2 => t_V_reg_159(12),
      O => \icmp_ln879_reg_2830_carry__0_i_4_n_0\
    );
\icmp_ln879_reg_2830_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \icmp_ln879_reg_2830_carry__0_n_0\,
      CO(3) => \NLW_icmp_ln879_reg_2830_carry__1_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln879_fu_224_p2,
      CO(1) => \icmp_ln879_reg_2830_carry__1_n_2\,
      CO(0) => \icmp_ln879_reg_2830_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_icmp_ln879_reg_2830_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \icmp_ln879_reg_2830_carry__1_i_1_n_0\,
      S(1) => \icmp_ln879_reg_2830_carry__1_i_2_n_0\,
      S(0) => \icmp_ln879_reg_2830_carry__1_i_3_n_0\
    );
\icmp_ln879_reg_2830_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_159(30),
      I1 => t_V_reg_159(31),
      O => \icmp_ln879_reg_2830_carry__1_i_1_n_0\
    );
\icmp_ln879_reg_2830_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(29),
      I1 => t_V_reg_159(28),
      I2 => t_V_reg_159(27),
      O => \icmp_ln879_reg_2830_carry__1_i_2_n_0\
    );
\icmp_ln879_reg_2830_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(26),
      I1 => t_V_reg_159(25),
      I2 => t_V_reg_159(24),
      O => \icmp_ln879_reg_2830_carry__1_i_3_n_0\
    );
icmp_ln879_reg_2830_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_159(11),
      I1 => t_V_reg_159(10),
      I2 => t_V_reg_159(9),
      O => icmp_ln879_reg_2830_carry_i_1_n_0
    );
icmp_ln879_reg_2830_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_reg_159(6),
      I1 => t_V_reg_159(8),
      I2 => t_V_reg_159(7),
      O => icmp_ln879_reg_2830_carry_i_2_n_0
    );
icmp_ln879_reg_2830_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => t_V_reg_159(3),
      I1 => t_V_reg_159(4),
      I2 => t_V_reg_159(5),
      O => icmp_ln879_reg_2830_carry_i_3_n_0
    );
icmp_ln879_reg_2830_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_reg_159(0),
      I1 => t_V_reg_159(2),
      I2 => t_V_reg_159(1),
      O => icmp_ln879_reg_2830_carry_i_4_n_0
    );
\icmp_ln879_reg_283_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_24,
      Q => icmp_ln879_reg_283,
      R => '0'
    );
regslice_both_AXI_video_strm_V_data_V_U: entity work.design_1_passthrough_0_0_regslice_both
     port map (
      CO(0) => ap_condition_pp0_exit_iter0_state3,
      D(2 downto 0) => ap_NS_fsm(3 downto 1),
      E(0) => i_V_reg_2780,
      Q(2) => ap_CS_fsm_state6,
      Q(1) => ap_CS_fsm_pp0_stage0,
      Q(0) => ap_CS_fsm_state2,
      SR(0) => \^ap_rst\,
      \ap_CS_fsm_reg[1]\ => \^ap_cs_fsm_reg[1]_0\,
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm_reg[1]_1\,
      \ap_CS_fsm_reg[2]\ => regslice_both_AXI_video_strm_V_data_V_U_n_7,
      \ap_CS_fsm_reg[2]_0\ => regslice_both_AXI_video_strm_V_data_V_U_n_26,
      \ap_CS_fsm_reg[2]_1\ => \ap_CS_fsm[2]_i_3_n_0\,
      \ap_CS_fsm_reg[3]\ => ap_enable_reg_pp0_iter2_reg_n_0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1_reg => regslice_both_AXI_video_strm_V_data_V_U_n_1,
      ap_enable_reg_pp0_iter2_reg => regslice_both_AXI_video_strm_V_data_V_U_n_2,
      ap_rst_n => ap_rst_n,
      icmp_ln54_reg_288_pp0_iter1_reg => icmp_ln54_reg_288_pp0_iter1_reg,
      \icmp_ln54_reg_288_reg[0]\(0) => \^mat2axivideo_dma_u0_img_data_stream_v_read\,
      \icmp_ln54_reg_288_reg[0]_0\ => regslice_both_AXI_video_strm_V_data_V_U_n_25,
      \icmp_ln54_reg_288_reg[0]_1\ => \icmp_ln54_reg_288_reg_n_0_[0]\,
      icmp_ln879_reg_283 => icmp_ln879_reg_283,
      \icmp_ln879_reg_283_reg[0]\ => regslice_both_AXI_video_strm_V_data_V_U_n_23,
      \icmp_ln879_reg_283_reg[0]_0\ => regslice_both_AXI_video_strm_V_data_V_U_n_24,
      \icmp_ln879_reg_283_reg[0]_1\(0) => icmp_ln879_fu_224_p2,
      img_1_data_stream_0_empty_n => img_1_data_stream_0_empty_n,
      internal_empty_n_reg => internal_empty_n_reg,
      \ireg_reg[7]\(7 downto 0) => \ireg_reg[7]\(7 downto 0),
      \ireg_reg[7]_0\(7 downto 0) => D(7 downto 0),
      \ireg_reg[8]\ => \ireg_reg[8]\,
      \ireg_reg[8]_0\ => ap_enable_reg_pp0_iter1_reg_n_0,
      \odata_int_reg[7]\(7 downto 0) => \odata_int_reg[7]\(7 downto 0),
      \odata_int_reg[8]\(8 downto 0) => \odata_int_reg[8]\(8 downto 0),
      start_for_Mat2AXIvideo_DMA_U0_empty_n => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      t_V_1_reg_170 => t_V_1_reg_170,
      t_V_1_reg_1700 => t_V_1_reg_1700,
      \t_V_1_reg_170_reg[0]\(0) => \^co\(0),
      tmp_last_V_reg_297 => tmp_last_V_reg_297,
      \tmp_last_V_reg_297_reg[0]\(0) => icmp_ln879_1_fu_244_p2,
      video_out_TREADY => video_out_TREADY
    );
regslice_both_AXI_video_strm_V_keep_V_U: entity work.\design_1_passthrough_0_0_regslice_both__parameterized1\
     port map (
      SR(0) => \^ap_rst\,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_int_reg[1]\(0) => \^mat2axivideo_dma_u0_img_data_stream_v_read\,
      video_out_TREADY => video_out_TREADY,
      video_out_TSTRB(0) => video_out_TSTRB(0)
    );
regslice_both_AXI_video_strm_V_last_V_U: entity work.\design_1_passthrough_0_0_regslice_both__parameterized1_2\
     port map (
      SR(0) => \^ap_rst\,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_int_reg[1]\(0) => \^mat2axivideo_dma_u0_img_data_stream_v_read\,
      tmp_last_V_reg_297 => tmp_last_V_reg_297,
      video_out_TLAST(0) => video_out_TLAST(0),
      video_out_TREADY => video_out_TREADY
    );
\t_V_1_reg_170[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_1_reg_170_reg(0),
      O => \t_V_1_reg_170[0]_i_4_n_0\
    );
\t_V_1_reg_170_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[0]_i_3_n_7\,
      Q => t_V_1_reg_170_reg(0),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \t_V_1_reg_170_reg[0]_i_3_n_0\,
      CO(2) => \t_V_1_reg_170_reg[0]_i_3_n_1\,
      CO(1) => \t_V_1_reg_170_reg[0]_i_3_n_2\,
      CO(0) => \t_V_1_reg_170_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \t_V_1_reg_170_reg[0]_i_3_n_4\,
      O(2) => \t_V_1_reg_170_reg[0]_i_3_n_5\,
      O(1) => \t_V_1_reg_170_reg[0]_i_3_n_6\,
      O(0) => \t_V_1_reg_170_reg[0]_i_3_n_7\,
      S(3 downto 1) => t_V_1_reg_170_reg(3 downto 1),
      S(0) => \t_V_1_reg_170[0]_i_4_n_0\
    );
\t_V_1_reg_170_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[8]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(10),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[8]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(11),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[12]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(12),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[8]_i_1_n_0\,
      CO(3) => \t_V_1_reg_170_reg[12]_i_1_n_0\,
      CO(2) => \t_V_1_reg_170_reg[12]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[12]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[12]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[12]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[12]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[12]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(15 downto 12)
    );
\t_V_1_reg_170_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[12]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(13),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[12]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(14),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[12]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(15),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[16]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(16),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[12]_i_1_n_0\,
      CO(3) => \t_V_1_reg_170_reg[16]_i_1_n_0\,
      CO(2) => \t_V_1_reg_170_reg[16]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[16]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[16]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[16]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[16]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[16]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(19 downto 16)
    );
\t_V_1_reg_170_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[16]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(17),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[16]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(18),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[16]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(19),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[0]_i_3_n_6\,
      Q => t_V_1_reg_170_reg(1),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[20]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(20),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[16]_i_1_n_0\,
      CO(3) => \t_V_1_reg_170_reg[20]_i_1_n_0\,
      CO(2) => \t_V_1_reg_170_reg[20]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[20]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[20]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[20]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[20]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[20]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(23 downto 20)
    );
\t_V_1_reg_170_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[20]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(21),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[20]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(22),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[20]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(23),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[24]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(24),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[20]_i_1_n_0\,
      CO(3) => \t_V_1_reg_170_reg[24]_i_1_n_0\,
      CO(2) => \t_V_1_reg_170_reg[24]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[24]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[24]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[24]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[24]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[24]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(27 downto 24)
    );
\t_V_1_reg_170_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[24]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(25),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[24]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(26),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[24]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(27),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[28]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(28),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[24]_i_1_n_0\,
      CO(3) => \NLW_t_V_1_reg_170_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \t_V_1_reg_170_reg[28]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[28]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[28]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[28]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[28]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[28]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(31 downto 28)
    );
\t_V_1_reg_170_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[28]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(29),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[0]_i_3_n_5\,
      Q => t_V_1_reg_170_reg(2),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[28]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(30),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[28]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(31),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[0]_i_3_n_4\,
      Q => t_V_1_reg_170_reg(3),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[4]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(4),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[0]_i_3_n_0\,
      CO(3) => \t_V_1_reg_170_reg[4]_i_1_n_0\,
      CO(2) => \t_V_1_reg_170_reg[4]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[4]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[4]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[4]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[4]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[4]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(7 downto 4)
    );
\t_V_1_reg_170_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[4]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(5),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[4]_i_1_n_5\,
      Q => t_V_1_reg_170_reg(6),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[4]_i_1_n_4\,
      Q => t_V_1_reg_170_reg(7),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[8]_i_1_n_7\,
      Q => t_V_1_reg_170_reg(8),
      R => t_V_1_reg_170
    );
\t_V_1_reg_170_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_1_reg_170_reg[4]_i_1_n_0\,
      CO(3) => \t_V_1_reg_170_reg[8]_i_1_n_0\,
      CO(2) => \t_V_1_reg_170_reg[8]_i_1_n_1\,
      CO(1) => \t_V_1_reg_170_reg[8]_i_1_n_2\,
      CO(0) => \t_V_1_reg_170_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_1_reg_170_reg[8]_i_1_n_4\,
      O(2) => \t_V_1_reg_170_reg[8]_i_1_n_5\,
      O(1) => \t_V_1_reg_170_reg[8]_i_1_n_6\,
      O(0) => \t_V_1_reg_170_reg[8]_i_1_n_7\,
      S(3 downto 0) => t_V_1_reg_170_reg(11 downto 8)
    );
\t_V_1_reg_170_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1700,
      D => \t_V_1_reg_170_reg[8]_i_1_n_6\,
      Q => t_V_1_reg_170_reg(9),
      R => t_V_1_reg_170
    );
\t_V_reg_159[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => img_1_rows_V_c4_empty_n,
      I1 => \^q\(0),
      I2 => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      I3 => img_1_cols_V_c5_empty_n,
      I4 => ap_CS_fsm_state6,
      O => t_V_reg_159_0
    );
\t_V_reg_159_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(0),
      Q => t_V_reg_159(0),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(10),
      Q => t_V_reg_159(10),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(11),
      Q => t_V_reg_159(11),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(12),
      Q => t_V_reg_159(12),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(13),
      Q => t_V_reg_159(13),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(14),
      Q => t_V_reg_159(14),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(15),
      Q => t_V_reg_159(15),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(16),
      Q => t_V_reg_159(16),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(17),
      Q => t_V_reg_159(17),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(18),
      Q => t_V_reg_159(18),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(19),
      Q => t_V_reg_159(19),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(1),
      Q => t_V_reg_159(1),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(20),
      Q => t_V_reg_159(20),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(21),
      Q => t_V_reg_159(21),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(22),
      Q => t_V_reg_159(22),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(23),
      Q => t_V_reg_159(23),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(24),
      Q => t_V_reg_159(24),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(25),
      Q => t_V_reg_159(25),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(26),
      Q => t_V_reg_159(26),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(27),
      Q => t_V_reg_159(27),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(28),
      Q => t_V_reg_159(28),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(29),
      Q => t_V_reg_159(29),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(2),
      Q => t_V_reg_159(2),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(30),
      Q => t_V_reg_159(30),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(31),
      Q => t_V_reg_159(31),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(3),
      Q => t_V_reg_159(3),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(4),
      Q => t_V_reg_159(4),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(5),
      Q => t_V_reg_159(5),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(6),
      Q => t_V_reg_159(6),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(7),
      Q => t_V_reg_159(7),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(8),
      Q => t_V_reg_159(8),
      R => t_V_reg_159_0
    );
\t_V_reg_159_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_278(9),
      Q => t_V_reg_159(9),
      R => t_V_reg_159_0
    );
tmp_last_V_fu_249_p20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_last_V_fu_249_p20_carry_n_0,
      CO(2) => tmp_last_V_fu_249_p20_carry_n_1,
      CO(1) => tmp_last_V_fu_249_p20_carry_n_2,
      CO(0) => tmp_last_V_fu_249_p20_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_tmp_last_V_fu_249_p20_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_last_V_fu_249_p20_carry_i_1_n_0,
      S(2) => tmp_last_V_fu_249_p20_carry_i_2_n_0,
      S(1) => tmp_last_V_fu_249_p20_carry_i_3_n_0,
      S(0) => tmp_last_V_fu_249_p20_carry_i_4_n_0
    );
\tmp_last_V_fu_249_p20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_last_V_fu_249_p20_carry_n_0,
      CO(3) => \tmp_last_V_fu_249_p20_carry__0_n_0\,
      CO(2) => \tmp_last_V_fu_249_p20_carry__0_n_1\,
      CO(1) => \tmp_last_V_fu_249_p20_carry__0_n_2\,
      CO(0) => \tmp_last_V_fu_249_p20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_last_V_fu_249_p20_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_last_V_fu_249_p20_carry__0_i_1_n_0\,
      S(2) => \tmp_last_V_fu_249_p20_carry__0_i_2_n_0\,
      S(1) => \tmp_last_V_fu_249_p20_carry__0_i_3_n_0\,
      S(0) => \tmp_last_V_fu_249_p20_carry__0_i_4_n_0\
    );
\tmp_last_V_fu_249_p20_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(23),
      I1 => t_V_1_reg_170_reg(22),
      I2 => t_V_1_reg_170_reg(21),
      O => \tmp_last_V_fu_249_p20_carry__0_i_1_n_0\
    );
\tmp_last_V_fu_249_p20_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(20),
      I1 => t_V_1_reg_170_reg(19),
      I2 => t_V_1_reg_170_reg(18),
      O => \tmp_last_V_fu_249_p20_carry__0_i_2_n_0\
    );
\tmp_last_V_fu_249_p20_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(17),
      I1 => t_V_1_reg_170_reg(16),
      I2 => t_V_1_reg_170_reg(15),
      O => \tmp_last_V_fu_249_p20_carry__0_i_3_n_0\
    );
\tmp_last_V_fu_249_p20_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(14),
      I1 => t_V_1_reg_170_reg(13),
      I2 => t_V_1_reg_170_reg(12),
      O => \tmp_last_V_fu_249_p20_carry__0_i_4_n_0\
    );
\tmp_last_V_fu_249_p20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_last_V_fu_249_p20_carry__0_n_0\,
      CO(3) => \NLW_tmp_last_V_fu_249_p20_carry__1_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln879_1_fu_244_p2,
      CO(1) => \tmp_last_V_fu_249_p20_carry__1_n_2\,
      CO(0) => \tmp_last_V_fu_249_p20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_last_V_fu_249_p20_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \tmp_last_V_fu_249_p20_carry__1_i_1_n_0\,
      S(1) => \tmp_last_V_fu_249_p20_carry__1_i_2_n_0\,
      S(0) => \tmp_last_V_fu_249_p20_carry__1_i_3_n_0\
    );
\tmp_last_V_fu_249_p20_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_1_reg_170_reg(30),
      I1 => t_V_1_reg_170_reg(31),
      O => \tmp_last_V_fu_249_p20_carry__1_i_1_n_0\
    );
\tmp_last_V_fu_249_p20_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(29),
      I1 => t_V_1_reg_170_reg(28),
      I2 => t_V_1_reg_170_reg(27),
      O => \tmp_last_V_fu_249_p20_carry__1_i_2_n_0\
    );
\tmp_last_V_fu_249_p20_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_1_reg_170_reg(26),
      I1 => t_V_1_reg_170_reg(25),
      I2 => t_V_1_reg_170_reg(24),
      O => \tmp_last_V_fu_249_p20_carry__1_i_3_n_0\
    );
tmp_last_V_fu_249_p20_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_1_reg_170_reg(11),
      I1 => t_V_1_reg_170_reg(9),
      I2 => t_V_1_reg_170_reg(10),
      O => tmp_last_V_fu_249_p20_carry_i_1_n_0
    );
tmp_last_V_fu_249_p20_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_1_reg_170_reg(8),
      I1 => t_V_1_reg_170_reg(6),
      I2 => t_V_1_reg_170_reg(7),
      O => tmp_last_V_fu_249_p20_carry_i_2_n_0
    );
tmp_last_V_fu_249_p20_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_1_reg_170_reg(3),
      I1 => t_V_1_reg_170_reg(5),
      I2 => t_V_1_reg_170_reg(4),
      O => tmp_last_V_fu_249_p20_carry_i_3_n_0
    );
tmp_last_V_fu_249_p20_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_1_reg_170_reg(0),
      I1 => t_V_1_reg_170_reg(2),
      I2 => t_V_1_reg_170_reg(1),
      O => tmp_last_V_fu_249_p20_carry_i_4_n_0
    );
\tmp_last_V_reg_297_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_23,
      Q => tmp_last_V_reg_297,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0_passthrough is
  port (
    video_in_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    video_in_TVALID : in STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    video_out_TVALID : out STD_LOGIC;
    video_out_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_passthrough_0_0_passthrough : entity is "passthrough";
end design_1_passthrough_0_0_passthrough;

architecture STRUCTURE of design_1_passthrough_0_0_passthrough is
  signal \<const0>\ : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_10 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_11 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_12 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_13 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_2 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_3 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_4 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_6 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_7 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_8 : STD_LOGIC;
  signal AXIvideo2Mat_DMA_U0_n_9 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_img_data_stream_V_read : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_16 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_17 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_18 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_19 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_20 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_21 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_22 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_23 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_3 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_4 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_5 : STD_LOGIC;
  signal Mat2AXIvideo_DMA_U0_n_6 : STD_LOGIC;
  signal ap_rst : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal icmp_ln52_fu_209_p2 : STD_LOGIC;
  signal img_1_cols_V_c5_U_n_2 : STD_LOGIC;
  signal img_1_cols_V_c5_U_n_3 : STD_LOGIC;
  signal img_1_cols_V_c5_empty_n : STD_LOGIC;
  signal img_1_cols_V_c5_full_n : STD_LOGIC;
  signal img_1_cols_V_c_empty_n : STD_LOGIC;
  signal img_1_cols_V_c_full_n : STD_LOGIC;
  signal img_1_data_stream_0_U_n_2 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_3 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_4 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_5 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_6 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_7 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_8 : STD_LOGIC;
  signal img_1_data_stream_0_U_n_9 : STD_LOGIC;
  signal img_1_data_stream_0_empty_n : STD_LOGIC;
  signal img_1_data_stream_0_full_n : STD_LOGIC;
  signal img_1_rows_V_c4_U_n_2 : STD_LOGIC;
  signal img_1_rows_V_c4_empty_n : STD_LOGIC;
  signal img_1_rows_V_c4_full_n : STD_LOGIC;
  signal img_1_rows_V_c_U_n_2 : STD_LOGIC;
  signal img_1_rows_V_c_empty_n : STD_LOGIC;
  signal img_1_rows_V_c_full_n : STD_LOGIC;
  signal q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal start_for_Mat2AXIbkb_U_n_2 : STD_LOGIC;
  signal start_for_Mat2AXIvideo_DMA_U0_empty_n : STD_LOGIC;
  signal start_for_Mat2AXIvideo_DMA_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal \^video_out_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  video_out_TDEST(0) <= \<const0>\;
  video_out_TID(0) <= \<const0>\;
  video_out_TKEEP(0) <= \^video_out_tstrb\(0);
  video_out_TSTRB(0) <= \^video_out_tstrb\(0);
  video_out_TUSER(0) <= \<const0>\;
AXIvideo2Mat_DMA_U0: entity work.design_1_passthrough_0_0_AXIvideo2Mat_DMA
     port map (
      D(8) => video_in_TVALID,
      D(7 downto 0) => video_in_TDATA(7 downto 0),
      E(0) => AXIvideo2Mat_DMA_U0_n_3,
      Q(0) => Mat2AXIvideo_DMA_U0_n_4,
      \ap_CS_fsm_reg[0]_0\ => AXIvideo2Mat_DMA_U0_n_2,
      \ap_CS_fsm_reg[0]_1\ => img_1_cols_V_c5_U_n_3,
      \ap_CS_fsm_reg[1]_0\ => start_for_Mat2AXIbkb_U_n_2,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      ce => ce,
      img_1_cols_V_c5_empty_n => img_1_cols_V_c5_empty_n,
      img_1_cols_V_c5_full_n => img_1_cols_V_c5_full_n,
      img_1_cols_V_c_empty_n => img_1_cols_V_c_empty_n,
      img_1_cols_V_c_full_n => img_1_cols_V_c_full_n,
      img_1_data_stream_0_full_n => img_1_data_stream_0_full_n,
      img_1_rows_V_c4_empty_n => img_1_rows_V_c4_empty_n,
      img_1_rows_V_c4_full_n => img_1_rows_V_c4_full_n,
      img_1_rows_V_c_empty_n => img_1_rows_V_c_empty_n,
      img_1_rows_V_c_full_n => img_1_rows_V_c_full_n,
      internal_full_n_reg(0) => AXIvideo2Mat_DMA_U0_n_4,
      start_for_Mat2AXIvideo_DMA_U0_empty_n => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      start_for_Mat2AXIvideo_DMA_U0_full_n => start_for_Mat2AXIvideo_DMA_U0_full_n,
      start_once_reg => start_once_reg,
      \tmp_data_V_reg_269_reg[7]_0\(7) => AXIvideo2Mat_DMA_U0_n_6,
      \tmp_data_V_reg_269_reg[7]_0\(6) => AXIvideo2Mat_DMA_U0_n_7,
      \tmp_data_V_reg_269_reg[7]_0\(5) => AXIvideo2Mat_DMA_U0_n_8,
      \tmp_data_V_reg_269_reg[7]_0\(4) => AXIvideo2Mat_DMA_U0_n_9,
      \tmp_data_V_reg_269_reg[7]_0\(3) => AXIvideo2Mat_DMA_U0_n_10,
      \tmp_data_V_reg_269_reg[7]_0\(2) => AXIvideo2Mat_DMA_U0_n_11,
      \tmp_data_V_reg_269_reg[7]_0\(1) => AXIvideo2Mat_DMA_U0_n_12,
      \tmp_data_V_reg_269_reg[7]_0\(0) => AXIvideo2Mat_DMA_U0_n_13,
      video_in_TREADY => video_in_TREADY
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Mat2AXIvideo_DMA_U0: entity work.design_1_passthrough_0_0_Mat2AXIvideo_DMA
     port map (
      CO(0) => icmp_ln52_fu_209_p2,
      D(7 downto 0) => q(7 downto 0),
      Mat2AXIvideo_DMA_U0_img_data_stream_V_read => Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
      Q(0) => Mat2AXIvideo_DMA_U0_n_4,
      \ap_CS_fsm_reg[1]_0\ => Mat2AXIvideo_DMA_U0_n_5,
      \ap_CS_fsm_reg[1]_1\ => img_1_cols_V_c5_U_n_2,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      img_1_cols_V_c5_empty_n => img_1_cols_V_c5_empty_n,
      img_1_data_stream_0_empty_n => img_1_data_stream_0_empty_n,
      img_1_rows_V_c4_empty_n => img_1_rows_V_c4_empty_n,
      internal_empty_n_reg => Mat2AXIvideo_DMA_U0_n_3,
      \ireg_reg[7]\(7) => Mat2AXIvideo_DMA_U0_n_16,
      \ireg_reg[7]\(6) => Mat2AXIvideo_DMA_U0_n_17,
      \ireg_reg[7]\(5) => Mat2AXIvideo_DMA_U0_n_18,
      \ireg_reg[7]\(4) => Mat2AXIvideo_DMA_U0_n_19,
      \ireg_reg[7]\(3) => Mat2AXIvideo_DMA_U0_n_20,
      \ireg_reg[7]\(2) => Mat2AXIvideo_DMA_U0_n_21,
      \ireg_reg[7]\(1) => Mat2AXIvideo_DMA_U0_n_22,
      \ireg_reg[7]\(0) => Mat2AXIvideo_DMA_U0_n_23,
      \ireg_reg[8]\ => Mat2AXIvideo_DMA_U0_n_6,
      \odata_int_reg[7]\(7) => img_1_data_stream_0_U_n_2,
      \odata_int_reg[7]\(6) => img_1_data_stream_0_U_n_3,
      \odata_int_reg[7]\(5) => img_1_data_stream_0_U_n_4,
      \odata_int_reg[7]\(4) => img_1_data_stream_0_U_n_5,
      \odata_int_reg[7]\(3) => img_1_data_stream_0_U_n_6,
      \odata_int_reg[7]\(2) => img_1_data_stream_0_U_n_7,
      \odata_int_reg[7]\(1) => img_1_data_stream_0_U_n_8,
      \odata_int_reg[7]\(0) => img_1_data_stream_0_U_n_9,
      \odata_int_reg[8]\(8) => video_out_TVALID,
      \odata_int_reg[8]\(7 downto 0) => video_out_TDATA(7 downto 0),
      start_for_Mat2AXIvideo_DMA_U0_empty_n => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      video_out_TLAST(0) => video_out_TLAST(0),
      video_out_TREADY => video_out_TREADY,
      video_out_TSTRB(0) => \^video_out_tstrb\(0)
    );
img_1_cols_V_c5_U: entity work.design_1_passthrough_0_0_fifo_w11_d2_A
     port map (
      E(0) => AXIvideo2Mat_DMA_U0_n_3,
      Q(0) => Mat2AXIvideo_DMA_U0_n_4,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      img_1_cols_V_c5_empty_n => img_1_cols_V_c5_empty_n,
      img_1_cols_V_c5_full_n => img_1_cols_V_c5_full_n,
      img_1_cols_V_c_empty_n => img_1_cols_V_c_empty_n,
      img_1_rows_V_c4_empty_n => img_1_rows_V_c4_empty_n,
      img_1_rows_V_c4_full_n => img_1_rows_V_c4_full_n,
      img_1_rows_V_c_empty_n => img_1_rows_V_c_empty_n,
      internal_empty_n_reg_0 => img_1_cols_V_c5_U_n_2,
      internal_full_n_reg_0 => img_1_cols_V_c5_U_n_3,
      internal_full_n_reg_1 => AXIvideo2Mat_DMA_U0_n_2,
      \mOutPtr_reg[1]_0\ => img_1_rows_V_c4_U_n_2,
      start_for_Mat2AXIvideo_DMA_U0_empty_n => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      start_for_Mat2AXIvideo_DMA_U0_full_n => start_for_Mat2AXIvideo_DMA_U0_full_n,
      start_once_reg => start_once_reg
    );
img_1_cols_V_c_U: entity work.design_1_passthrough_0_0_fifo_w11_d2_A_0
     port map (
      E(0) => AXIvideo2Mat_DMA_U0_n_4,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      img_1_cols_V_c_empty_n => img_1_cols_V_c_empty_n,
      img_1_cols_V_c_full_n => img_1_cols_V_c_full_n,
      img_1_rows_V_c_full_n => img_1_rows_V_c_full_n,
      internal_empty_n_reg_0 => img_1_rows_V_c_U_n_2,
      internal_full_n_reg_0 => AXIvideo2Mat_DMA_U0_n_2
    );
img_1_data_stream_0_U: entity work.design_1_passthrough_0_0_fifo_w8_d2_A
     port map (
      D(7 downto 0) => q(7 downto 0),
      Mat2AXIvideo_DMA_U0_img_data_stream_V_read => Mat2AXIvideo_DMA_U0_img_data_stream_V_read,
      \SRL_SIG_reg[0][7]\(7) => AXIvideo2Mat_DMA_U0_n_6,
      \SRL_SIG_reg[0][7]\(6) => AXIvideo2Mat_DMA_U0_n_7,
      \SRL_SIG_reg[0][7]\(5) => AXIvideo2Mat_DMA_U0_n_8,
      \SRL_SIG_reg[0][7]\(4) => AXIvideo2Mat_DMA_U0_n_9,
      \SRL_SIG_reg[0][7]\(3) => AXIvideo2Mat_DMA_U0_n_10,
      \SRL_SIG_reg[0][7]\(2) => AXIvideo2Mat_DMA_U0_n_11,
      \SRL_SIG_reg[0][7]\(1) => AXIvideo2Mat_DMA_U0_n_12,
      \SRL_SIG_reg[0][7]\(0) => AXIvideo2Mat_DMA_U0_n_13,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      ce => ce,
      img_1_data_stream_0_empty_n => img_1_data_stream_0_empty_n,
      img_1_data_stream_0_full_n => img_1_data_stream_0_full_n,
      \ireg_reg[7]\(7) => img_1_data_stream_0_U_n_2,
      \ireg_reg[7]\(6) => img_1_data_stream_0_U_n_3,
      \ireg_reg[7]\(5) => img_1_data_stream_0_U_n_4,
      \ireg_reg[7]\(4) => img_1_data_stream_0_U_n_5,
      \ireg_reg[7]\(3) => img_1_data_stream_0_U_n_6,
      \ireg_reg[7]\(2) => img_1_data_stream_0_U_n_7,
      \ireg_reg[7]\(1) => img_1_data_stream_0_U_n_8,
      \ireg_reg[7]\(0) => img_1_data_stream_0_U_n_9,
      \odata_int_reg[7]\(7) => Mat2AXIvideo_DMA_U0_n_16,
      \odata_int_reg[7]\(6) => Mat2AXIvideo_DMA_U0_n_17,
      \odata_int_reg[7]\(5) => Mat2AXIvideo_DMA_U0_n_18,
      \odata_int_reg[7]\(4) => Mat2AXIvideo_DMA_U0_n_19,
      \odata_int_reg[7]\(3) => Mat2AXIvideo_DMA_U0_n_20,
      \odata_int_reg[7]\(2) => Mat2AXIvideo_DMA_U0_n_21,
      \odata_int_reg[7]\(1) => Mat2AXIvideo_DMA_U0_n_22,
      \odata_int_reg[7]\(0) => Mat2AXIvideo_DMA_U0_n_23,
      \odata_int_reg[7]_0\ => Mat2AXIvideo_DMA_U0_n_6
    );
img_1_rows_V_c4_U: entity work.design_1_passthrough_0_0_fifo_w10_d2_A
     port map (
      E(0) => AXIvideo2Mat_DMA_U0_n_3,
      Q(0) => Mat2AXIvideo_DMA_U0_n_4,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      img_1_cols_V_c5_empty_n => img_1_cols_V_c5_empty_n,
      img_1_rows_V_c4_empty_n => img_1_rows_V_c4_empty_n,
      img_1_rows_V_c4_full_n => img_1_rows_V_c4_full_n,
      internal_empty_n_reg_0 => img_1_rows_V_c4_U_n_2,
      internal_full_n_reg_0 => img_1_cols_V_c5_U_n_2,
      internal_full_n_reg_1 => AXIvideo2Mat_DMA_U0_n_2,
      start_for_Mat2AXIvideo_DMA_U0_empty_n => start_for_Mat2AXIvideo_DMA_U0_empty_n
    );
img_1_rows_V_c_U: entity work.design_1_passthrough_0_0_fifo_w10_d2_A_1
     port map (
      E(0) => AXIvideo2Mat_DMA_U0_n_4,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      img_1_cols_V_c_full_n => img_1_cols_V_c_full_n,
      img_1_rows_V_c_empty_n => img_1_rows_V_c_empty_n,
      img_1_rows_V_c_full_n => img_1_rows_V_c_full_n,
      internal_full_n_reg_0 => img_1_rows_V_c_U_n_2,
      internal_full_n_reg_1 => AXIvideo2Mat_DMA_U0_n_2
    );
start_for_Mat2AXIbkb_U: entity work.design_1_passthrough_0_0_start_for_Mat2AXIbkb
     port map (
      CO(0) => icmp_ln52_fu_209_p2,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => start_for_Mat2AXIbkb_U_n_2,
      \mOutPtr_reg[0]_0\ => Mat2AXIvideo_DMA_U0_n_5,
      \mOutPtr_reg[1]_0\ => Mat2AXIvideo_DMA_U0_n_3,
      start_for_Mat2AXIvideo_DMA_U0_empty_n => start_for_Mat2AXIvideo_DMA_U0_empty_n,
      start_for_Mat2AXIvideo_DMA_U0_full_n => start_for_Mat2AXIvideo_DMA_U0_full_n,
      start_once_reg => start_once_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_passthrough_0_0 is
  port (
    video_in_TVALID : in STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    video_in_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TVALID : out STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    video_out_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_passthrough_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_passthrough_0_0 : entity is "design_1_passthrough_0_0,passthrough,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_passthrough_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_passthrough_0_0 : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of design_1_passthrough_0_0 : entity is "passthrough,Vivado 2019.2";
end design_1_passthrough_0_0;

architecture STRUCTURE of design_1_passthrough_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of video_in_TREADY : signal is "xilinx.com:interface:axis:1.0 video_in TREADY";
  attribute x_interface_info of video_in_TVALID : signal is "xilinx.com:interface:axis:1.0 video_in TVALID";
  attribute x_interface_parameter of video_in_TVALID : signal is "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of video_out_TREADY : signal is "xilinx.com:interface:axis:1.0 video_out TREADY";
  attribute x_interface_info of video_out_TVALID : signal is "xilinx.com:interface:axis:1.0 video_out TVALID";
  attribute x_interface_parameter of video_out_TVALID : signal is "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of video_in_TDATA : signal is "xilinx.com:interface:axis:1.0 video_in TDATA";
  attribute x_interface_info of video_in_TDEST : signal is "xilinx.com:interface:axis:1.0 video_in TDEST";
  attribute x_interface_info of video_in_TID : signal is "xilinx.com:interface:axis:1.0 video_in TID";
  attribute x_interface_info of video_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 video_in TKEEP";
  attribute x_interface_info of video_in_TLAST : signal is "xilinx.com:interface:axis:1.0 video_in TLAST";
  attribute x_interface_info of video_in_TSTRB : signal is "xilinx.com:interface:axis:1.0 video_in TSTRB";
  attribute x_interface_info of video_in_TUSER : signal is "xilinx.com:interface:axis:1.0 video_in TUSER";
  attribute x_interface_info of video_out_TDATA : signal is "xilinx.com:interface:axis:1.0 video_out TDATA";
  attribute x_interface_info of video_out_TDEST : signal is "xilinx.com:interface:axis:1.0 video_out TDEST";
  attribute x_interface_info of video_out_TID : signal is "xilinx.com:interface:axis:1.0 video_out TID";
  attribute x_interface_info of video_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 video_out TKEEP";
  attribute x_interface_info of video_out_TLAST : signal is "xilinx.com:interface:axis:1.0 video_out TLAST";
  attribute x_interface_info of video_out_TSTRB : signal is "xilinx.com:interface:axis:1.0 video_out TSTRB";
  attribute x_interface_info of video_out_TUSER : signal is "xilinx.com:interface:axis:1.0 video_out TUSER";
begin
U0: entity work.design_1_passthrough_0_0_passthrough
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      video_in_TDATA(7 downto 0) => video_in_TDATA(7 downto 0),
      video_in_TDEST(0) => video_in_TDEST(0),
      video_in_TID(0) => video_in_TID(0),
      video_in_TKEEP(0) => video_in_TKEEP(0),
      video_in_TLAST(0) => video_in_TLAST(0),
      video_in_TREADY => video_in_TREADY,
      video_in_TSTRB(0) => video_in_TSTRB(0),
      video_in_TUSER(0) => video_in_TUSER(0),
      video_in_TVALID => video_in_TVALID,
      video_out_TDATA(7 downto 0) => video_out_TDATA(7 downto 0),
      video_out_TDEST(0) => video_out_TDEST(0),
      video_out_TID(0) => video_out_TID(0),
      video_out_TKEEP(0) => video_out_TKEEP(0),
      video_out_TLAST(0) => video_out_TLAST(0),
      video_out_TREADY => video_out_TREADY,
      video_out_TSTRB(0) => video_out_TSTRB(0),
      video_out_TUSER(0) => video_out_TUSER(0),
      video_out_TVALID => video_out_TVALID
    );
end STRUCTURE;
