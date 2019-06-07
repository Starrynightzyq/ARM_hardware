// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  7 12:58:41 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top m3_for_arty_a7_axi_quad_spi_0_2 -prefix
//               m3_for_arty_a7_axi_quad_spi_0_2_ m3_for_arty_a7_axi_quad_spi_0_2_stub.v
// Design      : m3_for_arty_a7_axi_quad_spi_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_quad_spi,Vivado 2018.2" *)
module m3_for_arty_a7_axi_quad_spi_0_2(ext_spi_clk, s_axi4_aclk, s_axi4_aresetn, 
  s_axi4_awaddr, s_axi4_awlen, s_axi4_awsize, s_axi4_awburst, s_axi4_awlock, s_axi4_awcache, 
  s_axi4_awprot, s_axi4_awvalid, s_axi4_awready, s_axi4_wdata, s_axi4_wstrb, s_axi4_wlast, 
  s_axi4_wvalid, s_axi4_wready, s_axi4_bresp, s_axi4_bvalid, s_axi4_bready, s_axi4_araddr, 
  s_axi4_arlen, s_axi4_arsize, s_axi4_arburst, s_axi4_arlock, s_axi4_arcache, s_axi4_arprot, 
  s_axi4_arvalid, s_axi4_arready, s_axi4_rdata, s_axi4_rresp, s_axi4_rlast, s_axi4_rvalid, 
  s_axi4_rready, io0_i, io0_o, io0_t, io1_i, io1_o, io1_t, sck_i, sck_o, sck_t, ss_i, ss_o, ss_t, 
  ip2intc_irpt)
/* synthesis syn_black_box black_box_pad_pin="ext_spi_clk,s_axi4_aclk,s_axi4_aresetn,s_axi4_awaddr[23:0],s_axi4_awlen[7:0],s_axi4_awsize[2:0],s_axi4_awburst[1:0],s_axi4_awlock,s_axi4_awcache[3:0],s_axi4_awprot[2:0],s_axi4_awvalid,s_axi4_awready,s_axi4_wdata[31:0],s_axi4_wstrb[3:0],s_axi4_wlast,s_axi4_wvalid,s_axi4_wready,s_axi4_bresp[1:0],s_axi4_bvalid,s_axi4_bready,s_axi4_araddr[23:0],s_axi4_arlen[7:0],s_axi4_arsize[2:0],s_axi4_arburst[1:0],s_axi4_arlock,s_axi4_arcache[3:0],s_axi4_arprot[2:0],s_axi4_arvalid,s_axi4_arready,s_axi4_rdata[31:0],s_axi4_rresp[1:0],s_axi4_rlast,s_axi4_rvalid,s_axi4_rready,io0_i,io0_o,io0_t,io1_i,io1_o,io1_t,sck_i,sck_o,sck_t,ss_i[0:0],ss_o[0:0],ss_t,ip2intc_irpt" */;
  input ext_spi_clk;
  input s_axi4_aclk;
  input s_axi4_aresetn;
  input [23:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [31:0]s_axi4_wdata;
  input [3:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [31:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  input io0_i;
  output io0_o;
  output io0_t;
  input io1_i;
  output io1_o;
  output io1_t;
  input sck_i;
  output sck_o;
  output sck_t;
  input [0:0]ss_i;
  output [0:0]ss_o;
  output ss_t;
  output ip2intc_irpt;
endmodule
