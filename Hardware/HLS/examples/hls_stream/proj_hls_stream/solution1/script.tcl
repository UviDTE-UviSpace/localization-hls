############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_hls_stream
set_top bytestrm_dwordproc
add_files bytestrm_dwordproc.cpp
add_files -tb bytestrm_dwordproc_test.cpp
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
#source "./proj_hls_stream/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool systemc
export_design -format ip_catalog -version "1.00.a"
