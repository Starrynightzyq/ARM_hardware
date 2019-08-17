// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 14 10:05:18 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_axis2ram_0_0/m3_for_arty_a7_axis2ram_0_0_stub.v
// Design      : m3_for_arty_a7_axis2ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis2ram,Vivado 2018.2" *)
module m3_for_arty_a7_axis2ram_0_0(output_r_ce0, output_r_we0, input_r_TVALID, 
  input_r_TREADY, input_r_TDATA, input_r_TKEEP, input_r_TSTRB, input_r_TUSER, input_r_TLAST, 
  input_r_TID, input_r_TDEST, output_r_address0, output_r_d0, output_r_q0, ap_clk, ap_rst_n, 
  ap_start, ap_done, ap_ready, ap_idle)
/* synthesis syn_black_box black_box_pad_pin="output_r_ce0,output_r_we0,input_r_TVALID,input_r_TREADY,input_r_TDATA[7:0],input_r_TKEEP[0:0],input_r_TSTRB[0:0],input_r_TUSER[0:0],input_r_TLAST[0:0],input_r_TID[0:0],input_r_TDEST[0:0],output_r_address0[18:0],output_r_d0[0:0],output_r_q0[0:0],ap_clk,ap_rst_n,ap_start,ap_done,ap_ready,ap_idle" */;
  output output_r_ce0;
  output output_r_we0;
  input input_r_TVALID;
  output input_r_TREADY;
  input [7:0]input_r_TDATA;
  input [0:0]input_r_TKEEP;
  input [0:0]input_r_TSTRB;
  input [0:0]input_r_TUSER;
  input [0:0]input_r_TLAST;
  input [0:0]input_r_TID;
  input [0:0]input_r_TDEST;
  output [18:0]output_r_address0;
  output [0:0]output_r_d0;
  input [0:0]output_r_q0;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_ready;
  output ap_idle;
endmodule
