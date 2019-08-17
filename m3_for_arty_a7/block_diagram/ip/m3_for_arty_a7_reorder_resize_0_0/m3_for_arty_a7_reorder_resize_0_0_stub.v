// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 14 10:06:14 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_reorder_resize_0_0/m3_for_arty_a7_reorder_resize_0_0_stub.v
// Design      : m3_for_arty_a7_reorder_resize_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reorder_resize,Vivado 2018.2" *)
module m3_for_arty_a7_reorder_resize_0_0(input_r_ce0, input_r_we0, bound_y_min_ap_vld, 
  bound_y_max_ap_vld, bound_x_min_ap_vld, bound_x_max_ap_vld, s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, ap_done, ap_start, ap_ready, ap_idle, ap_continue, 
  input_r_address0, input_r_d0, input_r_q0, output_r_TVALID, output_r_TREADY, output_r_TDATA, 
  output_r_TKEEP, output_r_TSTRB, output_r_TUSER, output_r_TLAST, output_r_TID, 
  output_r_TDEST, bound_x_min, bound_x_max, bound_y_min, bound_y_max)
/* synthesis syn_black_box black_box_pad_pin="input_r_ce0,input_r_we0,bound_y_min_ap_vld,bound_y_max_ap_vld,bound_x_min_ap_vld,bound_x_max_ap_vld,s_axi_AXILiteS_AWADDR[4:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[4:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,ap_done,ap_start,ap_ready,ap_idle,ap_continue,input_r_address0[18:0],input_r_d0[0:0],input_r_q0[0:0],output_r_TVALID,output_r_TREADY,output_r_TDATA[7:0],output_r_TKEEP[0:0],output_r_TSTRB[0:0],output_r_TUSER[0:0],output_r_TLAST[0:0],output_r_TID[0:0],output_r_TDEST[0:0],bound_x_min[15:0],bound_x_max[15:0],bound_y_min[15:0],bound_y_max[15:0]" */;
  output input_r_ce0;
  output input_r_we0;
  input bound_y_min_ap_vld;
  input bound_y_max_ap_vld;
  input bound_x_min_ap_vld;
  input bound_x_max_ap_vld;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output ap_done;
  input ap_start;
  output ap_ready;
  output ap_idle;
  input ap_continue;
  output [18:0]input_r_address0;
  output [0:0]input_r_d0;
  input [0:0]input_r_q0;
  output output_r_TVALID;
  input output_r_TREADY;
  output [7:0]output_r_TDATA;
  output [0:0]output_r_TKEEP;
  output [0:0]output_r_TSTRB;
  output [0:0]output_r_TUSER;
  output [0:0]output_r_TLAST;
  output [0:0]output_r_TID;
  output [0:0]output_r_TDEST;
  input [15:0]bound_x_min;
  input [15:0]bound_x_max;
  input [15:0]bound_y_min;
  input [15:0]bound_y_max;
endmodule
