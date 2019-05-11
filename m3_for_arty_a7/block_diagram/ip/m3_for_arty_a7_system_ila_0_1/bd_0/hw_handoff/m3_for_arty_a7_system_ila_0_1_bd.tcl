
################################################################
# This is a generated script based on design: bd_c8ed
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
# source bd_c8ed_script.tcl

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
set design_name bd_c8ed

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

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {SLOT_0_AXIS:SLOT_1_AXIS} \
   CONFIG.ASSOCIATED_RESET {resetn} \
 ] $clk
  set resetn [ create_bd_port -dir I -type rst resetn ]

  # Create instance: g_inst, and set properties
  set g_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:gigantic_mux:1.0 g_inst ]
  set_property -dict [ list \
   CONFIG.C_EN_GIGAMUX {false} \
   CONFIG.C_NUM_MONITOR_SLOTS {2} \
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
   CONFIG.C_SLOT_1_AXIS_TDATA_WIDTH {24} \
   CONFIG.C_SLOT_1_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_1_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_1_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_1_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_1_HAS_TKEEP {1} \
   CONFIG.C_SLOT_1_HAS_TREADY {1} \
   CONFIG.C_SLOT_1_HAS_TSTRB {0} \
   CONFIG.C_SLOT_1_MON_MODE {FT} \
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
   CONFIG.C_NUM_OF_PROBES {15} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE0_WIDTH {32} \
   CONFIG.C_PROBE10_TYPE {0} \
   CONFIG.C_PROBE10_WIDTH {3} \
   CONFIG.C_PROBE11_TYPE {0} \
   CONFIG.C_PROBE11_WIDTH {1} \
   CONFIG.C_PROBE12_TYPE {0} \
   CONFIG.C_PROBE12_WIDTH {1} \
   CONFIG.C_PROBE13_TYPE {0} \
   CONFIG.C_PROBE13_WIDTH {1} \
   CONFIG.C_PROBE14_TYPE {0} \
   CONFIG.C_PROBE14_WIDTH {1} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE1_WIDTH {1} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE2_WIDTH {1} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE3_WIDTH {4} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE4_WIDTH {4} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE5_WIDTH {1} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE6_WIDTH {1} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE7_WIDTH {1} \
   CONFIG.C_PROBE8_TYPE {0} \
   CONFIG.C_PROBE8_WIDTH {1} \
   CONFIG.C_PROBE9_TYPE {0} \
   CONFIG.C_PROBE9_WIDTH {24} \
   CONFIG.C_TIME_TAG_WIDTH {32} \
   CONFIG.C_TRIGIN_EN {false} \
   CONFIG.C_TRIGOUT_EN {false} \
   CONFIG.C_XLNX_HW_PROBE_INFO {DEFAULT} \
 ] $ila_lib

  # Create interface connections
connect_bd_intf_net -intf_net Conn [get_bd_intf_ports SLOT_0_AXIS] [get_bd_intf_pins g_inst/slot_0_axis]
connect_bd_intf_net -intf_net Conn1 [get_bd_intf_ports SLOT_1_AXIS] [get_bd_intf_pins g_inst/slot_1_axis]

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins g_inst/aclk] [get_bd_pins ila_lib/clk]
  connect_bd_net -net net_slot_0_axis_tdata [get_bd_pins g_inst/m_slot_0_axis_tdata] [get_bd_pins ila_lib/probe0]
  connect_bd_net -net net_slot_0_axis_tdest [get_bd_pins g_inst/m_slot_0_axis_tdest] [get_bd_pins ila_lib/probe1]
  connect_bd_net -net net_slot_0_axis_tid [get_bd_pins g_inst/m_slot_0_axis_tid] [get_bd_pins ila_lib/probe2]
  connect_bd_net -net net_slot_0_axis_tkeep [get_bd_pins g_inst/m_slot_0_axis_tkeep] [get_bd_pins ila_lib/probe3]
  connect_bd_net -net net_slot_0_axis_tlast [get_bd_pins g_inst/m_slot_0_axis_tlast] [get_bd_pins ila_lib/probe8]
  connect_bd_net -net net_slot_0_axis_tready [get_bd_pins g_inst/m_slot_0_axis_tready] [get_bd_pins ila_lib/probe7]
  connect_bd_net -net net_slot_0_axis_tstrb [get_bd_pins g_inst/m_slot_0_axis_tstrb] [get_bd_pins ila_lib/probe4]
  connect_bd_net -net net_slot_0_axis_tuser [get_bd_pins g_inst/m_slot_0_axis_tuser] [get_bd_pins ila_lib/probe5]
  connect_bd_net -net net_slot_0_axis_tvalid [get_bd_pins g_inst/m_slot_0_axis_tvalid] [get_bd_pins ila_lib/probe6]
  connect_bd_net -net net_slot_1_axis_tdata [get_bd_pins g_inst/m_slot_1_axis_tdata] [get_bd_pins ila_lib/probe9]
  connect_bd_net -net net_slot_1_axis_tkeep [get_bd_pins g_inst/m_slot_1_axis_tkeep] [get_bd_pins ila_lib/probe10]
  connect_bd_net -net net_slot_1_axis_tlast [get_bd_pins g_inst/m_slot_1_axis_tlast] [get_bd_pins ila_lib/probe14]
  connect_bd_net -net net_slot_1_axis_tready [get_bd_pins g_inst/m_slot_1_axis_tready] [get_bd_pins ila_lib/probe13]
  connect_bd_net -net net_slot_1_axis_tuser [get_bd_pins g_inst/m_slot_1_axis_tuser] [get_bd_pins ila_lib/probe11]
  connect_bd_net -net net_slot_1_axis_tvalid [get_bd_pins g_inst/m_slot_1_axis_tvalid] [get_bd_pins ila_lib/probe12]
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


