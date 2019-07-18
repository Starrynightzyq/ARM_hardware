// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:47:56 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_sort_0_0/m3_for_arty_a7_sort_0_0_stub.v
// Design      : m3_for_arty_a7_sort_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sort,Vivado 2018.2" *)
module m3_for_arty_a7_sort_0_0(clk, rst_n, diff_sum_0_ap_vld, 
  diff_sum_1_ap_vld, diff_sum_2_ap_vld, diff_sum_3_ap_vld, diff_sum_4_ap_vld, 
  diff_sum_5_ap_vld, diff_sum_6_ap_vld, diff_sum_7_ap_vld, diff_sum_8_ap_vld, 
  diff_sum_9_ap_vld, diff_sum_10_ap_vld, diff_sum_0, diff_sum_1, diff_sum_2, diff_sum_3, 
  diff_sum_4, diff_sum_5, diff_sum_6, diff_sum_7, diff_sum_8, diff_sum_9, diff_sum_10, 
  char_index, char_diff, interrupt)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,diff_sum_0_ap_vld,diff_sum_1_ap_vld,diff_sum_2_ap_vld,diff_sum_3_ap_vld,diff_sum_4_ap_vld,diff_sum_5_ap_vld,diff_sum_6_ap_vld,diff_sum_7_ap_vld,diff_sum_8_ap_vld,diff_sum_9_ap_vld,diff_sum_10_ap_vld,diff_sum_0[15:0],diff_sum_1[15:0],diff_sum_2[15:0],diff_sum_3[15:0],diff_sum_4[15:0],diff_sum_5[15:0],diff_sum_6[15:0],diff_sum_7[15:0],diff_sum_8[15:0],diff_sum_9[15:0],diff_sum_10[15:0],char_index[3:0],char_diff[15:0],interrupt" */;
  input clk;
  input rst_n;
  input diff_sum_0_ap_vld;
  input diff_sum_1_ap_vld;
  input diff_sum_2_ap_vld;
  input diff_sum_3_ap_vld;
  input diff_sum_4_ap_vld;
  input diff_sum_5_ap_vld;
  input diff_sum_6_ap_vld;
  input diff_sum_7_ap_vld;
  input diff_sum_8_ap_vld;
  input diff_sum_9_ap_vld;
  input diff_sum_10_ap_vld;
  input [15:0]diff_sum_0;
  input [15:0]diff_sum_1;
  input [15:0]diff_sum_2;
  input [15:0]diff_sum_3;
  input [15:0]diff_sum_4;
  input [15:0]diff_sum_5;
  input [15:0]diff_sum_6;
  input [15:0]diff_sum_7;
  input [15:0]diff_sum_8;
  input [15:0]diff_sum_9;
  input [15:0]diff_sum_10;
  output [3:0]char_index;
  output [15:0]char_diff;
  output interrupt;
endmodule
