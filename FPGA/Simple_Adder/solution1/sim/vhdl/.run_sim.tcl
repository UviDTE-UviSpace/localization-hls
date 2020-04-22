# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2019.2/win64/tools/fpo_v7_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2019.2/win64/tools/opencv"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2019.2/win64/tools/fft_v9_1"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2019.2/win64/tools/fir_v7_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2019.2/win64/tools/dds_v6_0"
source check_sim.tcl

proc sim { } {

    ###set default values
    set gTvIn ""
    set gTvOut ""
    set gTb ""
    set gHdlTvIn ""
    set gHdlTvOut ""
    set gAutowrap 1

    #check if autosim correctly exit
    set simStatusTcl .sim.status.tcl
    if { ![file exist $simStatusTcl]} {
        cosim_message ERROR 305
        return -code error -errorcode 4
    }

    #get parameters from autosim generated tcl script
    source $simStatusTcl
    
    set sim_st(wrapc_needed)    ${sim_status(wrapc_needed)}
    set sim_st(bc_needed)       ${sim_status(bc_needed)}
    set sim_st(sc_needed)       ${sim_status(sc_needed)}
    set sim_st(pc_needed)       ${sim_status(pc_needed)}
    set sim_st(no_tb_pc_needed) ${sim_status(no_tb_pc_needed)}
    set sim_st(vhdl_needed)     ${sim_status(vhdl_needed)}
    set sim_st(vlog_needed)     ${sim_status(vlog_needed)}
    set sim_st(bc_tb_needed)    ${sim_status(bc_tb_needed)}
    set sim_st(bc_tb_new_needed)    ${sim_status(bc_tb_new_needed)}
    set sim_st(cas_needed)      ${sim_status(cas_needed)}
    set dirAutoSimRoot          ${sim_DirAutoSimRoot}
    set dirAutoSimTv            ${sim_DirAutoSimTv}
    set dirAutoSimBc            ${sim_DirAutoSimBc}
    set dirAutoSimSc            ${sim_DirAutoSimSc}
    set dirAutoSimPostCheck     ${sim_DirAutoSimPostCheck}
    set dirAutoSimCasSc         ${sim_DirAutoSimCasSc}
    set dirAutoSimVhdl          ${sim_DirAutoSimVhdl}
    set dirAutoSimVlog          ${sim_DirAutoSimVlog}
    set dirAutoSimVlogGate      ${sim_DirAutoSimVlogGate}
    set dirAutoSimWrapc         ${sim_DirAutoSimWrapc}
    set gWorkingDir             [file normalize ${sim_WorkingDir}]
    set constFileTvIn           ${sim_ConstFileTvIn}
    set constFileTvOut          ${sim_ConstFileTvOut}
    set constFileHdlTvIn        ${sim_ConstFileHdlTvIn}
    set constFileHdlTvOut       ${sim_ConstFileHdlTvOut}
    set gGateLevelSim           ${sim_GateLevelSim}
    set gAutowrap               ${sim_GAutowrap}
    set gTool                   ${sim_GTool}
    set gTvIn                   [file normalize ${sim_GTvIn}]
    set gTvOut                  [file normalize ${sim_GTvOut}]
    set gHdlTvIn                [file normalize ${sim_GHdlTvIn}]
    set gHdlTvOut               [file normalize ${sim_GHdlTvOut}]

#======================rtl section===================
        cd ${gWorkingDir}
        if {${sim_st(vhdl_needed)}} {
            cd $dirAutoSimVhdl
            set info_code 322
            cosim_message INFO $info_code
        } else {
          if { $gGateLevelSim == 1 } {
              cd $dirAutoSimVlogGate
          } else {
              cd $dirAutoSimVlog
              set info_code 323
              cosim_message INFO $info_code
          }
        }
set rtl_sim_pid [exec [info nameofexecutable] ./run_rtl_sim.tcl &]
#======================rtl section end===================
        file delete -force "end.log"
        cd ${gWorkingDir}
        cd $dirAutoSimTv/cdatafile
        foreach fl [glob -nocomplain *.dat] {
            file delete -force $fl
        }
        cd ../rtldatafile
        foreach fl [glob -nocomplain *.dat] {
            file delete -force $fl
        }
        cd ../../wrapc_tv
        file delete -force "com_wrapc.tcl"
        file delete -force "com_rtl_ready.tcl"
        file delete -force "end.log"
        cd ../wrapc_pc
        file delete -force "com_wrapc_pc.tcl"
        file delete -force "end.log"
        
        ### test vector generation ###
        cd ../wrapc_tv
        file delete -force  "err.log"
        if {![file exists cosim.tv.exe]} {
            ::AP::printMsg ERR COSIM 320 COSIM_320_1053
            [exec kill 0]
            return -code error -errorcode $::errorCode
        }
set wrapc_tv_pid [exec [info nameofexecutable] ../wrapc_tv/run_wrapc_tv.tcl &]
        cd ${gWorkingDir}
        cd ${dirAutoSimPostCheck}
::AP::printMsg INFO COSIM 316 COSIM_316_1054
if {! [file exists cosim.pc.exe] } {
    ::AP::printMsg ERR COSIM 320 COSIM_320_1055
    [exec kill 0]
    return -code error -errorcode $::errorCode
}
set wrapc_pc_pid [exec [info nameofexecutable] ../wrapc_pc/run_wrapc_pc.tcl &]
after 1000
update
while { ![file exist ../wrapc_tv/end.log] || ![file exist ./end.log] || ![file exist ../wrapc_pc/end.log] } {
    if { [file exist ../wrapc_tv/end.log] } {
        set cmdret [catch {eval exec "grep \"Failed\" ../wrapc_tv/end.log"} err]
        if {$cmdret == 0} {
            [exec kill 0]
            ::AP::printMsg ERR COSIM 409 COSIM_409_1050
            return -code error -errorcode $::errorCode
        }
    }
    if { [file exist ./end.log] } {
        set cmdret [catch {eval exec "grep \"Failed\" ./end.log"} err]
        if {$cmdret == 0} {
            [exec kill 0]
            ::AP::printMsg ERR COSIM 410 COSIM_410_1051
            return -code error -errorcode $::errorCode
        }
    }
    after 1000
    update
}
if { [file exist ../wrapc_pc/end.log] } {
    set cmdret [catch {eval exec "grep \"Failed\" ../wrapc_pc/end.log"} err]
    if {$cmdret == 0} {
        [exec kill 0]
        ::AP::printMsg ERR COSIM 411 COSIM_411_1052
        return -code error -errorcode $::errorCode
    }
}
return 0

 
}

proc sim_wrap { } {
    set ret [catch {eval sim} err01]

    if {$ret} {
        return -code error -errorcode $::errorCode
    } else {
        return 0
    }
}

sim_wrap
