
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set outStream_group [add_wave_group outStream(axis) -into $coutputgroup]
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TDEST -into $outStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TID -into $outStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TLAST -into $outStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TUSER -into $outStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TSTRB -into $outStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TKEEP -into $outStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TREADY -into $outStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TVALID -into $outStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/outStream_TDATA -into $outStream_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set inStream_group [add_wave_group inStream(axis) -into $cinputgroup]
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TDEST -into $inStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TID -into $inStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TLAST -into $inStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TUSER -into $inStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TSTRB -into $inStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TKEEP -into $inStream_group -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TREADY -into $inStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TVALID -into $inStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/AESL_inst_doGain/inStream_TDATA -into $inStream_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_doGain_top/AESL_inst_doGain/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_doGain_top/AESL_inst_doGain/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_doGain_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_keep_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_strb_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_user_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_id_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvin_trans_num_inStream_V_dest_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_keep_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_strb_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_user_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_id_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/ap_c_n_tvout_trans_num_outStream_V_dest_V -into $tb_simstatus_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_inStream_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_doGain_top/LENGTH_outStream_V_dest_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_outStream_group [add_wave_group outStream(axis) -into $tbcoutputgroup]
add_wave /apatb_doGain_top/outStream_TDEST -into $tb_outStream_group -radix hex
add_wave /apatb_doGain_top/outStream_TID -into $tb_outStream_group -radix hex
add_wave /apatb_doGain_top/outStream_TLAST -into $tb_outStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/outStream_TUSER -into $tb_outStream_group -radix hex
add_wave /apatb_doGain_top/outStream_TSTRB -into $tb_outStream_group -radix hex
add_wave /apatb_doGain_top/outStream_TKEEP -into $tb_outStream_group -radix hex
add_wave /apatb_doGain_top/outStream_TREADY -into $tb_outStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/outStream_TVALID -into $tb_outStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/outStream_TDATA -into $tb_outStream_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_inStream_group [add_wave_group inStream(axis) -into $tbcinputgroup]
add_wave /apatb_doGain_top/inStream_TDEST -into $tb_inStream_group -radix hex
add_wave /apatb_doGain_top/inStream_TID -into $tb_inStream_group -radix hex
add_wave /apatb_doGain_top/inStream_TLAST -into $tb_inStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/inStream_TUSER -into $tb_inStream_group -radix hex
add_wave /apatb_doGain_top/inStream_TSTRB -into $tb_inStream_group -radix hex
add_wave /apatb_doGain_top/inStream_TKEEP -into $tb_inStream_group -radix hex
add_wave /apatb_doGain_top/inStream_TREADY -into $tb_inStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/inStream_TVALID -into $tb_inStream_group -color #ffff00 -radix hex
add_wave /apatb_doGain_top/inStream_TDATA -into $tb_inStream_group -radix hex
save_wave_config doGain.wcfg
run all
quit

