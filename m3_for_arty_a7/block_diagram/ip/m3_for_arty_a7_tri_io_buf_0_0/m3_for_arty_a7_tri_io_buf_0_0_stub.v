// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  7 22:51:44 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               V:/hardware_t/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_tri_io_buf_0_0/m3_for_arty_a7_tri_io_buf_0_0_stub.v
// Design      : m3_for_arty_a7_tri_io_buf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tri_io_buf,Vivado 2018.2" *)
module m3_for_arty_a7_tri_io_buf_0_0(din, oen_N, io_pad, dout)
/* synthesis syn_black_box black_box_pad_pin="din[0:0],oen_N,io_pad[0:0],dout[0:0]" */;
  input [0:0]din;
  input oen_N;
  inout [0:0]io_pad;
  output [0:0]dout;
endmodule
