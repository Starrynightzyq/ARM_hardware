# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/m3_for_arty_a7/.Xil/Vivado-15704-DESKTOP-A56TUCA/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog {
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/hdl/Projection_Stream_v1_0_Ctrl_AXI.v
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/hdl/Projection_Stream_v1_0_M_AXIS.v
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/hdl/Projection_Stream_v1_0_S_AXIS.v
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/array.vh
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/hist.v
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/hist_h.v
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/projection.v
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/hdl/Projection_Stream_v1_0.v
    }
      rt::read_vhdl -lib blk_mem_gen_v8_4_1 c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/fifo_generator_0/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd
      rt::read_vhdl -lib fifo_generator_v13_2_2 c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/fifo_generator_0/hdl/fifo_generator_v13_2_vhsyn_rfs.vhd
      rt::read_vhdl -lib xil_defaultlib {
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/fifo_generator_0/synth/fifo_generator_0.vhd
      c:/OneDriveLocal/ARM_CP/workspace/vivado/Arm_ipi_repository/Projection_Stream/Projection_Stream_1.0/src/blk_mem_gen_0/synth/blk_mem_gen_0.vhd
    }
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top Projection_Stream_v1_0
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/m3_for_arty_a7/.Xil/Vivado-15704-DESKTOP-A56TUCA/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}