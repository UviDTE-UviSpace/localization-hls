############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_SimpleDesign
set_top blur_image
add_files HLS_SimpleDesign/simple.hpp
add_files HLS_SimpleDesign/Grey_image.cpp
add_files -tb HLS_SimpleDesign/Grey_image_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
#source "./HLS_SimpleDesign/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
