############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Simple_Adder
set_top add_ex
add_files add_ex.c
add_files add_ex.h
add_files -tb add_tb.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./Simple_Adder/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O -reduce_diskspace -rtl vhdl -tool xsim
export_design -format ip_catalog
