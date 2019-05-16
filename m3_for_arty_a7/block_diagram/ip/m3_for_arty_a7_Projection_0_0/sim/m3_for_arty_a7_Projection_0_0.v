// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: starrynightzyq.com:user:Projection:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_Projection_0_0 (
  bound_l_p,
  bound_r_p,
  character_num_v,
  character_num_v_valid,
  bound_u_p,
  bound_d_p,
  character_num_h,
  character_num_h_valid,
  hcount,
  vcount,
  m_axi_tdata,
  m_axi_tstrb,
  m_axi_tlast,
  m_axi_tvalid,
  m_axi_tready,
  m_axi_aclk,
  m_axi_aresetn,
  ctrl_axi_awaddr,
  ctrl_axi_awprot,
  ctrl_axi_awvalid,
  ctrl_axi_awready,
  ctrl_axi_wdata,
  ctrl_axi_wstrb,
  ctrl_axi_wvalid,
  ctrl_axi_wready,
  ctrl_axi_bresp,
  ctrl_axi_bvalid,
  ctrl_axi_bready,
  ctrl_axi_araddr,
  ctrl_axi_arprot,
  ctrl_axi_arvalid,
  ctrl_axi_arready,
  ctrl_axi_rdata,
  ctrl_axi_rresp,
  ctrl_axi_rvalid,
  ctrl_axi_rready,
  ctrl_axi_aclk,
  ctrl_axi_aresetn,
  s_axi_tdata,
  s_axi_tstrb,
  s_axi_tlast,
  s_axi_tvalid,
  s_axi_tready,
  s_axi_aclk,
  s_axi_aresetn
);

output wire [159 : 0] bound_l_p;
output wire [159 : 0] bound_r_p;
output wire [3 : 0] character_num_v;
output wire character_num_v_valid;
output wire [159 : 0] bound_u_p;
output wire [159 : 0] bound_d_p;
output wire [3 : 0] character_num_h;
output wire character_num_h_valid;
output wire [9 : 0] hcount;
output wire [9 : 0] vcount;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI TDATA" *)
output wire [7 : 0] m_axi_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI TSTRB" *)
output wire [0 : 0] m_axi_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI TLAST" *)
output wire m_axi_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI TVALID" *)
output wire m_axi_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI TREADY" *)
input wire m_axi_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_CLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_CLK CLK" *)
input wire m_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_RST, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_RST RST" *)
input wire m_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI AWADDR" *)
input wire [3 : 0] ctrl_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI AWPROT" *)
input wire [2 : 0] ctrl_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI AWVALID" *)
input wire ctrl_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI AWREADY" *)
output wire ctrl_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI WDATA" *)
input wire [31 : 0] ctrl_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI WSTRB" *)
input wire [3 : 0] ctrl_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI WVALID" *)
input wire ctrl_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI WREADY" *)
output wire ctrl_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI BRESP" *)
output wire [1 : 0] ctrl_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI BVALID" *)
output wire ctrl_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI BREADY" *)
input wire ctrl_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI ARADDR" *)
input wire [3 : 0] ctrl_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI ARPROT" *)
input wire [2 : 0] ctrl_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI ARVALID" *)
input wire ctrl_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI ARREADY" *)
output wire ctrl_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI RDATA" *)
output wire [31 : 0] ctrl_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI RRESP" *)
output wire [1 : 0] ctrl_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI RVALID" *)
output wire ctrl_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Ctrl_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series\
_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Ctrl_AXI RREADY" *)
input wire ctrl_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Ctrl_AXI_CLK, ASSOCIATED_BUSIF Ctrl_AXI, ASSOCIATED_RESET ctrl_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Ctrl_AXI_CLK CLK" *)
input wire ctrl_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Ctrl_AXI_RST, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Ctrl_AXI_RST RST" *)
input wire ctrl_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TDATA" *)
input wire [7 : 0] s_axi_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TSTRB" *)
input wire [0 : 0] s_axi_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TLAST" *)
input wire s_axi_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TVALID" *)
input wire s_axi_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} val\
ue 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format\
 long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER_WIDTH 1}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TREADY" *)
output wire s_axi_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *)
input wire s_axi_aresetn;

  Projection_v1_0 #(
    .C_M_AXI_TDATA_WIDTH(8),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_Ctrl_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_Ctrl_AXI_ADDR_WIDTH(4),  // Width of S_AXI address bus
    .C_S_AXI_TDATA_WIDTH(8)  // AXI4Stream sink: Data Width
  ) inst (
    .bound_l_p(bound_l_p),
    .bound_r_p(bound_r_p),
    .character_num_v(character_num_v),
    .character_num_v_valid(character_num_v_valid),
    .bound_u_p(bound_u_p),
    .bound_d_p(bound_d_p),
    .character_num_h(character_num_h),
    .character_num_h_valid(character_num_h_valid),
    .hcount(hcount),
    .vcount(vcount),
    .m_axi_tdata(m_axi_tdata),
    .m_axi_tstrb(m_axi_tstrb),
    .m_axi_tlast(m_axi_tlast),
    .m_axi_tvalid(m_axi_tvalid),
    .m_axi_tready(m_axi_tready),
    .m_axi_aclk(m_axi_aclk),
    .m_axi_aresetn(m_axi_aresetn),
    .ctrl_axi_awaddr(ctrl_axi_awaddr),
    .ctrl_axi_awprot(ctrl_axi_awprot),
    .ctrl_axi_awvalid(ctrl_axi_awvalid),
    .ctrl_axi_awready(ctrl_axi_awready),
    .ctrl_axi_wdata(ctrl_axi_wdata),
    .ctrl_axi_wstrb(ctrl_axi_wstrb),
    .ctrl_axi_wvalid(ctrl_axi_wvalid),
    .ctrl_axi_wready(ctrl_axi_wready),
    .ctrl_axi_bresp(ctrl_axi_bresp),
    .ctrl_axi_bvalid(ctrl_axi_bvalid),
    .ctrl_axi_bready(ctrl_axi_bready),
    .ctrl_axi_araddr(ctrl_axi_araddr),
    .ctrl_axi_arprot(ctrl_axi_arprot),
    .ctrl_axi_arvalid(ctrl_axi_arvalid),
    .ctrl_axi_arready(ctrl_axi_arready),
    .ctrl_axi_rdata(ctrl_axi_rdata),
    .ctrl_axi_rresp(ctrl_axi_rresp),
    .ctrl_axi_rvalid(ctrl_axi_rvalid),
    .ctrl_axi_rready(ctrl_axi_rready),
    .ctrl_axi_aclk(ctrl_axi_aclk),
    .ctrl_axi_aresetn(ctrl_axi_aresetn),
    .s_axi_tdata(s_axi_tdata),
    .s_axi_tstrb(s_axi_tstrb),
    .s_axi_tlast(s_axi_tlast),
    .s_axi_tvalid(s_axi_tvalid),
    .s_axi_tready(s_axi_tready),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn)
  );
endmodule
