############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_SimpleDesign
set_top conv
add_files HLS_SimpleDesign/conv.cpp
add_files -tb HLS_SimpleDesign/conv_test.cpp
open_solution "conv"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./HLS_SimpleDesign/conv/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
