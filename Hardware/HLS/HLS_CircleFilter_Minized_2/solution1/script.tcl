############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_CircleFilter_Minized_2
set_top filter
add_files HLS_CircleFilter_Minized_2/Mat2AXIvideo_DMA.h
add_files HLS_CircleFilter_Minized_2/filters.cpp
add_files HLS_CircleFilter_Minized_2/filters.hpp
add_files -tb HLS_CircleFilter_Minized_2/IplImage2AXIvideo_DMA.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_CircleFilter_Minized_2/filters_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z007s-clg225-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl
#source "./HLS_CircleFilter_Minized_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool xsim
export_design -rtl vhdl -format ip_catalog
