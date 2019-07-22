
################################################################
# This is a generated script based on design: bd_082c
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_082c_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_082c

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd_0

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir -bdsource SBD $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design -bdsource SBD $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set SLOT_0_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_0_AXIS ]
  set SLOT_1_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_1_AXIS ]
  set SLOT_2_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_2_AXIS ]
  set SLOT_3_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_3_AXIS ]
  set SLOT_4_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_4_AXIS ]
  set SLOT_5_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_5_AXIS ]
  set SLOT_6_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_6_AXIS ]
  set SLOT_7_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_7_AXIS ]
  set SLOT_8_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_8_AXIS ]

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS:SLOT_3_AXIS:SLOT_4_AXIS:SLOT_5_AXIS:SLOT_6_AXIS:SLOT_7_AXIS:SLOT_8_AXIS} \
   CONFIG.ASSOCIATED_RESET {resetn} \
 ] $clk
  set probe0 [ create_bd_port -dir I -from 0 -to 0 probe0 ]
  set resetn [ create_bd_port -dir I -type rst resetn ]

  # Create instance: g_inst, and set properties
  set g_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:gigantic_mux:1.0 g_inst ]
  set_property -dict [ list \
   CONFIG.C_EN_GIGAMUX {false} \
   CONFIG.C_NUM_MONITOR_SLOTS {9} \
   CONFIG.C_NUM_OF_PROBES {0} \
   CONFIG.C_SLOT_0_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_0_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_0_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_0_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_0_HAS_TKEEP {1} \
   CONFIG.C_SLOT_0_HAS_TREADY {1} \
   CONFIG.C_SLOT_0_HAS_TSTRB {1} \
   CONFIG.C_SLOT_0_MON_MODE {FT} \
   CONFIG.C_SLOT_1_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_1_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_1_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_1_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_1_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_1_HAS_TKEEP {1} \
   CONFIG.C_SLOT_1_HAS_TREADY {1} \
   CONFIG.C_SLOT_1_HAS_TSTRB {1} \
   CONFIG.C_SLOT_1_MON_MODE {FT} \
   CONFIG.C_SLOT_2_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_2_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_2_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_2_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_2_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_2_HAS_TKEEP {1} \
   CONFIG.C_SLOT_2_HAS_TREADY {1} \
   CONFIG.C_SLOT_2_HAS_TSTRB {1} \
   CONFIG.C_SLOT_2_MON_MODE {FT} \
   CONFIG.C_SLOT_3_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_3_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_3_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_3_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_3_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_3_HAS_TKEEP {1} \
   CONFIG.C_SLOT_3_HAS_TREADY {1} \
   CONFIG.C_SLOT_3_HAS_TSTRB {1} \
   CONFIG.C_SLOT_3_MON_MODE {FT} \
   CONFIG.C_SLOT_4_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_4_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_4_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_4_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_4_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_4_HAS_TKEEP {1} \
   CONFIG.C_SLOT_4_HAS_TREADY {1} \
   CONFIG.C_SLOT_4_HAS_TSTRB {1} \
   CONFIG.C_SLOT_4_MON_MODE {FT} \
   CONFIG.C_SLOT_5_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_5_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_5_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_5_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_5_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_5_HAS_TKEEP {1} \
   CONFIG.C_SLOT_5_HAS_TREADY {1} \
   CONFIG.C_SLOT_5_HAS_TSTRB {1} \
   CONFIG.C_SLOT_5_MON_MODE {FT} \
   CONFIG.C_SLOT_6_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_6_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_6_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_6_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_6_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_6_HAS_TKEEP {1} \
   CONFIG.C_SLOT_6_HAS_TREADY {1} \
   CONFIG.C_SLOT_6_HAS_TSTRB {1} \
   CONFIG.C_SLOT_6_MON_MODE {FT} \
   CONFIG.C_SLOT_7_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_7_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_7_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_7_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_7_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_7_HAS_TKEEP {1} \
   CONFIG.C_SLOT_7_HAS_TREADY {1} \
   CONFIG.C_SLOT_7_HAS_TSTRB {0} \
   CONFIG.C_SLOT_7_MON_MODE {FT} \
   CONFIG.C_SLOT_8_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_8_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_8_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_8_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_8_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_8_HAS_TKEEP {1} \
   CONFIG.C_SLOT_8_HAS_TREADY {1} \
   CONFIG.C_SLOT_8_HAS_TSTRB {1} \
   CONFIG.C_SLOT_8_MON_MODE {FT} \
 ] $g_inst

  # Create instance: ila_lib, and set properties
  set ila_lib [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_lib ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU {TRUE} \
   CONFIG.ALL_PROBE_SAME_MU_CNT {1} \
   CONFIG.C_ADV_TRIGGER {FALSE} \
   CONFIG.C_DATA_DEPTH {1024} \
   CONFIG.C_EN_STRG_QUAL {0} \
   CONFIG.C_EN_TIME_TAG {0} \
   CONFIG.C_ILA_CLK_FREQ {200000000} \
   CONFIG.C_INPUT_PIPE_STAGES {0} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {79} \
   CONFIG.C_PROBE0_MU_CNT {1} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE0_WIDTH {1} \
   CONFIG.C_PROBE10_TYPE {0} \
   CONFIG.C_PROBE10_WIDTH {32} \
   CONFIG.C_PROBE11_TYPE {0} \
   CONFIG.C_PROBE11_WIDTH {1} \
   CONFIG.C_PROBE12_TYPE {0} \
   CONFIG.C_PROBE12_WIDTH {1} \
   CONFIG.C_PROBE13_TYPE {0} \
   CONFIG.C_PROBE13_WIDTH {4} \
   CONFIG.C_PROBE14_TYPE {0} \
   CONFIG.C_PROBE14_WIDTH {4} \
   CONFIG.C_PROBE15_TYPE {0} \
   CONFIG.C_PROBE15_WIDTH {1} \
   CONFIG.C_PROBE16_TYPE {0} \
   CONFIG.C_PROBE16_WIDTH {1} \
   CONFIG.C_PROBE17_TYPE {0} \
   CONFIG.C_PROBE17_WIDTH {1} \
   CONFIG.C_PROBE18_TYPE {0} \
   CONFIG.C_PROBE18_WIDTH {1} \
   CONFIG.C_PROBE19_TYPE {0} \
   CONFIG.C_PROBE19_WIDTH {32} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE20_TYPE {0} \
   CONFIG.C_PROBE20_WIDTH {1} \
   CONFIG.C_PROBE21_TYPE {0} \
   CONFIG.C_PROBE21_WIDTH {1} \
   CONFIG.C_PROBE22_TYPE {0} \
   CONFIG.C_PROBE22_WIDTH {4} \
   CONFIG.C_PROBE23_TYPE {0} \
   CONFIG.C_PROBE23_WIDTH {4} \
   CONFIG.C_PROBE24_TYPE {0} \
   CONFIG.C_PROBE24_WIDTH {1} \
   CONFIG.C_PROBE25_TYPE {0} \
   CONFIG.C_PROBE25_WIDTH {1} \
   CONFIG.C_PROBE26_TYPE {0} \
   CONFIG.C_PROBE26_WIDTH {1} \
   CONFIG.C_PROBE27_TYPE {0} \
   CONFIG.C_PROBE27_WIDTH {1} \
   CONFIG.C_PROBE28_TYPE {0} \
   CONFIG.C_PROBE28_WIDTH {32} \
   CONFIG.C_PROBE29_TYPE {0} \
   CONFIG.C_PROBE29_WIDTH {1} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE2_WIDTH {1} \
   CONFIG.C_PROBE30_TYPE {0} \
   CONFIG.C_PROBE30_WIDTH {1} \
   CONFIG.C_PROBE31_TYPE {0} \
   CONFIG.C_PROBE31_WIDTH {4} \
   CONFIG.C_PROBE32_TYPE {0} \
   CONFIG.C_PROBE32_WIDTH {4} \
   CONFIG.C_PROBE33_TYPE {0} \
   CONFIG.C_PROBE33_WIDTH {1} \
   CONFIG.C_PROBE34_TYPE {0} \
   CONFIG.C_PROBE34_WIDTH {1} \
   CONFIG.C_PROBE35_TYPE {0} \
   CONFIG.C_PROBE35_WIDTH {1} \
   CONFIG.C_PROBE36_TYPE {0} \
   CONFIG.C_PROBE36_WIDTH {1} \
   CONFIG.C_PROBE37_TYPE {0} \
   CONFIG.C_PROBE37_WIDTH {32} \
   CONFIG.C_PROBE38_TYPE {0} \
   CONFIG.C_PROBE38_WIDTH {1} \
   CONFIG.C_PROBE39_TYPE {0} \
   CONFIG.C_PROBE39_WIDTH {1} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE3_WIDTH {1} \
   CONFIG.C_PROBE40_TYPE {0} \
   CONFIG.C_PROBE40_WIDTH {4} \
   CONFIG.C_PROBE41_TYPE {0} \
   CONFIG.C_PROBE41_WIDTH {4} \
   CONFIG.C_PROBE42_TYPE {0} \
   CONFIG.C_PROBE42_WIDTH {1} \
   CONFIG.C_PROBE43_TYPE {0} \
   CONFIG.C_PROBE43_WIDTH {1} \
   CONFIG.C_PROBE44_TYPE {0} \
   CONFIG.C_PROBE44_WIDTH {1} \
   CONFIG.C_PROBE45_TYPE {0} \
   CONFIG.C_PROBE45_WIDTH {1} \
   CONFIG.C_PROBE46_TYPE {0} \
   CONFIG.C_PROBE46_WIDTH {32} \
   CONFIG.C_PROBE47_TYPE {0} \
   CONFIG.C_PROBE47_WIDTH {1} \
   CONFIG.C_PROBE48_TYPE {0} \
   CONFIG.C_PROBE48_WIDTH {1} \
   CONFIG.C_PROBE49_TYPE {0} \
   CONFIG.C_PROBE49_WIDTH {4} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE4_WIDTH {4} \
   CONFIG.C_PROBE50_TYPE {0} \
   CONFIG.C_PROBE50_WIDTH {4} \
   CONFIG.C_PROBE51_TYPE {0} \
   CONFIG.C_PROBE51_WIDTH {1} \
   CONFIG.C_PROBE52_TYPE {0} \
   CONFIG.C_PROBE52_WIDTH {1} \
   CONFIG.C_PROBE53_TYPE {0} \
   CONFIG.C_PROBE53_WIDTH {1} \
   CONFIG.C_PROBE54_TYPE {0} \
   CONFIG.C_PROBE54_WIDTH {1} \
   CONFIG.C_PROBE55_TYPE {0} \
   CONFIG.C_PROBE55_WIDTH {32} \
   CONFIG.C_PROBE56_TYPE {0} \
   CONFIG.C_PROBE56_WIDTH {1} \
   CONFIG.C_PROBE57_TYPE {0} \
   CONFIG.C_PROBE57_WIDTH {1} \
   CONFIG.C_PROBE58_TYPE {0} \
   CONFIG.C_PROBE58_WIDTH {4} \
   CONFIG.C_PROBE59_TYPE {0} \
   CONFIG.C_PROBE59_WIDTH {4} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE5_WIDTH {4} \
   CONFIG.C_PROBE60_TYPE {0} \
   CONFIG.C_PROBE60_WIDTH {1} \
   CONFIG.C_PROBE61_TYPE {0} \
   CONFIG.C_PROBE61_WIDTH {1} \
   CONFIG.C_PROBE62_TYPE {0} \
   CONFIG.C_PROBE62_WIDTH {1} \
   CONFIG.C_PROBE63_TYPE {0} \
   CONFIG.C_PROBE63_WIDTH {1} \
   CONFIG.C_PROBE64_TYPE {0} \
   CONFIG.C_PROBE64_WIDTH {24} \
   CONFIG.C_PROBE65_TYPE {0} \
   CONFIG.C_PROBE65_WIDTH {3} \
   CONFIG.C_PROBE66_TYPE {0} \
   CONFIG.C_PROBE66_WIDTH {1} \
   CONFIG.C_PROBE67_TYPE {0} \
   CONFIG.C_PROBE67_WIDTH {1} \
   CONFIG.C_PROBE68_TYPE {0} \
   CONFIG.C_PROBE68_WIDTH {1} \
   CONFIG.C_PROBE69_TYPE {0} \
   CONFIG.C_PROBE69_WIDTH {1} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE6_WIDTH {1} \
   CONFIG.C_PROBE70_TYPE {0} \
   CONFIG.C_PROBE70_WIDTH {24} \
   CONFIG.C_PROBE71_TYPE {0} \
   CONFIG.C_PROBE71_WIDTH {1} \
   CONFIG.C_PROBE72_TYPE {0} \
   CONFIG.C_PROBE72_WIDTH {1} \
   CONFIG.C_PROBE73_TYPE {0} \
   CONFIG.C_PROBE73_WIDTH {3} \
   CONFIG.C_PROBE74_TYPE {0} \
   CONFIG.C_PROBE74_WIDTH {3} \
   CONFIG.C_PROBE75_TYPE {0} \
   CONFIG.C_PROBE75_WIDTH {1} \
   CONFIG.C_PROBE76_TYPE {0} \
   CONFIG.C_PROBE76_WIDTH {1} \
   CONFIG.C_PROBE77_TYPE {0} \
   CONFIG.C_PROBE77_WIDTH {1} \
   CONFIG.C_PROBE78_TYPE {0} \
   CONFIG.C_PROBE78_WIDTH {1} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE7_WIDTH {1} \
   CONFIG.C_PROBE8_TYPE {0} \
   CONFIG.C_PROBE8_WIDTH {1} \
   CONFIG.C_PROBE9_TYPE {0} \
   CONFIG.C_PROBE9_WIDTH {1} \
   CONFIG.C_TIME_TAG_WIDTH {32} \
   CONFIG.C_TRIGIN_EN {false} \
   CONFIG.C_TRIGOUT_EN {false} \
   CONFIG.C_XLNX_HW_PROBE_INFO {DEFAULT} \
 ] $ila_lib

  # Create interface connections
