// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 14:56:28 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_system_ila_1_0/m3_for_arty_a7_system_ila_1_0_stub.v
// Design      : m3_for_arty_a7_system_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_c87d,Vivado 2018.2" *)
module m3_for_arty_a7_system_ila_1_0(clk, SLOT_0_VID_IO_data, 
  SLOT_0_VID_IO_active_video, SLOT_0_VID_IO_hsync, SLOT_0_VID_IO_vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_VID_IO_data[23:0],SLOT_0_VID_IO_active_video,SLOT_0_VID_IO_hsync,SLOT_0_VID_IO_vsync" */;
  input clk;
  input [23:0]SLOT_0_VID_IO_data;
  input SLOT_0_VID_IO_active_video;
  input SLOT_0_VID_IO_hsync;
  input SLOT_0_VID_IO_vsync;
endmodule
