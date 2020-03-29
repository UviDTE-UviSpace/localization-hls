#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = D:/localization-hls/FPGA/project_testbuild/vitis_workspace/Linux_OpenCV/export/Linux_OpenCV/Linux_OpenCV.xpfm
SYS_CONFIG = Linux_OpenCV
DOMAINS = linux_domain
BIF_PATH = D:/localization-hls/FPGA/project_testbuild/vitis_workspace/vector_add_system/Debug/system.bif

SD_FILES = --sd_file D:/localization-hls/FPGA/project_testbuild/vitis_workspace/vector_add/Debug/vector_add.elf

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 54687 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --no_bitstream ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


