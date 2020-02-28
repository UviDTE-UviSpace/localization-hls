#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/proj/xbuilds/SWIP/2019.2_1024_1831/installs/lin64/Vitis/2019.2/bin:/proj/xbuilds/SWIP/2019.2_1024_1831/installs/lin64/Vivado/2019.2/ids_lite/ISE/bin/lin64:/proj/xbuilds/SWIP/2019.2_1024_1831/installs/lin64/Vivado/2019.2/bin
else
  PATH=/proj/xbuilds/SWIP/2019.2_1024_1831/installs/lin64/Vitis/2019.2/bin:/proj/xbuilds/SWIP/2019.2_1024_1831/installs/lin64/Vivado/2019.2/ids_lite/ISE/bin/lin64:/proj/xbuilds/SWIP/2019.2_1024_1831/installs/lin64/Vivado/2019.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/proj/petalinux/2019.2/petalinux-v2019.2_1025_1/logs/bsps/avnet-digilent-zedboard-2019.2/hw_proj/avnet-digilent-zedboard-2019.2/avnet-digilent-zedboard-2019.2.runs/zed_sws_8bits_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log zed_sws_8bits_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source zed_sws_8bits_0.tcl