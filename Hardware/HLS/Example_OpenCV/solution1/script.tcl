############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Example_OpenCV
set_top image_filter
add_files cvt_colour.cpp
add_files cvt_colour.hpp
add_files -tb cvt_colour_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./Example_OpenCV/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
