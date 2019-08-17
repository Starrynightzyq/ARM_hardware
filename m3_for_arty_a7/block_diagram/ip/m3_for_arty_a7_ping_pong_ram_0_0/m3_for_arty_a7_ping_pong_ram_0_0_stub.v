// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 14 10:06:09 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_ping_pong_ram_0_0/m3_for_arty_a7_ping_pong_ram_0_0_stub.v
// Design      : m3_for_arty_a7_ping_pong_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ping_pong_ram,Vivado 2018.2" *)
module m3_for_arty_a7_ping_pong_ram_0_0(clk, rst_n, addra, dina, wea, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,addra[18:0],dina[0:0],wea[0:0],addrb[18:0],doutb[0:0]" */;
  input clk;
  input rst_n;
  input [18:0]addra;
  input [0:0]dina;
  input [0:0]wea;
  input [18:0]addrb;
  output [0:0]doutb;
endmodule