connect_bd_intf_net -intf_net Conn [get_bd_intf_ports SLOT_0_AXIS] [get_bd_intf_pins g_inst/slot_0_axis]
connect_bd_intf_net -intf_net Conn1 [get_bd_intf_ports SLOT_1_AXIS] [get_bd_intf_pins g_inst/slot_1_axis]
connect_bd_intf_net -intf_net Conn2 [get_bd_intf_ports SLOT_2_AXIS] [get_bd_intf_pins g_inst/slot_2_axis]
connect_bd_intf_net -intf_net Conn3 [get_bd_intf_ports SLOT_3_AXIS] [get_bd_intf_pins g_inst/slot_3_axis]
connect_bd_intf_net -intf_net Conn4 [get_bd_intf_ports SLOT_4_AXIS] [get_bd_intf_pins g_inst/slot_4_axis]
connect_bd_intf_net -intf_net Conn5 [get_bd_intf_ports SLOT_5_AXIS] [get_bd_intf_pins g_inst/slot_5_axis]
connect_bd_intf_net -intf_net Conn6 [get_bd_intf_ports SLOT_6_AXIS] [get_bd_intf_pins g_inst/slot_6_axis]
connect_bd_intf_net -intf_net Conn7 [get_bd_intf_ports SLOT_7_AXIS] [get_bd_intf_pins g_inst/slot_7_axis]
connect_bd_intf_net -intf_net Conn8 [get_bd_intf_ports SLOT_8_AXIS] [get_bd_intf_pins g_inst/slot_8_axis]

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins g_inst/aclk] [get_bd_pins ila_lib/clk]
  connect_bd_net -net net_slot_0_axis_tdata [get_bd_pins g_inst/m_slot_0_axis_tdata] [get_bd_pins ila_lib/probe1]
  connect_bd_net -net net_slot_0_axis_tdest [get_bd_pins g_inst/m_slot_0_axis_tdest] [get_bd_pins ila_lib/probe2]
  connect_bd_net -net net_slot_0_axis_tid [get_bd_pins g_inst/m_slot_0_axis_tid] [get_bd_pins ila_lib/probe3]
  connect_bd_net -net net_slot_0_axis_tkeep [get_bd_pins g_inst/m_slot_0_axis_tkeep] [get_bd_pins ila_lib/probe4]
  connect_bd_net -net net_slot_0_axis_tlast [get_bd_pins g_inst/m_slot_0_axis_tlast] [get_bd_pins ila_lib/probe9]
  connect_bd_net -net net_slot_0_axis_tready [get_bd_pins g_inst/m_slot_0_axis_tready] [get_bd_pins ila_lib/probe8]
  connect_bd_net -net net_slot_0_axis_tstrb [get_bd_pins g_inst/m_slot_0_axis_tstrb] [get_bd_pins ila_lib/probe5]
  connect_bd_net -net net_slot_0_axis_tuser [get_bd_pins g_inst/m_slot_0_axis_tuser] [get_bd_pins ila_lib/probe6]
  connect_bd_net -net net_slot_0_axis_tvalid [get_bd_pins g_inst/m_slot_0_axis_tvalid] [get_bd_pins ila_lib/probe7]
  connect_bd_net -net net_slot_1_axis_tdata [get_bd_pins g_inst/m_slot_1_axis_tdata] [get_bd_pins ila_lib/probe10]
  connect_bd_net -net net_slot_1_axis_tdest [get_bd_pins g_inst/m_slot_1_axis_tdest] [get_bd_pins ila_lib/probe11]
  connect_bd_net -net net_slot_1_axis_tid [get_bd_pins g_inst/m_slot_1_axis_tid] [get_bd_pins ila_lib/probe12]
  connect_bd_net -net net_slot_1_axis_tkeep [get_bd_pins g_inst/m_slot_1_axis_tkeep] [get_bd_pins ila_lib/probe13]
  connect_bd_net -net net_slot_1_axis_tlast [get_bd_pins g_inst/m_slot_1_axis_tlast] [get_bd_pins ila_lib/probe18]
  connect_bd_net -net net_slot_1_axis_tready [get_bd_pins g_inst/m_slot_1_axis_tready] [get_bd_pins ila_lib/probe17]
  connect_bd_net -net net_slot_1_axis_tstrb [get_bd_pins g_inst/m_slot_1_axis_tstrb] [get_bd_pins ila_lib/probe14]
  connect_bd_net -net net_slot_1_axis_tuser [get_bd_pins g_inst/m_slot_1_axis_tuser] [get_bd_pins ila_lib/probe15]
  connect_bd_net -net net_slot_1_axis_tvalid [get_bd_pins g_inst/m_slot_1_axis_tvalid] [get_bd_pins ila_lib/probe16]
  connect_bd_net -net net_slot_2_axis_tdata [get_bd_pins g_inst/m_slot_2_axis_tdata] [get_bd_pins ila_lib/probe19]
  connect_bd_net -net net_slot_2_axis_tdest [get_bd_pins g_inst/m_slot_2_axis_tdest] [get_bd_pins ila_lib/probe20]
  connect_bd_net -net net_slot_2_axis_tid [get_bd_pins g_inst/m_slot_2_axis_tid] [get_bd_pins ila_lib/probe21]
  connect_bd_net -net net_slot_2_axis_tkeep [get_bd_pins g_inst/m_slot_2_axis_tkeep] [get_bd_pins ila_lib/probe22]
  connect_bd_net -net net_slot_2_axis_tlast [get_bd_pins g_inst/m_slot_2_axis_tlast] [get_bd_pins ila_lib/probe27]
  connect_bd_net -net net_slot_2_axis_tready [get_bd_pins g_inst/m_slot_2_axis_tready] [get_bd_pins ila_lib/probe26]
  connect_bd_net -net net_slot_2_axis_tstrb [get_bd_pins g_inst/m_slot_2_axis_tstrb] [get_bd_pins ila_lib/probe23]
  connect_bd_net -net net_slot_2_axis_tuser [get_bd_pins g_inst/m_slot_2_axis_tuser] [get_bd_pins ila_lib/probe24]
  connect_bd_net -net net_slot_2_axis_tvalid [get_bd_pins g_inst/m_slot_2_axis_tvalid] [get_bd_pins ila_lib/probe25]
  connect_bd_net -net net_slot_3_axis_tdata [get_bd_pins g_inst/m_slot_3_axis_tdata] [get_bd_pins ila_lib/probe28]
  connect_bd_net -net net_slot_3_axis_tdest [get_bd_pins g_inst/m_slot_3_axis_tdest] [get_bd_pins ila_lib/probe29]
  connect_bd_net -net net_slot_3_axis_tid [get_bd_pins g_inst/m_slot_3_axis_tid] [get_bd_pins ila_lib/probe30]
  connect_bd_net -net net_slot_3_axis_tkeep [get_bd_pins g_inst/m_slot_3_axis_tkeep] [get_bd_pins ila_lib/probe31]
  connect_bd_net -net net_slot_3_axis_tlast [get_bd_pins g_inst/m_slot_3_axis_tlast] [get_bd_pins ila_lib/probe36]
  connect_bd_net -net net_slot_3_axis_tready [get_bd_pins g_inst/m_slot_3_axis_tready] [get_bd_pins ila_lib/probe35]
  connect_bd_net -net net_slot_3_axis_tstrb [get_bd_pins g_inst/m_slot_3_axis_tstrb] [get_bd_pins ila_lib/probe32]
  connect_bd_net -net net_slot_3_axis_tuser [get_bd_pins g_inst/m_slot_3_axis_tuser] [get_bd_pins ila_lib/probe33]
  connect_bd_net -net net_slot_3_axis_tvalid [get_bd_pins g_inst/m_slot_3_axis_tvalid] [get_bd_pins ila_lib/probe34]
  connect_bd_net -net net_slot_4_axis_tdata [get_bd_pins g_inst/m_slot_4_axis_tdata] [get_bd_pins ila_lib/probe37]
  connect_bd_net -net net_slot_4_axis_tdest [get_bd_pins g_inst/m_slot_4_axis_tdest] [get_bd_pins ila_lib/probe38]
  connect_bd_net -net net_slot_4_axis_tid [get_bd_pins g_inst/m_slot_4_axis_tid] [get_bd_pins ila_lib/probe39]
  connect_bd_net -net net_slot_4_axis_tkeep [get_bd_pins g_inst/m_slot_4_axis_tkeep] [get_bd_pins ila_lib/probe40]
  connect_bd_net -net net_slot_4_axis_tlast [get_bd_pins g_inst/m_slot_4_axis_tlast] [get_bd_pins ila_lib/probe45]
  connect_bd_net -net net_slot_4_axis_tready [get_bd_pins g_inst/m_slot_4_axis_tready] [get_bd_pins ila_lib/probe44]
  connect_bd_net -net net_slot_4_axis_tstrb [get_bd_pins g_inst/m_slot_4_axis_tstrb] [get_bd_pins ila_lib/probe41]
  connect_bd_net -net net_slot_4_axis_tuser [get_bd_pins g_inst/m_slot_4_axis_tuser] [get_bd_pins ila_lib/probe42]
  connect_bd_net -net net_slot_4_axis_tvalid [get_bd_pins g_inst/m_slot_4_axis_tvalid] [get_bd_pins ila_lib/probe43]
  connect_bd_net -net net_slot_5_axis_tdata [get_bd_pins g_inst/m_slot_5_axis_tdata] [get_bd_pins ila_lib/probe46]
  connect_bd_net -net net_slot_5_axis_tdest [get_bd_pins g_inst/m_slot_5_axis_tdest] [get_bd_pins ila_lib/probe47]
  connect_bd_net -net net_slot_5_axis_tid [get_bd_pins g_inst/m_slot_5_axis_tid] [get_bd_pins ila_lib/probe48]
  connect_bd_net -net net_slot_5_axis_tkeep [get_bd_pins g_inst/m_slot_5_axis_tkeep] [get_bd_pins ila_lib/probe49]
  connect_bd_net -net net_slot_5_axis_tlast [get_bd_pins g_inst/m_slot_5_axis_tlast] [get_bd_pins ila_lib/probe54]
  connect_bd_net -net net_slot_5_axis_tready [get_bd_pins g_inst/m_slot_5_axis_tready] [get_bd_pins ila_lib/probe53]
  connect_bd_net -net net_slot_5_axis_tstrb [get_bd_pins g_inst/m_slot_5_axis_tstrb] [get_bd_pins ila_lib/probe50]
  connect_bd_net -net net_slot_5_axis_tuser [get_bd_pins g_inst/m_slot_5_axis_tuser] [get_bd_pins ila_lib/probe51]
  connect_bd_net -net net_slot_5_axis_tvalid [get_bd_pins g_inst/m_slot_5_axis_tvalid] [get_bd_pins ila_lib/probe52]
  connect_bd_net -net net_slot_6_axis_tdata [get_bd_pins g_inst/m_slot_6_axis_tdata] [get_bd_pins ila_lib/probe55]
  connect_bd_net -net net_slot_6_axis_tdest [get_bd_pins g_inst/m_slot_6_axis_tdest] [get_bd_pins ila_lib/probe56]
  connect_bd_net -net net_slot_6_axis_tid [get_bd_pins g_inst/m_slot_6_axis_tid] [get_bd_pins ila_lib/probe57]
  connect_bd_net -net net_slot_6_axis_tkeep [get_bd_pins g_inst/m_slot_6_axis_tkeep] [get_bd_pins ila_lib/probe58]
  connect_bd_net -net net_slot_6_axis_tlast [get_bd_pins g_inst/m_slot_6_axis_tlast] [get_bd_pins ila_lib/probe63]
  connect_bd_net -net net_slot_6_axis_tready [get_bd_pins g_inst/m_slot_6_axis_tready] [get_bd_pins ila_lib/probe62]
  connect_bd_net -net net_slot_6_axis_tstrb [get_bd_pins g_inst/m_slot_6_axis_tstrb] [get_bd_pins ila_lib/probe59]
  connect_bd_net -net net_slot_6_axis_tuser [get_bd_pins g_inst/m_slot_6_axis_tuser] [get_bd_pins ila_lib/probe60]
  connect_bd_net -net net_slot_6_axis_tvalid [get_bd_pins g_inst/m_slot_6_axis_tvalid] [get_bd_pins ila_lib/probe61]
  connect_bd_net -net net_slot_7_axis_tdata [get_bd_pins g_inst/m_slot_7_axis_tdata] [get_bd_pins ila_lib/probe64]
  connect_bd_net -net net_slot_7_axis_tkeep [get_bd_pins g_inst/m_slot_7_axis_tkeep] [get_bd_pins ila_lib/probe65]
  connect_bd_net -net net_slot_7_axis_tlast [get_bd_pins g_inst/m_slot_7_axis_tlast] [get_bd_pins ila_lib/probe69]
  connect_bd_net -net net_slot_7_axis_tready [get_bd_pins g_inst/m_slot_7_axis_tready] [get_bd_pins ila_lib/probe68]
  connect_bd_net -net net_slot_7_axis_tuser [get_bd_pins g_inst/m_slot_7_axis_tuser] [get_bd_pins ila_lib/probe66]
  connect_bd_net -net net_slot_7_axis_tvalid [get_bd_pins g_inst/m_slot_7_axis_tvalid] [get_bd_pins ila_lib/probe67]
  connect_bd_net -net net_slot_8_axis_tdata [get_bd_pins g_inst/m_slot_8_axis_tdata] [get_bd_pins ila_lib/probe70]
  connect_bd_net -net net_slot_8_axis_tdest [get_bd_pins g_inst/m_slot_8_axis_tdest] [get_bd_pins ila_lib/probe71]
  connect_bd_net -net net_slot_8_axis_tid [get_bd_pins g_inst/m_slot_8_axis_tid] [get_bd_pins ila_lib/probe72]
  connect_bd_net -net net_slot_8_axis_tkeep [get_bd_pins g_inst/m_slot_8_axis_tkeep] [get_bd_pins ila_lib/probe73]
  connect_bd_net -net net_slot_8_axis_tlast [get_bd_pins g_inst/m_slot_8_axis_tlast] [get_bd_pins ila_lib/probe78]
  connect_bd_net -net net_slot_8_axis_tready [get_bd_pins g_inst/m_slot_8_axis_tready] [get_bd_pins ila_lib/probe77]
  connect_bd_net -net net_slot_8_axis_tstrb [get_bd_pins g_inst/m_slot_8_axis_tstrb] [get_bd_pins ila_lib/probe74]
  connect_bd_net -net net_slot_8_axis_tuser [get_bd_pins g_inst/m_slot_8_axis_tuser] [get_bd_pins ila_lib/probe75]
  connect_bd_net -net net_slot_8_axis_tvalid [get_bd_pins g_inst/m_slot_8_axis_tvalid] [get_bd_pins ila_lib/probe76]
  connect_bd_net -net probe0_1 [get_bd_ports probe0] [get_bd_pins ila_lib/probe0]
  connect_bd_net -net resetn_1 [get_bd_ports resetn] [get_bd_pins g_inst/aresetn]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


