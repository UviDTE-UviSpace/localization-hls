
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set video_out_group [add_wave_group video_out(axis) -into $coutputgroup]
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TREADY -into $video_out_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TVALID -into $video_out_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TDEST -into $video_out_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TID -into $video_out_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TLAST -into $video_out_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TUSER -into $video_out_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TSTRB -into $video_out_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TKEEP -into $video_out_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_out_TDATA -into $video_out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set video_in_group [add_wave_group video_in(axis) -into $cinputgroup]
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TREADY -into $video_in_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TVALID -into $video_in_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TDEST -into $video_in_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TID -into $video_in_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TLAST -into $video_in_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TUSER -into $video_in_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TSTRB -into $video_in_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TKEEP -into $video_in_group -radix hex
add_wave /apatb_blur_image_top/AESL_inst_blur_image/video_in_TDATA -into $video_in_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_blur_image_top/AESL_inst_blur_image/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_blur_image_top/AESL_inst_blur_image/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_blur_image_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_keep_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_strb_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_user_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_id_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvin_trans_num_video_in_V_dest_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_keep_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_strb_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_user_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_id_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/ap_c_n_tvout_trans_num_video_out_V_dest_V -into $tb_simstatus_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_in_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_blur_image_top/LENGTH_video_out_V_dest_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_video_out_group [add_wave_group video_out(axis) -into $tbcoutputgroup]
add_wave /apatb_blur_image_top/video_out_TREADY -into $tb_video_out_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/video_out_TVALID -into $tb_video_out_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/video_out_TDEST -into $tb_video_out_group -radix hex
add_wave /apatb_blur_image_top/video_out_TID -into $tb_video_out_group -radix hex
add_wave /apatb_blur_image_top/video_out_TLAST -into $tb_video_out_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/video_out_TUSER -into $tb_video_out_group -radix hex
add_wave /apatb_blur_image_top/video_out_TSTRB -into $tb_video_out_group -radix hex
add_wave /apatb_blur_image_top/video_out_TKEEP -into $tb_video_out_group -radix hex
add_wave /apatb_blur_image_top/video_out_TDATA -into $tb_video_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_video_in_group [add_wave_group video_in(axis) -into $tbcinputgroup]
add_wave /apatb_blur_image_top/video_in_TREADY -into $tb_video_in_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/video_in_TVALID -into $tb_video_in_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/video_in_TDEST -into $tb_video_in_group -radix hex
add_wave /apatb_blur_image_top/video_in_TID -into $tb_video_in_group -radix hex
add_wave /apatb_blur_image_top/video_in_TLAST -into $tb_video_in_group -color #ffff00 -radix hex
add_wave /apatb_blur_image_top/video_in_TUSER -into $tb_video_in_group -radix hex
add_wave /apatb_blur_image_top/video_in_TSTRB -into $tb_video_in_group -radix hex
add_wave /apatb_blur_image_top/video_in_TKEEP -into $tb_video_in_group -radix hex
add_wave /apatb_blur_image_top/video_in_TDATA -into $tb_video_in_group -radix hex
save_wave_config blur_image.wcfg
run all
quit

