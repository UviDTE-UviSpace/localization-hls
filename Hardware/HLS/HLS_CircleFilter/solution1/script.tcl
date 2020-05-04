############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_CircleFilter
set_top filter
add_files HLS_CircleFilter/filters.hpp
add_files HLS_CircleFilter/filters.cpp
add_files -tb HLS_CircleFilter/filters_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl
#source "./HLS_CircleFilter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O -rtl vhdl
export_design -flow impl -rtl vhdl -format ip_catalog
