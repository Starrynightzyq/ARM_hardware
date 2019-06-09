// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jun  9 22:11:54 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               v:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_plate_fsm_0_0/m3_for_arty_a7_plate_fsm_0_0_stub.v
// Design      : m3_for_arty_a7_plate_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "plate_fsm,Vivado 2018.2" *)
module m3_for_arty_a7_plate_fsm_0_0(clk, rst_n, char_index_c_i, char_diff_c_i, 
  char_valid_c_i, char_index_c_o, char_diff_c_o, char_valid_c_o)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,char_index_c_i[31:0],char_diff_c_i[127:0],char_valid_c_i,char_index_c_o[31:0],char_diff_c_o[127:0],char_valid_c_o" */;
  input clk;
  input rst_n;
  input [31:0]char_index_c_i;
  input [127:0]char_diff_c_i;
  input char_valid_c_i;
  output [31:0]char_index_c_o;
  output [127:0]char_diff_c_o;
  output char_valid_c_o;
endmodule
