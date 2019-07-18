// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  7 12:53:45 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top m3_for_arty_a7_clk_wiz_1 -prefix
//               m3_for_arty_a7_clk_wiz_1_ m3_for_arty_a7_clk_wiz_1_stub.v
// Design      : m3_for_arty_a7_clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module m3_for_arty_a7_clk_wiz_1(clk_25M, clk_24M, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_25M,clk_24M,resetn,locked,clk_in1" */;
  output clk_25M;
  output clk_24M;
  input resetn;
  output locked;
  input clk_in1;
endmodule
