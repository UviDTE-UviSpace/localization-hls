############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_CircleFilter_Minized_8bit
set_top filter
add_files HLS_CircleFilter_Minized_8bit/core.hpp
add_files HLS_CircleFilter_Minized_8bit/core.cpp
add_files -tb HLS_CircleFilter_Minized_8bit/tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z007s-clg225-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl
#source "./HLS_CircleFilter_Minized_8bit/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool xsim
export_design -rtl vhdl -format ip_catalog
