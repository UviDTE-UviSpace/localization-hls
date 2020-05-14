############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_SimpleDesign
set_top blur_image
add_files HLS_SimpleDesign/simple.hpp
add_files HLS_SimpleDesign/Mat2AXIvideo_DMA.h
add_files HLS_SimpleDesign/Grey_image.cpp
add_files -tb HLS_SimpleDesign/IplImage2AXIvideo_DMA.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_SimpleDesign/Grey_image_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z007s-clg225-1}
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl vhdl -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./HLS_SimpleDesign/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool xsim
export_design -flow impl -rtl vhdl -format ip_catalog
