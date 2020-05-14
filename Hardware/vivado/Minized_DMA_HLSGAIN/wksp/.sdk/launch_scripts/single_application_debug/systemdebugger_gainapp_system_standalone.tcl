connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A" && level==0} -index 1
fpga -file C:/FPGA/DMA_HLSGAIN/wksp/gainapp/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/FPGA/DMA_HLSGAIN/wksp/DMAGAIN/export/DMAGAIN/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/FPGA/DMA_HLSGAIN/wksp/gainapp/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/FPGA/DMA_HLSGAIN/wksp/gainapp/Debug/gainapp.elf
configparams force-mem-access 0
bpadd -addr &main
