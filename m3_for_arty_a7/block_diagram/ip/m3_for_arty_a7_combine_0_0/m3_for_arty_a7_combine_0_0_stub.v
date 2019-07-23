// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jul 22 23:36:05 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               V:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_combine_0_0/m3_for_arty_a7_combine_0_0_stub.v
// Design      : m3_for_arty_a7_combine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "combine,Vivado 2018.2" *)
module m3_for_arty_a7_combine_0_0(clk, rst_n, char_index, char_diff, char_addr, 
  char_valid, char_index_c, char_diff_c, char_valid_c)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,char_index[3:0],char_diff[15:0],char_addr[2:0],char_valid,char_index_c[31:0],char_diff_c[127:0],char_valid_c" */;
  input clk;
  input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input [2:0]char_addr;
  input char_valid;
  output [31:0]char_index_c;
  output [127:0]char_diff_c;
  output char_valid_c;
endmodule
