
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
# tri_io_buf

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

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: daplink_if_0
proc create_hier_cell_daplink_if_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_daplink_if_0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 C_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 Shield_out
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART_out

  # Create pins
  create_bd_pin -dir O DAPLink_fittedn
  create_bd_pin -dir O SWCLK
  create_bd_pin -dir O SWDI
  create_bd_pin -dir I SWDO
  create_bd_pin -dir I SWDOEN
  create_bd_pin -dir I ext_spi_clk
  create_bd_pin -dir O nSRST
  create_bd_pin -dir O qspi_irq
  create_bd_pin -dir O qspi_xip_irq
  create_bd_pin -dir I s_axi_aclk
  create_bd_pin -dir I s_axi_aresetn
  create_bd_pin -dir O spi_irq
  create_bd_pin -dir O uart_rxd_axi
  create_bd_pin -dir I uart_txd_axi

  # Create instance: DAPLink_to_Arty_shield_0, and set properties
  set DAPLink_to_Arty_shield_0 [ create_bd_cell -type ip -vlnv Arm.com:user:DAPLink_to_Arty_shield:1.0 DAPLink_to_Arty_shield_0 ]

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {4} \
 ] $axi_interconnect_0

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_quad_spi_0

  # Create instance: axi_single_spi_0, and set properties
  set axi_single_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_single_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_single_spi_0

  # Create instance: axi_xip_quad_spi_0, and set properties
  set axi_xip_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_xip_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {3} \
   CONFIG.C_SPI_MEM_ADDR_BITS {24} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {1} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
   CONFIG.C_XIP_MODE {1} \
 ] $axi_xip_quad_spi_0

  # Create interface connections
  connect_bd_intf_net -intf_net C_AXI_1 [get_bd_intf_pins C_AXI] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net DAPLink_to_Arty_shie_1_UART [get_bd_intf_pins UART_out] [get_bd_intf_pins DAPLink_to_Arty_shield_0/UART_out]
  connect_bd_intf_net -intf_net DAPLink_to_Arty_shie_1_shield [get_bd_intf_pins Shield_out] [get_bd_intf_pins DAPLink_to_Arty_shield_0/shield]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_xip_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins axi_single_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_protocol_convert_0/M_AXI] [get_bd_intf_pins axi_xip_quad_spi_0/AXI_FULL]
  connect_bd_intf_net -intf_net axi_quad_spi_1_SPI_0 [get_bd_intf_pins DAPLink_to_Arty_shield_0/QSPI] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_single_spi_0_SPI_0 [get_bd_intf_pins DAPLink_to_Arty_shield_0/SPI] [get_bd_intf_pins axi_single_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_xip_quad_spi_0_SPI_0 [get_bd_intf_pins DAPLink_to_Arty_shield_0/QSPI_XIP] [get_bd_intf_pins axi_xip_quad_spi_0/SPI_0]

  # Create port connections
  connect_bd_net -net DAPLink_to_Arty_shie_1_DAPLink_fittedn [get_bd_pins DAPLink_fittedn] [get_bd_pins DAPLink_to_Arty_shield_0/DAPLink_fittedn]
  connect_bd_net -net DAPLink_to_Arty_shie_1_SWCLK [get_bd_pins SWCLK] [get_bd_pins DAPLink_to_Arty_shield_0/SWCLK]
  connect_bd_net -net DAPLink_to_Arty_shie_1_SWDI [get_bd_pins SWDI] [get_bd_pins DAPLink_to_Arty_shield_0/SWDI]
  connect_bd_net -net DAPLink_to_Arty_shie_1_SWRSTn [get_bd_pins nSRST] [get_bd_pins DAPLink_to_Arty_shield_0/SWRSTn]
  connect_bd_net -net DAPLink_to_Arty_shie_1_uart_rxd_axi [get_bd_pins uart_rxd_axi] [get_bd_pins DAPLink_to_Arty_shield_0/uart_rxd_axi]
  connect_bd_net -net SWDOEN_1 [get_bd_pins SWDOEN] [get_bd_pins DAPLink_to_Arty_shield_0/SWDOEN]
  connect_bd_net -net SWDO_1 [get_bd_pins SWDO] [get_bd_pins DAPLink_to_Arty_shield_0/SWDO]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins DAPLink_to_Arty_shield_0/qspi_sel] [get_bd_pins axi_gpio_0/gpio_io_o]
  connect_bd_net -net axi_quad_spi_1_ip2intc_irpt [get_bd_pins qspi_irq] [get_bd_pins axi_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net axi_single_spi_0_ip2intc_irpt [get_bd_pins spi_irq] [get_bd_pins axi_single_spi_0/ip2intc_irpt]
  connect_bd_net -net axi_xip_quad_spi_0_ip2intc_irpt [get_bd_pins qspi_xip_irq] [get_bd_pins axi_xip_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net ext_spi_clk_1 [get_bd_pins ext_spi_clk] [get_bd_pins DAPLink_to_Arty_shield_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_single_spi_0/ext_spi_clk] [get_bd_pins axi_xip_quad_spi_0/ext_spi_clk]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_single_spi_0/s_axi_aclk] [get_bd_pins axi_xip_quad_spi_0/s_axi4_aclk] [get_bd_pins axi_xip_quad_spi_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_single_spi_0/s_axi_aresetn] [get_bd_pins axi_xip_quad_spi_0/s_axi4_aresetn] [get_bd_pins axi_xip_quad_spi_0/s_axi_aresetn]
  connect_bd_net -net uart_txd_axi_1 [get_bd_pins uart_txd_axi] [get_bd_pins DAPLink_to_Arty_shield_0/uart_txd_axi]

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
  create_bd_pin -dir O -type clk clk_cpu
  create_bd_pin -dir O clk_qspi
  create_bd_pin -dir O -from 0 -to 0 dbgresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn1
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
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_IN2_BOARD_INTERFACE {Custom} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {20} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
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
  connect_bd_net -net proc_sys_reset_DAPLink_peripheral_aresetn [get_bd_pins peripheral_aresetn1] [get_bd_pins i_peripheral_aresetn1/Op2] [get_bd_pins proc_sys_reset_DAPLink/peripheral_aresetn]
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
  set DAPLink [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DAPLink ]
  set cmos_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 cmos_iic ]
  set dip_switches_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 dip_switches_4bits ]
  set led_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_4bits ]
  set push_buttons_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 push_buttons_4bits ]
  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]
  set rgb_led [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 rgb_led ]
  set temp_sensor [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 temp_sensor ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set TDI [ create_bd_port -dir I TDI ]
  set TDO [ create_bd_port -dir IO -from 0 -to 0 TDO ]
  set nTRST [ create_bd_port -dir I nTRST ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: Clocks_and_Resets
  create_hier_cell_Clocks_and_Resets [current_bd_instance .] Clocks_and_Resets

  # Create instance: Cortex_M3_0, and set properties
  set Cortex_M3_0 [ create_bd_cell -type ip -vlnv Arm.com:CortexM:CORTEXM3_AXI:1.0 Cortex_M3_0 ]
  set_property -dict [ list \
   CONFIG.DEBUG_LVL {2} \
   CONFIG.DTCM_SIZE {"0110"} \
   CONFIG.ITCM_INIT_FILE {bram_a7.hex} \
   CONFIG.ITCM_SIZE {"0110"} \
   CONFIG.TRACE_LVL {1} \
   CONFIG.WIC_PRESENT {false} \
 ] $Cortex_M3_0

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.C_SELECT_XPM {0} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
 ] $axi_bram_ctrl_0

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

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {4} \
   CONFIG.C_GPIO_WIDTH {6} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {Custom} \
   CONFIG.GPIO_BOARD_INTERFACE {rgb_led} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_1

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {temp_sensor} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_0

  # Create instance: axi_iic_1, and set properties
  set axi_iic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_1 ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_1

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
   CONFIG.NUM_MI {9} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {1} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {2} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_USE_STARTUP {1} \
   CONFIG.C_USE_STARTUP_INT {1} \
   CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {50000000} \
   CONFIG.UARTLITE_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
 ] $blk_mem_gen_0

  # Create instance: daplink_if_0
  create_hier_cell_daplink_if_0 [current_bd_instance .] daplink_if_0

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
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {11} \
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
  connect_bd_intf_net -intf_net Cortex_M3_0_CM3_CODE_AXI3 [get_bd_intf_pins Cortex_M3_0/CM3_CODE_AXI3] [get_bd_intf_pins daplink_if_0/C_AXI]
  connect_bd_intf_net -intf_net Cortex_M3_0_CM3_SYS_AXI3 [get_bd_intf_pins Cortex_M3_0/CM3_SYS_AXI3] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins axi_interconnect_0/M05_AXI] [get_bd_intf_pins daplink_if_0/S_AXI]
  connect_bd_intf_net -intf_net V2C_DAPLink_interface_Shield_out [get_bd_intf_ports DAPLink] [get_bd_intf_pins daplink_if_0/Shield_out]
  connect_bd_intf_net -intf_net V2C_DAPLink_interface_UART_out [get_bd_intf_ports usb_uart] [get_bd_intf_pins daplink_if_0/UART_out]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led_4bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports dip_switches_4bits] [get_bd_intf_pins axi_gpio_0/GPIO2]
  connect_bd_intf_net -intf_net axi_gpio_1_GPIO [get_bd_intf_ports rgb_led] [get_bd_intf_pins axi_gpio_1/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_1_GPIO2 [get_bd_intf_ports push_buttons_4bits] [get_bd_intf_pins axi_gpio_1/GPIO2]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports temp_sensor] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports cmos_iic] [get_bd_intf_pins axi_iic_1/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_iic_1/S_AXI] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins axi_interconnect_0/M08_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins axi_quad_spi_0/SPI_0]

  # Create port connections
  connect_bd_net -net Clocks_and_Resets_dbgresetn [get_bd_pins Clocks_and_Resets/dbgresetn] [get_bd_pins Cortex_M3_0/DBGRESETn]
  connect_bd_net -net Clocks_and_Resets_peripheral_aresetn1 [get_bd_pins Clocks_and_Resets/peripheral_aresetn1] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN]
  connect_bd_net -net Clocks_and_Resets_sysresetn [get_bd_pins Clocks_and_Resets/sysresetn] [get_bd_pins Cortex_M3_0/SYSRESETn]
  connect_bd_net -net CortexM3DbgAXI_0_SWDO [get_bd_pins Cortex_M3_0/SWDO] [get_bd_pins daplink_if_0/SWDO]
  connect_bd_net -net CortexM3DbgAXI_0_SWDOEN [get_bd_pins Cortex_M3_0/SWDOEN] [get_bd_pins daplink_if_0/SWDOEN]
  connect_bd_net -net CortexM3DbgAXI_0_TDO [get_bd_pins Cortex_M3_0/TDO] [get_bd_pins tri_io_buf_0/din]
  connect_bd_net -net CortexM3DbgAXI_0_nTDOEN [get_bd_pins Cortex_M3_0/nTDOEN] [get_bd_pins tri_io_buf_0/oen_N]
  connect_bd_net -net Cortex_M3_0_SYSRESETREQ [get_bd_pins Clocks_and_Resets/sysresetreq] [get_bd_pins Cortex_M3_0/SYSRESETREQ]
  connect_bd_net -net TDI_1 [get_bd_ports TDI] [get_bd_pins Cortex_M3_0/TDI]
  connect_bd_net -net TDO_out [get_bd_ports TDO] [get_bd_pins tri_io_buf_0/io_pad]
  connect_bd_net -net V2C_DAPLink_interface_DAPLink_fittedn [get_bd_pins daplink_if_0/DAPLink_fittedn] [get_bd_pins xlconcat_0/In7] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net V2C_DAPLink_interface_qspi_irq [get_bd_pins daplink_if_0/qspi_irq] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net V2C_DAPLink_interface_qspi_xip_irq [get_bd_pins daplink_if_0/qspi_xip_irq] [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net V2C_DAPLink_interface_spi_irq [get_bd_pins daplink_if_0/spi_irq] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net V2C_DAPLink_interface_uart_rxd_axi [get_bd_pins axi_uartlite_0/rx] [get_bd_pins daplink_if_0/uart_rxd_axi]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_gpio_1_ip2intc_irpt [get_bd_pins axi_gpio_1/ip2intc_irpt] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net axi_iic_1_iic2intc_irpt [get_bd_pins axi_iic_1/iic2intc_irpt] [get_bd_pins xlconcat_0/In9]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins xlconcat_0/In10]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_uartlite_0_tx [get_bd_pins axi_uartlite_0/tx] [get_bd_pins daplink_if_0/uart_txd_axi]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins Clocks_and_Resets/clk_cpu] [get_bd_pins Cortex_M3_0/HCLK] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_iic_1/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins daplink_if_0/s_axi_aclk]
  connect_bd_net -net daplink_if_0_SWCLK [get_bd_pins Cortex_M3_0/SWCLKTCK] [get_bd_pins daplink_if_0/SWCLK]
  connect_bd_net -net daplink_if_0_SWDI [get_bd_pins Cortex_M3_0/SWDITMS] [get_bd_pins daplink_if_0/SWDI]
  connect_bd_net -net daplink_if_0_nSRST [get_bd_pins Clocks_and_Resets/aux_reset_in] [get_bd_pins daplink_if_0/nSRST]
  connect_bd_net -net ext_spi_clk_1 [get_bd_pins Clocks_and_Resets/clk_qspi] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins daplink_if_0/ext_spi_clk]
  connect_bd_net -net nTRST_1 [get_bd_ports nTRST] [get_bd_pins Cortex_M3_0/nTRST]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins Clocks_and_Resets/peripheral_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_iic_1/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins daplink_if_0/s_axi_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins Clocks_and_Resets/interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins Clocks_and_Resets/sys_reset_n]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins Clocks_and_Resets/sys_clock]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Cortex_M3_0/IRQ] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins Cortex_M3_0/CFGITCMEN] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00002000 -offset 0x60000000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40110000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs daplink_if_0/axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40120000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40810000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] SEG_axi_iic_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40130000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs daplink_if_0/axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs daplink_if_0/axi_single_spi_0/AXI_LITE/Reg] SEG_axi_single_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40100000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00100000 -offset 0x00000000 [get_bd_addr_spaces Cortex_M3_0/CM3_CODE_AXI3] [get_bd_addr_segs daplink_if_0/axi_xip_quad_spi_0/aximm/MEM0] SEG_axi_xip_quad_spi_0_MEM0
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces Cortex_M3_0/CM3_SYS_AXI3] [get_bd_addr_segs daplink_if_0/axi_xip_quad_spi_0/AXI_LITE/Reg] SEG_axi_xip_quad_spi_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


