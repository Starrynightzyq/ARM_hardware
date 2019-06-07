// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  7 12:57:29 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top m3_for_arty_a7_bound_x_min_0 -prefix
//               m3_for_arty_a7_bound_x_min_0_ m3_for_arty_a7_blk_mem_gen_min_0_stub.v
// Design      : m3_for_arty_a7_blk_mem_gen_min_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module m3_for_arty_a7_bound_x_min_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[2:0],dina[15:0],clkb,enb,addrb[2:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [2:0]addra;
  input [15:0]dina;
  input clkb;
  input enb;
  input [2:0]addrb;
  output [15:0]doutb;
endmodule
