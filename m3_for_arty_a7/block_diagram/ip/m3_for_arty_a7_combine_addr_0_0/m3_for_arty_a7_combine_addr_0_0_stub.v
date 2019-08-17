// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug 15 22:07:41 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_combine_addr_0_0/m3_for_arty_a7_combine_addr_0_0_stub.v
// Design      : m3_for_arty_a7_combine_addr_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "combine_addr,Vivado 2018.2" *)
module m3_for_arty_a7_combine_addr_0_0(clk, rst_n, shift, char_index, char_diff, 
  char_addr, char_valid, char_index_c, char_diff_c, char_valid_c)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,shift[2:0],char_index[3:0],char_diff[15:0],char_addr[2:0],char_valid,char_index_c[27:0],char_diff_c[111:0],char_valid_c" */;
  input clk;
  input rst_n;
  input [2:0]shift;
  input [3:0]char_index;
  input [15:0]char_diff;
  input [2:0]char_addr;
  input char_valid;
  output [27:0]char_index_c;
  output [111:0]char_diff_c;
  output char_valid_c;
endmodule
