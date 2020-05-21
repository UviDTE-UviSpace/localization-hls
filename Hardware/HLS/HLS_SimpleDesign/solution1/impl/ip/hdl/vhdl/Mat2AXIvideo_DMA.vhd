-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mat2AXIvideo_DMA is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    img_rows_V_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    img_rows_V_empty_n : IN STD_LOGIC;
    img_rows_V_read : OUT STD_LOGIC;
    img_cols_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
    img_cols_V_empty_n : IN STD_LOGIC;
    img_cols_V_read : OUT STD_LOGIC;
    img_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_V_empty_n : IN STD_LOGIC;
    img_data_stream_V_read : OUT STD_LOGIC;
    video_out_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    video_out_TVALID : OUT STD_LOGIC;
    video_out_TREADY : IN STD_LOGIC;
    video_out_TKEEP : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of Mat2AXIvideo_DMA is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv33_1FFFFFFFF : STD_LOGIC_VECTOR (32 downto 0) := "111111111111111111111111111111111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal img_rows_V_blk_n : STD_LOGIC;
    signal img_cols_V_blk_n : STD_LOGIC;
    signal img_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln54_reg_288 : STD_LOGIC_VECTOR (0 downto 0);
    signal video_out_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln54_reg_288_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal t_V_1_reg_170 : STD_LOGIC_VECTOR (31 downto 0);
    signal rows_V_fu_181_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal rows_V_reg_254 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal cols_V_fu_185_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal cols_V_reg_259 : STD_LOGIC_VECTOR (31 downto 0);
    signal ret_V_fu_193_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal ret_V_reg_264 : STD_LOGIC_VECTOR (32 downto 0);
    signal ret_V_1_fu_203_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal ret_V_1_reg_269 : STD_LOGIC_VECTOR (32 downto 0);
    signal icmp_ln52_fu_209_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal regslice_both_AXI_video_strm_V_data_V_U_apdone_blk : STD_LOGIC;
    signal i_V_fu_214_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_V_reg_278 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln879_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_reg_283 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln54_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_V_fu_234_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_last_V_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_297 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal t_V_reg_159 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln1354_fu_189_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln1354_1_fu_199_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln879_fu_220_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln879_1_fu_240_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal icmp_ln879_1_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal video_out_TVALID_int : STD_LOGIC;
    signal video_out_TREADY_int : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_user_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_id_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_AXI_video_strm_V_dest_V_U_vld_out : STD_LOGIC;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_AXI_video_strm_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => img_data_stream_V_dout,
        vld_in => video_out_TVALID_int,
        ack_in => video_out_TREADY_int,
        data_out => video_out_TDATA,
        vld_out => regslice_both_AXI_video_strm_V_data_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_data_V_U_apdone_blk);

    regslice_both_AXI_video_strm_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_1,
        vld_in => video_out_TVALID_int,
        ack_in => regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy,
        data_out => video_out_TKEEP,
        vld_out => regslice_both_AXI_video_strm_V_keep_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk);

    regslice_both_AXI_video_strm_V_strb_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_1,
        vld_in => video_out_TVALID_int,
        ack_in => regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy,
        data_out => video_out_TSTRB,
        vld_out => regslice_both_AXI_video_strm_V_strb_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk);

    regslice_both_AXI_video_strm_V_user_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_0,
        vld_in => video_out_TVALID_int,
        ack_in => regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy,
        data_out => video_out_TUSER,
        vld_out => regslice_both_AXI_video_strm_V_user_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_user_V_U_apdone_blk);

    regslice_both_AXI_video_strm_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => tmp_last_V_reg_297,
        vld_in => video_out_TVALID_int,
        ack_in => regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy,
        data_out => video_out_TLAST,
        vld_out => regslice_both_AXI_video_strm_V_last_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_last_V_U_apdone_blk);

    regslice_both_AXI_video_strm_V_id_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_0,
        vld_in => video_out_TVALID_int,
        ack_in => regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy,
        data_out => video_out_TID,
        vld_out => regslice_both_AXI_video_strm_V_id_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_id_V_U_apdone_blk);

    regslice_both_AXI_video_strm_V_dest_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_0,
        vld_in => video_out_TVALID_int,
        ack_in => regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy,
        data_out => video_out_TDEST,
        vld_out => regslice_both_AXI_video_strm_V_dest_V_U_vld_out,
        ack_out => video_out_TREADY,
        apdone_blk => regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln52_fu_209_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln52_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((icmp_ln52_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    t_V_1_reg_170_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln54_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                t_V_1_reg_170 <= j_V_fu_234_p2;
            elsif (((icmp_ln52_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then 
                t_V_1_reg_170 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    t_V_reg_159_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                t_V_reg_159 <= i_V_reg_278;
            elsif ((not(((ap_start = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_159 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                cols_V_reg_259 <= cols_V_fu_185_p1;
                ret_V_1_reg_269 <= ret_V_1_fu_203_p2;
                ret_V_reg_264 <= ret_V_fu_193_p2;
                rows_V_reg_254 <= rows_V_fu_181_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                i_V_reg_278 <= i_V_fu_214_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln54_reg_288 <= icmp_ln54_fu_229_p2;
                icmp_ln54_reg_288_pp0_iter1_reg <= icmp_ln54_reg_288;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln52_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                icmp_ln879_reg_283 <= icmp_ln879_fu_224_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln54_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_last_V_reg_297 <= tmp_last_V_fu_249_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, img_rows_V_empty_n, img_cols_V_empty_n, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, icmp_ln52_fu_209_p2, ap_CS_fsm_state2, regslice_both_AXI_video_strm_V_data_V_U_apdone_blk, icmp_ln54_fu_229_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln52_fu_209_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln52_fu_209_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln54_fu_229_p2 = ap_const_lv1_1))) and not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln54_fu_229_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(img_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln54_reg_288)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln54_reg_288 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(img_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln54_reg_288, ap_enable_reg_pp0_iter2, ap_block_state4_io, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state4_io) or ((icmp_ln54_reg_288 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(img_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln54_reg_288, ap_enable_reg_pp0_iter2, ap_block_state4_io, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state4_io) or ((icmp_ln54_reg_288 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, img_rows_V_empty_n, img_cols_V_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(icmp_ln54_reg_288, video_out_TREADY_int)
    begin
                ap_block_state4_io <= ((icmp_ln54_reg_288 = ap_const_lv1_0) and (video_out_TREADY_int = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage0_iter1_assign_proc : process(img_data_stream_V_empty_n, icmp_ln54_reg_288)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((icmp_ln54_reg_288 = ap_const_lv1_0) and (img_data_stream_V_empty_n = ap_const_logic_0));
    end process;


    ap_block_state5_io_assign_proc : process(icmp_ln54_reg_288_pp0_iter1_reg, video_out_TREADY_int)
    begin
                ap_block_state5_io <= ((icmp_ln54_reg_288_pp0_iter1_reg = ap_const_lv1_0) and (video_out_TREADY_int = ap_const_logic_0));
    end process;

        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln54_fu_229_p2)
    begin
        if ((icmp_ln54_fu_229_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln52_fu_209_p2, ap_CS_fsm_state2, regslice_both_AXI_video_strm_V_data_V_U_apdone_blk)
    begin
        if (((icmp_ln52_fu_209_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln52_fu_209_p2, ap_CS_fsm_state2, regslice_both_AXI_video_strm_V_data_V_U_apdone_blk)
    begin
        if (((icmp_ln52_fu_209_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk = ap_const_logic_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

        cols_V_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(img_cols_V_dout),32));

    i_V_fu_214_p2 <= std_logic_vector(unsigned(t_V_reg_159) + unsigned(ap_const_lv32_1));
    icmp_ln52_fu_209_p2 <= "1" when (t_V_reg_159 = rows_V_reg_254) else "0";
    icmp_ln54_fu_229_p2 <= "1" when (t_V_1_reg_170 = cols_V_reg_259) else "0";
    icmp_ln879_1_fu_244_p2 <= "1" when (zext_ln879_1_fu_240_p1 = ret_V_1_reg_269) else "0";
    icmp_ln879_fu_224_p2 <= "1" when (zext_ln879_fu_220_p1 = ret_V_reg_264) else "0";

    img_cols_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_cols_V_blk_n <= img_cols_V_empty_n;
        else 
            img_cols_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_cols_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_rows_V_empty_n, img_cols_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_cols_V_read <= ap_const_logic_1;
        else 
            img_cols_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_data_stream_V_blk_n_assign_proc : process(img_data_stream_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln54_reg_288)
    begin
        if (((icmp_ln54_reg_288 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_data_stream_V_blk_n <= img_data_stream_V_empty_n;
        else 
            img_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln54_reg_288, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln54_reg_288 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            img_data_stream_V_read <= ap_const_logic_1;
        else 
            img_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_rows_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_rows_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_rows_V_blk_n <= img_rows_V_empty_n;
        else 
            img_rows_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_rows_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_rows_V_empty_n, img_cols_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_rows_V_read <= ap_const_logic_1;
        else 
            img_rows_V_read <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_234_p2 <= std_logic_vector(unsigned(t_V_1_reg_170) + unsigned(ap_const_lv32_1));
    ret_V_1_fu_203_p2 <= std_logic_vector(unsigned(zext_ln1354_1_fu_199_p1) + unsigned(ap_const_lv33_1FFFFFFFF));
    ret_V_fu_193_p2 <= std_logic_vector(unsigned(zext_ln1354_fu_189_p1) + unsigned(ap_const_lv33_1FFFFFFFF));
        rows_V_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(img_rows_V_dout),32));

    tmp_last_V_fu_249_p2 <= (icmp_ln879_reg_283 and icmp_ln879_1_fu_244_p2);

    video_out_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln54_reg_288, ap_enable_reg_pp0_iter2, icmp_ln54_reg_288_pp0_iter1_reg, video_out_TREADY_int)
    begin
        if ((((icmp_ln54_reg_288_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln54_reg_288 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            video_out_TDATA_blk_n <= video_out_TREADY_int;
        else 
            video_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    video_out_TVALID <= regslice_both_AXI_video_strm_V_data_V_U_vld_out;

    video_out_TVALID_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln54_reg_288, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln54_reg_288 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            video_out_TVALID_int <= ap_const_logic_1;
        else 
            video_out_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln1354_1_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cols_V_fu_185_p1),33));
    zext_ln1354_fu_189_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(rows_V_fu_181_p1),33));
    zext_ln879_1_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_V_1_reg_170),33));
    zext_ln879_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_V_reg_159),33));
end behav;