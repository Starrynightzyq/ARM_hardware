// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:48:40 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_judge_0_0/m3_for_arty_a7_judge_0_0_stub.v
// Design      : m3_for_arty_a7_judge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "judge,Vivado 2018.2" *)
module m3_for_arty_a7_judge_0_0(clk, rst_n, max_diff, min_continue, min_counter, 
  char_index_c, char_diff_c, char_valid_c, char_index_co, char_valid_co)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,max_diff[15:0],min_continue[3:0],min_counter[7:0],char_index_c[31:0],char_diff_c[127:0],char_valid_c,char_index_co[19:0],char_valid_co" */;
  input clk;
  input rst_n;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input [31:0]char_index_c;
  input [127:0]char_diff_c;
  input char_valid_c;
  output [19:0]char_index_co;
  output char_valid_co;
endmodule
