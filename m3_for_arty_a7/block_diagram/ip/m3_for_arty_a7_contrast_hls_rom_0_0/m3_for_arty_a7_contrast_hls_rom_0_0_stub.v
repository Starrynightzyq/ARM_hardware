// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:50:29 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top m3_for_arty_a7_contrast_hls_rom_0_0 -prefix
//               m3_for_arty_a7_contrast_hls_rom_0_0_ m3_for_arty_a7_contrast_hls_rom_0_0_stub.v
// Design      : m3_for_arty_a7_contrast_hls_rom_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "contrast_hls_rom,Vivado 2018.2" *)
module m3_for_arty_a7_contrast_hls_rom_0_0(diff_sum_0_ap_vld, diff_sum_1_ap_vld, 
  diff_sum_2_ap_vld, diff_sum_3_ap_vld, diff_sum_4_ap_vld, diff_sum_5_ap_vld, 
  diff_sum_6_ap_vld, diff_sum_7_ap_vld, diff_sum_8_ap_vld, diff_sum_9_ap_vld, 
  diff_sum_10_ap_vld, s_axi_AXILiteS_AWADDR, s_axi_AXILiteS_AWVALID, 
  s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, s_axi_AXILiteS_WSTRB, 
  s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, s_axi_AXILiteS_BRESP, 
  s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, s_axi_AXILiteS_ARADDR, 
  s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, s_axi_AXILiteS_RDATA, 
  s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, 
  interrupt, input_r_TVALID, input_r_TREADY, input_r_TDATA, input_r_TKEEP, input_r_TSTRB, 
  input_r_TUSER, input_r_TLAST, input_r_TID, input_r_TDEST, diff_sum_0, diff_sum_1, diff_sum_2, 
  diff_sum_3, diff_sum_4, diff_sum_5, diff_sum_6, diff_sum_7, diff_sum_8, diff_sum_9, 
  diff_sum_10)
/* synthesis syn_black_box black_box_pad_pin="diff_sum_0_ap_vld,diff_sum_1_ap_vld,diff_sum_2_ap_vld,diff_sum_3_ap_vld,diff_sum_4_ap_vld,diff_sum_5_ap_vld,diff_sum_6_ap_vld,diff_sum_7_ap_vld,diff_sum_8_ap_vld,diff_sum_9_ap_vld,diff_sum_10_ap_vld,s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,input_r_TVALID,input_r_TREADY,input_r_TDATA[7:0],input_r_TKEEP[0:0],input_r_TSTRB[0:0],input_r_TUSER[0:0],input_r_TLAST[0:0],input_r_TID[0:0],input_r_TDEST[0:0],diff_sum_0[15:0],diff_sum_1[15:0],diff_sum_2[15:0],diff_sum_3[15:0],diff_sum_4[15:0],diff_sum_5[15:0],diff_sum_6[15:0],diff_sum_7[15:0],diff_sum_8[15:0],diff_sum_9[15:0],diff_sum_10[15:0]" */;
  output diff_sum_0_ap_vld;
  output diff_sum_1_ap_vld;
  output diff_sum_2_ap_vld;
  output diff_sum_3_ap_vld;
  output diff_sum_4_ap_vld;
  output diff_sum_5_ap_vld;
  output diff_sum_6_ap_vld;
  output diff_sum_7_ap_vld;
  output diff_sum_8_ap_vld;
  output diff_sum_9_ap_vld;
  output diff_sum_10_ap_vld;
  input [3:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [3:0]s_axi_AXILiteS_ARADDR;
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
  output [15:0]diff_sum_0;
  output [15:0]diff_sum_1;
  output [15:0]diff_sum_2;
  output [15:0]diff_sum_3;
  output [15:0]diff_sum_4;
  output [15:0]diff_sum_5;
  output [15:0]diff_sum_6;
  output [15:0]diff_sum_7;
  output [15:0]diff_sum_8;
  output [15:0]diff_sum_9;
  output [15:0]diff_sum_10;
endmodule
