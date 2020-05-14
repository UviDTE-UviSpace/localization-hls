############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_SimpleDesign_ZedBoard
set_top passthrough
add_files HLS_SimpleDesign_ZedBoard/Mat2AXIvideo_DMA.h
add_files HLS_SimpleDesign_ZedBoard/core.cpp
add_files HLS_SimpleDesign_ZedBoard/core.hpp
add_files -tb HLS_SimpleDesign_ZedBoard/IplImage2AXIvideo_DMA.h
add_files -tb HLS_SimpleDesign_ZedBoard/tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./HLS_SimpleDesign_ZedBoard/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool xsim
export_design -flow impl -rtl vhdl -format ip_catalog
