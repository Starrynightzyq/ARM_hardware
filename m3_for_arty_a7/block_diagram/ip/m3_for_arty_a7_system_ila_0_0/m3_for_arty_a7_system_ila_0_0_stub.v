// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jul 15 16:11:38 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_system_ila_0_0/m3_for_arty_a7_system_ila_0_0_stub.v
// Design      : m3_for_arty_a7_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_082c,Vivado 2018.2" *)
module m3_for_arty_a7_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[127:0],probe2[0:0],probe3[0:0],probe4[19:0],probe5[15:0],probe6[3:0],probe7[7:0]" */;
  input clk;
  input [31:0]probe0;
  input [127:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [19:0]probe4;
  input [15:0]probe5;
  input [3:0]probe6;
  input [7:0]probe7;
endmodule
