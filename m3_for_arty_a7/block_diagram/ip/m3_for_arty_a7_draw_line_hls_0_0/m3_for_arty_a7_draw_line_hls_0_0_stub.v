// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Jul 23 01:48:59 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               V:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_draw_line_hls_0_0/m3_for_arty_a7_draw_line_hls_0_0_stub.v
// Design      : m3_for_arty_a7_draw_line_hls_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "draw_line_hls,Vivado 2018.2" *)
module m3_for_arty_a7_draw_line_hls_0_0(bound_min_ce0, bound_min_we0, bound_max_ce0, 
  bound_max_we0, bound_y_min_ap_vld, bound_y_max_ap_vld, s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, input_r_TVALID, input_r_TREADY, 
  input_r_TDATA, input_r_TKEEP, input_r_TSTRB, input_r_TUSER, input_r_TLAST, input_r_TID, 
  input_r_TDEST, output_r_TVALID, output_r_TREADY, output_r_TDATA, output_r_TKEEP, 
  output_r_TSTRB, output_r_TUSER, output_r_TLAST, output_r_TID, output_r_TDEST, 
  bound_min_address0, bound_min_d0, bound_min_q0, bound_max_address0, bound_max_d0, 
  bound_max_q0, bound_y_min, bound_y_max)
/* synthesis syn_black_box black_box_pad_pin="bound_min_ce0,bound_min_we0,bound_max_ce0,bound_max_we0,bound_y_min_ap_vld,bound_y_max_ap_vld,s_axi_AXILiteS_AWADDR[5:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[5:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,input_r_TVALID,input_r_TREADY,input_r_TDATA[7:0],input_r_TKEEP[0:0],input_r_TSTRB[0:0],input_r_TUSER[0:0],input_r_TLAST[0:0],input_r_TID[0:0],input_r_TDEST[0:0],output_r_TVALID,output_r_TREADY,output_r_TDATA[7:0],output_r_TKEEP[0:0],output_r_TSTRB[0:0],output_r_TUSER[0:0],output_r_TLAST[0:0],output_r_TID[0:0],output_r_TDEST[0:0],bound_min_address0[2:0],bound_min_d0[15:0],bound_min_q0[15:0],bound_max_address0[2:0],bound_max_d0[15:0],bound_max_q0[15:0],bound_y_min[15:0],bound_y_max[15:0]" */;
  output bound_min_ce0;
  output bound_min_we0;
  output bound_max_ce0;
  output bound_max_we0;
  input bound_y_min_ap_vld;
  input bound_y_max_ap_vld;
  input [5:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [5:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input input_r_TVALID;
  output input_r_TREADY;
  input [7:0]input_r_TDATA;
  input [0:0]input_r_TKEEP;
  input [0:0]input_r_TSTRB;
  input [0:0]input_r_TUSER;
  input [0:0]input_r_TLAST;
  input [0:0]input_r_TID;
  input [0:0]input_r_TDEST;
  output output_r_TVALID;
  input output_r_TREADY;
  output [7:0]output_r_TDATA;
  output [0:0]output_r_TKEEP;
  output [0:0]output_r_TSTRB;
  output [0:0]output_r_TUSER;
  output [0:0]output_r_TLAST;
  output [0:0]output_r_TID;
  output [0:0]output_r_TDEST;
  output [2:0]bound_min_address0;
  output [15:0]bound_min_d0;
  input [15:0]bound_min_q0;
  output [2:0]bound_max_address0;
  output [15:0]bound_max_d0;
  input [15:0]bound_max_q0;
  input [15:0]bound_y_min;
  input [15:0]bound_y_max;
endmodule
