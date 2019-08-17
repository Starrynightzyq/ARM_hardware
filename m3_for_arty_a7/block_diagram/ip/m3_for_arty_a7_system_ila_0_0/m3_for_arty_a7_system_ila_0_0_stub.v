// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Aug 17 23:44:01 2019
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
module m3_for_arty_a7_system_ila_0_0(clk, SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, 
  SLOT_0_AXI_awsize, SLOT_0_AXI_awvalid, SLOT_0_AXI_awready, SLOT_0_AXI_wdata, 
  SLOT_0_AXI_wstrb, SLOT_0_AXI_wlast, SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, 
  SLOT_0_AXI_bresp, SLOT_0_AXI_bvalid, SLOT_0_AXI_bready, SLOT_0_AXI_araddr, 
  SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, 
  SLOT_0_AXI_rdata, SLOT_0_AXI_rlast, SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, 
  SLOT_1_AXI_awaddr, SLOT_1_AXI_awlen, SLOT_1_AXI_awsize, SLOT_1_AXI_awvalid, 
  SLOT_1_AXI_awready, SLOT_1_AXI_wdata, SLOT_1_AXI_wlast, SLOT_1_AXI_wvalid, 
  SLOT_1_AXI_wready, SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_araddr, 
  SLOT_1_AXI_arlen, SLOT_1_AXI_arsize, SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, 
  SLOT_1_AXI_rdata, SLOT_1_AXI_rresp, SLOT_1_AXI_rlast, SLOT_1_AXI_rvalid, 
  SLOT_1_AXI_rready, SLOT_2_AXIS_tdata, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tuser, 
  SLOT_2_AXIS_tvalid, SLOT_2_AXIS_tready, SLOT_3_AXIS_tdata, SLOT_3_AXIS_tkeep, 
  SLOT_3_AXIS_tlast, SLOT_3_AXIS_tuser, SLOT_3_AXIS_tvalid, SLOT_3_AXIS_tready, 
  SLOT_4_AXIS_tid, SLOT_4_AXIS_tdest, SLOT_4_AXIS_tdata, SLOT_4_AXIS_tstrb, 
  SLOT_4_AXIS_tkeep, SLOT_4_AXIS_tlast, SLOT_4_AXIS_tuser, SLOT_4_AXIS_tvalid, 
  SLOT_4_AXIS_tready, SLOT_5_AXIS_tdata, SLOT_5_AXIS_tkeep, SLOT_5_AXIS_tlast, 
  SLOT_5_AXIS_tuser, SLOT_5_AXIS_tvalid, SLOT_5_AXIS_tready, SLOT_6_AXIS_tid, 
  SLOT_6_AXIS_tdest, SLOT_6_AXIS_tdata, SLOT_6_AXIS_tstrb, SLOT_6_AXIS_tkeep, 
  SLOT_6_AXIS_tlast, SLOT_6_AXIS_tuser, SLOT_6_AXIS_tvalid, SLOT_6_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[63:0],SLOT_0_AXI_wstrb[7:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[63:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awaddr[31:0],SLOT_1_AXI_awlen[7:0],SLOT_1_AXI_awsize[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[63:0],SLOT_1_AXI_wlast,SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[31:0],SLOT_1_AXI_arlen[7:0],SLOT_1_AXI_arsize[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[63:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rlast,SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXIS_tdata[23:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tuser[0:0],SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[23:0],SLOT_3_AXIS_tkeep[2:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tuser[0:0],SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tid[0:0],SLOT_4_AXIS_tdest[0:0],SLOT_4_AXIS_tdata[23:0],SLOT_4_AXIS_tstrb[2:0],SLOT_4_AXIS_tkeep[2:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tuser[0:0],SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,SLOT_5_AXIS_tdata[23:0],SLOT_5_AXIS_tkeep[2:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tuser[0:0],SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXIS_tid[0:0],SLOT_6_AXIS_tdest[0:0],SLOT_6_AXIS_tdata[23:0],SLOT_6_AXIS_tstrb[2:0],SLOT_6_AXIS_tkeep[2:0],SLOT_6_AXIS_tlast,SLOT_6_AXIS_tuser[0:0],SLOT_6_AXIS_tvalid,SLOT_6_AXIS_tready,resetn" */;
  input clk;
  input [31:0]SLOT_0_AXI_awaddr;
  input [7:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_awready;
  input [63:0]SLOT_0_AXI_wdata;
  input [7:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [31:0]SLOT_0_AXI_araddr;
  input [7:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input SLOT_0_AXI_arready;
  input [63:0]SLOT_0_AXI_rdata;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [31:0]SLOT_1_AXI_awaddr;
  input [7:0]SLOT_1_AXI_awlen;
  input [2:0]SLOT_1_AXI_awsize;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_awready;
  input [63:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wvalid;
  input SLOT_1_AXI_wready;
  input SLOT_1_AXI_bvalid;
  input SLOT_1_AXI_bready;
  input [31:0]SLOT_1_AXI_araddr;
  input [7:0]SLOT_1_AXI_arlen;
  input [2:0]SLOT_1_AXI_arsize;
  input SLOT_1_AXI_arvalid;
  input SLOT_1_AXI_arready;
  input [63:0]SLOT_1_AXI_rdata;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rvalid;
  input SLOT_1_AXI_rready;
  input [23:0]SLOT_2_AXIS_tdata;
  input SLOT_2_AXIS_tlast;
  input [0:0]SLOT_2_AXIS_tuser;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [23:0]SLOT_3_AXIS_tdata;
  input [2:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input [0:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input [0:0]SLOT_4_AXIS_tid;
  input [0:0]SLOT_4_AXIS_tdest;
  input [23:0]SLOT_4_AXIS_tdata;
  input [2:0]SLOT_4_AXIS_tstrb;
  input [2:0]SLOT_4_AXIS_tkeep;
  input SLOT_4_AXIS_tlast;
  input [0:0]SLOT_4_AXIS_tuser;
  input SLOT_4_AXIS_tvalid;
  input SLOT_4_AXIS_tready;
  input [23:0]SLOT_5_AXIS_tdata;
  input [2:0]SLOT_5_AXIS_tkeep;
  input SLOT_5_AXIS_tlast;
  input [0:0]SLOT_5_AXIS_tuser;
  input SLOT_5_AXIS_tvalid;
  input SLOT_5_AXIS_tready;
  input [0:0]SLOT_6_AXIS_tid;
  input [0:0]SLOT_6_AXIS_tdest;
  input [23:0]SLOT_6_AXIS_tdata;
  input [2:0]SLOT_6_AXIS_tstrb;
  input [2:0]SLOT_6_AXIS_tkeep;
  input SLOT_6_AXIS_tlast;
  input [0:0]SLOT_6_AXIS_tuser;
  input SLOT_6_AXIS_tvalid;
  input SLOT_6_AXIS_tready;
  input resetn;
endmodule
