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

XPFM_PATH = /home/gilles/PetaTesting/wksp1/zed1/export/zed1/zed1.xpfm
SYS_CONFIG = zed1
DOMAINS = linux_domain
BIF_PATH = /home/gilles/PetaTesting/wksp1/CircleAlgoCVzed1_system/Debug/system.bif

BITSTREAM_PATH = /home/gilles/PetaTesting/wksp1/CircleAlgoCVzed1/_ide/bitstream/system.bit
SD_FILES = --sd_file /home/gilles/PetaTesting/wksp1/CircleAlgoCVzed1/Debug/CircleAlgoCVzed1.elf

GENERATE_BIF_XSCT_CMD = ${GENERATE_BIF} -xpfm ${XPFM_PATH} -domains ${DOMAINS} -bifpath ${BIF_PATH}

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	-@echo Executing command \'${GENERATE_BIF_XSCT_CMD}\' on XSCT
	-@echo "connect -u TCP:localhost:44659; tcf send_command $$::xsdb::curchan xsdb eval s es [list \"${GENERATE_BIF_XSCT_CMD}\"]" | xsct
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


