-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_6 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/AXIvideo2Mat.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/Block_proc.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/fifo_w8_d2_A.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/fifo_w10_d2_A.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/fifo_w10_d4_A.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/fifo_w11_d2_A.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/fifo_w11_d4_A.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/Filter2D.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/Filter2D_k_buf_0_bkb.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_am_addmul_pcA.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_ama_addmuludo.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdg8j.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdhbi.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdibs.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdjbC.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdkbM.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdlbW.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdqcK.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdrcU.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdsc4.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mac_muladdtde.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mul_mul_11ncg.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mul_mul_12ocq.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mul_mul_13mb6.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter_mux_53_8_1_1.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/GaussianBlur.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/Mat2AXIvideo.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/regslice_core.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/start_for_GaussiawdI.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/start_for_Mat2AXIxdS.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/start_for_Threshovdy.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/Threshold.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6238/hdl/vhdl/filter.vhd" \
  "../../../bd/design_1/ip/design_1_filter_0_0/sim/design_1_filter_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_22 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_13 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_21 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_22 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/a141/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_19 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
  "../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

