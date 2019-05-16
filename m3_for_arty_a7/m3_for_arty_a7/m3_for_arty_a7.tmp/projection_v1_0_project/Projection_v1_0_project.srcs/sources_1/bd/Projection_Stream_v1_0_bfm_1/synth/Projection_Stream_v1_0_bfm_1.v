//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun May 12 11:16:21 2019
//Host        : DESKTOP-A56TUCA running 64-bit major release  (build 9200)
//Command     : generate_target Projection_Stream_v1_0_bfm_1.bd
//Design      : Projection_Stream_v1_0_bfm_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Projection_Stream_v1_0_bfm_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Projection_Stream_v1_0_bfm_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Projection_Stream_v1_0_bfm_1.hwdef" *) 
module Projection_Stream_v1_0_bfm_1
   (ACLK,
    ARESETN,
    M_AXIS_0_tdata,
    M_AXIS_0_tlast,
    M_AXIS_0_tready,
    M_AXIS_0_tstrb,
    M_AXIS_0_tvalid,
    S_AXIS_0_tdata,
    S_AXIS_0_tlast,
    S_AXIS_0_tready,
    S_AXIS_0_tstrb,
    S_AXIS_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S_AXIS_0:M_AXIS_0, ASSOCIATED_RESET ARESETN, CLK_DOMAIN Projection_Stream_v1_0_bfm_1_ACLK, FREQ_HZ 100000000, PHASE 0.000" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW" *) input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, CLK_DOMAIN Projection_Stream_v1_0_bfm_1_ACLK, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]M_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *) output M_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *) input M_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TSTRB" *) output [3:0]M_AXIS_0_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *) output M_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_0, CLK_DOMAIN Projection_Stream_v1_0_bfm_1_ACLK, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TLAST" *) input S_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TREADY" *) output S_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TSTRB" *) input [3:0]S_AXIS_0_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_0 TVALID" *) input S_AXIS_0_tvalid;

  wire [31:0]Projection_Stream_0_M_AXIS_TDATA;
  wire Projection_Stream_0_M_AXIS_TLAST;
  wire Projection_Stream_0_M_AXIS_TREADY;
  wire [3:0]Projection_Stream_0_M_AXIS_TSTRB;
  wire Projection_Stream_0_M_AXIS_TVALID;
  wire [31:0]S_AXIS_0_1_TDATA;
  wire S_AXIS_0_1_TLAST;
  wire S_AXIS_0_1_TREADY;
  wire [3:0]S_AXIS_0_1_TSTRB;
  wire S_AXIS_0_1_TVALID;
  wire aclk_net;
  wire aresetn_net;
  wire [31:0]master_0_M_AXI_ARADDR;
  wire [2:0]master_0_M_AXI_ARPROT;
  wire master_0_M_AXI_ARREADY;
  wire master_0_M_AXI_ARVALID;
  wire [31:0]master_0_M_AXI_AWADDR;
  wire [2:0]master_0_M_AXI_AWPROT;
  wire master_0_M_AXI_AWREADY;
  wire master_0_M_AXI_AWVALID;
  wire master_0_M_AXI_BREADY;
  wire [1:0]master_0_M_AXI_BRESP;
  wire master_0_M_AXI_BVALID;
  wire [31:0]master_0_M_AXI_RDATA;
  wire master_0_M_AXI_RREADY;
  wire [1:0]master_0_M_AXI_RRESP;
  wire master_0_M_AXI_RVALID;
  wire [31:0]master_0_M_AXI_WDATA;
  wire master_0_M_AXI_WREADY;
  wire [3:0]master_0_M_AXI_WSTRB;
  wire master_0_M_AXI_WVALID;

  assign M_AXIS_0_tdata[31:0] = Projection_Stream_0_M_AXIS_TDATA;
  assign M_AXIS_0_tlast = Projection_Stream_0_M_AXIS_TLAST;
  assign M_AXIS_0_tstrb[3:0] = Projection_Stream_0_M_AXIS_TSTRB;
  assign M_AXIS_0_tvalid = Projection_Stream_0_M_AXIS_TVALID;
  assign Projection_Stream_0_M_AXIS_TREADY = M_AXIS_0_tready;
  assign S_AXIS_0_1_TDATA = S_AXIS_0_tdata[31:0];
  assign S_AXIS_0_1_TLAST = S_AXIS_0_tlast;
  assign S_AXIS_0_1_TSTRB = S_AXIS_0_tstrb[3:0];
  assign S_AXIS_0_1_TVALID = S_AXIS_0_tvalid;
  assign S_AXIS_0_tready = S_AXIS_0_1_TREADY;
  assign aclk_net = ACLK;
  assign aresetn_net = ARESETN;
  Projection_Stream_v1_0_bfm_1_Projection_Stream_0_0 Projection_Stream_0
       (.ctrl_axi_aclk(aclk_net),
        .ctrl_axi_araddr(master_0_M_AXI_ARADDR[3:0]),
        .ctrl_axi_aresetn(aresetn_net),
        .ctrl_axi_arprot(master_0_M_AXI_ARPROT),
        .ctrl_axi_arready(master_0_M_AXI_ARREADY),
        .ctrl_axi_arvalid(master_0_M_AXI_ARVALID),
        .ctrl_axi_awaddr(master_0_M_AXI_AWADDR[3:0]),
        .ctrl_axi_awprot(master_0_M_AXI_AWPROT),
        .ctrl_axi_awready(master_0_M_AXI_AWREADY),
        .ctrl_axi_awvalid(master_0_M_AXI_AWVALID),
        .ctrl_axi_bready(master_0_M_AXI_BREADY),
        .ctrl_axi_bresp(master_0_M_AXI_BRESP),
        .ctrl_axi_bvalid(master_0_M_AXI_BVALID),
        .ctrl_axi_rdata(master_0_M_AXI_RDATA),
        .ctrl_axi_rready(master_0_M_AXI_RREADY),
        .ctrl_axi_rresp(master_0_M_AXI_RRESP),
        .ctrl_axi_rvalid(master_0_M_AXI_RVALID),
        .ctrl_axi_wdata(master_0_M_AXI_WDATA),
        .ctrl_axi_wready(master_0_M_AXI_WREADY),
        .ctrl_axi_wstrb(master_0_M_AXI_WSTRB),
        .ctrl_axi_wvalid(master_0_M_AXI_WVALID),
        .m_axis_aclk(aclk_net),
        .m_axis_aresetn(aresetn_net),
        .m_axis_tdata(Projection_Stream_0_M_AXIS_TDATA),
        .m_axis_tlast(Projection_Stream_0_M_AXIS_TLAST),
        .m_axis_tready(Projection_Stream_0_M_AXIS_TREADY),
        .m_axis_tstrb(Projection_Stream_0_M_AXIS_TSTRB),
        .m_axis_tvalid(Projection_Stream_0_M_AXIS_TVALID),
        .s_axis_aclk(aclk_net),
        .s_axis_aresetn(aresetn_net),
        .s_axis_tdata(S_AXIS_0_1_TDATA),
        .s_axis_tlast(S_AXIS_0_1_TLAST),
        .s_axis_tready(S_AXIS_0_1_TREADY),
        .s_axis_tstrb(S_AXIS_0_1_TSTRB),
        .s_axis_tvalid(S_AXIS_0_1_TVALID));
  Projection_Stream_v1_0_bfm_1_master_0_0 master_0
       (.aclk(aclk_net),
        .aresetn(aresetn_net),
        .m_axi_araddr(master_0_M_AXI_ARADDR),
        .m_axi_arprot(master_0_M_AXI_ARPROT),
        .m_axi_arready(master_0_M_AXI_ARREADY),
        .m_axi_arvalid(master_0_M_AXI_ARVALID),
        .m_axi_awaddr(master_0_M_AXI_AWADDR),
        .m_axi_awprot(master_0_M_AXI_AWPROT),
        .m_axi_awready(master_0_M_AXI_AWREADY),
        .m_axi_awvalid(master_0_M_AXI_AWVALID),
        .m_axi_bready(master_0_M_AXI_BREADY),
        .m_axi_bresp(master_0_M_AXI_BRESP),
        .m_axi_bvalid(master_0_M_AXI_BVALID),
        .m_axi_rdata(master_0_M_AXI_RDATA),
        .m_axi_rready(master_0_M_AXI_RREADY),
        .m_axi_rresp(master_0_M_AXI_RRESP),
        .m_axi_rvalid(master_0_M_AXI_RVALID),
        .m_axi_wdata(master_0_M_AXI_WDATA),
        .m_axi_wready(master_0_M_AXI_WREADY),
        .m_axi_wstrb(master_0_M_AXI_WSTRB),
        .m_axi_wvalid(master_0_M_AXI_WVALID));
endmodule
