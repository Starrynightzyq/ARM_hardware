// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jun  8 00:47:01 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               v:/hardware_t/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_bound_fsm_0_0/m3_for_arty_a7_bound_fsm_0_0_stub.v
// Design      : m3_for_arty_a7_bound_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bound_fsm,Vivado 2018.2" *)
module m3_for_arty_a7_bound_fsm_0_0(clk, rst_n, bound_x_min_i, bound_x_max_i, 
  bound_y_min_i, bound_y_max_i, bound_y_min_ap_vld_i, bound_y_max_ap_vld_i, 
  bound_x_min_ap_vld_i, bound_x_max_ap_vld_i, bound_x_min_o, bound_x_max_o, bound_y_min_o, 
  bound_y_max_o, bound_y_min_ap_vld_o, bound_y_max_ap_vld_o, bound_x_min_ap_vld_o, 
  bound_x_max_ap_vld_o)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,bound_x_min_i[15:0],bound_x_max_i[15:0],bound_y_min_i[15:0],bound_y_max_i[15:0],bound_y_min_ap_vld_i,bound_y_max_ap_vld_i,bound_x_min_ap_vld_i,bound_x_max_ap_vld_i,bound_x_min_o[15:0],bound_x_max_o[15:0],bound_y_min_o[15:0],bound_y_max_o[15:0],bound_y_min_ap_vld_o,bound_y_max_ap_vld_o,bound_x_min_ap_vld_o,bound_x_max_ap_vld_o" */;
  input clk;
  input rst_n;
  input [15:0]bound_x_min_i;
  input [15:0]bound_x_max_i;
  input [15:0]bound_y_min_i;
  input [15:0]bound_y_max_i;
  input bound_y_min_ap_vld_i;
  input bound_y_max_ap_vld_i;
  input bound_x_min_ap_vld_i;
  input bound_x_max_ap_vld_i;
  output [15:0]bound_x_min_o;
  output [15:0]bound_x_max_o;
  output [15:0]bound_y_min_o;
  output [15:0]bound_y_max_o;
  output bound_y_min_ap_vld_o;
  output bound_y_max_ap_vld_o;
  output bound_x_min_ap_vld_o;
  output bound_x_max_ap_vld_o;
endmodule
