
################################################################
# This is a generated script based on design: m3_for_arty_a7
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
# source m3_for_arty_a7_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# tri_io_buf, bound_fsm, combine, gpio_allocate, hold, judge, resize_ctrl, sort

# Please add the sources of those modules before sourcing this Tcl script.

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
set design_name m3_for_arty_a7

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./block_diagram

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
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 "cpu clk 50M
qspi clk 50M" [get_bd_designs $design_name]
##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: display
proc create_hier_cell_display { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_display() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS

  # Create pins
  create_bd_pin -dir I -type clk axis_clk
  create_bd_pin -dir I -type rst axis_resetn
  create_bd_pin -dir I -type clk clk_25M
  create_bd_pin -dir I -type rst reset_25M
  create_bd_pin -dir I -type rst resetn_25M
  create_bd_pin -dir O -from 3 -to 0 vga_pBlue_0
  create_bd_pin -dir O -from 3 -to 0 vga_pGreen_0
  create_bd_pin -dir O vga_pHSync_0
  create_bd_pin -dir O -from 3 -to 0 vga_pRed_0
  create_bd_pin -dir O vga_pVSync_0

  # Create instance: RGB2RBG, and set properties
  set RGB2RBG [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 RGB2RBG ]
  set_property -dict [ list \
   CONFIG.TDATA_REMAP {tdata[23:16],tdata[7:0],tdata[15:8]} \
 ] $RGB2RBG

  # Create instance: rgb2vga_0, and set properties
  set rgb2vga_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2vga:1.0 rgb2vga_0 ]
  set_property -dict [ list \
   CONFIG.kBlueDepth {4} \
   CONFIG.kGreenDepth {4} \
   CONFIG.kRedDepth {4} \
 ] $rgb2vga_0

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {11} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_VTG_MASTER_SLAVE {0} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {640} \
   CONFIG.GEN_F0_VBLANK_HSTART {640} \
   CONFIG.GEN_F0_VFRAME_SIZE {525} \
   CONFIG.GEN_F0_VSYNC_HEND {640} \
   CONFIG.GEN_F0_VSYNC_HSTART {640} \
   CONFIG.GEN_F0_VSYNC_VEND {491} \
   CONFIG.GEN_F0_VSYNC_VSTART {489} \
   CONFIG.GEN_F1_VBLANK_HEND {640} \
   CONFIG.GEN_F1_VBLANK_HSTART {640} \
   CONFIG.GEN_F1_VFRAME_SIZE {525} \
   CONFIG.GEN_F1_VSYNC_HEND {640} \
   CONFIG.GEN_F1_VSYNC_HSTART {640} \
   CONFIG.GEN_F1_VSYNC_VEND {491} \
   CONFIG.GEN_F1_VSYNC_VSTART {489} \
   CONFIG.GEN_HACTIVE_SIZE {640} \
   CONFIG.GEN_HFRAME_SIZE {800} \
   CONFIG.GEN_HSYNC_END {752} \
   CONFIG.GEN_HSYNC_START {656} \
   CONFIG.GEN_VACTIVE_SIZE {480} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.VIDEO_MODE {640x480p} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins RGB2RBG/S_AXIS]
  connect_bd_intf_net -intf_net RGB2RBG_M_AXIS [get_bd_intf_pins RGB2RBG/M_AXIS] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins rgb2vga_0/vid_in] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net aresetn_1 [get_bd_pins axis_resetn] [get_bd_pins RGB2RBG/aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn]
  connect_bd_net -net clk_25M [get_bd_pins clk_25M] [get_bd_pins rgb2vga_0/PixelClk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net resetn_1 [get_bd_pins resetn_25M] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net rgb2vga_0_vga_pBlue [get_bd_pins vga_pBlue_0] [get_bd_pins rgb2vga_0/vga_pBlue]
  connect_bd_net -net rgb2vga_0_vga_pGreen [get_bd_pins vga_pGreen_0] [get_bd_pins rgb2vga_0/vga_pGreen]
  connect_bd_net -net rgb2vga_0_vga_pHSync [get_bd_pins vga_pHSync_0] [get_bd_pins rgb2vga_0/vga_pHSync]
  connect_bd_net -net rgb2vga_0_vga_pRed [get_bd_pins vga_pRed_0] [get_bd_pins rgb2vga_0/vga_pRed]
  connect_bd_net -net rgb2vga_0_vga_pVSync [get_bd_pins vga_pVSync_0] [get_bd_pins rgb2vga_0/vga_pVSync]
  connect_bd_net -net ui_addn_clk_0_1 [get_bd_pins axis_clk] [get_bd_pins RGB2RBG/aclk] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net vid_io_out_reset_1 [get_bd_pins reset_25M] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: cmos2axis
proc create_hier_cell_cmos2axis { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_cmos2axis() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 cmos_iic
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_pwdn
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_rst
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 video_out

  # Create pins
  create_bd_pin -dir I -type ce aclken
  create_bd_pin -dir I -type clk axi_clk
  create_bd_pin -dir I -type rst axi_resetn
  create_bd_pin -dir I -type clk axis_clk
  create_bd_pin -dir I -type rst axis_resetn
  create_bd_pin -dir I -type clk clk_24M
  create_bd_pin -dir I -from 7 -to 0 cmos_data
  create_bd_pin -dir I cmos_href
  create_bd_pin -dir I -type clk cmos_pclk
  create_bd_pin -dir I cmos_vsync
  create_bd_pin -dir O cmos_xclk_o_0
  create_bd_pin -dir O -type intr iic2intc_irpt
  create_bd_pin -dir I -type rst reset_25M

  # Create instance: OV_Sensor_0, and set properties
  set OV_Sensor_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:video:OV_Sensor:1.0 OV_Sensor_0 ]
  set_property -dict [ list \
   CONFIG.RBG_CHANGE {false} \
 ] $OV_Sensor_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_DOUT_DEFAULT_2 {0xFFFFFFFF} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {Custom} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_1

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins video_out] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins cmos_iic] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins cmos_pwdn] [get_bd_intf_pins axi_gpio_1/GPIO]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins cmos_rst] [get_bd_intf_pins axi_gpio_1/GPIO2]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_iic_0/S_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axi_gpio_1/S_AXI]
  connect_bd_intf_net -intf_net OV_Sensor_0_video_o [get_bd_intf_pins OV_Sensor_0/video_o] [get_bd_intf_pins v_vid_in_axi4s_0/vid_io_in]

  # Create port connections
  connect_bd_net -net CLK_i_1 [get_bd_pins clk_24M] [get_bd_pins OV_Sensor_0/CLK_i]
  connect_bd_net -net OV_Sensor_0_cmos_xclk_o [get_bd_pins cmos_xclk_o_0] [get_bd_pins OV_Sensor_0/cmos_xclk_o]
  connect_bd_net -net OV_Sensor_0_vid_clk_ce [get_bd_pins OV_Sensor_0/vid_clk_ce] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce]
  connect_bd_net -net aclken_1 [get_bd_pins aclken] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/axis_enable]
  connect_bd_net -net aresetn_1 [get_bd_pins axis_resetn] [get_bd_pins v_vid_in_axi4s_0/aresetn]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins iic2intc_irpt] [get_bd_pins axi_iic_0/iic2intc_irpt]
  connect_bd_net -net axi_resetn_1 [get_bd_pins axi_resetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn]
  connect_bd_net -net cmos_data_1 [get_bd_pins cmos_data] [get_bd_pins OV_Sensor_0/cmos_data_i]
  connect_bd_net -net cmos_href_1 [get_bd_pins cmos_href] [get_bd_pins OV_Sensor_0/cmos_href_i]
  connect_bd_net -net cmos_pclk_1 [get_bd_pins cmos_pclk] [get_bd_pins OV_Sensor_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_1 [get_bd_pins cmos_vsync] [get_bd_pins OV_Sensor_0/cmos_vsync_i]
  connect_bd_net -net s_axi_lite_aclk_1 [get_bd_pins axi_clk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk]
  connect_bd_net -net ui_addn_clk_0_1 [get_bd_pins axis_clk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net vid_io_in_reset_1 [get_bd_pins reset_25M] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clk_and_reset
proc create_hier_cell_clk_and_reset { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_clk_and_reset() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -type clk clk_200M
  create_bd_pin -dir O -type clk clk_24M
  create_bd_pin -dir O -type clk clk_25M
  create_bd_pin -dir I -type clk ddr_clk_100M
  create_bd_pin -dir I -type clk ddr_clk_81M
  create_bd_pin -dir I ddr_locked
  create_bd_pin -dir I -type rst ddr_reset
  create_bd_pin -dir O -type ce locked
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn_100M
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn_25M
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn_81M
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset_25M
  create_bd_pin -dir I -type clk sys_clock
  create_bd_pin -dir I -type rst sys_reset

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {200.470} \
   CONFIG.CLKOUT1_PHASE_ERROR {132.063} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT2_JITTER {202.114} \
   CONFIG.CLKOUT2_PHASE_ERROR {132.063} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {24.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {151.366} \
   CONFIG.CLKOUT3_PHASE_ERROR {132.063} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
   CONFIG.CLK_OUT1_PORT {clk_25M} \
   CONFIG.CLK_OUT2_PORT {clk_24M} \
   CONFIG.CLK_OUT3_PORT {clk_100M} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {6.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {24.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {25} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {114.829} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLK_OUT1_PORT {clk_200M} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {5.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz_1

  # Create instance: proc_sys_reset_100M, and set properties
  set proc_sys_reset_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $proc_sys_reset_100M

  # Create instance: proc_sys_reset_25M, and set properties
  set proc_sys_reset_25M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_25M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_25M

  # Create instance: rst_mig_7series_0_81M, and set properties
  set rst_mig_7series_0_81M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_81M ]

  # Create port connections
  connect_bd_net -net clk_wiz_1_clk_200M [get_bd_pins clk_200M] [get_bd_pins clk_wiz_1/clk_200M]
  connect_bd_net -net clk_wiz_clk_24M [get_bd_pins clk_24M] [get_bd_pins clk_wiz/clk_24M]
  connect_bd_net -net clk_wiz_clk_25M [get_bd_pins clk_25M] [get_bd_pins clk_wiz/clk_25M] [get_bd_pins proc_sys_reset_25M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_locked [get_bd_pins locked] [get_bd_pins clk_wiz/locked] [get_bd_pins proc_sys_reset_100M/dcm_locked] [get_bd_pins proc_sys_reset_25M/dcm_locked]
  connect_bd_net -net dcm_locked_1 [get_bd_pins ddr_locked] [get_bd_pins rst_mig_7series_0_81M/dcm_locked]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ddr_reset] [get_bd_pins rst_mig_7series_0_81M/ext_reset_in]
  connect_bd_net -net proc_sys_reset_100M_peripheral_aresetn [get_bd_pins peripheral_aresetn_100M] [get_bd_pins proc_sys_reset_100M/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_25M_peripheral_aresetn [get_bd_pins peripheral_aresetn_25M] [get_bd_pins proc_sys_reset_25M/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_25M_peripheral_reset [get_bd_pins peripheral_reset_25M] [get_bd_pins proc_sys_reset_25M/peripheral_reset]
  connect_bd_net -net reset_1 [get_bd_pins sys_reset] [get_bd_pins clk_wiz/resetn] [get_bd_pins clk_wiz_1/resetn] [get_bd_pins proc_sys_reset_100M/ext_reset_in] [get_bd_pins proc_sys_reset_25M/ext_reset_in]
  connect_bd_net -net rst_mig_7series_0_81M_peripheral_aresetn [get_bd_pins peripheral_aresetn_81M] [get_bd_pins rst_mig_7series_0_81M/peripheral_aresetn]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins ddr_clk_81M] [get_bd_pins rst_mig_7series_0_81M/slowest_sync_clk]
  connect_bd_net -net sys_clock_1 [get_bd_pins sys_clock] [get_bd_pins clk_wiz/clk_in1] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net ui_addn_clk_0_1 [get_bd_pins ddr_clk_100M] [get_bd_pins proc_sys_reset_100M/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Image_Process
proc create_hier_cell_Image_Process { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Image_Process() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS

  # Create pins
  create_bd_pin -dir I -type clk axi_clk
  create_bd_pin -dir I -type rst axi_resetn
  create_bd_pin -dir I -type clk axis_clk
  create_bd_pin -dir I -type rst axis_resetn
  create_bd_pin -dir O char_valid_co
  create_bd_pin -dir I -type clk clk

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {28} \
   CONFIG.C_GPIO_WIDTH {20} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {8} \
 ] $axi_interconnect_0

  # Create instance: axis_broadcaster_0, and set properties
  set axis_broadcaster_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_broadcaster:1.1 axis_broadcaster_0 ]

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {3} \
   CONFIG.TDATA_REMAP {tdata[7:0],tdata[7:0],tdata[7:0]} \
   CONFIG.TKEEP_REMAP {2'b11,tkeep[0:0]} \
   CONFIG.TSTRB_REMAP {2'b11,tstrb[0:0]} \
 ] $axis_subset_converter_0

  # Create instance: bound_fsm_0, and set properties
  set block_name bound_fsm
  set block_cell_name bound_fsm_0
  if { [catch {set bound_fsm_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bound_fsm_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bound_x_max, and set properties
  set bound_x_max [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 bound_x_max ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {8} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $bound_x_max

  # Create instance: bound_x_max1, and set properties
  set bound_x_max1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 bound_x_max1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {8} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $bound_x_max1

  # Create instance: bound_x_min, and set properties
  set bound_x_min [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 bound_x_min ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {8} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $bound_x_min

  # Create instance: bound_x_min1, and set properties
  set bound_x_min1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 bound_x_min1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {8} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $bound_x_min1

  # Create instance: combine_0, and set properties
  set block_name combine
  set block_cell_name combine_0
  if { [catch {set combine_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $combine_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: contrast_hls_rom_0, and set properties
  set contrast_hls_rom_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:contrast_hls_rom:1.3 contrast_hls_rom_0 ]

  # Create instance: draw_line_hls_0, and set properties
  set draw_line_hls_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:draw_line_hls:1.1 draw_line_hls_0 ]

  # Create instance: gpio_allocate_0, and set properties
  set block_name gpio_allocate
  set block_cell_name gpio_allocate_0
  if { [catch {set gpio_allocate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gpio_allocate_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hold_0, and set properties
  set block_name hold
  set block_cell_name hold_0
  if { [catch {set hold_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hold_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: judge_0, and set properties
  set block_name judge
  set block_cell_name judge_0
  if { [catch {set judge_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $judge_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mask_0, and set properties
  set mask_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:mask:2.2 mask_0 ]

  # Create instance: projection1_hls_0, and set properties
  set projection1_hls_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:projection1_hls:4.3 projection1_hls_0 ]

  # Create instance: projection_mul_hls_0, and set properties
  set projection_mul_hls_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:projection_mul_hls:1.0 projection_mul_hls_0 ]

  # Create instance: resize_ctrl_0, and set properties
  set block_name resize_ctrl
  set block_cell_name resize_ctrl_0
  if { [catch {set resize_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $resize_ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: resize_hls_axis_0, and set properties
  set resize_hls_axis_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:resize_hls_axis:1.0 resize_hls_axis_0 ]

  # Create instance: sort_0, and set properties
  set block_name sort
  set block_cell_name sort_0
  if { [catch {set sort_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sort_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {8} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE7_TYPE {0} \
 ] $system_ila_0

  # Create instance: threshold2_0, and set properties
  set threshold2_0 [ create_bd_cell -type ip -vlnv starrynightzyq.com:hls:threshold2:1.5 threshold2_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins threshold2_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins mask_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins projection1_hls_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins projection_mul_hls_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins draw_line_hls_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_interconnect_0/M05_AXI] [get_bd_intf_pins resize_hls_axis_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_pins contrast_hls_rom_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net axis_broadcaster_0_M00_AXIS [get_bd_intf_pins axis_broadcaster_0/M00_AXIS] [get_bd_intf_pins draw_line_hls_0/input_r]
  connect_bd_intf_net -intf_net axis_broadcaster_0_M01_AXIS [get_bd_intf_pins axis_broadcaster_0/M01_AXIS] [get_bd_intf_pins resize_hls_axis_0/input_r]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins axis_subset_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net draw_line_hls_0_output_r [get_bd_intf_pins axis_subset_converter_0/S_AXIS] [get_bd_intf_pins draw_line_hls_0/output_r]
  connect_bd_intf_net -intf_net input_r_1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins threshold2_0/input_r]
  connect_bd_intf_net -intf_net mask_0_output_r [get_bd_intf_pins mask_0/output_r] [get_bd_intf_pins projection_mul_hls_0/input_r]
  connect_bd_intf_net -intf_net projection1_hls_0_output_r [get_bd_intf_pins mask_0/input_r] [get_bd_intf_pins projection1_hls_0/output_r]
  connect_bd_intf_net -intf_net projection_mul_hls_0_output_r [get_bd_intf_pins axis_broadcaster_0/S_AXIS] [get_bd_intf_pins projection_mul_hls_0/output_r]
  connect_bd_intf_net -intf_net threshold2_0_output_r [get_bd_intf_pins projection1_hls_0/input_r] [get_bd_intf_pins threshold2_0/output_r]

  # Create port connections
  connect_bd_net -net ACLK_1 [get_bd_pins axi_clk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK]
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_resetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins axi_gpio_0/gpio2_io_o] [get_bd_pins gpio_allocate_0/gpio_input]
  connect_bd_net -net axi_resetn_1 [get_bd_pins axis_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axis_broadcaster_0/aresetn] [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins bound_fsm_0/rst_n] [get_bd_pins combine_0/rst_n] [get_bd_pins contrast_hls_rom_0/ap_rst_n] [get_bd_pins draw_line_hls_0/ap_rst_n] [get_bd_pins hold_0/rst_n] [get_bd_pins judge_0/rst_n] [get_bd_pins mask_0/ap_rst_n] [get_bd_pins projection1_hls_0/ap_rst_n] [get_bd_pins projection_mul_hls_0/ap_rst_n] [get_bd_pins resize_ctrl_0/rst_n] [get_bd_pins resize_hls_axis_0/ap_rst_n] [get_bd_pins sort_0/rst_n] [get_bd_pins threshold2_0/ap_rst_n]
  connect_bd_net -net bound_fsm_0_bound_x_max_o [get_bd_pins bound_fsm_0/bound_x_max_o] [get_bd_pins mask_0/bound_x_max]
  connect_bd_net -net bound_fsm_0_bound_x_min_o [get_bd_pins bound_fsm_0/bound_x_min_o] [get_bd_pins mask_0/bound_x_min]
  connect_bd_net -net bound_fsm_0_bound_y_max_o [get_bd_pins bound_fsm_0/bound_y_max_o] [get_bd_pins draw_line_hls_0/bound_y_max] [get_bd_pins mask_0/bound_y_max] [get_bd_pins resize_ctrl_0/bound_y_max_i]
  connect_bd_net -net bound_fsm_0_bound_y_min_o [get_bd_pins bound_fsm_0/bound_y_min_o] [get_bd_pins draw_line_hls_0/bound_y_min] [get_bd_pins mask_0/bound_y_min] [get_bd_pins resize_ctrl_0/bound_y_min_i]
  connect_bd_net -net bound_x_max1_doutb [get_bd_pins bound_x_max1/doutb] [get_bd_pins resize_ctrl_0/bound_x_max_i]
  connect_bd_net -net bound_x_max_doutb [get_bd_pins bound_x_max/doutb] [get_bd_pins draw_line_hls_0/bound_max_q0]
  connect_bd_net -net bound_x_min1_doutb [get_bd_pins bound_x_min1/doutb] [get_bd_pins resize_ctrl_0/bound_x_min_i]
  connect_bd_net -net bound_x_min_doutb [get_bd_pins bound_x_min/doutb] [get_bd_pins draw_line_hls_0/bound_min_q0]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins system_ila_0/clk]
  connect_bd_net -net clk_200M_1 [get_bd_pins axis_clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axis_broadcaster_0/aclk] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins bound_fsm_0/clk] [get_bd_pins bound_x_max/clka] [get_bd_pins bound_x_max/clkb] [get_bd_pins bound_x_max1/clka] [get_bd_pins bound_x_max1/clkb] [get_bd_pins bound_x_min/clka] [get_bd_pins bound_x_min/clkb] [get_bd_pins bound_x_min1/clka] [get_bd_pins bound_x_min1/clkb] [get_bd_pins combine_0/clk] [get_bd_pins contrast_hls_rom_0/ap_clk] [get_bd_pins draw_line_hls_0/ap_clk] [get_bd_pins hold_0/clk] [get_bd_pins judge_0/clk] [get_bd_pins mask_0/ap_clk] [get_bd_pins projection1_hls_0/ap_clk] [get_bd_pins projection_mul_hls_0/ap_clk] [get_bd_pins resize_ctrl_0/clk] [get_bd_pins resize_hls_axis_0/ap_clk] [get_bd_pins sort_0/clk] [get_bd_pins threshold2_0/ap_clk]
  connect_bd_net -net combine_0_char_diff_c [get_bd_pins combine_0/char_diff_c] [get_bd_pins judge_0/char_diff_c] [get_bd_pins system_ila_0/probe1]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets combine_0_char_diff_c]
  connect_bd_net -net combine_0_char_index_c [get_bd_pins combine_0/char_index_c] [get_bd_pins judge_0/char_index_c] [get_bd_pins system_ila_0/probe0]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets combine_0_char_index_c]
  connect_bd_net -net combine_0_char_valid_c [get_bd_pins combine_0/char_valid_c] [get_bd_pins judge_0/char_valid_c] [get_bd_pins system_ila_0/probe2]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets combine_0_char_valid_c]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_0 [get_bd_pins contrast_hls_rom_0/diff_sum_0] [get_bd_pins sort_0/diff_sum_0]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_0_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_0_ap_vld] [get_bd_pins sort_0/diff_sum_0_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_1 [get_bd_pins contrast_hls_rom_0/diff_sum_1] [get_bd_pins sort_0/diff_sum_1]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_10 [get_bd_pins contrast_hls_rom_0/diff_sum_10] [get_bd_pins sort_0/diff_sum_10]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_10_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_10_ap_vld] [get_bd_pins sort_0/diff_sum_10_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_1_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_1_ap_vld] [get_bd_pins sort_0/diff_sum_1_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_2 [get_bd_pins contrast_hls_rom_0/diff_sum_2] [get_bd_pins sort_0/diff_sum_2]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_2_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_2_ap_vld] [get_bd_pins sort_0/diff_sum_2_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_3 [get_bd_pins contrast_hls_rom_0/diff_sum_3] [get_bd_pins sort_0/diff_sum_3]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_3_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_3_ap_vld] [get_bd_pins sort_0/diff_sum_3_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_4 [get_bd_pins contrast_hls_rom_0/diff_sum_4] [get_bd_pins sort_0/diff_sum_4]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_4_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_4_ap_vld] [get_bd_pins sort_0/diff_sum_4_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_5 [get_bd_pins contrast_hls_rom_0/diff_sum_5] [get_bd_pins sort_0/diff_sum_5]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_5_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_5_ap_vld] [get_bd_pins sort_0/diff_sum_5_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_6 [get_bd_pins contrast_hls_rom_0/diff_sum_6] [get_bd_pins sort_0/diff_sum_6]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_6_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_6_ap_vld] [get_bd_pins sort_0/diff_sum_6_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_7 [get_bd_pins contrast_hls_rom_0/diff_sum_7] [get_bd_pins sort_0/diff_sum_7]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_7_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_7_ap_vld] [get_bd_pins sort_0/diff_sum_7_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_8 [get_bd_pins contrast_hls_rom_0/diff_sum_8] [get_bd_pins sort_0/diff_sum_8]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_8_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_8_ap_vld] [get_bd_pins sort_0/diff_sum_8_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_9 [get_bd_pins contrast_hls_rom_0/diff_sum_9] [get_bd_pins sort_0/diff_sum_9]
  connect_bd_net -net contrast_hls_rom_0_diff_sum_9_ap_vld [get_bd_pins contrast_hls_rom_0/diff_sum_9_ap_vld] [get_bd_pins sort_0/diff_sum_9_ap_vld]
  connect_bd_net -net contrast_hls_rom_0_input_r_TREADY [get_bd_pins contrast_hls_rom_0/input_r_TREADY] [get_bd_pins resize_hls_axis_0/output_r_TREADY]
  connect_bd_net -net draw_line_hls_0_bound_max_address0 [get_bd_pins bound_x_max/addrb] [get_bd_pins draw_line_hls_0/bound_max_address0]
  connect_bd_net -net draw_line_hls_0_bound_max_ce0 [get_bd_pins bound_x_max/enb] [get_bd_pins draw_line_hls_0/bound_max_ce0]
  connect_bd_net -net draw_line_hls_0_bound_min_address0 [get_bd_pins bound_x_min/addrb] [get_bd_pins draw_line_hls_0/bound_min_address0]
  connect_bd_net -net draw_line_hls_0_bound_min_ce0 [get_bd_pins bound_x_min/enb] [get_bd_pins draw_line_hls_0/bound_min_ce0]
  connect_bd_net -net gpio_allocate_0_max_diff [get_bd_pins gpio_allocate_0/max_diff] [get_bd_pins judge_0/max_diff] [get_bd_pins system_ila_0/probe5]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets gpio_allocate_0_max_diff]
  connect_bd_net -net gpio_allocate_0_min_continue [get_bd_pins gpio_allocate_0/min_continue] [get_bd_pins judge_0/min_continue] [get_bd_pins system_ila_0/probe6]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets gpio_allocate_0_min_continue]
  connect_bd_net -net gpio_allocate_0_min_counter [get_bd_pins gpio_allocate_0/min_counter] [get_bd_pins judge_0/min_counter] [get_bd_pins system_ila_0/probe7]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets gpio_allocate_0_min_counter]
  connect_bd_net -net hold_0_trick_o [get_bd_pins char_valid_co] [get_bd_pins hold_0/trick_o] [get_bd_pins system_ila_0/probe3]
  connect_bd_net -net judge_0_char_index_co [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins judge_0/char_index_co] [get_bd_pins system_ila_0/probe4]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets judge_0_char_index_co]
  connect_bd_net -net judge_0_char_valid_co [get_bd_pins hold_0/trick_i] [get_bd_pins judge_0/char_valid_co]
  connect_bd_net -net projection1_hls_0_bound_x_max [get_bd_pins bound_fsm_0/bound_x_max_i] [get_bd_pins projection1_hls_0/bound_x_max]
  connect_bd_net -net projection1_hls_0_bound_x_max_ap_vld [get_bd_pins bound_fsm_0/bound_x_max_ap_vld_i] [get_bd_pins projection1_hls_0/bound_x_max_ap_vld]
  connect_bd_net -net projection1_hls_0_bound_x_min [get_bd_pins bound_fsm_0/bound_x_min_i] [get_bd_pins projection1_hls_0/bound_x_min]
  connect_bd_net -net projection1_hls_0_bound_x_min_ap_vld [get_bd_pins bound_fsm_0/bound_x_min_ap_vld_i] [get_bd_pins projection1_hls_0/bound_x_min_ap_vld]
  connect_bd_net -net projection1_hls_0_bound_y_max [get_bd_pins bound_fsm_0/bound_y_max_i] [get_bd_pins projection1_hls_0/bound_y_max]
  connect_bd_net -net projection1_hls_0_bound_y_max_ap_vld [get_bd_pins bound_fsm_0/bound_y_max_ap_vld_i] [get_bd_pins projection1_hls_0/bound_y_max_ap_vld]
  connect_bd_net -net projection1_hls_0_bound_y_min [get_bd_pins bound_fsm_0/bound_y_min_i] [get_bd_pins projection1_hls_0/bound_y_min]
  connect_bd_net -net projection1_hls_0_bound_y_min_ap_vld [get_bd_pins bound_fsm_0/bound_y_min_ap_vld_i] [get_bd_pins projection1_hls_0/bound_y_min_ap_vld]
  connect_bd_net -net projection_mul_hls_0_bound_max_address0 [get_bd_pins bound_x_max/addra] [get_bd_pins bound_x_max1/addra] [get_bd_pins projection_mul_hls_0/bound_max_address0]
  connect_bd_net -net projection_mul_hls_0_bound_max_ce0 [get_bd_pins bound_x_max/ena] [get_bd_pins bound_x_max1/ena] [get_bd_pins projection_mul_hls_0/bound_max_ce0]
  connect_bd_net -net projection_mul_hls_0_bound_max_d0 [get_bd_pins bound_x_max/dina] [get_bd_pins bound_x_max1/dina] [get_bd_pins projection_mul_hls_0/bound_max_d0]
  connect_bd_net -net projection_mul_hls_0_bound_max_we0 [get_bd_pins bound_x_max/wea] [get_bd_pins bound_x_max1/wea] [get_bd_pins projection_mul_hls_0/bound_max_we0]
  connect_bd_net -net projection_mul_hls_0_bound_min_address0 [get_bd_pins bound_x_min/addra] [get_bd_pins bound_x_min1/addra] [get_bd_pins projection_mul_hls_0/bound_min_address0]
  connect_bd_net -net projection_mul_hls_0_bound_min_ce0 [get_bd_pins bound_x_min/ena] [get_bd_pins bound_x_min1/ena] [get_bd_pins projection_mul_hls_0/bound_min_ce0]
  connect_bd_net -net projection_mul_hls_0_bound_min_d0 [get_bd_pins bound_x_min/dina] [get_bd_pins bound_x_min1/dina] [get_bd_pins projection_mul_hls_0/bound_min_d0]
  connect_bd_net -net projection_mul_hls_0_bound_min_we0 [get_bd_pins bound_x_min/wea] [get_bd_pins bound_x_min1/wea] [get_bd_pins projection_mul_hls_0/bound_min_we0]
  connect_bd_net -net resize_ctrl_0_bound_x_max_addr [get_bd_pins bound_x_max1/addrb] [get_bd_pins resize_ctrl_0/bound_x_max_addr]
  connect_bd_net -net resize_ctrl_0_bound_x_max_o [get_bd_pins resize_ctrl_0/bound_x_max_o] [get_bd_pins resize_hls_axis_0/bound_x_max]
  connect_bd_net -net resize_ctrl_0_bound_x_min_addr [get_bd_pins bound_x_min1/addrb] [get_bd_pins combine_0/char_addr] [get_bd_pins resize_ctrl_0/bound_x_min_addr]
  connect_bd_net -net resize_ctrl_0_bound_x_min_o [get_bd_pins resize_ctrl_0/bound_x_min_o] [get_bd_pins resize_hls_axis_0/bound_x_min]
  connect_bd_net -net resize_ctrl_0_bound_y_max_o [get_bd_pins resize_ctrl_0/bound_y_max_o] [get_bd_pins resize_hls_axis_0/bound_y_max]
  connect_bd_net -net resize_ctrl_0_bound_y_min_o [get_bd_pins resize_ctrl_0/bound_y_min_o] [get_bd_pins resize_hls_axis_0/bound_y_min]
  connect_bd_net -net resize_hls_axis_0_output_r_TDATA [get_bd_pins contrast_hls_rom_0/input_r_TDATA] [get_bd_pins resize_hls_axis_0/output_r_TDATA]
  connect_bd_net -net resize_hls_axis_0_output_r_TDEST [get_bd_pins contrast_hls_rom_0/input_r_TDEST] [get_bd_pins resize_hls_axis_0/output_r_TDEST]
  connect_bd_net -net resize_hls_axis_0_output_r_TID [get_bd_pins contrast_hls_rom_0/input_r_TID] [get_bd_pins resize_hls_axis_0/output_r_TID]
  connect_bd_net -net resize_hls_axis_0_output_r_TKEEP [get_bd_pins contrast_hls_rom_0/input_r_TKEEP] [get_bd_pins resize_hls_axis_0/output_r_TKEEP]
  connect_bd_net -net resize_hls_axis_0_output_r_TLAST [get_bd_pins contrast_hls_rom_0/input_r_TLAST] [get_bd_pins resize_hls_axis_0/output_r_TLAST]
  connect_bd_net -net resize_hls_axis_0_output_r_TSTRB [get_bd_pins contrast_hls_rom_0/input_r_TSTRB] [get_bd_pins resize_hls_axis_0/output_r_TSTRB]
  connect_bd_net -net resize_hls_axis_0_output_r_TUSER [get_bd_pins contrast_hls_rom_0/input_r_TUSER] [get_bd_pins resize_ctrl_0/resize_interrupt] [get_bd_pins resize_hls_axis_0/output_r_TUSER]
  connect_bd_net -net resize_hls_axis_0_output_r_TVALID [get_bd_pins contrast_hls_rom_0/input_r_TVALID] [get_bd_pins resize_hls_axis_0/output_r_TVALID]
  connect_bd_net -net sort_0_char_diff [get_bd_pins combine_0/char_diff] [get_bd_pins sort_0/char_diff]
  connect_bd_net -net sort_0_char_index [get_bd_pins combine_0/char_index] [get_bd_pins sort_0/char_index]
  connect_bd_net -net sort_0_interrupt [get_bd_pins combine_0/char_valid] [get_bd_pins sort_0/interrupt]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins draw_line_hls_0/bound_y_max_ap_vld] [get_bd_pins draw_line_hls_0/bound_y_min_ap_vld] [get_bd_pins mask_0/bound_x_max_ap_vld] [get_bd_pins mask_0/bound_x_min_ap_vld] [get_bd_pins mask_0/bound_y_max_ap_vld] [get_bd_pins mask_0/bound_y_min_ap_vld] [get_bd_pins resize_hls_axis_0/bound_x_max_ap_vld] [get_bd_pins resize_hls_axis_0/bound_x_min_ap_vld] [get_bd_pins resize_hls_axis_0/bound_y_max_ap_vld] [get_bd_pins resize_hls_axis_0/bound_y_min_ap_vld] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins projection_mul_hls_0/bound_max_q0] [get_bd_pins projection_mul_hls_0/bound_min_q0] [get_bd_pins resize_ctrl_0/resize_o_addr] [get_bd_pins resize_ctrl_0/resize_o_ce] [get_bd_pins resize_ctrl_0/resize_o_d] [get_bd_pins resize_ctrl_0/resize_o_we] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ov_cmos
proc create_hier_cell_ov_cmos { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ov_cmos() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR2_0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 cmos_iic
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_pwdn
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_rst

  # Create pins
  create_bd_pin -dir I -type rst axi_resetn
  create_bd_pin -dir O char_valid_c_o_0
  create_bd_pin -dir I -from 7 -to 0 cmos_data
  create_bd_pin -dir I cmos_href
  create_bd_pin -dir I cmos_pclk
  create_bd_pin -dir I cmos_vsync
  create_bd_pin -dir O cmos_xclk_o_0
  create_bd_pin -dir O -type intr iic2intc_irpt
  create_bd_pin -dir I -type rst interconnect_aresetn
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir I -type clk s_axi_lite_aclk
  create_bd_pin -dir I -type clk sys_clock
  create_bd_pin -dir O -from 3 -to 0 vga_pBlue_0
  create_bd_pin -dir O -from 3 -to 0 vga_pGreen_0
  create_bd_pin -dir O vga_pHSync_0
  create_bd_pin -dir O -from 3 -to 0 vga_pRed_0
  create_bd_pin -dir O vga_pVSync_0

  # Create instance: Image_Process
  create_hier_cell_Image_Process $hier_obj Image_Process

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_DATA_FIFO {0} \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.M00_SECURE {0} \
   CONFIG.M01_HAS_DATA_FIFO {0} \
   CONFIG.M01_HAS_REGSLICE {3} \
   CONFIG.M01_SECURE {0} \
   CONFIG.M02_HAS_REGSLICE {3} \
   CONFIG.M02_SECURE {0} \
   CONFIG.M03_HAS_REGSLICE {3} \
   CONFIG.M04_HAS_REGSLICE {3} \
   CONFIG.M05_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {7} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {1} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_1

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {1} \
   CONFIG.NUM_SI {3} \
 ] $axi_smc

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
 ] $axi_vdma_0

  # Create instance: axis_switch_0, and set properties
  set axis_switch_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_0 ]
  set_property -dict [ list \
   CONFIG.DECODER_REG {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
   CONFIG.ROUTING_MODE {1} \
 ] $axis_switch_0

  # Create instance: axis_switch_1, and set properties
  set axis_switch_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_1 ]
  set_property -dict [ list \
   CONFIG.ROUTING_MODE {1} \
 ] $axis_switch_1

  # Create instance: clk_and_reset
  create_hier_cell_clk_and_reset $hier_obj clk_and_reset

  # Create instance: cmos2axis
  create_hier_cell_cmos2axis $hier_obj cmos2axis

  # Create instance: display
  create_hier_cell_display $hier_obj display

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.1 mig_7series_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $mig_7series_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins DDR2_0] [get_bd_intf_pins mig_7series_0/DDR2]
  connect_bd_intf_net -intf_net Image_Process_M_AXIS [get_bd_intf_pins Image_Process/M_AXIS] [get_bd_intf_pins axis_switch_1/S01_AXIS]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins Image_Process/S00_AXI] [get_bd_intf_pins axi_interconnect_1/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins axi_vdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_interconnect_1/M01_AXI] [get_bd_intf_pins cmos2axis/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M02_AXI [get_bd_intf_pins axi_interconnect_1/M02_AXI] [get_bd_intf_pins cmos2axis/S_AXI1]
  connect_bd_intf_net -intf_net axi_interconnect_1_M03_AXI [get_bd_intf_pins axi_interconnect_1/M03_AXI] [get_bd_intf_pins axi_smc/S02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M05_AXI [get_bd_intf_pins axi_interconnect_1/M05_AXI] [get_bd_intf_pins axis_switch_0/S_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_interconnect_1_M06_AXI [get_bd_intf_pins axi_interconnect_1/M06_AXI] [get_bd_intf_pins axis_switch_1/S_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins axis_switch_0/S00_AXIS]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axis_switch_0_M00_AXIS [get_bd_intf_pins axis_switch_1/M00_AXIS] [get_bd_intf_pins display/S_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M00_AXIS [get_bd_intf_pins axis_switch_0/M00_AXIS] [get_bd_intf_pins axis_switch_1/S00_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M01_AXIS [get_bd_intf_pins Image_Process/S_AXIS] [get_bd_intf_pins axis_switch_0/M01_AXIS]
  connect_bd_intf_net -intf_net cmos2axis_cmos_iic [get_bd_intf_pins cmos_iic] [get_bd_intf_pins cmos2axis/cmos_iic]
  connect_bd_intf_net -intf_net cmos2axis_cmos_pwdn [get_bd_intf_pins cmos_pwdn] [get_bd_intf_pins cmos2axis/cmos_pwdn]
  connect_bd_intf_net -intf_net cmos2axis_cmos_rst [get_bd_intf_pins cmos_rst] [get_bd_intf_pins cmos2axis/cmos_rst]
  connect_bd_intf_net -intf_net cmos2axis_video_out [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins cmos2axis/video_out]

  # Create port connections
  connect_bd_net -net CLK_i_1 [get_bd_pins clk_and_reset/clk_24M] [get_bd_pins cmos2axis/clk_24M]
  connect_bd_net -net Image_Process_char_valid_c_o_0 [get_bd_pins char_valid_c_o_0] [get_bd_pins Image_Process/char_valid_co]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets Image_Process_char_valid_c_o_0]
  connect_bd_net -net M04_ARESETN_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_interconnect_1/M02_ARESETN] [get_bd_pins axi_interconnect_1/M03_ARESETN] [get_bd_pins axi_interconnect_1/M04_ARESETN] [get_bd_pins axi_interconnect_1/M05_ARESETN] [get_bd_pins axi_interconnect_1/M06_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN]
  connect_bd_net -net aresetn_1 [get_bd_pins axi_smc/aresetn] [get_bd_pins clk_and_reset/peripheral_aresetn_81M] [get_bd_pins mig_7series_0/aresetn]
  connect_bd_net -net axi_resetn_1 [get_bd_pins axi_resetn] [get_bd_pins Image_Process/axi_resetn] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins axis_switch_0/s_axi_ctrl_aresetn] [get_bd_pins axis_switch_1/s_axi_ctrl_aresetn] [get_bd_pins cmos2axis/axi_resetn]
  connect_bd_net -net clk_and_reset_clk_200M [get_bd_pins clk_and_reset/clk_200M] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_and_reset_locked [get_bd_pins clk_and_reset/locked] [get_bd_pins cmos2axis/aclken]
  connect_bd_net -net clk_wiz_clk_100M [get_bd_pins Image_Process/axis_clk] [get_bd_pins Image_Process/clk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins axis_switch_0/aclk] [get_bd_pins axis_switch_1/aclk] [get_bd_pins clk_and_reset/ddr_clk_100M] [get_bd_pins cmos2axis/axis_clk] [get_bd_pins display/axis_clk] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net clk_wiz_clk_25M [get_bd_pins clk_and_reset/clk_25M] [get_bd_pins display/clk_25M]
  connect_bd_net -net cmos2axis_cmos_xclk_o_0 [get_bd_pins cmos_xclk_o_0] [get_bd_pins cmos2axis/cmos_xclk_o_0]
  connect_bd_net -net cmos2axis_iic2intc_irpt [get_bd_pins iic2intc_irpt] [get_bd_pins cmos2axis/iic2intc_irpt]
  connect_bd_net -net cmos_data_1 [get_bd_pins cmos_data] [get_bd_pins cmos2axis/cmos_data]
  connect_bd_net -net cmos_href_1 [get_bd_pins cmos_href] [get_bd_pins cmos2axis/cmos_href]
  connect_bd_net -net cmos_pclk_1 [get_bd_pins cmos_pclk] [get_bd_pins cmos2axis/cmos_pclk]
  connect_bd_net -net cmos_vsync_1 [get_bd_pins cmos_vsync] [get_bd_pins cmos2axis/cmos_vsync]
  connect_bd_net -net display_vga_pBlue_0 [get_bd_pins vga_pBlue_0] [get_bd_pins display/vga_pBlue_0]
  connect_bd_net -net display_vga_pGreen_0 [get_bd_pins vga_pGreen_0] [get_bd_pins display/vga_pGreen_0]
  connect_bd_net -net display_vga_pHSync_0 [get_bd_pins vga_pHSync_0] [get_bd_pins display/vga_pHSync_0]
  connect_bd_net -net display_vga_pRed_0 [get_bd_pins vga_pRed_0] [get_bd_pins display/vga_pRed_0]
  connect_bd_net -net display_vga_pVSync_0 [get_bd_pins vga_pVSync_0] [get_bd_pins display/vga_pVSync_0]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins clk_and_reset/ddr_locked] [get_bd_pins mig_7series_0/mmcm_locked]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_interconnect_1/M03_ACLK] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins clk_and_reset/ddr_clk_81M] [get_bd_pins mig_7series_0/ui_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins clk_and_reset/ddr_reset] [get_bd_pins mig_7series_0/ui_clk_sync_rst]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins clk_and_reset/peripheral_reset_25M] [get_bd_pins cmos2axis/reset_25M] [get_bd_pins display/reset_25M]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins Image_Process/axis_resetn] [get_bd_pins axis_switch_0/aresetn] [get_bd_pins axis_switch_1/aresetn] [get_bd_pins clk_and_reset/peripheral_aresetn_100M] [get_bd_pins cmos2axis/axis_resetn] [get_bd_pins display/axis_resetn]
  connect_bd_net -net reset_0_1 [get_bd_pins reset] [get_bd_pins clk_and_reset/sys_reset] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net resetn_1 [get_bd_pins clk_and_reset/peripheral_aresetn_25M] [get_bd_pins display/resetn_25M]
  connect_bd_net -net s_axi_lite_aclk_1 [get_bd_pins s_axi_lite_aclk] [get_bd_pins Image_Process/axi_clk] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_interconnect_1/M02_ACLK] [get_bd_pins axi_interconnect_1/M04_ACLK] [get_bd_pins axi_interconnect_1/M05_ACLK] [get_bd_pins axi_interconnect_1/M06_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axis_switch_0/s_axi_ctrl_aclk] [get_bd_pins axis_switch_1/s_axi_ctrl_aclk] [get_bd_pins cmos2axis/axi_clk]
  connect_bd_net -net sys_clock_1 [get_bd_pins sys_clock] [get_bd_pins clk_and_reset/sys_clock]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: LCD
proc create_hier_cell_LCD { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_LCD() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_FULL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 spi_rtl

  # Create pins
  create_bd_pin -dir O -from 2 -to 0 GPIO_lcd
  create_bd_pin -dir I -type clk ext_spi_clk
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {3} \
 ] $axi_gpio_1

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_SS_BITS {2} \
   CONFIG.C_SCK_RATIO {16} \
   CONFIG.C_SHARED_STARTUP {0} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {1} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
   CONFIG.C_XIP_MODE {0} \
   CONFIG.Master_mode {1} \
   CONFIG.QSPI_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_gpio_1/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins AXI_FULL] [get_bd_intf_pins axi_quad_spi_0/AXI_FULL]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins spi_rtl] [get_bd_intf_pins axi_quad_spi_0/SPI_0]

  # Create port connections
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins GPIO_lcd] [get_bd_pins axi_gpio_1/gpio_io_o]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net ext_spi_clk_1 [get_bd_pins ext_spi_clk] [get_bd_pins axi_quad_spi_0/ext_spi_clk]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_quad_spi_0/s_axi4_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi4_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Clocks_and_Resets
proc create_hier_cell_Clocks_and_Resets { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Clocks_and_Resets() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir O -type clk clk_100M
  create_bd_pin -dir O -type clk clk_cpu
  create_bd_pin -dir O clk_qspi
  create_bd_pin -dir O -from 0 -to 0 dbgresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type clk sys_clock
  create_bd_pin -dir I -type rst sys_reset_n
  create_bd_pin -dir O -from 0 -to 0 sysresetn
  create_bd_pin -dir I sysresetreq

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {833.33} \
   CONFIG.CLKIN2_JITTER_PS {833.33} \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {151.636} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.0} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_JITTER {151.636} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50.0} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_JITTER {130.958} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_IN2_BOARD_INTERFACE {Custom} \
   CONFIG.CLK_OUT3_PORT {clk_100M} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {20} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {10} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_INCLK_SWITCHOVER {false} \
   CONFIG.USE_RESET {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: i_interconnect_aresetn, and set properties
  set i_interconnect_aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 i_interconnect_aresetn ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $i_interconnect_aresetn

  # Create instance: i_inv_dbgresetn, and set properties
  set i_inv_dbgresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 i_inv_dbgresetn ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $i_inv_dbgresetn

  # Create instance: i_inv_sysresetn1, and set properties
  set i_inv_sysresetn1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 i_inv_sysresetn1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $i_inv_sysresetn1

  # Create instance: i_peripheral_aresetn1, and set properties
  set i_peripheral_aresetn1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 i_peripheral_aresetn1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $i_peripheral_aresetn1

  # Create instance: i_sysresetn_or, and set properties
  set i_sysresetn_or [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 i_sysresetn_or ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $i_sysresetn_or

  # Create instance: proc_sys_reset_DAPLink, and set properties
  set proc_sys_reset_DAPLink [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_DAPLink ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_DAPLink

  # Create instance: proc_sys_reset_base, and set properties
  set proc_sys_reset_base [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_base ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_base

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create port connections
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins proc_sys_reset_DAPLink/aux_reset_in]
  connect_bd_net -net clk_wiz_0_clk_100M [get_bd_pins clk_100M] [get_bd_pins clk_wiz_0/clk_100M]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_cpu] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins proc_sys_reset_DAPLink/slowest_sync_clk] [get_bd_pins proc_sys_reset_base/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_qspi] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net dcm_locked_1 [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_DAPLink/dcm_locked] [get_bd_pins proc_sys_reset_base/dcm_locked]
  connect_bd_net -net i_interconnect_aresetn_Res [get_bd_pins interconnect_aresetn] [get_bd_pins i_interconnect_aresetn/Res]
  connect_bd_net -net i_inv_dbgresetn_Res [get_bd_pins dbgresetn] [get_bd_pins i_inv_dbgresetn/Res]
  connect_bd_net -net i_inv_sysresetn1_Res [get_bd_pins sysresetn] [get_bd_pins i_inv_sysresetn1/Res]
  connect_bd_net -net i_peripheral_aresetn1_Res [get_bd_pins peripheral_aresetn] [get_bd_pins i_peripheral_aresetn1/Res]
  connect_bd_net -net i_sysresetn_or_Res [get_bd_pins i_inv_sysresetn1/Op1] [get_bd_pins i_sysresetn_or/Res]
  connect_bd_net -net proc_sys_reset_DAPLink_interconnect_aresetn [get_bd_pins i_interconnect_aresetn/Op2] [get_bd_pins proc_sys_reset_DAPLink/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_DAPLink_mb_reset [get_bd_pins i_sysresetn_or/Op2] [get_bd_pins proc_sys_reset_DAPLink/mb_reset]
  connect_bd_net -net proc_sys_reset_DAPLink_peripheral_aresetn [get_bd_pins i_peripheral_aresetn1/Op2] [get_bd_pins proc_sys_reset_DAPLink/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_base_interconnect_aresetn [get_bd_pins i_interconnect_aresetn/Op1] [get_bd_pins proc_sys_reset_base/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_base_mb_reset [get_bd_pins i_inv_dbgresetn/Op1] [get_bd_pins i_sysresetn_or/Op1] [get_bd_pins proc_sys_reset_base/mb_reset]
  connect_bd_net -net proc_sys_reset_base_peripheral_aresetn [get_bd_pins i_peripheral_aresetn1/Op1] [get_bd_pins proc_sys_reset_base/peripheral_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_pins sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net sys_reset_n [get_bd_pins sys_reset_n] [get_bd_pins proc_sys_reset_base/ext_reset_in]
  connect_bd_net -net sysresetreq [get_bd_pins sysresetreq] [get_bd_pins proc_sys_reset_DAPLink/mb_debug_sys_rst]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins proc_sys_reset_DAPLink/ext_reset_in] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set DDR2_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR2_0 ]
  set cmos_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 cmos_iic ]
  set cmos_pwdn [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_pwdn ]
  set cmos_rst [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_rst ]
  set dip_switches_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 dip_switches_4bits ]
  set led_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_4bits ]
  set spi_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 spi_rtl ]
  set uart_keyboard [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_keyboard ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set GPIO_lcd [ create_bd_port -dir O -from 2 -to 0 GPIO_lcd ]
  set SDWIO [ create_bd_port -dir IO -from 0 -to 0 SDWIO ]
  set SWCLK [ create_bd_port -dir I -type clk SWCLK ]
  set cmos_data [ create_bd_port -dir I -from 7 -to 0 cmos_data ]
  set cmos_href [ create_bd_port -dir I cmos_href ]
  set cmos_pclk [ create_bd_port -dir I cmos_pclk ]
  set cmos_vsync [ create_bd_port -dir I cmos_vsync ]
  set cmos_xclk_o_0 [ create_bd_port -dir O cmos_xclk_o_0 ]
  set nSRST [ create_bd_port -dir I -type rst nSRST ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set uart_wifi_rx [ create_bd_port -dir I uart_wifi_rx ]
  set uart_wifi_tx [ create_bd_port -dir O uart_wifi_tx ]
  set vga_pBlue_0 [ create_bd_port -dir O -from 3 -to 0 vga_pBlue_0 ]
  set vga_pGreen_0 [ create_bd_port -dir O -from 3 -to 0 vga_pGreen_0 ]
  set vga_pHSync_0 [ create_bd_port -dir O vga_pHSync_0 ]
  set vga_pRed_0 [ create_bd_port -dir O -from 3 -to 0 vga_pRed_0 ]
  set vga_pVSync_0 [ create_bd_port -dir O vga_pVSync_0 ]

  # Create instance: Clocks_and_Resets
  create_hier_cell_Clocks_and_Resets [current_bd_instance .] Clocks_and_Resets

  # Create instance: Cortex_M3_0, and set properties
  set Cortex_M3_0 [ create_bd_cell -type ip -vlnv Arm.com:CortexM:CORTEXM3_AXI:1.0 Cortex_M3_0 ]
  set_property -dict [ list \
   CONFIG.DEBUG_LVL {2} \
   CONFIG.DTCM_SIZE {"0110"} \
   CONFIG.ITCM_INIT_FILE {bram_a7.hex} \
   CONFIG.ITCM_SIZE {"1000"} \
   CONFIG.JTAG_PRESENT {false} \
   CONFIG.TRACE_LVL {1} \
   CONFIG.WIC_PRESENT {false} \
 ] $Cortex_M3_0

  # Create instance: LCD
  create_hier_cell_LCD [current_bd_instance .] LCD

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {4} \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {Custom} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_DATA_FIFO {0} \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.M00_SECURE {0} \
   CONFIG.M01_HAS_DATA_FIFO {0} \
   CONFIG.M01_HAS_REGSLICE {3} \
   CONFIG.M01_SECURE {0} \
   CONFIG.M02_HAS_REGSLICE {3} \
   CONFIG.M02_SECURE {0} \
   CONFIG.M03_HAS_REGSLICE {3} \
   CONFIG.M04_HAS_REGSLICE {3} \
   CONFIG.M05_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {8} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {1} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {50000000} \
   CONFIG.UARTLITE_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: axi_uartlite_keyboard, and set properties
  set axi_uartlite_keyboard [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_keyboard ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Dual_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create instance: ov_cmos
  create_hier_cell_ov_cmos [current_bd_instance .] ov_cmos

  # Create instance: tri_io_buf_0, and set properties
  set block_name tri_io_buf
  set block_cell_name tri_io_buf_0
  if { [catch {set tri_io_buf_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tri_io_buf_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {12} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN6_WIDTH {25} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_1

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net Cortex_M3_0_CM3_CODE_AXI3 [get_bd_intf_pins Cortex_M3_0/CM3_CODE_AXI3] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net Cortex_M3_0_CM3_SYS_AXI3 [get_bd_intf_pins Cortex_M3_0/CM3_SYS_AXI3] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net LCD_spi_rtl [get_bd_intf_ports spi_rtl] [get_bd_intf_pins LCD/spi_rtl]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led_4bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports dip_switches_4bits] [get_bd_intf_pins axi_gpio_0/GPIO2]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins ov_cmos/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins LCD/AXI_FULL] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins LCD/S_AXI] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_pins axi_uartlite_keyboard/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_interconnect_0/M07_AXI] [get_bd_intf_pins axi_uart16550_0/S_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_protocol_convert_0/M_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net axi_uartlite_1_UART [get_bd_intf_ports uart_keyboard] [get_bd_intf_pins axi_uartlite_keyboard/UART]
  connect_bd_intf_net -intf_net ov_cmos_DDR2_0 [get_bd_intf_ports DDR2_0] [get_bd_intf_pins ov_cmos/DDR2_0]
  connect_bd_intf_net -intf_net ov_cmos_cmos_iic [get_bd_intf_ports cmos_iic] [get_bd_intf_pins ov_cmos/cmos_iic]
  connect_bd_intf_net -intf_net ov_cmos_cmos_pwdn [get_bd_intf_ports cmos_pwdn] [get_bd_intf_pins ov_cmos/cmos_pwdn]
  connect_bd_intf_net -intf_net ov_cmos_cmos_rst [get_bd_intf_ports cmos_rst] [get_bd_intf_pins ov_cmos/cmos_rst]

  # Create port connections
  connect_bd_net -net Clocks_and_Resets_clk_qspi [get_bd_pins Clocks_and_Resets/clk_qspi] [get_bd_pins LCD/ext_spi_clk]
  connect_bd_net -net Clocks_and_Resets_dbgresetn [get_bd_pins Clocks_and_Resets/dbgresetn] [get_bd_pins Cortex_M3_0/DBGRESETn]
  connect_bd_net -net Clocks_and_Resets_sysresetn [get_bd_pins Clocks_and_Resets/sysresetn] [get_bd_pins Cortex_M3_0/SYSRESETn]
  connect_bd_net -net Cortex_M3_0_SWDO [get_bd_pins Cortex_M3_0/SWDO] [get_bd_pins tri_io_buf_0/din]
  connect_bd_net -net Cortex_M3_0_SWDOEN [get_bd_pins tri_io_buf_0/oen_N] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net Cortex_M3_0_SWDOEN1 [get_bd_pins Cortex_M3_0/SWDOEN] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net Cortex_M3_0_SYSRESETREQ [get_bd_pins Clocks_and_Resets/sysresetreq] [get_bd_pins Cortex_M3_0/SYSRESETREQ]
  connect_bd_net -net LCD_GPIO_lcd [get_bd_ports GPIO_lcd] [get_bd_pins LCD/GPIO_lcd]
  connect_bd_net -net LCD_ip2intc_irpt [get_bd_pins LCD/ip2intc_irpt] [get_bd_pins xlconcat_0/In11]
  connect_bd_net -net Net [get_bd_ports SDWIO] [get_bd_pins tri_io_buf_0/io_pad]
  connect_bd_net -net SWCLKTCK_0_1 [get_bd_ports SWCLK] [get_bd_pins Cortex_M3_0/SWCLKTCK]
  connect_bd_net -net aux_reset_in_0_1 [get_bd_ports nSRST] [get_bd_pins Clocks_and_Resets/aux_reset_in]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins xlconcat_0/In10]
  connect_bd_net -net axi_uart16550_0_ip2intc_irpt [get_bd_pins axi_uart16550_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_uart16550_0_sout [get_bd_ports uart_wifi_tx] [get_bd_pins axi_uart16550_0/sout]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_uartlite_keyboard_interrupt [get_bd_pins axi_uartlite_keyboard/interrupt] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins Clocks_and_Resets/clk_cpu] [get_bd_pins Cortex_M3_0/HCLK] [get_bd_pins LCD/s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins axi_uartlite_keyboard/s_axi_aclk] [get_bd_pins ov_cmos/s_axi_lite_aclk]
  connect_bd_net -net cmos_data_1 [get_bd_ports cmos_data] [get_bd_pins ov_cmos/cmos_data]
  connect_bd_net -net cmos_href_1 [get_bd_ports cmos_href] [get_bd_pins ov_cmos/cmos_href]
  connect_bd_net -net cmos_pclk_1 [get_bd_ports cmos_pclk] [get_bd_pins ov_cmos/cmos_pclk]
  connect_bd_net -net cmos_vsync_1 [get_bd_ports cmos_vsync] [get_bd_pins ov_cmos/cmos_vsync]
  connect_bd_net -net ov_cmos_char_valid_c_o_0 [get_bd_pins ov_cmos/char_valid_c_o_0] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net ov_cmos_cmos_xclk_o_0 [get_bd_ports cmos_xclk_o_0] [get_bd_pins ov_cmos/cmos_xclk_o_0]
  connect_bd_net -net ov_cmos_iic2intc_irpt [get_bd_pins ov_cmos/iic2intc_irpt] [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net ov_cmos_vga_pBlue_0 [get_bd_ports vga_pBlue_0] [get_bd_pins ov_cmos/vga_pBlue_0]
  connect_bd_net -net ov_cmos_vga_pGreen_0 [get_bd_ports vga_pGreen_0] [get_bd_pins ov_cmos/vga_pGreen_0]
  connect_bd_net -net ov_cmos_vga_pHSync_0 [get_bd_ports vga_pHSync_0] [get_bd_pins ov_cmos/vga_pHSync_0]
  connect_bd_net -net ov_cmos_vga_pRed_0 [get_bd_ports vga_pRed_0] [get_bd_pins ov_cmos/vga_pRed_0]
  connect_bd_net -net ov_cmos_vga_pVSync_0 [get_bd_ports vga_pVSync_0] [get_bd_pins ov_cmos/vga_pVSync_0]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins Clocks_and_Resets/peripheral_aresetn] [get_bd_pins LCD/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins axi_uartlite_keyboard/s_axi_aresetn] [get_bd_pins ov_cmos/axi_resetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins Clocks_and_Resets/interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins ov_cmos/interconnect_aresetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins Clocks_and_Resets/sys_reset_n] [get_bd_pins ov_cmos/reset]
  connect_bd_net -net sin_0_1 [get_bd_ports uart_wifi_rx] [get_bd_pins axi_uart16550_0/sin]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins Clocks_and_Resets/sys_clock]
  connect_bd_net -net sys_clock_2 [get_bd_pins Clocks_and_Resets/clk_100M] [get_bd_pins ov_cmos/sys_clock]
  connect_bd_net -net tri_io_buf_0_dout [get_bd_pins Cortex_M3_0/SWDITMS] [get_bd_pins tri_io_buf_0/dout]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Cortex_M3_0/IRQ] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins Cortex_M3_0/CFGITCMEN] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xlconcat_0/In7] [get_bd_pins xlconcat_1/In0] [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces Cortex_M3_0/CM3_CODE_AXI3] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40110000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/cmos2axis/axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs LCD/axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/cmos2axis/axi_iic_0/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A30000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs LCD/axi_quad_spi_0/aximm/MEM0] SEG_axi_quad_spi_0_MEM0
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44AB0000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40100000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_uartlite_keyboard/S_AXI/Reg] SEG_axi_uartlite_keyboard_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/axis_switch_0/S_AXI_CTRL/Reg] SEG_axis_switch_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44AA0000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/axis_switch_1/S_AXI_CTRL/Reg] SEG_axis_switch_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A50000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/contrast_hls_rom_0/s_axi_AXILiteS/Reg] SEG_contrast_hls_rom_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A60000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/draw_line_hls_0/s_axi_AXILiteS/Reg] SEG_draw_line_hls_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/mask_0/s_axi_AXILiteS/Reg] SEG_mask_0_Reg
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x44A70000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/projection1_hls_0/s_axi_AXILiteS/Reg] SEG_projection1_hls_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A80000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/projection_mul_hls_0/s_axi_AXILiteS/Reg] SEG_projection_mul_hls_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A90000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/resize_hls_axis_0/s_axi_AXILiteS/Reg] SEG_resize_hls_axis_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A40000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs ov_cmos/Image_Process/threshold2_0/s_axi_AXILiteS/Reg] SEG_threshold2_0_Reg
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces ov_cmos/axi_vdma_0/Data_MM2S] [get_bd_addr_segs ov_cmos/mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces ov_cmos/axi_vdma_0/Data_S2MM] [get_bd_addr_segs ov_cmos/mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


