// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jul 14 16:52:25 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_OV_Sensor_0_0/m3_for_arty_a7_OV_Sensor_0_0_stub.v
// Design      : m3_for_arty_a7_OV_Sensor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "OV_Sensor_ML,Vivado 2018.2" *)
module m3_for_arty_a7_OV_Sensor_0_0(CLK_i, cmos_vsync_i, cmos_href_i, cmos_pclk_i, 
  cmos_xclk_o, cmos_data_i, vid_hsync, vid_vsync, vid_data, vid_clk_ce, vid_active_video)
/* synthesis syn_black_box black_box_pad_pin="CLK_i,cmos_vsync_i,cmos_href_i,cmos_pclk_i,cmos_xclk_o,cmos_data_i[7:0],vid_hsync,vid_vsync,vid_data[23:0],vid_clk_ce,vid_active_video" */;
  input CLK_i;
  input cmos_vsync_i;
  input cmos_href_i;
  input cmos_pclk_i;
  output cmos_xclk_o;
  input [7:0]cmos_data_i;
  output vid_hsync;
  output vid_vsync;
  output [23:0]vid_data;
  output vid_clk_ce;
  output vid_active_video;
endmodule
