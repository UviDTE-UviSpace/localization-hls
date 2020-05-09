############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_CircleFilter_Minized
set_top filter
add_files HLS_CircleFilter/filters.hpp
add_files HLS_CircleFilter/filters.cpp
add_files -tb HLS_CircleFilter_Minized/filters_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z007s-clg225-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl
#source "./HLS_CircleFilter_Minized/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl -tool xsim
export_design -flow impl -rtl vhdl -format ip_catalog
