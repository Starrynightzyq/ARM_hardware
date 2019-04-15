//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Apr 15 00:12:46 2019
//Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7.bd
//Design      : m3_for_arty_a7
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Clocks_and_Resets_imp_1WLR2TP
   (aux_reset_in,
    clk_100M,
    clk_cpu,
    clk_qspi,
    dbgresetn,
    interconnect_aresetn,
    peripheral_aresetn,
    peripheral_aresetn1,
    sys_clock,
    sys_reset_n,
    sysresetn,
    sysresetreq);
  input aux_reset_in;
  output clk_100M;
  output clk_cpu;
  output clk_qspi;
  output [0:0]dbgresetn;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_aresetn1;
  input sys_clock;
  input sys_reset_n;
  output [0:0]sysresetn;
  input sysresetreq;

  wire aux_reset_in_1;
  wire clk_wiz_0_clk_100M;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire dcm_locked_1;
  wire [0:0]i_interconnect_aresetn_Res;
  wire [0:0]i_inv_dbgresetn_Res;
  wire [0:0]i_inv_sysresetn1_Res;
  wire [0:0]i_peripheral_aresetn1_Res;
  wire [0:0]i_sysresetn_or_Res;
  wire [0:0]proc_sys_reset_DAPLink_interconnect_aresetn;
  wire proc_sys_reset_DAPLink_mb_reset;
  wire [0:0]proc_sys_reset_DAPLink_peripheral_aresetn;
  wire [0:0]proc_sys_reset_base_interconnect_aresetn;
  wire proc_sys_reset_base_mb_reset;
  wire [0:0]proc_sys_reset_base_peripheral_aresetn;
  wire sys_clock_1;
  wire sys_reset_n;
  wire sysresetreq;
  wire [0:0]xlconstant_0_dout;

  assign aux_reset_in_1 = aux_reset_in;
  assign clk_100M = clk_wiz_0_clk_100M;
  assign clk_cpu = clk_wiz_0_clk_out1;
  assign clk_qspi = clk_wiz_0_clk_out2;
  assign dbgresetn[0] = i_inv_dbgresetn_Res;
  assign interconnect_aresetn[0] = i_interconnect_aresetn_Res;
  assign peripheral_aresetn[0] = i_peripheral_aresetn1_Res;
  assign peripheral_aresetn1[0] = proc_sys_reset_DAPLink_peripheral_aresetn;
  assign sys_clock_1 = sys_clock;
  assign sysresetn[0] = i_inv_sysresetn1_Res;
  m3_for_arty_a7_clk_wiz_0_0 clk_wiz_0
       (.clk_100M(clk_wiz_0_clk_100M),
        .clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(dcm_locked_1));
  m3_for_arty_a7_i_interconnect_aresetn_0 i_interconnect_aresetn
       (.Op1(proc_sys_reset_base_interconnect_aresetn),
        .Op2(proc_sys_reset_DAPLink_interconnect_aresetn),
        .Res(i_interconnect_aresetn_Res));
  m3_for_arty_a7_i_inv_dbgresetn_0 i_inv_dbgresetn
       (.Op1(proc_sys_reset_base_mb_reset),
        .Res(i_inv_dbgresetn_Res));
  m3_for_arty_a7_i_inv_sysresetn1_0 i_inv_sysresetn1
       (.Op1(i_sysresetn_or_Res),
        .Res(i_inv_sysresetn1_Res));
  m3_for_arty_a7_i_peripheral_aresetn1_0 i_peripheral_aresetn1
       (.Op1(proc_sys_reset_base_peripheral_aresetn),
        .Op2(proc_sys_reset_DAPLink_peripheral_aresetn),
        .Res(i_peripheral_aresetn1_Res));
  m3_for_arty_a7_i_sysresetn_or_0 i_sysresetn_or
       (.Op1(proc_sys_reset_base_mb_reset),
        .Op2(proc_sys_reset_DAPLink_mb_reset),
        .Res(i_sysresetn_or_Res));
  m3_for_arty_a7_proc_sys_reset_DAPLink_0 proc_sys_reset_DAPLink
       (.aux_reset_in(aux_reset_in_1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(xlconstant_0_dout),
        .interconnect_aresetn(proc_sys_reset_DAPLink_interconnect_aresetn),
        .mb_debug_sys_rst(sysresetreq),
        .mb_reset(proc_sys_reset_DAPLink_mb_reset),
        .peripheral_aresetn(proc_sys_reset_DAPLink_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  m3_for_arty_a7_proc_sys_reset_base_0 proc_sys_reset_base
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(sys_reset_n),
        .interconnect_aresetn(proc_sys_reset_base_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_base_mb_reset),
        .peripheral_aresetn(proc_sys_reset_base_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  m3_for_arty_a7_xlconstant_1_1 xlconstant_1
       (.dout(xlconstant_0_dout));
endmodule

module daplink_if_0_imp_5IHHOQ
   (C_AXI_araddr,
    C_AXI_arburst,
    C_AXI_arcache,
    C_AXI_arlen,
    C_AXI_arlock,
    C_AXI_arprot,
    C_AXI_arready,
    C_AXI_arsize,
    C_AXI_arvalid,
    C_AXI_awaddr,
    C_AXI_awburst,
    C_AXI_awcache,
    C_AXI_awlen,
    C_AXI_awlock,
    C_AXI_awprot,
    C_AXI_awready,
    C_AXI_awsize,
    C_AXI_awvalid,
    C_AXI_bready,
    C_AXI_bresp,
    C_AXI_bvalid,
    C_AXI_rdata,
    C_AXI_rlast,
    C_AXI_rready,
    C_AXI_rresp,
    C_AXI_rvalid,
    C_AXI_wdata,
    C_AXI_wlast,
    C_AXI_wready,
    C_AXI_wstrb,
    C_AXI_wvalid,
    DAPLink_fittedn,
    SWCLK,
    SWDI,
    SWDO,
    SWDOEN,
    S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    Shield_out_tri_o,
    UART_out_rxd,
    UART_out_txd,
    ext_spi_clk,
    interrupt,
    nSRST,
    qspi_irq,
    qspi_xip_irq,
    s_axi_aclk,
    s_axi_aresetn,
    spi_irq);
  input [31:0]C_AXI_araddr;
  input [1:0]C_AXI_arburst;
  input [3:0]C_AXI_arcache;
  input [3:0]C_AXI_arlen;
  input [1:0]C_AXI_arlock;
  input [2:0]C_AXI_arprot;
  output C_AXI_arready;
  input [2:0]C_AXI_arsize;
  input C_AXI_arvalid;
  input [31:0]C_AXI_awaddr;
  input [1:0]C_AXI_awburst;
  input [3:0]C_AXI_awcache;
  input [3:0]C_AXI_awlen;
  input [1:0]C_AXI_awlock;
  input [2:0]C_AXI_awprot;
  output C_AXI_awready;
  input [2:0]C_AXI_awsize;
  input C_AXI_awvalid;
  input C_AXI_bready;
  output [1:0]C_AXI_bresp;
  output C_AXI_bvalid;
  output [31:0]C_AXI_rdata;
  output C_AXI_rlast;
  input C_AXI_rready;
  output [1:0]C_AXI_rresp;
  output C_AXI_rvalid;
  input [31:0]C_AXI_wdata;
  input C_AXI_wlast;
  output C_AXI_wready;
  input [3:0]C_AXI_wstrb;
  input C_AXI_wvalid;
  output DAPLink_fittedn;
  output SWCLK;
  output SWDI;
  input SWDO;
  input SWDOEN;
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  inout [15:0]Shield_out_tri_o;
  input UART_out_rxd;
  output UART_out_txd;
  input ext_spi_clk;
  output interrupt;
  output nSRST;
  output qspi_irq;
  output qspi_xip_irq;
  input s_axi_aclk;
  input s_axi_aresetn;
  output spi_irq;

  wire [31:0]C_AXI_1_ARADDR;
  wire [1:0]C_AXI_1_ARBURST;
  wire [3:0]C_AXI_1_ARCACHE;
  wire [3:0]C_AXI_1_ARLEN;
  wire [1:0]C_AXI_1_ARLOCK;
  wire [2:0]C_AXI_1_ARPROT;
  wire C_AXI_1_ARREADY;
  wire [2:0]C_AXI_1_ARSIZE;
  wire C_AXI_1_ARVALID;
  wire [31:0]C_AXI_1_AWADDR;
  wire [1:0]C_AXI_1_AWBURST;
  wire [3:0]C_AXI_1_AWCACHE;
  wire [3:0]C_AXI_1_AWLEN;
  wire [1:0]C_AXI_1_AWLOCK;
  wire [2:0]C_AXI_1_AWPROT;
  wire C_AXI_1_AWREADY;
  wire [2:0]C_AXI_1_AWSIZE;
  wire C_AXI_1_AWVALID;
  wire C_AXI_1_BREADY;
  wire [1:0]C_AXI_1_BRESP;
  wire C_AXI_1_BVALID;
  wire [31:0]C_AXI_1_RDATA;
  wire C_AXI_1_RLAST;
  wire C_AXI_1_RREADY;
  wire [1:0]C_AXI_1_RRESP;
  wire C_AXI_1_RVALID;
  wire [31:0]C_AXI_1_WDATA;
  wire C_AXI_1_WLAST;
  wire C_AXI_1_WREADY;
  wire [3:0]C_AXI_1_WSTRB;
  wire C_AXI_1_WVALID;
  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire DAPLink_to_Arty_shie_1_DAPLink_fittedn;
  wire DAPLink_to_Arty_shie_1_SWCLK;
  wire DAPLink_to_Arty_shie_1_SWDI;
  wire DAPLink_to_Arty_shie_1_SWRSTn;
  wire DAPLink_to_Arty_shie_1_UART_RxD;
  wire DAPLink_to_Arty_shie_1_UART_TxD;
  wire [15:0]DAPLink_to_Arty_shie_1_shield_TRI_O;
  wire DAPLink_to_Arty_shield_0_uart_rxd_axi;
  wire SWDOEN_1;
  wire SWDO_1;
  wire [31:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire [0:0]S_AXI_1_ARREADY;
  wire [3:0]S_AXI_1_ARREGION;
  wire [2:0]S_AXI_1_ARSIZE;
  wire [0:0]S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire [0:0]S_AXI_1_AWREADY;
  wire [3:0]S_AXI_1_AWREGION;
  wire [2:0]S_AXI_1_AWSIZE;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire [0:0]S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RLAST;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire [0:0]S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire [0:0]S_AXI_1_WLAST;
  wire [0:0]S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire axi_interconnect_0_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire axi_interconnect_0_M03_AXI_AWREADY;
  wire axi_interconnect_0_M03_AXI_AWVALID;
  wire axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire axi_interconnect_0_M03_AXI_WVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_ARBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_ARLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_ARLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARSIZE;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_AWBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_AWLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_AWLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWSIZE;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RLAST;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WLAST;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire axi_quad_spi_1_SPI_0_IO0_I;
  wire axi_quad_spi_1_SPI_0_IO0_O;
  wire axi_quad_spi_1_SPI_0_IO0_T;
  wire axi_quad_spi_1_SPI_0_IO1_I;
  wire axi_quad_spi_1_SPI_0_IO1_O;
  wire axi_quad_spi_1_SPI_0_IO1_T;
  wire axi_quad_spi_1_SPI_0_IO2_I;
  wire axi_quad_spi_1_SPI_0_IO2_O;
  wire axi_quad_spi_1_SPI_0_IO2_T;
  wire axi_quad_spi_1_SPI_0_IO3_I;
  wire axi_quad_spi_1_SPI_0_IO3_O;
  wire axi_quad_spi_1_SPI_0_IO3_T;
  wire axi_quad_spi_1_SPI_0_SCK_O;
  wire [0:0]axi_quad_spi_1_SPI_0_SS_O;
  wire axi_quad_spi_1_ip2intc_irpt;
  wire axi_single_spi_0_SPI_0_IO0_I;
  wire axi_single_spi_0_SPI_0_IO0_O;
  wire axi_single_spi_0_SPI_0_IO0_T;
  wire axi_single_spi_0_SPI_0_IO1_I;
  wire axi_single_spi_0_SPI_0_IO1_O;
  wire axi_single_spi_0_SPI_0_IO1_T;
  wire axi_single_spi_0_SPI_0_SCK_O;
  wire [0:0]axi_single_spi_0_SPI_0_SS_O;
  wire axi_single_spi_0_ip2intc_irpt;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_0_tx;
  wire axi_xip_quad_spi_0_SPI_0_IO0_I;
  wire axi_xip_quad_spi_0_SPI_0_IO0_O;
  wire axi_xip_quad_spi_0_SPI_0_IO0_T;
  wire axi_xip_quad_spi_0_SPI_0_IO1_I;
  wire axi_xip_quad_spi_0_SPI_0_IO1_O;
  wire axi_xip_quad_spi_0_SPI_0_IO1_T;
  wire axi_xip_quad_spi_0_SPI_0_IO2_I;
  wire axi_xip_quad_spi_0_SPI_0_IO2_O;
  wire axi_xip_quad_spi_0_SPI_0_IO2_T;
  wire axi_xip_quad_spi_0_SPI_0_IO3_I;
  wire axi_xip_quad_spi_0_SPI_0_IO3_O;
  wire axi_xip_quad_spi_0_SPI_0_IO3_T;
  wire axi_xip_quad_spi_0_SPI_0_SCK_O;
  wire [0:0]axi_xip_quad_spi_0_SPI_0_SS_O;
  wire axi_xip_quad_spi_0_ip2intc_irpt;
  wire ext_spi_clk_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;

  assign C_AXI_1_ARADDR = C_AXI_araddr[31:0];
  assign C_AXI_1_ARBURST = C_AXI_arburst[1:0];
  assign C_AXI_1_ARCACHE = C_AXI_arcache[3:0];
  assign C_AXI_1_ARLEN = C_AXI_arlen[3:0];
  assign C_AXI_1_ARLOCK = C_AXI_arlock[1:0];
  assign C_AXI_1_ARPROT = C_AXI_arprot[2:0];
  assign C_AXI_1_ARSIZE = C_AXI_arsize[2:0];
  assign C_AXI_1_ARVALID = C_AXI_arvalid;
  assign C_AXI_1_AWADDR = C_AXI_awaddr[31:0];
  assign C_AXI_1_AWBURST = C_AXI_awburst[1:0];
  assign C_AXI_1_AWCACHE = C_AXI_awcache[3:0];
  assign C_AXI_1_AWLEN = C_AXI_awlen[3:0];
  assign C_AXI_1_AWLOCK = C_AXI_awlock[1:0];
  assign C_AXI_1_AWPROT = C_AXI_awprot[2:0];
  assign C_AXI_1_AWSIZE = C_AXI_awsize[2:0];
  assign C_AXI_1_AWVALID = C_AXI_awvalid;
  assign C_AXI_1_BREADY = C_AXI_bready;
  assign C_AXI_1_RREADY = C_AXI_rready;
  assign C_AXI_1_WDATA = C_AXI_wdata[31:0];
  assign C_AXI_1_WLAST = C_AXI_wlast;
  assign C_AXI_1_WSTRB = C_AXI_wstrb[3:0];
  assign C_AXI_1_WVALID = C_AXI_wvalid;
  assign C_AXI_arready = C_AXI_1_ARREADY;
  assign C_AXI_awready = C_AXI_1_AWREADY;
  assign C_AXI_bresp[1:0] = C_AXI_1_BRESP;
  assign C_AXI_bvalid = C_AXI_1_BVALID;
  assign C_AXI_rdata[31:0] = C_AXI_1_RDATA;
  assign C_AXI_rlast = C_AXI_1_RLAST;
  assign C_AXI_rresp[1:0] = C_AXI_1_RRESP;
  assign C_AXI_rvalid = C_AXI_1_RVALID;
  assign C_AXI_wready = C_AXI_1_WREADY;
  assign Conn1_ARADDR = S_AXI1_araddr[31:0];
  assign Conn1_ARVALID = S_AXI1_arvalid;
  assign Conn1_AWADDR = S_AXI1_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI1_awvalid;
  assign Conn1_BREADY = S_AXI1_bready;
  assign Conn1_RREADY = S_AXI1_rready;
  assign Conn1_WDATA = S_AXI1_wdata[31:0];
  assign Conn1_WSTRB = S_AXI1_wstrb[3:0];
  assign Conn1_WVALID = S_AXI1_wvalid;
  assign DAPLink_fittedn = DAPLink_to_Arty_shie_1_DAPLink_fittedn;
  assign DAPLink_to_Arty_shie_1_UART_RxD = UART_out_rxd;
  assign SWCLK = DAPLink_to_Arty_shie_1_SWCLK;
  assign SWDI = DAPLink_to_Arty_shie_1_SWDI;
  assign SWDOEN_1 = SWDOEN;
  assign SWDO_1 = SWDO;
  assign S_AXI1_arready = Conn1_ARREADY;
  assign S_AXI1_awready = Conn1_AWREADY;
  assign S_AXI1_bresp[1:0] = Conn1_BRESP;
  assign S_AXI1_bvalid = Conn1_BVALID;
  assign S_AXI1_rdata[31:0] = Conn1_RDATA;
  assign S_AXI1_rresp[1:0] = Conn1_RRESP;
  assign S_AXI1_rvalid = Conn1_RVALID;
  assign S_AXI1_wready = Conn1_WREADY;
  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock[0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARREGION = S_AXI_arregion[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid[0];
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock[0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWREGION = S_AXI_awregion[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid[0];
  assign S_AXI_1_BREADY = S_AXI_bready[0];
  assign S_AXI_1_RREADY = S_AXI_rready[0];
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WLAST = S_AXI_wlast[0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid[0];
  assign S_AXI_arready[0] = S_AXI_1_ARREADY;
  assign S_AXI_awready[0] = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid[0] = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rlast[0] = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid[0] = S_AXI_1_RVALID;
  assign S_AXI_wready[0] = S_AXI_1_WREADY;
  assign UART_out_txd = DAPLink_to_Arty_shie_1_UART_TxD;
  assign ext_spi_clk_1 = ext_spi_clk;
  assign interrupt = axi_uartlite_0_interrupt;
  assign nSRST = DAPLink_to_Arty_shie_1_SWRSTn;
  assign qspi_irq = axi_quad_spi_1_ip2intc_irpt;
  assign qspi_xip_irq = axi_xip_quad_spi_0_ip2intc_irpt;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign spi_irq = axi_single_spi_0_ip2intc_irpt;
  m3_for_arty_a7_DAPLink_to_Arty_shield_0_0 DAPLink_to_Arty_shield_0
       (.DAPLink_fittedn(DAPLink_to_Arty_shie_1_DAPLink_fittedn),
        .SWCLK(DAPLink_to_Arty_shie_1_SWCLK),
        .SWDI(DAPLink_to_Arty_shie_1_SWDI),
        .SWDO(SWDO_1),
        .SWDOEN(SWDOEN_1),
        .SWRSTn(DAPLink_to_Arty_shie_1_SWRSTn),
        .ext_spi_clk(ext_spi_clk_1),
        .qspi_ck_o(axi_quad_spi_1_SPI_0_SCK_O),
        .qspi_q0_i(axi_quad_spi_1_SPI_0_IO0_I),
        .qspi_q0_o(axi_quad_spi_1_SPI_0_IO0_O),
        .qspi_q0_t(axi_quad_spi_1_SPI_0_IO0_T),
        .qspi_q1_i(axi_quad_spi_1_SPI_0_IO1_I),
        .qspi_q1_o(axi_quad_spi_1_SPI_0_IO1_O),
        .qspi_q1_t(axi_quad_spi_1_SPI_0_IO1_T),
        .qspi_q2_i(axi_quad_spi_1_SPI_0_IO2_I),
        .qspi_q2_o(axi_quad_spi_1_SPI_0_IO2_O),
        .qspi_q2_t(axi_quad_spi_1_SPI_0_IO2_T),
        .qspi_q3_i(axi_quad_spi_1_SPI_0_IO3_I),
        .qspi_q3_o(axi_quad_spi_1_SPI_0_IO3_O),
        .qspi_q3_t(axi_quad_spi_1_SPI_0_IO3_T),
        .qspi_sel(axi_gpio_0_gpio_io_o[0]),
        .qspi_ss_o(axi_quad_spi_1_SPI_0_SS_O),
        .qspi_xip_ck_o(axi_xip_quad_spi_0_SPI_0_SCK_O),
        .qspi_xip_q0_i(axi_xip_quad_spi_0_SPI_0_IO0_I),
        .qspi_xip_q0_o(axi_xip_quad_spi_0_SPI_0_IO0_O),
        .qspi_xip_q0_t(axi_xip_quad_spi_0_SPI_0_IO0_T),
        .qspi_xip_q1_i(axi_xip_quad_spi_0_SPI_0_IO1_I),
        .qspi_xip_q1_o(axi_xip_quad_spi_0_SPI_0_IO1_O),
        .qspi_xip_q1_t(axi_xip_quad_spi_0_SPI_0_IO1_T),
        .qspi_xip_q2_i(axi_xip_quad_spi_0_SPI_0_IO2_I),
        .qspi_xip_q2_o(axi_xip_quad_spi_0_SPI_0_IO2_O),
        .qspi_xip_q2_t(axi_xip_quad_spi_0_SPI_0_IO2_T),
        .qspi_xip_q3_i(axi_xip_quad_spi_0_SPI_0_IO3_I),
        .qspi_xip_q3_o(axi_xip_quad_spi_0_SPI_0_IO3_O),
        .qspi_xip_q3_t(axi_xip_quad_spi_0_SPI_0_IO3_T),
        .qspi_xip_ss_o(axi_xip_quad_spi_0_SPI_0_SS_O),
        .shield_41_to_26(Shield_out_tri_o[15:0]),
        .spi_ck_o(axi_single_spi_0_SPI_0_SCK_O),
        .spi_q0_i(axi_single_spi_0_SPI_0_IO0_I),
        .spi_q0_o(axi_single_spi_0_SPI_0_IO0_O),
        .spi_q0_t(axi_single_spi_0_SPI_0_IO0_T),
        .spi_q1_i(axi_single_spi_0_SPI_0_IO1_I),
        .spi_q1_o(axi_single_spi_0_SPI_0_IO1_O),
        .spi_q1_t(axi_single_spi_0_SPI_0_IO1_T),
        .spi_ss_o(axi_single_spi_0_SPI_0_SS_O),
        .uart_rxd_arty(DAPLink_to_Arty_shie_1_UART_RxD),
        .uart_rxd_axi(DAPLink_to_Arty_shield_0_uart_rxd_axi),
        .uart_txd_arty(DAPLink_to_Arty_shie_1_UART_TxD),
        .uart_txd_axi(axi_uartlite_0_tx));
  m3_for_arty_a7_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  m3_for_arty_a7_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(s_axi_aclk_1),
        .ARESETN(s_axi_aresetn_1),
        .M00_ACLK(s_axi_aclk_1),
        .M00_ARESETN(s_axi_aresetn_1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(s_axi_aclk_1),
        .M01_ARESETN(s_axi_aresetn_1),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(s_axi_aclk_1),
        .M02_ARESETN(s_axi_aresetn_1),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(s_axi_aclk_1),
        .M03_ARESETN(s_axi_aresetn_1),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .S00_ACLK(s_axi_aclk_1),
        .S00_ARESETN(s_axi_aresetn_1),
        .S00_AXI_araddr(S_AXI_1_ARADDR),
        .S00_AXI_arburst(S_AXI_1_ARBURST),
        .S00_AXI_arcache(S_AXI_1_ARCACHE),
        .S00_AXI_arlen(S_AXI_1_ARLEN),
        .S00_AXI_arlock(S_AXI_1_ARLOCK),
        .S00_AXI_arprot(S_AXI_1_ARPROT),
        .S00_AXI_arqos(S_AXI_1_ARQOS),
        .S00_AXI_arready(S_AXI_1_ARREADY),
        .S00_AXI_arregion(S_AXI_1_ARREGION),
        .S00_AXI_arsize(S_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S_AXI_1_ARVALID),
        .S00_AXI_awaddr(S_AXI_1_AWADDR),
        .S00_AXI_awburst(S_AXI_1_AWBURST),
        .S00_AXI_awcache(S_AXI_1_AWCACHE),
        .S00_AXI_awlen(S_AXI_1_AWLEN),
        .S00_AXI_awlock(S_AXI_1_AWLOCK),
        .S00_AXI_awprot(S_AXI_1_AWPROT),
        .S00_AXI_awqos(S_AXI_1_AWQOS),
        .S00_AXI_awready(S_AXI_1_AWREADY),
        .S00_AXI_awregion(S_AXI_1_AWREGION),
        .S00_AXI_awsize(S_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S_AXI_1_AWVALID),
        .S00_AXI_bready(S_AXI_1_BREADY),
        .S00_AXI_bresp(S_AXI_1_BRESP),
        .S00_AXI_bvalid(S_AXI_1_BVALID),
        .S00_AXI_rdata(S_AXI_1_RDATA),
        .S00_AXI_rlast(S_AXI_1_RLAST),
        .S00_AXI_rready(S_AXI_1_RREADY),
        .S00_AXI_rresp(S_AXI_1_RRESP),
        .S00_AXI_rvalid(S_AXI_1_RVALID),
        .S00_AXI_wdata(S_AXI_1_WDATA),
        .S00_AXI_wlast(S_AXI_1_WLAST),
        .S00_AXI_wready(S_AXI_1_WREADY),
        .S00_AXI_wstrb(S_AXI_1_WSTRB),
        .S00_AXI_wvalid(S_AXI_1_WVALID));
  m3_for_arty_a7_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(s_axi_aclk_1),
        .aresetn(s_axi_aresetn_1),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_protocol_convert_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_protocol_convert_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_protocol_convert_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_protocol_convert_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_protocol_convert_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_protocol_convert_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rlast(axi_protocol_convert_0_M_AXI_RLAST),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wlast(axi_protocol_convert_0_M_AXI_WLAST),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(C_AXI_1_ARADDR),
        .s_axi_arburst(C_AXI_1_ARBURST),
        .s_axi_arcache(C_AXI_1_ARCACHE),
        .s_axi_arlen(C_AXI_1_ARLEN),
        .s_axi_arlock(C_AXI_1_ARLOCK),
        .s_axi_arprot(C_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(C_AXI_1_ARREADY),
        .s_axi_arsize(C_AXI_1_ARSIZE),
        .s_axi_arvalid(C_AXI_1_ARVALID),
        .s_axi_awaddr(C_AXI_1_AWADDR),
        .s_axi_awburst(C_AXI_1_AWBURST),
        .s_axi_awcache(C_AXI_1_AWCACHE),
        .s_axi_awlen(C_AXI_1_AWLEN),
        .s_axi_awlock(C_AXI_1_AWLOCK),
        .s_axi_awprot(C_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(C_AXI_1_AWREADY),
        .s_axi_awsize(C_AXI_1_AWSIZE),
        .s_axi_awvalid(C_AXI_1_AWVALID),
        .s_axi_bready(C_AXI_1_BREADY),
        .s_axi_bresp(C_AXI_1_BRESP),
        .s_axi_bvalid(C_AXI_1_BVALID),
        .s_axi_rdata(C_AXI_1_RDATA),
        .s_axi_rlast(C_AXI_1_RLAST),
        .s_axi_rready(C_AXI_1_RREADY),
        .s_axi_rresp(C_AXI_1_RRESP),
        .s_axi_rvalid(C_AXI_1_RVALID),
        .s_axi_wdata(C_AXI_1_WDATA),
        .s_axi_wlast(C_AXI_1_WLAST),
        .s_axi_wready(C_AXI_1_WREADY),
        .s_axi_wstrb(C_AXI_1_WSTRB),
        .s_axi_wvalid(C_AXI_1_WVALID));
  m3_for_arty_a7_axi_quad_spi_0_1 axi_quad_spi_0
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(axi_quad_spi_1_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_1_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_1_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_1_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_1_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_1_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_1_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_1_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_1_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_1_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_1_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_1_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_1_ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_interconnect_0_M03_AXI_ARADDR[6:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M03_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_quad_spi_1_SPI_0_SCK_O),
        .ss_i(1'b0),
        .ss_o(axi_quad_spi_1_SPI_0_SS_O));
  m3_for_arty_a7_axi_single_spi_0_0 axi_single_spi_0
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(axi_single_spi_0_SPI_0_IO0_I),
        .io0_o(axi_single_spi_0_SPI_0_IO0_O),
        .io0_t(axi_single_spi_0_SPI_0_IO0_T),
        .io1_i(axi_single_spi_0_SPI_0_IO1_I),
        .io1_o(axi_single_spi_0_SPI_0_IO1_O),
        .io1_t(axi_single_spi_0_SPI_0_IO1_T),
        .ip2intc_irpt(axi_single_spi_0_ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[6:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_single_spi_0_SPI_0_SCK_O),
        .ss_i(1'b0),
        .ss_o(axi_single_spi_0_SPI_0_SS_O));
  m3_for_arty_a7_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(DAPLink_to_Arty_shield_0_uart_rxd_axi),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[3:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[3:0]),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .tx(axi_uartlite_0_tx));
  m3_for_arty_a7_axi_xip_quad_spi_0_0 axi_xip_quad_spi_0
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(axi_xip_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_xip_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_xip_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_xip_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_xip_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_xip_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_xip_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_xip_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_xip_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_xip_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_xip_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_xip_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_xip_quad_spi_0_ip2intc_irpt),
        .s_axi4_aclk(s_axi_aclk_1),
        .s_axi4_araddr(axi_protocol_convert_0_M_AXI_ARADDR[23:0]),
        .s_axi4_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .s_axi4_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .s_axi4_aresetn(s_axi_aresetn_1),
        .s_axi4_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .s_axi4_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .s_axi4_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .s_axi4_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .s_axi4_arsize(axi_protocol_convert_0_M_AXI_ARSIZE),
        .s_axi4_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .s_axi4_awaddr(axi_protocol_convert_0_M_AXI_AWADDR[23:0]),
        .s_axi4_awburst(axi_protocol_convert_0_M_AXI_AWBURST),
        .s_axi4_awcache(axi_protocol_convert_0_M_AXI_AWCACHE),
        .s_axi4_awlen(axi_protocol_convert_0_M_AXI_AWLEN),
        .s_axi4_awlock(axi_protocol_convert_0_M_AXI_AWLOCK),
        .s_axi4_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .s_axi4_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .s_axi4_awsize(axi_protocol_convert_0_M_AXI_AWSIZE),
        .s_axi4_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .s_axi4_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .s_axi4_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .s_axi4_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .s_axi4_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .s_axi4_rlast(axi_protocol_convert_0_M_AXI_RLAST),
        .s_axi4_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .s_axi4_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .s_axi4_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .s_axi4_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .s_axi4_wlast(axi_protocol_convert_0_M_AXI_WLAST),
        .s_axi4_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .s_axi4_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .s_axi4_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[6:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_xip_quad_spi_0_SPI_0_SCK_O),
        .ss_i(1'b0),
        .ss_o(axi_xip_quad_spi_0_SPI_0_SS_O));
endmodule

module m00_couplers_imp_13L60SF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_JNWG9E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1JHKYGL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m01_couplers_ARADDR;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [31:0]auto_pc_to_m01_couplers_AWADDR;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [1:0]m01_couplers_to_auto_pc_ARBURST;
  wire [3:0]m01_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m01_couplers_to_auto_pc_ARLEN;
  wire [0:0]m01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire [3:0]m01_couplers_to_auto_pc_ARQOS;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire [3:0]m01_couplers_to_auto_pc_ARREGION;
  wire [2:0]m01_couplers_to_auto_pc_ARSIZE;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [1:0]m01_couplers_to_auto_pc_AWBURST;
  wire [3:0]m01_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m01_couplers_to_auto_pc_AWLEN;
  wire [0:0]m01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire [3:0]m01_couplers_to_auto_pc_AWQOS;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire [3:0]m01_couplers_to_auto_pc_AWREGION;
  wire [2:0]m01_couplers_to_auto_pc_AWSIZE;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire m01_couplers_to_auto_pc_RLAST;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WLAST;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_4B5460
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_18D5QAL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m02_couplers_ARADDR;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [31:0]auto_pc_to_m02_couplers_AWADDR;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_pc_ARADDR;
  wire [1:0]m02_couplers_to_auto_pc_ARBURST;
  wire [3:0]m02_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m02_couplers_to_auto_pc_ARLEN;
  wire [0:0]m02_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_pc_ARPROT;
  wire [3:0]m02_couplers_to_auto_pc_ARQOS;
  wire m02_couplers_to_auto_pc_ARREADY;
  wire [3:0]m02_couplers_to_auto_pc_ARREGION;
  wire [2:0]m02_couplers_to_auto_pc_ARSIZE;
  wire m02_couplers_to_auto_pc_ARVALID;
  wire [31:0]m02_couplers_to_auto_pc_AWADDR;
  wire [1:0]m02_couplers_to_auto_pc_AWBURST;
  wire [3:0]m02_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m02_couplers_to_auto_pc_AWLEN;
  wire [0:0]m02_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_pc_AWPROT;
  wire [3:0]m02_couplers_to_auto_pc_AWQOS;
  wire m02_couplers_to_auto_pc_AWREADY;
  wire [3:0]m02_couplers_to_auto_pc_AWREGION;
  wire [2:0]m02_couplers_to_auto_pc_AWSIZE;
  wire m02_couplers_to_auto_pc_AWVALID;
  wire m02_couplers_to_auto_pc_BREADY;
  wire [1:0]m02_couplers_to_auto_pc_BRESP;
  wire m02_couplers_to_auto_pc_BVALID;
  wire [31:0]m02_couplers_to_auto_pc_RDATA;
  wire m02_couplers_to_auto_pc_RLAST;
  wire m02_couplers_to_auto_pc_RREADY;
  wire [1:0]m02_couplers_to_auto_pc_RRESP;
  wire m02_couplers_to_auto_pc_RVALID;
  wire [31:0]m02_couplers_to_auto_pc_WDATA;
  wire m02_couplers_to_auto_pc_WLAST;
  wire m02_couplers_to_auto_pc_WREADY;
  wire [3:0]m02_couplers_to_auto_pc_WSTRB;
  wire m02_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m02_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m02_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m02_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m02_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m02_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m02_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_OAWDIO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1NKLPAV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_8J5MKA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m03_couplers_ARADDR;
  wire [2:0]auto_pc_to_m03_couplers_ARPROT;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [12:0]auto_pc_to_m03_couplers_AWADDR;
  wire [2:0]auto_pc_to_m03_couplers_AWPROT;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [1:0]m03_couplers_to_auto_pc_ARBURST;
  wire [3:0]m03_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m03_couplers_to_auto_pc_ARLEN;
  wire [0:0]m03_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire [3:0]m03_couplers_to_auto_pc_ARQOS;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire [3:0]m03_couplers_to_auto_pc_ARREGION;
  wire [2:0]m03_couplers_to_auto_pc_ARSIZE;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [1:0]m03_couplers_to_auto_pc_AWBURST;
  wire [3:0]m03_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m03_couplers_to_auto_pc_AWLEN;
  wire [0:0]m03_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire [3:0]m03_couplers_to_auto_pc_AWQOS;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire [3:0]m03_couplers_to_auto_pc_AWREGION;
  wire [2:0]m03_couplers_to_auto_pc_AWSIZE;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire m03_couplers_to_auto_pc_RLAST;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WLAST;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m03_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arburst(m03_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m03_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awburst(m03_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m03_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m03_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
endmodule

module m04_couplers_imp_D9WIKT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_pc_ARADDR;
  wire [1:0]m04_couplers_to_auto_pc_ARBURST;
  wire [3:0]m04_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m04_couplers_to_auto_pc_ARLEN;
  wire [0:0]m04_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_pc_ARPROT;
  wire [3:0]m04_couplers_to_auto_pc_ARQOS;
  wire m04_couplers_to_auto_pc_ARREADY;
  wire [3:0]m04_couplers_to_auto_pc_ARREGION;
  wire [2:0]m04_couplers_to_auto_pc_ARSIZE;
  wire m04_couplers_to_auto_pc_ARVALID;
  wire [31:0]m04_couplers_to_auto_pc_AWADDR;
  wire [1:0]m04_couplers_to_auto_pc_AWBURST;
  wire [3:0]m04_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m04_couplers_to_auto_pc_AWLEN;
  wire [0:0]m04_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_pc_AWPROT;
  wire [3:0]m04_couplers_to_auto_pc_AWQOS;
  wire m04_couplers_to_auto_pc_AWREADY;
  wire [3:0]m04_couplers_to_auto_pc_AWREGION;
  wire [2:0]m04_couplers_to_auto_pc_AWSIZE;
  wire m04_couplers_to_auto_pc_AWVALID;
  wire m04_couplers_to_auto_pc_BREADY;
  wire [1:0]m04_couplers_to_auto_pc_BRESP;
  wire m04_couplers_to_auto_pc_BVALID;
  wire [31:0]m04_couplers_to_auto_pc_RDATA;
  wire m04_couplers_to_auto_pc_RLAST;
  wire m04_couplers_to_auto_pc_RREADY;
  wire [1:0]m04_couplers_to_auto_pc_RRESP;
  wire m04_couplers_to_auto_pc_RVALID;
  wire [31:0]m04_couplers_to_auto_pc_WDATA;
  wire m04_couplers_to_auto_pc_WLAST;
  wire m04_couplers_to_auto_pc_WREADY;
  wire [3:0]m04_couplers_to_auto_pc_WSTRB;
  wire m04_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m04_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m04_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m04_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m04_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_1CJX44Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [1:0]m05_couplers_to_m05_couplers_ARBURST;
  wire [3:0]m05_couplers_to_m05_couplers_ARCACHE;
  wire [7:0]m05_couplers_to_m05_couplers_ARLEN;
  wire [0:0]m05_couplers_to_m05_couplers_ARLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [3:0]m05_couplers_to_m05_couplers_ARQOS;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [3:0]m05_couplers_to_m05_couplers_ARREGION;
  wire [2:0]m05_couplers_to_m05_couplers_ARSIZE;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [1:0]m05_couplers_to_m05_couplers_AWBURST;
  wire [3:0]m05_couplers_to_m05_couplers_AWCACHE;
  wire [7:0]m05_couplers_to_m05_couplers_AWLEN;
  wire [0:0]m05_couplers_to_m05_couplers_AWLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [3:0]m05_couplers_to_m05_couplers_AWQOS;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [3:0]m05_couplers_to_m05_couplers_AWREGION;
  wire [2:0]m05_couplers_to_m05_couplers_AWSIZE;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RLAST;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WLAST;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m05_couplers_to_m05_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m05_couplers_to_m05_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m05_couplers_to_m05_couplers_ARLEN;
  assign M_AXI_arlock[0] = m05_couplers_to_m05_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m05_couplers_to_m05_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m05_couplers_to_m05_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m05_couplers_to_m05_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m05_couplers_to_m05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m05_couplers_to_m05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m05_couplers_to_m05_couplers_AWLEN;
  assign M_AXI_awlock[0] = m05_couplers_to_m05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m05_couplers_to_m05_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m05_couplers_to_m05_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m05_couplers_to_m05_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wlast[0] = m05_couplers_to_m05_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rlast[0] = m05_couplers_to_m05_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_m05_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_m05_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_m05_couplers_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_m05_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_m05_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_m05_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_m05_couplers_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_m05_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RLAST = M_AXI_rlast[0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WLAST = S_AXI_wlast[0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_1WI4A9U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m06_couplers_ARADDR;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [31:0]auto_pc_to_m06_couplers_AWADDR;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_pc_ARADDR;
  wire [1:0]m06_couplers_to_auto_pc_ARBURST;
  wire [3:0]m06_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m06_couplers_to_auto_pc_ARLEN;
  wire [0:0]m06_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m06_couplers_to_auto_pc_ARPROT;
  wire [3:0]m06_couplers_to_auto_pc_ARQOS;
  wire m06_couplers_to_auto_pc_ARREADY;
  wire [3:0]m06_couplers_to_auto_pc_ARREGION;
  wire [2:0]m06_couplers_to_auto_pc_ARSIZE;
  wire m06_couplers_to_auto_pc_ARVALID;
  wire [31:0]m06_couplers_to_auto_pc_AWADDR;
  wire [1:0]m06_couplers_to_auto_pc_AWBURST;
  wire [3:0]m06_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m06_couplers_to_auto_pc_AWLEN;
  wire [0:0]m06_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m06_couplers_to_auto_pc_AWPROT;
  wire [3:0]m06_couplers_to_auto_pc_AWQOS;
  wire m06_couplers_to_auto_pc_AWREADY;
  wire [3:0]m06_couplers_to_auto_pc_AWREGION;
  wire [2:0]m06_couplers_to_auto_pc_AWSIZE;
  wire m06_couplers_to_auto_pc_AWVALID;
  wire m06_couplers_to_auto_pc_BREADY;
  wire [1:0]m06_couplers_to_auto_pc_BRESP;
  wire m06_couplers_to_auto_pc_BVALID;
  wire [31:0]m06_couplers_to_auto_pc_RDATA;
  wire m06_couplers_to_auto_pc_RLAST;
  wire m06_couplers_to_auto_pc_RREADY;
  wire [1:0]m06_couplers_to_auto_pc_RRESP;
  wire m06_couplers_to_auto_pc_RVALID;
  wire [31:0]m06_couplers_to_auto_pc_WDATA;
  wire m06_couplers_to_auto_pc_WLAST;
  wire m06_couplers_to_auto_pc_WREADY;
  wire [3:0]m06_couplers_to_auto_pc_WSTRB;
  wire m06_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m06_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_6 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m06_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m06_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m06_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m06_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m06_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m06_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m06_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_X8EK9X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m07_couplers_ARADDR;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [31:0]auto_pc_to_m07_couplers_AWADDR;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_pc_ARADDR;
  wire [1:0]m07_couplers_to_auto_pc_ARBURST;
  wire [3:0]m07_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m07_couplers_to_auto_pc_ARLEN;
  wire [0:0]m07_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m07_couplers_to_auto_pc_ARPROT;
  wire [3:0]m07_couplers_to_auto_pc_ARQOS;
  wire m07_couplers_to_auto_pc_ARREADY;
  wire [3:0]m07_couplers_to_auto_pc_ARREGION;
  wire [2:0]m07_couplers_to_auto_pc_ARSIZE;
  wire m07_couplers_to_auto_pc_ARVALID;
  wire [31:0]m07_couplers_to_auto_pc_AWADDR;
  wire [1:0]m07_couplers_to_auto_pc_AWBURST;
  wire [3:0]m07_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m07_couplers_to_auto_pc_AWLEN;
  wire [0:0]m07_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m07_couplers_to_auto_pc_AWPROT;
  wire [3:0]m07_couplers_to_auto_pc_AWQOS;
  wire m07_couplers_to_auto_pc_AWREADY;
  wire [3:0]m07_couplers_to_auto_pc_AWREGION;
  wire [2:0]m07_couplers_to_auto_pc_AWSIZE;
  wire m07_couplers_to_auto_pc_AWVALID;
  wire m07_couplers_to_auto_pc_BREADY;
  wire [1:0]m07_couplers_to_auto_pc_BRESP;
  wire m07_couplers_to_auto_pc_BVALID;
  wire [31:0]m07_couplers_to_auto_pc_RDATA;
  wire m07_couplers_to_auto_pc_RLAST;
  wire m07_couplers_to_auto_pc_RREADY;
  wire [1:0]m07_couplers_to_auto_pc_RRESP;
  wire m07_couplers_to_auto_pc_RVALID;
  wire [31:0]m07_couplers_to_auto_pc_WDATA;
  wire m07_couplers_to_auto_pc_WLAST;
  wire m07_couplers_to_auto_pc_WREADY;
  wire [3:0]m07_couplers_to_auto_pc_WSTRB;
  wire m07_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m07_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_7 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m07_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m07_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m07_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m07_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m07_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m07_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m07_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m07_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m07_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_pc_WVALID));
endmodule

module m08_couplers_imp_15AL04S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m08_couplers_ARADDR;
  wire auto_pc_to_m08_couplers_ARREADY;
  wire auto_pc_to_m08_couplers_ARVALID;
  wire [31:0]auto_pc_to_m08_couplers_AWADDR;
  wire auto_pc_to_m08_couplers_AWREADY;
  wire auto_pc_to_m08_couplers_AWVALID;
  wire auto_pc_to_m08_couplers_BREADY;
  wire [1:0]auto_pc_to_m08_couplers_BRESP;
  wire auto_pc_to_m08_couplers_BVALID;
  wire [31:0]auto_pc_to_m08_couplers_RDATA;
  wire auto_pc_to_m08_couplers_RREADY;
  wire [1:0]auto_pc_to_m08_couplers_RRESP;
  wire auto_pc_to_m08_couplers_RVALID;
  wire [31:0]auto_pc_to_m08_couplers_WDATA;
  wire auto_pc_to_m08_couplers_WREADY;
  wire [3:0]auto_pc_to_m08_couplers_WSTRB;
  wire auto_pc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_pc_ARADDR;
  wire [1:0]m08_couplers_to_auto_pc_ARBURST;
  wire [3:0]m08_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m08_couplers_to_auto_pc_ARLEN;
  wire [0:0]m08_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m08_couplers_to_auto_pc_ARPROT;
  wire [3:0]m08_couplers_to_auto_pc_ARQOS;
  wire m08_couplers_to_auto_pc_ARREADY;
  wire [3:0]m08_couplers_to_auto_pc_ARREGION;
  wire [2:0]m08_couplers_to_auto_pc_ARSIZE;
  wire m08_couplers_to_auto_pc_ARVALID;
  wire [31:0]m08_couplers_to_auto_pc_AWADDR;
  wire [1:0]m08_couplers_to_auto_pc_AWBURST;
  wire [3:0]m08_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m08_couplers_to_auto_pc_AWLEN;
  wire [0:0]m08_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m08_couplers_to_auto_pc_AWPROT;
  wire [3:0]m08_couplers_to_auto_pc_AWQOS;
  wire m08_couplers_to_auto_pc_AWREADY;
  wire [3:0]m08_couplers_to_auto_pc_AWREGION;
  wire [2:0]m08_couplers_to_auto_pc_AWSIZE;
  wire m08_couplers_to_auto_pc_AWVALID;
  wire m08_couplers_to_auto_pc_BREADY;
  wire [1:0]m08_couplers_to_auto_pc_BRESP;
  wire m08_couplers_to_auto_pc_BVALID;
  wire [31:0]m08_couplers_to_auto_pc_RDATA;
  wire m08_couplers_to_auto_pc_RLAST;
  wire m08_couplers_to_auto_pc_RREADY;
  wire [1:0]m08_couplers_to_auto_pc_RRESP;
  wire m08_couplers_to_auto_pc_RVALID;
  wire [31:0]m08_couplers_to_auto_pc_WDATA;
  wire m08_couplers_to_auto_pc_WLAST;
  wire m08_couplers_to_auto_pc_WREADY;
  wire [3:0]m08_couplers_to_auto_pc_WSTRB;
  wire m08_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m08_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m08_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m08_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m08_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m08_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m08_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_8 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m08_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m08_couplers_WVALID),
        .s_axi_araddr(m08_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m08_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m08_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m08_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m08_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m08_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m08_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m08_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m08_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m08_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m08_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m08_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m08_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m08_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m08_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m08_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m08_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m08_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m08_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m08_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m08_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m08_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m08_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m08_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m08_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_pc_WVALID));
endmodule

module m09_couplers_imp_63E9XN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m09_couplers_ARADDR;
  wire auto_pc_to_m09_couplers_ARREADY;
  wire auto_pc_to_m09_couplers_ARVALID;
  wire [31:0]auto_pc_to_m09_couplers_AWADDR;
  wire auto_pc_to_m09_couplers_AWREADY;
  wire auto_pc_to_m09_couplers_AWVALID;
  wire auto_pc_to_m09_couplers_BREADY;
  wire [1:0]auto_pc_to_m09_couplers_BRESP;
  wire auto_pc_to_m09_couplers_BVALID;
  wire [31:0]auto_pc_to_m09_couplers_RDATA;
  wire auto_pc_to_m09_couplers_RREADY;
  wire [1:0]auto_pc_to_m09_couplers_RRESP;
  wire auto_pc_to_m09_couplers_RVALID;
  wire [31:0]auto_pc_to_m09_couplers_WDATA;
  wire auto_pc_to_m09_couplers_WREADY;
  wire auto_pc_to_m09_couplers_WVALID;
  wire [31:0]m09_couplers_to_auto_pc_ARADDR;
  wire [1:0]m09_couplers_to_auto_pc_ARBURST;
  wire [3:0]m09_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m09_couplers_to_auto_pc_ARLEN;
  wire [0:0]m09_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m09_couplers_to_auto_pc_ARPROT;
  wire [3:0]m09_couplers_to_auto_pc_ARQOS;
  wire m09_couplers_to_auto_pc_ARREADY;
  wire [3:0]m09_couplers_to_auto_pc_ARREGION;
  wire [2:0]m09_couplers_to_auto_pc_ARSIZE;
  wire m09_couplers_to_auto_pc_ARVALID;
  wire [31:0]m09_couplers_to_auto_pc_AWADDR;
  wire [1:0]m09_couplers_to_auto_pc_AWBURST;
  wire [3:0]m09_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m09_couplers_to_auto_pc_AWLEN;
  wire [0:0]m09_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m09_couplers_to_auto_pc_AWPROT;
  wire [3:0]m09_couplers_to_auto_pc_AWQOS;
  wire m09_couplers_to_auto_pc_AWREADY;
  wire [3:0]m09_couplers_to_auto_pc_AWREGION;
  wire [2:0]m09_couplers_to_auto_pc_AWSIZE;
  wire m09_couplers_to_auto_pc_AWVALID;
  wire m09_couplers_to_auto_pc_BREADY;
  wire [1:0]m09_couplers_to_auto_pc_BRESP;
  wire m09_couplers_to_auto_pc_BVALID;
  wire [31:0]m09_couplers_to_auto_pc_RDATA;
  wire m09_couplers_to_auto_pc_RLAST;
  wire m09_couplers_to_auto_pc_RREADY;
  wire [1:0]m09_couplers_to_auto_pc_RRESP;
  wire m09_couplers_to_auto_pc_RVALID;
  wire [31:0]m09_couplers_to_auto_pc_WDATA;
  wire m09_couplers_to_auto_pc_WLAST;
  wire m09_couplers_to_auto_pc_WREADY;
  wire [3:0]m09_couplers_to_auto_pc_WSTRB;
  wire m09_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m09_couplers_WDATA;
  assign M_AXI_wvalid = auto_pc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m09_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m09_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m09_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m09_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m09_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m09_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m09_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m09_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m09_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m09_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m09_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m09_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m09_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m09_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m09_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m09_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_9 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m09_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m09_couplers_WREADY),
        .m_axi_wvalid(auto_pc_to_m09_couplers_WVALID),
        .s_axi_araddr(m09_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m09_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m09_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m09_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m09_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m09_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m09_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m09_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m09_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m09_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m09_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m09_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m09_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m09_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m09_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m09_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m09_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m09_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m09_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m09_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m09_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m09_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m09_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m09_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m09_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m09_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_pc_WVALID));
endmodule

module m10_couplers_imp_1R2RH3W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [1:0]m10_couplers_to_m10_couplers_ARBURST;
  wire [3:0]m10_couplers_to_m10_couplers_ARCACHE;
  wire [7:0]m10_couplers_to_m10_couplers_ARLEN;
  wire [0:0]m10_couplers_to_m10_couplers_ARLOCK;
  wire [2:0]m10_couplers_to_m10_couplers_ARPROT;
  wire [3:0]m10_couplers_to_m10_couplers_ARQOS;
  wire m10_couplers_to_m10_couplers_ARREADY;
  wire [2:0]m10_couplers_to_m10_couplers_ARSIZE;
  wire [0:0]m10_couplers_to_m10_couplers_ARUSER;
  wire m10_couplers_to_m10_couplers_ARVALID;
  wire [31:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [1:0]m10_couplers_to_m10_couplers_AWBURST;
  wire [3:0]m10_couplers_to_m10_couplers_AWCACHE;
  wire [7:0]m10_couplers_to_m10_couplers_AWLEN;
  wire [0:0]m10_couplers_to_m10_couplers_AWLOCK;
  wire [2:0]m10_couplers_to_m10_couplers_AWPROT;
  wire [3:0]m10_couplers_to_m10_couplers_AWQOS;
  wire m10_couplers_to_m10_couplers_AWREADY;
  wire [2:0]m10_couplers_to_m10_couplers_AWSIZE;
  wire [0:0]m10_couplers_to_m10_couplers_AWUSER;
  wire m10_couplers_to_m10_couplers_AWVALID;
  wire m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire m10_couplers_to_m10_couplers_RLAST;
  wire m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire m10_couplers_to_m10_couplers_WLAST;
  wire m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m10_couplers_to_m10_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m10_couplers_to_m10_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m10_couplers_to_m10_couplers_ARLEN;
  assign M_AXI_arlock[0] = m10_couplers_to_m10_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m10_couplers_to_m10_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m10_couplers_to_m10_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m10_couplers_to_m10_couplers_ARSIZE;
  assign M_AXI_aruser[0] = m10_couplers_to_m10_couplers_ARUSER;
  assign M_AXI_arvalid = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m10_couplers_to_m10_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m10_couplers_to_m10_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m10_couplers_to_m10_couplers_AWLEN;
  assign M_AXI_awlock[0] = m10_couplers_to_m10_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m10_couplers_to_m10_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m10_couplers_to_m10_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m10_couplers_to_m10_couplers_AWSIZE;
  assign M_AXI_awuser[0] = m10_couplers_to_m10_couplers_AWUSER;
  assign M_AXI_awvalid = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wlast = m10_couplers_to_m10_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rlast = m10_couplers_to_m10_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_m10_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m10_couplers_to_m10_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m10_couplers_to_m10_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m10_couplers_to_m10_couplers_ARLOCK = S_AXI_arlock[0];
  assign m10_couplers_to_m10_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_m10_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready;
  assign m10_couplers_to_m10_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m10_couplers_to_m10_couplers_ARUSER = S_AXI_aruser[0];
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_m10_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m10_couplers_to_m10_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m10_couplers_to_m10_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m10_couplers_to_m10_couplers_AWLOCK = S_AXI_awlock[0];
  assign m10_couplers_to_m10_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_m10_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready;
  assign m10_couplers_to_m10_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m10_couplers_to_m10_couplers_AWUSER = S_AXI_awuser[0];
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready;
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RLAST = M_AXI_rlast;
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready;
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WLAST = S_AXI_wlast;
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "m3_for_arty_a7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=m3_for_arty_a7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=75,numReposBlks=53,numNonXlnxBlks=4,numHierBlks=22,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=16,da_board_cnt=19,da_bram_cntlr_cnt=3,da_clkrst_cnt=11,da_mb_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "m3_for_arty_a7.hwdef" *) 
module m3_for_arty_a7
   (DAPLink_tri_o,
    DDR2_0_addr,
    DDR2_0_ba,
    DDR2_0_cas_n,
    DDR2_0_ck_n,
    DDR2_0_ck_p,
    DDR2_0_cke,
    DDR2_0_cs_n,
    DDR2_0_dm,
    DDR2_0_dq,
    DDR2_0_dqs_n,
    DDR2_0_dqs_p,
    DDR2_0_odt,
    DDR2_0_ras_n,
    DDR2_0_we_n,
    TDI,
    TDO,
    cmos_data,
    cmos_href,
    cmos_iic_scl_i,
    cmos_iic_scl_o,
    cmos_iic_scl_t,
    cmos_iic_sda_i,
    cmos_iic_sda_o,
    cmos_iic_sda_t,
    cmos_pclk,
    cmos_pwdn_tri_o,
    cmos_rst_tri_o,
    cmos_vsync,
    dip_switches_4bits_tri_i,
    led_4bits_tri_i,
    led_4bits_tri_o,
    led_4bits_tri_t,
    nTRST,
    qspi_flash_io0_i,
    qspi_flash_io0_o,
    qspi_flash_io0_t,
    qspi_flash_io1_i,
    qspi_flash_io1_o,
    qspi_flash_io1_t,
    qspi_flash_io2_i,
    qspi_flash_io2_o,
    qspi_flash_io2_t,
    qspi_flash_io3_i,
    qspi_flash_io3_o,
    qspi_flash_io3_t,
    qspi_flash_ss_i,
    qspi_flash_ss_o,
    qspi_flash_ss_t,
    reset,
    sys_clock,
    temp_sensor_scl_i,
    temp_sensor_scl_o,
    temp_sensor_scl_t,
    temp_sensor_sda_i,
    temp_sensor_sda_o,
    temp_sensor_sda_t,
    usb_uart_rxd,
    usb_uart_txd,
    vga_pBlue_0,
    vga_pGreen_0,
    vga_pHSync_0,
    vga_pRed_0,
    vga_pVSync_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 DAPLink TRI_O" *) inout [15:0]DAPLink_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR2_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [12:0]DDR2_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 BA" *) output [2:0]DDR2_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 CAS_N" *) output DDR2_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 CK_N" *) output [0:0]DDR2_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 CK_P" *) output [0:0]DDR2_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 CKE" *) output [0:0]DDR2_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 CS_N" *) output [0:0]DDR2_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 DM" *) output [1:0]DDR2_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 DQ" *) inout [15:0]DDR2_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 DQS_N" *) inout [1:0]DDR2_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 DQS_P" *) inout [1:0]DDR2_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 ODT" *) output [0:0]DDR2_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 RAS_N" *) output DDR2_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR2_0 WE_N" *) output DDR2_0_we_n;
  input TDI;
  inout [0:0]TDO;
  input [7:0]cmos_data;
  input cmos_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic SCL_I" *) input cmos_iic_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic SCL_O" *) output cmos_iic_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic SCL_T" *) output cmos_iic_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic SDA_I" *) input cmos_iic_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic SDA_O" *) output cmos_iic_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmos_iic SDA_T" *) output cmos_iic_sda_t;
  input cmos_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cmos_pwdn TRI_O" *) output [0:0]cmos_pwdn_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cmos_rst TRI_O" *) output [0:0]cmos_rst_tri_o;
  input cmos_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_4bits TRI_I" *) input [3:0]dip_switches_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_I" *) input [3:0]led_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_O" *) output [3:0]led_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_T" *) output [3:0]led_4bits_tri_t;
  input nTRST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_I" *) input qspi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_O" *) output qspi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_T" *) output qspi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_I" *) input qspi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_O" *) output qspi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_T" *) output qspi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_I" *) input qspi_flash_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_O" *) output qspi_flash_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_T" *) output qspi_flash_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_I" *) input qspi_flash_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_O" *) output qspi_flash_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_T" *) output qspi_flash_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_I" *) input qspi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_O" *) output qspi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_T" *) output qspi_flash_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN m3_for_arty_a7_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 temp_sensor SCL_I" *) input temp_sensor_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 temp_sensor SCL_O" *) output temp_sensor_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 temp_sensor SCL_T" *) output temp_sensor_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 temp_sensor SDA_I" *) input temp_sensor_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 temp_sensor SDA_O" *) output temp_sensor_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 temp_sensor SDA_T" *) output temp_sensor_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  wire [0:0]Clocks_and_Resets_dbgresetn;
  wire [0:0]Clocks_and_Resets_sysresetn;
  wire CortexM3DbgAXI_0_SWDO;
  wire CortexM3DbgAXI_0_SWDOEN;
  wire CortexM3DbgAXI_0_TDO;
  wire CortexM3DbgAXI_0_nTDOEN;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_ARADDR;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_ARBURST;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_ARCACHE;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_ARLEN;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_ARLOCK;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_ARPROT;
  wire Cortex_M3_0_CM3_CODE_AXI3_ARREADY;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_ARSIZE;
  wire Cortex_M3_0_CM3_CODE_AXI3_ARVALID;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_AWADDR;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_AWBURST;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_AWCACHE;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_AWLEN;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_AWLOCK;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_AWPROT;
  wire Cortex_M3_0_CM3_CODE_AXI3_AWREADY;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_AWSIZE;
  wire Cortex_M3_0_CM3_CODE_AXI3_AWVALID;
  wire Cortex_M3_0_CM3_CODE_AXI3_BREADY;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_BRESP;
  wire Cortex_M3_0_CM3_CODE_AXI3_BVALID;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_RDATA;
  wire Cortex_M3_0_CM3_CODE_AXI3_RLAST;
  wire Cortex_M3_0_CM3_CODE_AXI3_RREADY;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_RRESP;
  wire Cortex_M3_0_CM3_CODE_AXI3_RVALID;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_WDATA;
  wire Cortex_M3_0_CM3_CODE_AXI3_WLAST;
  wire Cortex_M3_0_CM3_CODE_AXI3_WREADY;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_WSTRB;
  wire Cortex_M3_0_CM3_CODE_AXI3_WVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_ARADDR;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_ARBURST;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_ARCACHE;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_ARLEN;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_ARLOCK;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_ARPROT;
  wire Cortex_M3_0_CM3_SYS_AXI3_ARREADY;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_ARSIZE;
  wire [0:0]Cortex_M3_0_CM3_SYS_AXI3_ARUSER;
  wire Cortex_M3_0_CM3_SYS_AXI3_ARVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_AWADDR;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_AWBURST;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_AWCACHE;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_AWLEN;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_AWLOCK;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_AWPROT;
  wire Cortex_M3_0_CM3_SYS_AXI3_AWREADY;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_AWSIZE;
  wire [0:0]Cortex_M3_0_CM3_SYS_AXI3_AWUSER;
  wire Cortex_M3_0_CM3_SYS_AXI3_AWVALID;
  wire Cortex_M3_0_CM3_SYS_AXI3_BREADY;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_BRESP;
  wire Cortex_M3_0_CM3_SYS_AXI3_BVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_RDATA;
  wire Cortex_M3_0_CM3_SYS_AXI3_RLAST;
  wire Cortex_M3_0_CM3_SYS_AXI3_RREADY;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_RRESP;
  wire Cortex_M3_0_CM3_SYS_AXI3_RVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_WDATA;
  wire Cortex_M3_0_CM3_SYS_AXI3_WLAST;
  wire Cortex_M3_0_CM3_SYS_AXI3_WREADY;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_WSTRB;
  wire Cortex_M3_0_CM3_SYS_AXI3_WVALID;
  wire Cortex_M3_0_SYSRESETREQ;
  wire [31:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire [0:0]S_AXI_1_ARREADY;
  wire [3:0]S_AXI_1_ARREGION;
  wire [2:0]S_AXI_1_ARSIZE;
  wire [0:0]S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire [0:0]S_AXI_1_AWREADY;
  wire [3:0]S_AXI_1_AWREGION;
  wire [2:0]S_AXI_1_AWSIZE;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire [0:0]S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RLAST;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire [0:0]S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire [0:0]S_AXI_1_WLAST;
  wire [0:0]S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire TDI_1;
  wire [0:0]TDO_out;
  wire V2C_DAPLink_interface_DAPLink_fittedn;
  wire [15:0]V2C_DAPLink_interface_Shield_out_TRI_O;
  wire V2C_DAPLink_interface_UART_out_RxD;
  wire V2C_DAPLink_interface_UART_out_TxD;
  wire V2C_DAPLink_interface_qspi_irq;
  wire V2C_DAPLink_interface_qspi_xip_irq;
  wire V2C_DAPLink_interface_spi_irq;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [3:0]axi_gpio_0_GPIO2_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire [3:0]axi_gpio_0_GPIO_TRI_T;
  wire axi_gpio_0_ip2intc_irpt;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire axi_iic_1_iic2intc_irpt;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [12:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M03_AXI_ARPROT;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire axi_interconnect_0_M03_AXI_ARVALID;
  wire [12:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M03_AXI_AWPROT;
  wire axi_interconnect_0_M03_AXI_AWREADY;
  wire axi_interconnect_0_M03_AXI_AWVALID;
  wire axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire axi_interconnect_0_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire axi_interconnect_0_M04_AXI_ARREADY;
  wire axi_interconnect_0_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_AWADDR;
  wire axi_interconnect_0_M04_AXI_AWREADY;
  wire axi_interconnect_0_M04_AXI_AWVALID;
  wire axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_BRESP;
  wire axi_interconnect_0_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_RDATA;
  wire axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_RRESP;
  wire axi_interconnect_0_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_WDATA;
  wire axi_interconnect_0_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_WSTRB;
  wire axi_interconnect_0_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_ARADDR;
  wire axi_interconnect_0_M06_AXI_ARREADY;
  wire axi_interconnect_0_M06_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_AWADDR;
  wire axi_interconnect_0_M06_AXI_AWREADY;
  wire axi_interconnect_0_M06_AXI_AWVALID;
  wire axi_interconnect_0_M06_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M06_AXI_BRESP;
  wire axi_interconnect_0_M06_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_RDATA;
  wire axi_interconnect_0_M06_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M06_AXI_RRESP;
  wire axi_interconnect_0_M06_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_WDATA;
  wire axi_interconnect_0_M06_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M06_AXI_WSTRB;
  wire axi_interconnect_0_M06_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M07_AXI_ARADDR;
  wire axi_interconnect_0_M07_AXI_ARREADY;
  wire axi_interconnect_0_M07_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M07_AXI_AWADDR;
  wire axi_interconnect_0_M07_AXI_AWREADY;
  wire axi_interconnect_0_M07_AXI_AWVALID;
  wire axi_interconnect_0_M07_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M07_AXI_BRESP;
  wire axi_interconnect_0_M07_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M07_AXI_RDATA;
  wire axi_interconnect_0_M07_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M07_AXI_RRESP;
  wire axi_interconnect_0_M07_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M07_AXI_WDATA;
  wire axi_interconnect_0_M07_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M07_AXI_WSTRB;
  wire axi_interconnect_0_M07_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_ARADDR;
  wire axi_interconnect_0_M08_AXI_ARREADY;
  wire axi_interconnect_0_M08_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_AWADDR;
  wire axi_interconnect_0_M08_AXI_AWREADY;
  wire axi_interconnect_0_M08_AXI_AWVALID;
  wire axi_interconnect_0_M08_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M08_AXI_BRESP;
  wire axi_interconnect_0_M08_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_RDATA;
  wire axi_interconnect_0_M08_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M08_AXI_RRESP;
  wire axi_interconnect_0_M08_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M08_AXI_WDATA;
  wire axi_interconnect_0_M08_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M08_AXI_WSTRB;
  wire axi_interconnect_0_M08_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_ARADDR;
  wire axi_interconnect_0_M09_AXI_ARREADY;
  wire axi_interconnect_0_M09_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_AWADDR;
  wire axi_interconnect_0_M09_AXI_AWREADY;
  wire axi_interconnect_0_M09_AXI_AWVALID;
  wire axi_interconnect_0_M09_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M09_AXI_BRESP;
  wire axi_interconnect_0_M09_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_RDATA;
  wire axi_interconnect_0_M09_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M09_AXI_RRESP;
  wire axi_interconnect_0_M09_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M09_AXI_WDATA;
  wire axi_interconnect_0_M09_AXI_WREADY;
  wire axi_interconnect_0_M09_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M10_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M10_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M10_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M10_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M10_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M10_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M10_AXI_ARQOS;
  wire axi_interconnect_0_M10_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M10_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M10_AXI_ARUSER;
  wire axi_interconnect_0_M10_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M10_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M10_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M10_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M10_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M10_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M10_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M10_AXI_AWQOS;
  wire axi_interconnect_0_M10_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M10_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M10_AXI_AWUSER;
  wire axi_interconnect_0_M10_AXI_AWVALID;
  wire axi_interconnect_0_M10_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M10_AXI_BRESP;
  wire axi_interconnect_0_M10_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M10_AXI_RDATA;
  wire axi_interconnect_0_M10_AXI_RLAST;
  wire axi_interconnect_0_M10_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M10_AXI_RRESP;
  wire axi_interconnect_0_M10_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M10_AXI_WDATA;
  wire axi_interconnect_0_M10_AXI_WLAST;
  wire axi_interconnect_0_M10_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M10_AXI_WSTRB;
  wire axi_interconnect_0_M10_AXI_WVALID;
  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_timer_0_interrupt;
  wire clk_wiz_0_clk_out1;
  wire [7:0]cmos_data_1;
  wire cmos_href_1;
  wire cmos_pclk_1;
  wire cmos_vsync_1;
  wire daplink_if_0_SWCLK;
  wire daplink_if_0_SWDI;
  wire daplink_if_0_interrupt;
  wire daplink_if_0_nSRST;
  wire ext_spi_clk_1;
  wire nTRST_1;
  wire [12:0]ov_cmos_DDR2_0_ADDR;
  wire [2:0]ov_cmos_DDR2_0_BA;
  wire ov_cmos_DDR2_0_CAS_N;
  wire [0:0]ov_cmos_DDR2_0_CKE;
  wire [0:0]ov_cmos_DDR2_0_CK_N;
  wire [0:0]ov_cmos_DDR2_0_CK_P;
  wire [0:0]ov_cmos_DDR2_0_CS_N;
  wire [1:0]ov_cmos_DDR2_0_DM;
  wire [15:0]ov_cmos_DDR2_0_DQ;
  wire [1:0]ov_cmos_DDR2_0_DQS_N;
  wire [1:0]ov_cmos_DDR2_0_DQS_P;
  wire [0:0]ov_cmos_DDR2_0_ODT;
  wire ov_cmos_DDR2_0_RAS_N;
  wire ov_cmos_DDR2_0_WE_N;
  wire ov_cmos_cmos_iic_SCL_I;
  wire ov_cmos_cmos_iic_SCL_O;
  wire ov_cmos_cmos_iic_SCL_T;
  wire ov_cmos_cmos_iic_SDA_I;
  wire ov_cmos_cmos_iic_SDA_O;
  wire ov_cmos_cmos_iic_SDA_T;
  wire [0:0]ov_cmos_cmos_pwdn_TRI_O;
  wire [0:0]ov_cmos_cmos_rst_TRI_O;
  wire ov_cmos_iic2intc_irpt;
  wire ov_cmos_ip2intc_irpt;
  wire [3:0]ov_cmos_vga_pBlue_0;
  wire [3:0]ov_cmos_vga_pGreen_0;
  wire ov_cmos_vga_pHSync_0;
  wire [3:0]ov_cmos_vga_pRed_0;
  wire ov_cmos_vga_pVSync_0;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;
  wire sys_clock_0_1;
  wire sys_clock_1;
  wire [10:0]xlconcat_0_dout;
  wire [1:0]xlconcat_1_dout;
  wire [0:0]xlconstant_1_dout;

  assign DDR2_0_addr[12:0] = ov_cmos_DDR2_0_ADDR;
  assign DDR2_0_ba[2:0] = ov_cmos_DDR2_0_BA;
  assign DDR2_0_cas_n = ov_cmos_DDR2_0_CAS_N;
  assign DDR2_0_ck_n[0] = ov_cmos_DDR2_0_CK_N;
  assign DDR2_0_ck_p[0] = ov_cmos_DDR2_0_CK_P;
  assign DDR2_0_cke[0] = ov_cmos_DDR2_0_CKE;
  assign DDR2_0_cs_n[0] = ov_cmos_DDR2_0_CS_N;
  assign DDR2_0_dm[1:0] = ov_cmos_DDR2_0_DM;
  assign DDR2_0_odt[0] = ov_cmos_DDR2_0_ODT;
  assign DDR2_0_ras_n = ov_cmos_DDR2_0_RAS_N;
  assign DDR2_0_we_n = ov_cmos_DDR2_0_WE_N;
  assign TDI_1 = TDI;
  assign V2C_DAPLink_interface_UART_out_RxD = usb_uart_rxd;
  assign axi_gpio_0_GPIO2_TRI_I = dip_switches_4bits_tri_i[3:0];
  assign axi_gpio_0_GPIO_TRI_I = led_4bits_tri_i[3:0];
  assign axi_iic_1_IIC_SCL_I = temp_sensor_scl_i;
  assign axi_iic_1_IIC_SDA_I = temp_sensor_sda_i;
  assign axi_quad_spi_0_SPI_0_IO0_I = qspi_flash_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = qspi_flash_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = qspi_flash_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = qspi_flash_io3_i;
  assign axi_quad_spi_0_SPI_0_SS_I = qspi_flash_ss_i;
  assign cmos_data_1 = cmos_data[7:0];
  assign cmos_href_1 = cmos_href;
  assign cmos_iic_scl_o = ov_cmos_cmos_iic_SCL_O;
  assign cmos_iic_scl_t = ov_cmos_cmos_iic_SCL_T;
  assign cmos_iic_sda_o = ov_cmos_cmos_iic_SDA_O;
  assign cmos_iic_sda_t = ov_cmos_cmos_iic_SDA_T;
  assign cmos_pclk_1 = cmos_pclk;
  assign cmos_pwdn_tri_o[0] = ov_cmos_cmos_pwdn_TRI_O;
  assign cmos_rst_tri_o[0] = ov_cmos_cmos_rst_TRI_O;
  assign cmos_vsync_1 = cmos_vsync;
  assign led_4bits_tri_o[3:0] = axi_gpio_0_GPIO_TRI_O;
  assign led_4bits_tri_t[3:0] = axi_gpio_0_GPIO_TRI_T;
  assign nTRST_1 = nTRST;
  assign ov_cmos_cmos_iic_SCL_I = cmos_iic_scl_i;
  assign ov_cmos_cmos_iic_SDA_I = cmos_iic_sda_i;
  assign qspi_flash_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign qspi_flash_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign qspi_flash_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign qspi_flash_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign qspi_flash_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign qspi_flash_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign qspi_flash_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign qspi_flash_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign qspi_flash_ss_o = axi_quad_spi_0_SPI_0_SS_O;
  assign qspi_flash_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign temp_sensor_scl_o = axi_iic_1_IIC_SCL_O;
  assign temp_sensor_scl_t = axi_iic_1_IIC_SCL_T;
  assign temp_sensor_sda_o = axi_iic_1_IIC_SDA_O;
  assign temp_sensor_sda_t = axi_iic_1_IIC_SDA_T;
  assign usb_uart_txd = V2C_DAPLink_interface_UART_out_TxD;
  assign vga_pBlue_0[3:0] = ov_cmos_vga_pBlue_0;
  assign vga_pGreen_0[3:0] = ov_cmos_vga_pGreen_0;
  assign vga_pHSync_0 = ov_cmos_vga_pHSync_0;
  assign vga_pRed_0[3:0] = ov_cmos_vga_pRed_0;
  assign vga_pVSync_0 = ov_cmos_vga_pVSync_0;
  Clocks_and_Resets_imp_1WLR2TP Clocks_and_Resets
       (.aux_reset_in(daplink_if_0_nSRST),
        .clk_100M(sys_clock_0_1),
        .clk_cpu(clk_wiz_0_clk_out1),
        .clk_qspi(ext_spi_clk_1),
        .dbgresetn(Clocks_and_Resets_dbgresetn),
        .interconnect_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .peripheral_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .sys_clock(sys_clock_1),
        .sys_reset_n(reset_1),
        .sysresetn(Clocks_and_Resets_sysresetn),
        .sysresetreq(Cortex_M3_0_SYSRESETREQ));
  m3_for_arty_a7_Cortex_M3_0_0 Cortex_M3_0
       (.ARADDRC(Cortex_M3_0_CM3_CODE_AXI3_ARADDR),
        .ARADDRS(Cortex_M3_0_CM3_SYS_AXI3_ARADDR),
        .ARBURSTC(Cortex_M3_0_CM3_CODE_AXI3_ARBURST),
        .ARBURSTS(Cortex_M3_0_CM3_SYS_AXI3_ARBURST),
        .ARCACHEC(Cortex_M3_0_CM3_CODE_AXI3_ARCACHE),
        .ARCACHES(Cortex_M3_0_CM3_SYS_AXI3_ARCACHE),
        .ARLENC(Cortex_M3_0_CM3_CODE_AXI3_ARLEN),
        .ARLENS(Cortex_M3_0_CM3_SYS_AXI3_ARLEN),
        .ARLOCKC(Cortex_M3_0_CM3_CODE_AXI3_ARLOCK),
        .ARLOCKS(Cortex_M3_0_CM3_SYS_AXI3_ARLOCK),
        .ARPROTC(Cortex_M3_0_CM3_CODE_AXI3_ARPROT),
        .ARPROTS(Cortex_M3_0_CM3_SYS_AXI3_ARPROT),
        .ARREADYC(Cortex_M3_0_CM3_CODE_AXI3_ARREADY),
        .ARREADYS(Cortex_M3_0_CM3_SYS_AXI3_ARREADY),
        .ARSIZEC(Cortex_M3_0_CM3_CODE_AXI3_ARSIZE),
        .ARSIZES(Cortex_M3_0_CM3_SYS_AXI3_ARSIZE),
        .ARUSERS(Cortex_M3_0_CM3_SYS_AXI3_ARUSER),
        .ARVALIDC(Cortex_M3_0_CM3_CODE_AXI3_ARVALID),
        .ARVALIDS(Cortex_M3_0_CM3_SYS_AXI3_ARVALID),
        .AWADDRC(Cortex_M3_0_CM3_CODE_AXI3_AWADDR),
        .AWADDRS(Cortex_M3_0_CM3_SYS_AXI3_AWADDR),
        .AWBURSTC(Cortex_M3_0_CM3_CODE_AXI3_AWBURST),
        .AWBURSTS(Cortex_M3_0_CM3_SYS_AXI3_AWBURST),
        .AWCACHEC(Cortex_M3_0_CM3_CODE_AXI3_AWCACHE),
        .AWCACHES(Cortex_M3_0_CM3_SYS_AXI3_AWCACHE),
        .AWLENC(Cortex_M3_0_CM3_CODE_AXI3_AWLEN),
        .AWLENS(Cortex_M3_0_CM3_SYS_AXI3_AWLEN),
        .AWLOCKC(Cortex_M3_0_CM3_CODE_AXI3_AWLOCK),
        .AWLOCKS(Cortex_M3_0_CM3_SYS_AXI3_AWLOCK),
        .AWPROTC(Cortex_M3_0_CM3_CODE_AXI3_AWPROT),
        .AWPROTS(Cortex_M3_0_CM3_SYS_AXI3_AWPROT),
        .AWREADYC(Cortex_M3_0_CM3_CODE_AXI3_AWREADY),
        .AWREADYS(Cortex_M3_0_CM3_SYS_AXI3_AWREADY),
        .AWSIZEC(Cortex_M3_0_CM3_CODE_AXI3_AWSIZE),
        .AWSIZES(Cortex_M3_0_CM3_SYS_AXI3_AWSIZE),
        .AWUSERS(Cortex_M3_0_CM3_SYS_AXI3_AWUSER),
        .AWVALIDC(Cortex_M3_0_CM3_CODE_AXI3_AWVALID),
        .AWVALIDS(Cortex_M3_0_CM3_SYS_AXI3_AWVALID),
        .BREADYC(Cortex_M3_0_CM3_CODE_AXI3_BREADY),
        .BREADYS(Cortex_M3_0_CM3_SYS_AXI3_BREADY),
        .BRESPC(Cortex_M3_0_CM3_CODE_AXI3_BRESP),
        .BRESPS(Cortex_M3_0_CM3_SYS_AXI3_BRESP),
        .BVALIDC(Cortex_M3_0_CM3_CODE_AXI3_BVALID),
        .BVALIDS(Cortex_M3_0_CM3_SYS_AXI3_BVALID),
        .CFGITCMEN(xlconcat_1_dout),
        .DBGRESETn(Clocks_and_Resets_dbgresetn),
        .DBGRESTART(1'b0),
        .EDBGRQ(1'b0),
        .HCLK(clk_wiz_0_clk_out1),
        .HRDATAC(Cortex_M3_0_CM3_CODE_AXI3_RDATA),
        .HRDATAS(Cortex_M3_0_CM3_SYS_AXI3_RDATA),
        .HWDATAC(Cortex_M3_0_CM3_CODE_AXI3_WDATA),
        .HWDATAS(Cortex_M3_0_CM3_SYS_AXI3_WDATA),
        .IRQ(xlconcat_0_dout),
        .NMI(1'b0),
        .RLASTC(Cortex_M3_0_CM3_CODE_AXI3_RLAST),
        .RLASTS(Cortex_M3_0_CM3_SYS_AXI3_RLAST),
        .RREADYC(Cortex_M3_0_CM3_CODE_AXI3_RREADY),
        .RREADYS(Cortex_M3_0_CM3_SYS_AXI3_RREADY),
        .RRESPC(Cortex_M3_0_CM3_CODE_AXI3_RRESP),
        .RRESPS(Cortex_M3_0_CM3_SYS_AXI3_RRESP),
        .RVALIDC(Cortex_M3_0_CM3_CODE_AXI3_RVALID),
        .RVALIDS(Cortex_M3_0_CM3_SYS_AXI3_RVALID),
        .STCLK(1'b0),
        .SWCLKTCK(daplink_if_0_SWCLK),
        .SWDITMS(daplink_if_0_SWDI),
        .SWDO(CortexM3DbgAXI_0_SWDO),
        .SWDOEN(CortexM3DbgAXI_0_SWDOEN),
        .SYSRESETREQ(Cortex_M3_0_SYSRESETREQ),
        .SYSRESETn(Clocks_and_Resets_sysresetn),
        .TDI(TDI_1),
        .TDO(CortexM3DbgAXI_0_TDO),
        .WLASTC(Cortex_M3_0_CM3_CODE_AXI3_WLAST),
        .WLASTS(Cortex_M3_0_CM3_SYS_AXI3_WLAST),
        .WREADYC(Cortex_M3_0_CM3_CODE_AXI3_WREADY),
        .WREADYS(Cortex_M3_0_CM3_SYS_AXI3_WREADY),
        .WSTRBC(Cortex_M3_0_CM3_CODE_AXI3_WSTRB),
        .WSTRBS(Cortex_M3_0_CM3_SYS_AXI3_WSTRB),
        .WVALIDC(Cortex_M3_0_CM3_CODE_AXI3_WVALID),
        .WVALIDS(Cortex_M3_0_CM3_SYS_AXI3_WVALID),
        .nTDOEN(CortexM3DbgAXI_0_nTDOEN),
        .nTRST(nTRST_1));
  m3_for_arty_a7_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .s_axi_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M03_AXI_WVALID));
  m3_for_arty_a7_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(axi_gpio_0_GPIO2_TRI_I),
        .gpio_io_i(axi_gpio_0_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_0_GPIO_TRI_T),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  m3_for_arty_a7_axi_iic_1_0 axi_iic_1
       (.iic2intc_irpt(axi_iic_1_iic2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M07_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M07_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M07_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M07_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M07_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M07_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M07_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M07_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M07_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M07_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M07_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M07_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M07_AXI_WVALID),
        .scl_i(axi_iic_1_IIC_SCL_I),
        .scl_o(axi_iic_1_IIC_SCL_O),
        .scl_t(axi_iic_1_IIC_SCL_T),
        .sda_i(axi_iic_1_IIC_SDA_I),
        .sda_o(axi_iic_1_IIC_SDA_O),
        .sda_t(axi_iic_1_IIC_SDA_T));
  m3_for_arty_a7_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out1),
        .M02_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_0_clk_out1),
        .M03_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out1),
        .M04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out1),
        .M05_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M05_AXI_araddr(S_AXI_1_ARADDR),
        .M05_AXI_arburst(S_AXI_1_ARBURST),
        .M05_AXI_arcache(S_AXI_1_ARCACHE),
        .M05_AXI_arlen(S_AXI_1_ARLEN),
        .M05_AXI_arlock(S_AXI_1_ARLOCK),
        .M05_AXI_arprot(S_AXI_1_ARPROT),
        .M05_AXI_arqos(S_AXI_1_ARQOS),
        .M05_AXI_arready(S_AXI_1_ARREADY),
        .M05_AXI_arregion(S_AXI_1_ARREGION),
        .M05_AXI_arsize(S_AXI_1_ARSIZE),
        .M05_AXI_arvalid(S_AXI_1_ARVALID),
        .M05_AXI_awaddr(S_AXI_1_AWADDR),
        .M05_AXI_awburst(S_AXI_1_AWBURST),
        .M05_AXI_awcache(S_AXI_1_AWCACHE),
        .M05_AXI_awlen(S_AXI_1_AWLEN),
        .M05_AXI_awlock(S_AXI_1_AWLOCK),
        .M05_AXI_awprot(S_AXI_1_AWPROT),
        .M05_AXI_awqos(S_AXI_1_AWQOS),
        .M05_AXI_awready(S_AXI_1_AWREADY),
        .M05_AXI_awregion(S_AXI_1_AWREGION),
        .M05_AXI_awsize(S_AXI_1_AWSIZE),
        .M05_AXI_awvalid(S_AXI_1_AWVALID),
        .M05_AXI_bready(S_AXI_1_BREADY),
        .M05_AXI_bresp(S_AXI_1_BRESP),
        .M05_AXI_bvalid(S_AXI_1_BVALID),
        .M05_AXI_rdata(S_AXI_1_RDATA),
        .M05_AXI_rlast(S_AXI_1_RLAST),
        .M05_AXI_rready(S_AXI_1_RREADY),
        .M05_AXI_rresp(S_AXI_1_RRESP),
        .M05_AXI_rvalid(S_AXI_1_RVALID),
        .M05_AXI_wdata(S_AXI_1_WDATA),
        .M05_AXI_wlast(S_AXI_1_WLAST),
        .M05_AXI_wready(S_AXI_1_WREADY),
        .M05_AXI_wstrb(S_AXI_1_WSTRB),
        .M05_AXI_wvalid(S_AXI_1_WVALID),
        .M06_ACLK(clk_wiz_0_clk_out1),
        .M06_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M06_AXI_araddr(axi_interconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_interconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_interconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_interconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_interconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_interconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_interconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_interconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_interconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_interconnect_0_M06_AXI_RDATA),
        .M06_AXI_rready(axi_interconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_interconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_interconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_interconnect_0_M06_AXI_WDATA),
        .M06_AXI_wready(axi_interconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_interconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_interconnect_0_M06_AXI_WVALID),
        .M07_ACLK(clk_wiz_0_clk_out1),
        .M07_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M07_AXI_araddr(axi_interconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_interconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_interconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_interconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_interconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_interconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_interconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_interconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_interconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_interconnect_0_M07_AXI_RDATA),
        .M07_AXI_rready(axi_interconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_interconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_interconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_interconnect_0_M07_AXI_WDATA),
        .M07_AXI_wready(axi_interconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_interconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_interconnect_0_M07_AXI_WVALID),
        .M08_ACLK(clk_wiz_0_clk_out1),
        .M08_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M08_AXI_araddr(axi_interconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_interconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_interconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_interconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_interconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_interconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_interconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_interconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_interconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_interconnect_0_M08_AXI_RDATA),
        .M08_AXI_rready(axi_interconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_interconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_interconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_interconnect_0_M08_AXI_WDATA),
        .M08_AXI_wready(axi_interconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_interconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_interconnect_0_M08_AXI_WVALID),
        .M09_ACLK(clk_wiz_0_clk_out1),
        .M09_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M09_AXI_araddr(axi_interconnect_0_M09_AXI_ARADDR),
        .M09_AXI_arready(axi_interconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_interconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_interconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awready(axi_interconnect_0_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_interconnect_0_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_interconnect_0_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_interconnect_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_interconnect_0_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_interconnect_0_M09_AXI_RDATA),
        .M09_AXI_rready(axi_interconnect_0_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_interconnect_0_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_interconnect_0_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_interconnect_0_M09_AXI_WDATA),
        .M09_AXI_wready(axi_interconnect_0_M09_AXI_WREADY),
        .M09_AXI_wvalid(axi_interconnect_0_M09_AXI_WVALID),
        .M10_ACLK(clk_wiz_0_clk_out1),
        .M10_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M10_AXI_araddr(axi_interconnect_0_M10_AXI_ARADDR),
        .M10_AXI_arburst(axi_interconnect_0_M10_AXI_ARBURST),
        .M10_AXI_arcache(axi_interconnect_0_M10_AXI_ARCACHE),
        .M10_AXI_arlen(axi_interconnect_0_M10_AXI_ARLEN),
        .M10_AXI_arlock(axi_interconnect_0_M10_AXI_ARLOCK),
        .M10_AXI_arprot(axi_interconnect_0_M10_AXI_ARPROT),
        .M10_AXI_arqos(axi_interconnect_0_M10_AXI_ARQOS),
        .M10_AXI_arready(axi_interconnect_0_M10_AXI_ARREADY),
        .M10_AXI_arsize(axi_interconnect_0_M10_AXI_ARSIZE),
        .M10_AXI_aruser(axi_interconnect_0_M10_AXI_ARUSER),
        .M10_AXI_arvalid(axi_interconnect_0_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_interconnect_0_M10_AXI_AWADDR),
        .M10_AXI_awburst(axi_interconnect_0_M10_AXI_AWBURST),
        .M10_AXI_awcache(axi_interconnect_0_M10_AXI_AWCACHE),
        .M10_AXI_awlen(axi_interconnect_0_M10_AXI_AWLEN),
        .M10_AXI_awlock(axi_interconnect_0_M10_AXI_AWLOCK),
        .M10_AXI_awprot(axi_interconnect_0_M10_AXI_AWPROT),
        .M10_AXI_awqos(axi_interconnect_0_M10_AXI_AWQOS),
        .M10_AXI_awready(axi_interconnect_0_M10_AXI_AWREADY),
        .M10_AXI_awsize(axi_interconnect_0_M10_AXI_AWSIZE),
        .M10_AXI_awuser(axi_interconnect_0_M10_AXI_AWUSER),
        .M10_AXI_awvalid(axi_interconnect_0_M10_AXI_AWVALID),
        .M10_AXI_bready(axi_interconnect_0_M10_AXI_BREADY),
        .M10_AXI_bresp(axi_interconnect_0_M10_AXI_BRESP),
        .M10_AXI_bvalid(axi_interconnect_0_M10_AXI_BVALID),
        .M10_AXI_rdata(axi_interconnect_0_M10_AXI_RDATA),
        .M10_AXI_rlast(axi_interconnect_0_M10_AXI_RLAST),
        .M10_AXI_rready(axi_interconnect_0_M10_AXI_RREADY),
        .M10_AXI_rresp(axi_interconnect_0_M10_AXI_RRESP),
        .M10_AXI_rvalid(axi_interconnect_0_M10_AXI_RVALID),
        .M10_AXI_wdata(axi_interconnect_0_M10_AXI_WDATA),
        .M10_AXI_wlast(axi_interconnect_0_M10_AXI_WLAST),
        .M10_AXI_wready(axi_interconnect_0_M10_AXI_WREADY),
        .M10_AXI_wstrb(axi_interconnect_0_M10_AXI_WSTRB),
        .M10_AXI_wvalid(axi_interconnect_0_M10_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(Cortex_M3_0_CM3_SYS_AXI3_ARADDR),
        .S00_AXI_arburst(Cortex_M3_0_CM3_SYS_AXI3_ARBURST),
        .S00_AXI_arcache(Cortex_M3_0_CM3_SYS_AXI3_ARCACHE),
        .S00_AXI_arlen(Cortex_M3_0_CM3_SYS_AXI3_ARLEN),
        .S00_AXI_arlock(Cortex_M3_0_CM3_SYS_AXI3_ARLOCK),
        .S00_AXI_arprot(Cortex_M3_0_CM3_SYS_AXI3_ARPROT),
        .S00_AXI_arready(Cortex_M3_0_CM3_SYS_AXI3_ARREADY),
        .S00_AXI_arsize(Cortex_M3_0_CM3_SYS_AXI3_ARSIZE),
        .S00_AXI_aruser(Cortex_M3_0_CM3_SYS_AXI3_ARUSER),
        .S00_AXI_arvalid(Cortex_M3_0_CM3_SYS_AXI3_ARVALID),
        .S00_AXI_awaddr(Cortex_M3_0_CM3_SYS_AXI3_AWADDR),
        .S00_AXI_awburst(Cortex_M3_0_CM3_SYS_AXI3_AWBURST),
        .S00_AXI_awcache(Cortex_M3_0_CM3_SYS_AXI3_AWCACHE),
        .S00_AXI_awlen(Cortex_M3_0_CM3_SYS_AXI3_AWLEN),
        .S00_AXI_awlock(Cortex_M3_0_CM3_SYS_AXI3_AWLOCK),
        .S00_AXI_awprot(Cortex_M3_0_CM3_SYS_AXI3_AWPROT),
        .S00_AXI_awready(Cortex_M3_0_CM3_SYS_AXI3_AWREADY),
        .S00_AXI_awsize(Cortex_M3_0_CM3_SYS_AXI3_AWSIZE),
        .S00_AXI_awuser(Cortex_M3_0_CM3_SYS_AXI3_AWUSER),
        .S00_AXI_awvalid(Cortex_M3_0_CM3_SYS_AXI3_AWVALID),
        .S00_AXI_bready(Cortex_M3_0_CM3_SYS_AXI3_BREADY),
        .S00_AXI_bresp(Cortex_M3_0_CM3_SYS_AXI3_BRESP),
        .S00_AXI_bvalid(Cortex_M3_0_CM3_SYS_AXI3_BVALID),
        .S00_AXI_rdata(Cortex_M3_0_CM3_SYS_AXI3_RDATA),
        .S00_AXI_rlast(Cortex_M3_0_CM3_SYS_AXI3_RLAST),
        .S00_AXI_rready(Cortex_M3_0_CM3_SYS_AXI3_RREADY),
        .S00_AXI_rresp(Cortex_M3_0_CM3_SYS_AXI3_RRESP),
        .S00_AXI_rvalid(Cortex_M3_0_CM3_SYS_AXI3_RVALID),
        .S00_AXI_wdata(Cortex_M3_0_CM3_SYS_AXI3_WDATA),
        .S00_AXI_wlast(Cortex_M3_0_CM3_SYS_AXI3_WLAST),
        .S00_AXI_wready(Cortex_M3_0_CM3_SYS_AXI3_WREADY),
        .S00_AXI_wstrb(Cortex_M3_0_CM3_SYS_AXI3_WSTRB),
        .S00_AXI_wvalid(Cortex_M3_0_CM3_SYS_AXI3_WVALID));
  m3_for_arty_a7_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M04_AXI_ARADDR[6:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M04_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  m3_for_arty_a7_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M08_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M08_AXI_AWADDR[4:0]),
        .s_axi_awready(axi_interconnect_0_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M08_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M08_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M08_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M08_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M08_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M08_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M08_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M08_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M08_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M08_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M08_AXI_WVALID));
  m3_for_arty_a7_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  daplink_if_0_imp_5IHHOQ daplink_if_0
       (.C_AXI_araddr(Cortex_M3_0_CM3_CODE_AXI3_ARADDR),
        .C_AXI_arburst(Cortex_M3_0_CM3_CODE_AXI3_ARBURST),
        .C_AXI_arcache(Cortex_M3_0_CM3_CODE_AXI3_ARCACHE),
        .C_AXI_arlen(Cortex_M3_0_CM3_CODE_AXI3_ARLEN),
        .C_AXI_arlock(Cortex_M3_0_CM3_CODE_AXI3_ARLOCK),
        .C_AXI_arprot(Cortex_M3_0_CM3_CODE_AXI3_ARPROT),
        .C_AXI_arready(Cortex_M3_0_CM3_CODE_AXI3_ARREADY),
        .C_AXI_arsize(Cortex_M3_0_CM3_CODE_AXI3_ARSIZE),
        .C_AXI_arvalid(Cortex_M3_0_CM3_CODE_AXI3_ARVALID),
        .C_AXI_awaddr(Cortex_M3_0_CM3_CODE_AXI3_AWADDR),
        .C_AXI_awburst(Cortex_M3_0_CM3_CODE_AXI3_AWBURST),
        .C_AXI_awcache(Cortex_M3_0_CM3_CODE_AXI3_AWCACHE),
        .C_AXI_awlen(Cortex_M3_0_CM3_CODE_AXI3_AWLEN),
        .C_AXI_awlock(Cortex_M3_0_CM3_CODE_AXI3_AWLOCK),
        .C_AXI_awprot(Cortex_M3_0_CM3_CODE_AXI3_AWPROT),
        .C_AXI_awready(Cortex_M3_0_CM3_CODE_AXI3_AWREADY),
        .C_AXI_awsize(Cortex_M3_0_CM3_CODE_AXI3_AWSIZE),
        .C_AXI_awvalid(Cortex_M3_0_CM3_CODE_AXI3_AWVALID),
        .C_AXI_bready(Cortex_M3_0_CM3_CODE_AXI3_BREADY),
        .C_AXI_bresp(Cortex_M3_0_CM3_CODE_AXI3_BRESP),
        .C_AXI_bvalid(Cortex_M3_0_CM3_CODE_AXI3_BVALID),
        .C_AXI_rdata(Cortex_M3_0_CM3_CODE_AXI3_RDATA),
        .C_AXI_rlast(Cortex_M3_0_CM3_CODE_AXI3_RLAST),
        .C_AXI_rready(Cortex_M3_0_CM3_CODE_AXI3_RREADY),
        .C_AXI_rresp(Cortex_M3_0_CM3_CODE_AXI3_RRESP),
        .C_AXI_rvalid(Cortex_M3_0_CM3_CODE_AXI3_RVALID),
        .C_AXI_wdata(Cortex_M3_0_CM3_CODE_AXI3_WDATA),
        .C_AXI_wlast(Cortex_M3_0_CM3_CODE_AXI3_WLAST),
        .C_AXI_wready(Cortex_M3_0_CM3_CODE_AXI3_WREADY),
        .C_AXI_wstrb(Cortex_M3_0_CM3_CODE_AXI3_WSTRB),
        .C_AXI_wvalid(Cortex_M3_0_CM3_CODE_AXI3_WVALID),
        .DAPLink_fittedn(V2C_DAPLink_interface_DAPLink_fittedn),
        .SWCLK(daplink_if_0_SWCLK),
        .SWDI(daplink_if_0_SWDI),
        .SWDO(CortexM3DbgAXI_0_SWDO),
        .SWDOEN(CortexM3DbgAXI_0_SWDOEN),
        .S_AXI1_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .S_AXI1_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .S_AXI1_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .S_AXI1_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .S_AXI1_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .S_AXI1_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .S_AXI1_bready(axi_interconnect_0_M00_AXI_BREADY),
        .S_AXI1_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .S_AXI1_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .S_AXI1_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .S_AXI1_rready(axi_interconnect_0_M00_AXI_RREADY),
        .S_AXI1_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .S_AXI1_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .S_AXI1_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .S_AXI1_wready(axi_interconnect_0_M00_AXI_WREADY),
        .S_AXI1_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .S_AXI1_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arburst(S_AXI_1_ARBURST),
        .S_AXI_arcache(S_AXI_1_ARCACHE),
        .S_AXI_arlen(S_AXI_1_ARLEN),
        .S_AXI_arlock(S_AXI_1_ARLOCK),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arqos(S_AXI_1_ARQOS),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arregion(S_AXI_1_ARREGION),
        .S_AXI_arsize(S_AXI_1_ARSIZE),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awburst(S_AXI_1_AWBURST),
        .S_AXI_awcache(S_AXI_1_AWCACHE),
        .S_AXI_awlen(S_AXI_1_AWLEN),
        .S_AXI_awlock(S_AXI_1_AWLOCK),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awqos(S_AXI_1_AWQOS),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awregion(S_AXI_1_AWREGION),
        .S_AXI_awsize(S_AXI_1_AWSIZE),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rlast(S_AXI_1_RLAST),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wlast(S_AXI_1_WLAST),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .Shield_out_tri_o(DAPLink_tri_o[15:0]),
        .UART_out_rxd(V2C_DAPLink_interface_UART_out_RxD),
        .UART_out_txd(V2C_DAPLink_interface_UART_out_TxD),
        .ext_spi_clk(ext_spi_clk_1),
        .interrupt(daplink_if_0_interrupt),
        .nSRST(daplink_if_0_nSRST),
        .qspi_irq(V2C_DAPLink_interface_qspi_irq),
        .qspi_xip_irq(V2C_DAPLink_interface_qspi_xip_irq),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .spi_irq(V2C_DAPLink_interface_spi_irq));
  ov_cmos_imp_183AGT0 ov_cmos
       (.DDR2_0_addr(ov_cmos_DDR2_0_ADDR),
        .DDR2_0_ba(ov_cmos_DDR2_0_BA),
        .DDR2_0_cas_n(ov_cmos_DDR2_0_CAS_N),
        .DDR2_0_ck_n(ov_cmos_DDR2_0_CK_N),
        .DDR2_0_ck_p(ov_cmos_DDR2_0_CK_P),
        .DDR2_0_cke(ov_cmos_DDR2_0_CKE),
        .DDR2_0_cs_n(ov_cmos_DDR2_0_CS_N),
        .DDR2_0_dm(ov_cmos_DDR2_0_DM),
        .DDR2_0_dq(DDR2_0_dq[15:0]),
        .DDR2_0_dqs_n(DDR2_0_dqs_n[1:0]),
        .DDR2_0_dqs_p(DDR2_0_dqs_p[1:0]),
        .DDR2_0_odt(ov_cmos_DDR2_0_ODT),
        .DDR2_0_ras_n(ov_cmos_DDR2_0_RAS_N),
        .DDR2_0_we_n(ov_cmos_DDR2_0_WE_N),
        .S02_AXI_araddr(axi_interconnect_0_M10_AXI_ARADDR),
        .S02_AXI_arburst(axi_interconnect_0_M10_AXI_ARBURST),
        .S02_AXI_arcache(axi_interconnect_0_M10_AXI_ARCACHE),
        .S02_AXI_arlen(axi_interconnect_0_M10_AXI_ARLEN),
        .S02_AXI_arlock(axi_interconnect_0_M10_AXI_ARLOCK),
        .S02_AXI_arprot(axi_interconnect_0_M10_AXI_ARPROT),
        .S02_AXI_arqos(axi_interconnect_0_M10_AXI_ARQOS),
        .S02_AXI_arready(axi_interconnect_0_M10_AXI_ARREADY),
        .S02_AXI_arsize(axi_interconnect_0_M10_AXI_ARSIZE),
        .S02_AXI_aruser(axi_interconnect_0_M10_AXI_ARUSER),
        .S02_AXI_arvalid(axi_interconnect_0_M10_AXI_ARVALID),
        .S02_AXI_awaddr(axi_interconnect_0_M10_AXI_AWADDR),
        .S02_AXI_awburst(axi_interconnect_0_M10_AXI_AWBURST),
        .S02_AXI_awcache(axi_interconnect_0_M10_AXI_AWCACHE),
        .S02_AXI_awlen(axi_interconnect_0_M10_AXI_AWLEN),
        .S02_AXI_awlock(axi_interconnect_0_M10_AXI_AWLOCK),
        .S02_AXI_awprot(axi_interconnect_0_M10_AXI_AWPROT),
        .S02_AXI_awqos(axi_interconnect_0_M10_AXI_AWQOS),
        .S02_AXI_awready(axi_interconnect_0_M10_AXI_AWREADY),
        .S02_AXI_awsize(axi_interconnect_0_M10_AXI_AWSIZE),
        .S02_AXI_awuser(axi_interconnect_0_M10_AXI_AWUSER),
        .S02_AXI_awvalid(axi_interconnect_0_M10_AXI_AWVALID),
        .S02_AXI_bready(axi_interconnect_0_M10_AXI_BREADY),
        .S02_AXI_bresp(axi_interconnect_0_M10_AXI_BRESP),
        .S02_AXI_bvalid(axi_interconnect_0_M10_AXI_BVALID),
        .S02_AXI_rdata(axi_interconnect_0_M10_AXI_RDATA),
        .S02_AXI_rlast(axi_interconnect_0_M10_AXI_RLAST),
        .S02_AXI_rready(axi_interconnect_0_M10_AXI_RREADY),
        .S02_AXI_rresp(axi_interconnect_0_M10_AXI_RRESP),
        .S02_AXI_rvalid(axi_interconnect_0_M10_AXI_RVALID),
        .S02_AXI_wdata(axi_interconnect_0_M10_AXI_WDATA),
        .S02_AXI_wlast(axi_interconnect_0_M10_AXI_WLAST),
        .S02_AXI_wready(axi_interconnect_0_M10_AXI_WREADY),
        .S02_AXI_wstrb(axi_interconnect_0_M10_AXI_WSTRB),
        .S02_AXI_wvalid(axi_interconnect_0_M10_AXI_WVALID),
        .S_AXI1_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .S_AXI1_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .S_AXI1_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .S_AXI1_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .S_AXI1_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .S_AXI1_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .S_AXI1_bready(axi_interconnect_0_M02_AXI_BREADY),
        .S_AXI1_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .S_AXI1_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .S_AXI1_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .S_AXI1_rready(axi_interconnect_0_M02_AXI_RREADY),
        .S_AXI1_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .S_AXI1_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .S_AXI1_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .S_AXI1_wready(axi_interconnect_0_M02_AXI_WREADY),
        .S_AXI1_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .S_AXI1_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .S_AXI_LITE_araddr(axi_interconnect_0_M09_AXI_ARADDR),
        .S_AXI_LITE_arready(axi_interconnect_0_M09_AXI_ARREADY),
        .S_AXI_LITE_arvalid(axi_interconnect_0_M09_AXI_ARVALID),
        .S_AXI_LITE_awaddr(axi_interconnect_0_M09_AXI_AWADDR),
        .S_AXI_LITE_awready(axi_interconnect_0_M09_AXI_AWREADY),
        .S_AXI_LITE_awvalid(axi_interconnect_0_M09_AXI_AWVALID),
        .S_AXI_LITE_bready(axi_interconnect_0_M09_AXI_BREADY),
        .S_AXI_LITE_bresp(axi_interconnect_0_M09_AXI_BRESP),
        .S_AXI_LITE_bvalid(axi_interconnect_0_M09_AXI_BVALID),
        .S_AXI_LITE_rdata(axi_interconnect_0_M09_AXI_RDATA),
        .S_AXI_LITE_rready(axi_interconnect_0_M09_AXI_RREADY),
        .S_AXI_LITE_rresp(axi_interconnect_0_M09_AXI_RRESP),
        .S_AXI_LITE_rvalid(axi_interconnect_0_M09_AXI_RVALID),
        .S_AXI_LITE_wdata(axi_interconnect_0_M09_AXI_WDATA),
        .S_AXI_LITE_wready(axi_interconnect_0_M09_AXI_WREADY),
        .S_AXI_LITE_wvalid(axi_interconnect_0_M09_AXI_WVALID),
        .S_AXI_araddr(axi_interconnect_0_M06_AXI_ARADDR),
        .S_AXI_arready(axi_interconnect_0_M06_AXI_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_M06_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_M06_AXI_AWADDR),
        .S_AXI_awready(axi_interconnect_0_M06_AXI_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_M06_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_0_M06_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_0_M06_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_M06_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_0_M06_AXI_RDATA),
        .S_AXI_rready(axi_interconnect_0_M06_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_0_M06_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_M06_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_0_M06_AXI_WDATA),
        .S_AXI_wready(axi_interconnect_0_M06_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_M06_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_M06_AXI_WVALID),
        .axi_resetn(proc_sys_reset_1_interconnect_aresetn),
        .cmos_data(cmos_data_1),
        .cmos_href(cmos_href_1),
        .cmos_iic_scl_i(ov_cmos_cmos_iic_SCL_I),
        .cmos_iic_scl_o(ov_cmos_cmos_iic_SCL_O),
        .cmos_iic_scl_t(ov_cmos_cmos_iic_SCL_T),
        .cmos_iic_sda_i(ov_cmos_cmos_iic_SDA_I),
        .cmos_iic_sda_o(ov_cmos_cmos_iic_SDA_O),
        .cmos_iic_sda_t(ov_cmos_cmos_iic_SDA_T),
        .cmos_pclk(cmos_pclk_1),
        .cmos_pwdn_tri_o(ov_cmos_cmos_pwdn_TRI_O),
        .cmos_rst_tri_o(ov_cmos_cmos_rst_TRI_O),
        .cmos_vsync(cmos_vsync_1),
        .iic2intc_irpt(ov_cmos_iic2intc_irpt),
        .ip2intc_irpt(ov_cmos_ip2intc_irpt),
        .reset_0(reset_1),
        .reset_1(reset_1),
        .s_axi_lite_aclk(clk_wiz_0_clk_out1),
        .sys_clock_0(sys_clock_0_1),
        .vga_pBlue_0(ov_cmos_vga_pBlue_0),
        .vga_pGreen_0(ov_cmos_vga_pGreen_0),
        .vga_pHSync_0(ov_cmos_vga_pHSync_0),
        .vga_pRed_0(ov_cmos_vga_pRed_0),
        .vga_pVSync_0(ov_cmos_vga_pVSync_0));
  m3_for_arty_a7_tri_io_buf_0_0 tri_io_buf_0
       (.din(CortexM3DbgAXI_0_TDO),
        .io_pad(TDO[0]),
        .oen_N(CortexM3DbgAXI_0_nTDOEN));
  m3_for_arty_a7_xlconcat_0_0 xlconcat_0
       (.In0(daplink_if_0_interrupt),
        .In1(axi_gpio_0_ip2intc_irpt),
        .In10(axi_timer_0_interrupt),
        .In2(ov_cmos_ip2intc_irpt),
        .In3(axi_quad_spi_0_ip2intc_irpt),
        .In4(V2C_DAPLink_interface_qspi_irq),
        .In5(V2C_DAPLink_interface_spi_irq),
        .In6(V2C_DAPLink_interface_qspi_xip_irq),
        .In7(V2C_DAPLink_interface_DAPLink_fittedn),
        .In8(ov_cmos_iic2intc_irpt),
        .In9(axi_iic_1_iic2intc_irpt),
        .dout(xlconcat_0_dout));
  m3_for_arty_a7_xlconcat_1_0 xlconcat_1
       (.In0(V2C_DAPLink_interface_DAPLink_fittedn),
        .In1(xlconstant_1_dout),
        .dout(xlconcat_1_dout));
  m3_for_arty_a7_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module m3_for_arty_a7_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arburst,
    M05_AXI_arcache,
    M05_AXI_arlen,
    M05_AXI_arlock,
    M05_AXI_arprot,
    M05_AXI_arqos,
    M05_AXI_arready,
    M05_AXI_arregion,
    M05_AXI_arsize,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awqos,
    M05_AXI_awready,
    M05_AXI_awregion,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rlast,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arburst,
    M10_AXI_arcache,
    M10_AXI_arlen,
    M10_AXI_arlock,
    M10_AXI_arprot,
    M10_AXI_arqos,
    M10_AXI_arready,
    M10_AXI_arsize,
    M10_AXI_aruser,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awburst,
    M10_AXI_awcache,
    M10_AXI_awlen,
    M10_AXI_awlock,
    M10_AXI_awprot,
    M10_AXI_awqos,
    M10_AXI_awready,
    M10_AXI_awsize,
    M10_AXI_awuser,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rlast,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wlast,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [12:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [12:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [1:0]M05_AXI_arburst;
  output [3:0]M05_AXI_arcache;
  output [7:0]M05_AXI_arlen;
  output [0:0]M05_AXI_arlock;
  output [2:0]M05_AXI_arprot;
  output [3:0]M05_AXI_arqos;
  input [0:0]M05_AXI_arready;
  output [3:0]M05_AXI_arregion;
  output [2:0]M05_AXI_arsize;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [7:0]M05_AXI_awlen;
  output [0:0]M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  output [3:0]M05_AXI_awqos;
  input [0:0]M05_AXI_awready;
  output [3:0]M05_AXI_awregion;
  output [2:0]M05_AXI_awsize;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  input [0:0]M05_AXI_rlast;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  output [0:0]M05_AXI_wlast;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  output [1:0]M10_AXI_arburst;
  output [3:0]M10_AXI_arcache;
  output [7:0]M10_AXI_arlen;
  output [0:0]M10_AXI_arlock;
  output [2:0]M10_AXI_arprot;
  output [3:0]M10_AXI_arqos;
  input M10_AXI_arready;
  output [2:0]M10_AXI_arsize;
  output [0:0]M10_AXI_aruser;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [1:0]M10_AXI_awburst;
  output [3:0]M10_AXI_awcache;
  output [7:0]M10_AXI_awlen;
  output [0:0]M10_AXI_awlock;
  output [2:0]M10_AXI_awprot;
  output [3:0]M10_AXI_awqos;
  input M10_AXI_awready;
  output [2:0]M10_AXI_awsize;
  output [0:0]M10_AXI_awuser;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  input M10_AXI_rlast;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  output M10_AXI_wlast;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARUSER;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWUSER;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [12:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARPROT;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [12:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWPROT;
  wire m03_couplers_to_axi_interconnect_0_AWREADY;
  wire m03_couplers_to_axi_interconnect_0_AWVALID;
  wire m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire m03_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire m03_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire m04_couplers_to_axi_interconnect_0_ARREADY;
  wire m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire m04_couplers_to_axi_interconnect_0_AWREADY;
  wire m04_couplers_to_axi_interconnect_0_AWVALID;
  wire m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire m04_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire m04_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire m04_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire m04_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m05_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m05_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m05_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m05_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m05_couplers_to_axi_interconnect_0_ARQOS;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m05_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m05_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m05_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m05_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m05_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m05_couplers_to_axi_interconnect_0_AWQOS;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m05_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m05_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m05_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_ARADDR;
  wire m06_couplers_to_axi_interconnect_0_ARREADY;
  wire m06_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_AWADDR;
  wire m06_couplers_to_axi_interconnect_0_AWREADY;
  wire m06_couplers_to_axi_interconnect_0_AWVALID;
  wire m06_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_BRESP;
  wire m06_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_RDATA;
  wire m06_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_RRESP;
  wire m06_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_0_WDATA;
  wire m06_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m06_couplers_to_axi_interconnect_0_WSTRB;
  wire m06_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_ARADDR;
  wire m07_couplers_to_axi_interconnect_0_ARREADY;
  wire m07_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_AWADDR;
  wire m07_couplers_to_axi_interconnect_0_AWREADY;
  wire m07_couplers_to_axi_interconnect_0_AWVALID;
  wire m07_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_BRESP;
  wire m07_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_RDATA;
  wire m07_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_RRESP;
  wire m07_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m07_couplers_to_axi_interconnect_0_WDATA;
  wire m07_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m07_couplers_to_axi_interconnect_0_WSTRB;
  wire m07_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_ARADDR;
  wire m08_couplers_to_axi_interconnect_0_ARREADY;
  wire m08_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_AWADDR;
  wire m08_couplers_to_axi_interconnect_0_AWREADY;
  wire m08_couplers_to_axi_interconnect_0_AWVALID;
  wire m08_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_BRESP;
  wire m08_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_RDATA;
  wire m08_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_RRESP;
  wire m08_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m08_couplers_to_axi_interconnect_0_WDATA;
  wire m08_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m08_couplers_to_axi_interconnect_0_WSTRB;
  wire m08_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_ARADDR;
  wire m09_couplers_to_axi_interconnect_0_ARREADY;
  wire m09_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_AWADDR;
  wire m09_couplers_to_axi_interconnect_0_AWREADY;
  wire m09_couplers_to_axi_interconnect_0_AWVALID;
  wire m09_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_BRESP;
  wire m09_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_RDATA;
  wire m09_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_RRESP;
  wire m09_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m09_couplers_to_axi_interconnect_0_WDATA;
  wire m09_couplers_to_axi_interconnect_0_WREADY;
  wire m09_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m10_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m10_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m10_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m10_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m10_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m10_couplers_to_axi_interconnect_0_ARQOS;
  wire m10_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m10_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m10_couplers_to_axi_interconnect_0_ARUSER;
  wire m10_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m10_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m10_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m10_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m10_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m10_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m10_couplers_to_axi_interconnect_0_AWQOS;
  wire m10_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m10_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m10_couplers_to_axi_interconnect_0_AWUSER;
  wire m10_couplers_to_axi_interconnect_0_AWVALID;
  wire m10_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_BRESP;
  wire m10_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_RDATA;
  wire m10_couplers_to_axi_interconnect_0_RLAST;
  wire m10_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_RRESP;
  wire m10_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m10_couplers_to_axi_interconnect_0_WDATA;
  wire m10_couplers_to_axi_interconnect_0_WLAST;
  wire m10_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m10_couplers_to_axi_interconnect_0_WSTRB;
  wire m10_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [0:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [0:0]xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [35:32]xbar_to_m08_couplers_ARQOS;
  wire xbar_to_m08_couplers_ARREADY;
  wire [35:32]xbar_to_m08_couplers_ARREGION;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [35:32]xbar_to_m08_couplers_AWQOS;
  wire xbar_to_m08_couplers_AWREADY;
  wire [35:32]xbar_to_m08_couplers_AWREGION;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [19:18]xbar_to_m09_couplers_ARBURST;
  wire [39:36]xbar_to_m09_couplers_ARCACHE;
  wire [79:72]xbar_to_m09_couplers_ARLEN;
  wire [9:9]xbar_to_m09_couplers_ARLOCK;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire [39:36]xbar_to_m09_couplers_ARQOS;
  wire xbar_to_m09_couplers_ARREADY;
  wire [39:36]xbar_to_m09_couplers_ARREGION;
  wire [29:27]xbar_to_m09_couplers_ARSIZE;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [19:18]xbar_to_m09_couplers_AWBURST;
  wire [39:36]xbar_to_m09_couplers_AWCACHE;
  wire [79:72]xbar_to_m09_couplers_AWLEN;
  wire [9:9]xbar_to_m09_couplers_AWLOCK;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire [39:36]xbar_to_m09_couplers_AWQOS;
  wire xbar_to_m09_couplers_AWREADY;
  wire [39:36]xbar_to_m09_couplers_AWREGION;
  wire [29:27]xbar_to_m09_couplers_AWSIZE;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire xbar_to_m09_couplers_RLAST;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire [9:9]xbar_to_m09_couplers_WLAST;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [21:20]xbar_to_m10_couplers_ARBURST;
  wire [43:40]xbar_to_m10_couplers_ARCACHE;
  wire [87:80]xbar_to_m10_couplers_ARLEN;
  wire [10:10]xbar_to_m10_couplers_ARLOCK;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire [43:40]xbar_to_m10_couplers_ARQOS;
  wire xbar_to_m10_couplers_ARREADY;
  wire [32:30]xbar_to_m10_couplers_ARSIZE;
  wire [10:10]xbar_to_m10_couplers_ARUSER;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [21:20]xbar_to_m10_couplers_AWBURST;
  wire [43:40]xbar_to_m10_couplers_AWCACHE;
  wire [87:80]xbar_to_m10_couplers_AWLEN;
  wire [10:10]xbar_to_m10_couplers_AWLOCK;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire [43:40]xbar_to_m10_couplers_AWQOS;
  wire xbar_to_m10_couplers_AWREADY;
  wire [32:30]xbar_to_m10_couplers_AWSIZE;
  wire [10:10]xbar_to_m10_couplers_AWUSER;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire xbar_to_m10_couplers_RLAST;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire [10:10]xbar_to_m10_couplers_WLAST;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [10:0]NLW_xbar_m_axi_aruser_UNCONNECTED;
  wire [10:0]NLW_xbar_m_axi_awuser_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_AXI_araddr[12:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_0_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[12:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_0_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_0_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_0_ARADDR;
  assign M05_AXI_arburst[1:0] = m05_couplers_to_axi_interconnect_0_ARBURST;
  assign M05_AXI_arcache[3:0] = m05_couplers_to_axi_interconnect_0_ARCACHE;
  assign M05_AXI_arlen[7:0] = m05_couplers_to_axi_interconnect_0_ARLEN;
  assign M05_AXI_arlock[0] = m05_couplers_to_axi_interconnect_0_ARLOCK;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_interconnect_0_ARPROT;
  assign M05_AXI_arqos[3:0] = m05_couplers_to_axi_interconnect_0_ARQOS;
  assign M05_AXI_arregion[3:0] = m05_couplers_to_axi_interconnect_0_ARREGION;
  assign M05_AXI_arsize[2:0] = m05_couplers_to_axi_interconnect_0_ARSIZE;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_interconnect_0_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_0_AWADDR;
  assign M05_AXI_awburst[1:0] = m05_couplers_to_axi_interconnect_0_AWBURST;
  assign M05_AXI_awcache[3:0] = m05_couplers_to_axi_interconnect_0_AWCACHE;
  assign M05_AXI_awlen[7:0] = m05_couplers_to_axi_interconnect_0_AWLEN;
  assign M05_AXI_awlock[0] = m05_couplers_to_axi_interconnect_0_AWLOCK;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_interconnect_0_AWPROT;
  assign M05_AXI_awqos[3:0] = m05_couplers_to_axi_interconnect_0_AWQOS;
  assign M05_AXI_awregion[3:0] = m05_couplers_to_axi_interconnect_0_AWREGION;
  assign M05_AXI_awsize[2:0] = m05_couplers_to_axi_interconnect_0_AWSIZE;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_interconnect_0_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_interconnect_0_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_interconnect_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_0_WDATA;
  assign M05_AXI_wlast[0] = m05_couplers_to_axi_interconnect_0_WLAST;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_0_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_interconnect_0_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_interconnect_0_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_0_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_interconnect_0_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_interconnect_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_0_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_interconnect_0_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_interconnect_0_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_interconnect_0_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_interconnect_0_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_interconnect_0_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_interconnect_0_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_interconnect_0_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_interconnect_0_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_interconnect_0_WVALID;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_axi_interconnect_0_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_axi_interconnect_0_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_axi_interconnect_0_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_axi_interconnect_0_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_axi_interconnect_0_BREADY;
  assign M08_AXI_rready = m08_couplers_to_axi_interconnect_0_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_interconnect_0_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_interconnect_0_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_axi_interconnect_0_WVALID;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_interconnect_0_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_axi_interconnect_0_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_interconnect_0_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_axi_interconnect_0_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_axi_interconnect_0_BREADY;
  assign M09_AXI_rready = m09_couplers_to_axi_interconnect_0_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_interconnect_0_WDATA;
  assign M09_AXI_wvalid = m09_couplers_to_axi_interconnect_0_WVALID;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_axi_interconnect_0_ARADDR;
  assign M10_AXI_arburst[1:0] = m10_couplers_to_axi_interconnect_0_ARBURST;
  assign M10_AXI_arcache[3:0] = m10_couplers_to_axi_interconnect_0_ARCACHE;
  assign M10_AXI_arlen[7:0] = m10_couplers_to_axi_interconnect_0_ARLEN;
  assign M10_AXI_arlock[0] = m10_couplers_to_axi_interconnect_0_ARLOCK;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_axi_interconnect_0_ARPROT;
  assign M10_AXI_arqos[3:0] = m10_couplers_to_axi_interconnect_0_ARQOS;
  assign M10_AXI_arsize[2:0] = m10_couplers_to_axi_interconnect_0_ARSIZE;
  assign M10_AXI_aruser[0] = m10_couplers_to_axi_interconnect_0_ARUSER;
  assign M10_AXI_arvalid = m10_couplers_to_axi_interconnect_0_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_axi_interconnect_0_AWADDR;
  assign M10_AXI_awburst[1:0] = m10_couplers_to_axi_interconnect_0_AWBURST;
  assign M10_AXI_awcache[3:0] = m10_couplers_to_axi_interconnect_0_AWCACHE;
  assign M10_AXI_awlen[7:0] = m10_couplers_to_axi_interconnect_0_AWLEN;
  assign M10_AXI_awlock[0] = m10_couplers_to_axi_interconnect_0_AWLOCK;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_axi_interconnect_0_AWPROT;
  assign M10_AXI_awqos[3:0] = m10_couplers_to_axi_interconnect_0_AWQOS;
  assign M10_AXI_awsize[2:0] = m10_couplers_to_axi_interconnect_0_AWSIZE;
  assign M10_AXI_awuser[0] = m10_couplers_to_axi_interconnect_0_AWUSER;
  assign M10_AXI_awvalid = m10_couplers_to_axi_interconnect_0_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_interconnect_0_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_interconnect_0_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_interconnect_0_WDATA;
  assign M10_AXI_wlast = m10_couplers_to_axi_interconnect_0_WLAST;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_interconnect_0_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_interconnect_0_WVALID;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_interconnect_0_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_interconnect_0_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_interconnect_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_interconnect_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_0_RLAST = M05_AXI_rlast[0];
  assign m05_couplers_to_axi_interconnect_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_interconnect_0_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi_interconnect_0_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_interconnect_0_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_interconnect_0_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_interconnect_0_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_interconnect_0_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_interconnect_0_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_interconnect_0_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_interconnect_0_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_interconnect_0_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_interconnect_0_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_interconnect_0_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_interconnect_0_WREADY = M07_AXI_wready;
  assign m08_couplers_to_axi_interconnect_0_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_axi_interconnect_0_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_axi_interconnect_0_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_axi_interconnect_0_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_interconnect_0_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_axi_interconnect_0_WREADY = M08_AXI_wready;
  assign m09_couplers_to_axi_interconnect_0_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_axi_interconnect_0_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_axi_interconnect_0_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_axi_interconnect_0_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_interconnect_0_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_axi_interconnect_0_WREADY = M09_AXI_wready;
  assign m10_couplers_to_axi_interconnect_0_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_interconnect_0_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_interconnect_0_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_interconnect_0_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_interconnect_0_RLAST = M10_AXI_rlast;
  assign m10_couplers_to_axi_interconnect_0_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_interconnect_0_WREADY = M10_AXI_wready;
  m00_couplers_imp_JNWG9E m00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1JHKYGL m01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_18D5QAL m02_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_8J5MKA m03_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_D9WIKT m04_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1CJX44Q m05_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m05_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m05_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m05_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m05_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m05_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m05_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m05_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m05_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m05_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m05_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m05_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m05_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m05_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m05_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m05_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m05_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m05_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m05_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1WI4A9U m06_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_X8EK9X m07_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_15AL04S m08_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m08_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m08_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m08_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m08_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_63E9XN m09_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m09_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m09_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m09_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m09_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m09_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m09_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m09_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m09_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m09_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m09_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m09_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m09_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m09_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m09_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m09_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m09_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m09_couplers_RLAST),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m09_couplers_WLAST),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_1R2RH3W m10_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m10_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m10_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m10_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m10_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m10_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m10_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m10_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m10_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_aruser(m10_couplers_to_axi_interconnect_0_ARUSER),
        .M_AXI_arvalid(m10_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m10_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m10_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m10_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m10_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m10_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m10_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m10_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m10_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awuser(m10_couplers_to_axi_interconnect_0_AWUSER),
        .M_AXI_awvalid(m10_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m10_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m10_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m10_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m10_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m10_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m10_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m10_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m10_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m10_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m10_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m10_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m10_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m10_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m10_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m10_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m10_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m10_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m10_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m10_couplers_RLAST),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m10_couplers_WLAST),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  s00_couplers_imp_11BAHIF s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_0_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_0_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  m3_for_arty_a7_xbar_1 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m10_couplers_ARBURST,xbar_to_m09_couplers_ARBURST,xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m10_couplers_ARCACHE,xbar_to_m09_couplers_ARCACHE,xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m10_couplers_ARLEN,xbar_to_m09_couplers_ARLEN,xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m10_couplers_ARLOCK,xbar_to_m09_couplers_ARLOCK,xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m10_couplers_ARQOS,xbar_to_m09_couplers_ARQOS,xbar_to_m08_couplers_ARQOS,xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m09_couplers_ARREGION,xbar_to_m08_couplers_ARREGION,xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m10_couplers_ARSIZE,xbar_to_m09_couplers_ARSIZE,xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser({xbar_to_m10_couplers_ARUSER,NLW_xbar_m_axi_aruser_UNCONNECTED[9:0]}),
        .m_axi_arvalid({xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m10_couplers_AWBURST,xbar_to_m09_couplers_AWBURST,xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m10_couplers_AWCACHE,xbar_to_m09_couplers_AWCACHE,xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m10_couplers_AWLEN,xbar_to_m09_couplers_AWLEN,xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m10_couplers_AWLOCK,xbar_to_m09_couplers_AWLOCK,xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m10_couplers_AWQOS,xbar_to_m09_couplers_AWQOS,xbar_to_m08_couplers_AWQOS,xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m09_couplers_AWREGION,xbar_to_m08_couplers_AWREGION,xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m10_couplers_AWSIZE,xbar_to_m09_couplers_AWSIZE,xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser({xbar_to_m10_couplers_AWUSER,NLW_xbar_m_axi_awuser_UNCONNECTED[9:0]}),
        .m_axi_awvalid({xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m10_couplers_RLAST,xbar_to_m09_couplers_RLAST,xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m10_couplers_WLAST,xbar_to_m09_couplers_WLAST,xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_aruser(s00_couplers_to_xbar_ARUSER),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awuser(s00_couplers_to_xbar_AWUSER),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m3_for_arty_a7_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RLAST;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WLAST;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m01_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire m03_couplers_to_axi_interconnect_0_AWREADY;
  wire m03_couplers_to_axi_interconnect_0_AWVALID;
  wire m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire m03_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire m03_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign S00_AXI_arready[0] = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast[0] = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready;
  m00_couplers_imp_13L60SF m00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_4B5460 m01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_OAWDIO m02_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1NKLPAV m03_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_LNGPOQ s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  m3_for_arty_a7_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module ov_cmos_imp_183AGT0
   (DDR2_0_addr,
    DDR2_0_ba,
    DDR2_0_cas_n,
    DDR2_0_ck_n,
    DDR2_0_ck_p,
    DDR2_0_cke,
    DDR2_0_cs_n,
    DDR2_0_dm,
    DDR2_0_dq,
    DDR2_0_dqs_n,
    DDR2_0_dqs_p,
    DDR2_0_odt,
    DDR2_0_ras_n,
    DDR2_0_we_n,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_aruser,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awuser,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axi_resetn,
    cmos_data,
    cmos_href,
    cmos_iic_scl_i,
    cmos_iic_scl_o,
    cmos_iic_scl_t,
    cmos_iic_sda_i,
    cmos_iic_sda_o,
    cmos_iic_sda_t,
    cmos_pclk,
    cmos_pwdn_tri_o,
    cmos_rst_tri_o,
    cmos_vsync,
    iic2intc_irpt,
    ip2intc_irpt,
    reset_0,
    reset_1,
    s_axi_lite_aclk,
    sys_clock_0,
    vga_pBlue_0,
    vga_pGreen_0,
    vga_pHSync_0,
    vga_pRed_0,
    vga_pVSync_0);
  output [12:0]DDR2_0_addr;
  output [2:0]DDR2_0_ba;
  output DDR2_0_cas_n;
  output [0:0]DDR2_0_ck_n;
  output [0:0]DDR2_0_ck_p;
  output [0:0]DDR2_0_cke;
  output [0:0]DDR2_0_cs_n;
  output [1:0]DDR2_0_dm;
  inout [15:0]DDR2_0_dq;
  inout [1:0]DDR2_0_dqs_n;
  inout [1:0]DDR2_0_dqs_p;
  output [0:0]DDR2_0_odt;
  output DDR2_0_ras_n;
  output DDR2_0_we_n;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input [0:0]S02_AXI_aruser;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input [0:0]S02_AXI_awuser;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input axi_resetn;
  input [7:0]cmos_data;
  input cmos_href;
  input cmos_iic_scl_i;
  output cmos_iic_scl_o;
  output cmos_iic_scl_t;
  input cmos_iic_sda_i;
  output cmos_iic_sda_o;
  output cmos_iic_sda_t;
  input cmos_pclk;
  output [0:0]cmos_pwdn_tri_o;
  output [0:0]cmos_rst_tri_o;
  input cmos_vsync;
  output iic2intc_irpt;
  output ip2intc_irpt;
  input reset_0;
  input reset_1;
  input s_axi_lite_aclk;
  input sys_clock_0;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire Conn1_WVALID;
  wire [12:0]Conn2_ADDR;
  wire [2:0]Conn2_BA;
  wire Conn2_CAS_N;
  wire [0:0]Conn2_CKE;
  wire [0:0]Conn2_CK_N;
  wire [0:0]Conn2_CK_P;
  wire [0:0]Conn2_CS_N;
  wire [1:0]Conn2_DM;
  wire [15:0]Conn2_DQ;
  wire [1:0]Conn2_DQS_N;
  wire [1:0]Conn2_DQS_P;
  wire [0:0]Conn2_ODT;
  wire Conn2_RAS_N;
  wire Conn2_WE_N;
  wire [31:0]Conn3_ARADDR;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire Conn4_SCL_I;
  wire Conn4_SCL_O;
  wire Conn4_SCL_T;
  wire Conn4_SDA_I;
  wire Conn4_SDA_O;
  wire Conn4_SDA_T;
  wire [31:0]Conn5_ARADDR;
  wire Conn5_ARREADY;
  wire Conn5_ARVALID;
  wire [31:0]Conn5_AWADDR;
  wire Conn5_AWREADY;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [31:0]Conn5_RDATA;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [31:0]Conn5_WDATA;
  wire Conn5_WREADY;
  wire [3:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [0:0]Conn6_TRI_O;
  wire [0:0]Conn7_TRI_O;
  wire [31:0]Conn8_ARADDR;
  wire [1:0]Conn8_ARBURST;
  wire [3:0]Conn8_ARCACHE;
  wire [7:0]Conn8_ARLEN;
  wire [0:0]Conn8_ARLOCK;
  wire [2:0]Conn8_ARPROT;
  wire [3:0]Conn8_ARQOS;
  wire Conn8_ARREADY;
  wire [2:0]Conn8_ARSIZE;
  wire [0:0]Conn8_ARUSER;
  wire Conn8_ARVALID;
  wire [31:0]Conn8_AWADDR;
  wire [1:0]Conn8_AWBURST;
  wire [3:0]Conn8_AWCACHE;
  wire [7:0]Conn8_AWLEN;
  wire [0:0]Conn8_AWLOCK;
  wire [2:0]Conn8_AWPROT;
  wire [3:0]Conn8_AWQOS;
  wire Conn8_AWREADY;
  wire [2:0]Conn8_AWSIZE;
  wire [0:0]Conn8_AWUSER;
  wire Conn8_AWVALID;
  wire Conn8_BREADY;
  wire [1:0]Conn8_BRESP;
  wire Conn8_BVALID;
  wire [31:0]Conn8_RDATA;
  wire Conn8_RLAST;
  wire Conn8_RREADY;
  wire [1:0]Conn8_RRESP;
  wire Conn8_RVALID;
  wire [31:0]Conn8_WDATA;
  wire Conn8_WLAST;
  wire Conn8_WREADY;
  wire [3:0]Conn8_WSTRB;
  wire Conn8_WVALID;
  wire OV_Sensor_0_vid_clk_ce;
  wire OV_Sensor_0_video_o_ACTIVE_VIDEO;
  wire [23:0]OV_Sensor_0_video_o_DATA;
  wire OV_Sensor_0_video_o_HSYNC;
  wire OV_Sensor_0_video_o_VSYNC;
  wire [0:0]aresetn_1;
  wire axi_gpio_1_ip2intc_irpt;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_resetn_1;
  wire [31:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [63:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [63:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [7:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_vdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARPROT;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARSIZE;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_vdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWPROT;
  wire axi_vdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWSIZE;
  wire axi_vdma_0_M_AXI_S2MM_AWVALID;
  wire axi_vdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_BRESP;
  wire axi_vdma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_vdma_0_M_AXI_S2MM_WDATA;
  wire axi_vdma_0_M_AXI_S2MM_WLAST;
  wire axi_vdma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_WSTRB;
  wire axi_vdma_0_M_AXI_S2MM_WVALID;
  wire clk_wiz_clk_24M;
  wire clk_wiz_clk_25M;
  wire clk_wiz_locked;
  wire [7:0]cmos_data_1;
  wire cmos_href_1;
  wire cmos_pclk_1;
  wire cmos_vsync_1;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_addn_clk_0;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire reset_0_1;
  wire reset_1_1;
  wire [3:0]rgb2vga_0_vga_pBlue;
  wire [3:0]rgb2vga_0_vga_pGreen;
  wire rgb2vga_0_vga_pHSync;
  wire [3:0]rgb2vga_0_vga_pRed;
  wire rgb2vga_0_vga_pVSync;
  wire s_axi_lite_aclk_1;
  wire sys_clock_0_1;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [23:0]v_vid_in_axi4s_0_video_out_TDATA;
  wire v_vid_in_axi4s_0_video_out_TLAST;
  wire v_vid_in_axi4s_0_video_out_TREADY;
  wire v_vid_in_axi4s_0_video_out_TUSER;
  wire v_vid_in_axi4s_0_video_out_TVALID;

  assign Conn1_ARADDR = S_AXI_LITE_araddr[31:0];
  assign Conn1_ARVALID = S_AXI_LITE_arvalid;
  assign Conn1_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI_LITE_awvalid;
  assign Conn1_BREADY = S_AXI_LITE_bready;
  assign Conn1_RREADY = S_AXI_LITE_rready;
  assign Conn1_WDATA = S_AXI_LITE_wdata[31:0];
  assign Conn1_WVALID = S_AXI_LITE_wvalid;
  assign Conn3_ARADDR = S_AXI_araddr[31:0];
  assign Conn3_ARVALID = S_AXI_arvalid;
  assign Conn3_AWADDR = S_AXI_awaddr[31:0];
  assign Conn3_AWVALID = S_AXI_awvalid;
  assign Conn3_BREADY = S_AXI_bready;
  assign Conn3_RREADY = S_AXI_rready;
  assign Conn3_WDATA = S_AXI_wdata[31:0];
  assign Conn3_WSTRB = S_AXI_wstrb[3:0];
  assign Conn3_WVALID = S_AXI_wvalid;
  assign Conn4_SCL_I = cmos_iic_scl_i;
  assign Conn4_SDA_I = cmos_iic_sda_i;
  assign Conn5_ARADDR = S_AXI1_araddr[31:0];
  assign Conn5_ARVALID = S_AXI1_arvalid;
  assign Conn5_AWADDR = S_AXI1_awaddr[31:0];
  assign Conn5_AWVALID = S_AXI1_awvalid;
  assign Conn5_BREADY = S_AXI1_bready;
  assign Conn5_RREADY = S_AXI1_rready;
  assign Conn5_WDATA = S_AXI1_wdata[31:0];
  assign Conn5_WSTRB = S_AXI1_wstrb[3:0];
  assign Conn5_WVALID = S_AXI1_wvalid;
  assign Conn8_ARADDR = S02_AXI_araddr[31:0];
  assign Conn8_ARBURST = S02_AXI_arburst[1:0];
  assign Conn8_ARCACHE = S02_AXI_arcache[3:0];
  assign Conn8_ARLEN = S02_AXI_arlen[7:0];
  assign Conn8_ARLOCK = S02_AXI_arlock[0];
  assign Conn8_ARPROT = S02_AXI_arprot[2:0];
  assign Conn8_ARQOS = S02_AXI_arqos[3:0];
  assign Conn8_ARSIZE = S02_AXI_arsize[2:0];
  assign Conn8_ARUSER = S02_AXI_aruser[0];
  assign Conn8_ARVALID = S02_AXI_arvalid;
  assign Conn8_AWADDR = S02_AXI_awaddr[31:0];
  assign Conn8_AWBURST = S02_AXI_awburst[1:0];
  assign Conn8_AWCACHE = S02_AXI_awcache[3:0];
  assign Conn8_AWLEN = S02_AXI_awlen[7:0];
  assign Conn8_AWLOCK = S02_AXI_awlock[0];
  assign Conn8_AWPROT = S02_AXI_awprot[2:0];
  assign Conn8_AWQOS = S02_AXI_awqos[3:0];
  assign Conn8_AWSIZE = S02_AXI_awsize[2:0];
  assign Conn8_AWUSER = S02_AXI_awuser[0];
  assign Conn8_AWVALID = S02_AXI_awvalid;
  assign Conn8_BREADY = S02_AXI_bready;
  assign Conn8_RREADY = S02_AXI_rready;
  assign Conn8_WDATA = S02_AXI_wdata[31:0];
  assign Conn8_WLAST = S02_AXI_wlast;
  assign Conn8_WSTRB = S02_AXI_wstrb[3:0];
  assign Conn8_WVALID = S02_AXI_wvalid;
  assign DDR2_0_addr[12:0] = Conn2_ADDR;
  assign DDR2_0_ba[2:0] = Conn2_BA;
  assign DDR2_0_cas_n = Conn2_CAS_N;
  assign DDR2_0_ck_n[0] = Conn2_CK_N;
  assign DDR2_0_ck_p[0] = Conn2_CK_P;
  assign DDR2_0_cke[0] = Conn2_CKE;
  assign DDR2_0_cs_n[0] = Conn2_CS_N;
  assign DDR2_0_dm[1:0] = Conn2_DM;
  assign DDR2_0_odt[0] = Conn2_ODT;
  assign DDR2_0_ras_n = Conn2_RAS_N;
  assign DDR2_0_we_n = Conn2_WE_N;
  assign S02_AXI_arready = Conn8_ARREADY;
  assign S02_AXI_awready = Conn8_AWREADY;
  assign S02_AXI_bresp[1:0] = Conn8_BRESP;
  assign S02_AXI_bvalid = Conn8_BVALID;
  assign S02_AXI_rdata[31:0] = Conn8_RDATA;
  assign S02_AXI_rlast = Conn8_RLAST;
  assign S02_AXI_rresp[1:0] = Conn8_RRESP;
  assign S02_AXI_rvalid = Conn8_RVALID;
  assign S02_AXI_wready = Conn8_WREADY;
  assign S_AXI1_arready = Conn5_ARREADY;
  assign S_AXI1_awready = Conn5_AWREADY;
  assign S_AXI1_bresp[1:0] = Conn5_BRESP;
  assign S_AXI1_bvalid = Conn5_BVALID;
  assign S_AXI1_rdata[31:0] = Conn5_RDATA;
  assign S_AXI1_rresp[1:0] = Conn5_RRESP;
  assign S_AXI1_rvalid = Conn5_RVALID;
  assign S_AXI1_wready = Conn5_WREADY;
  assign S_AXI_LITE_arready = Conn1_ARREADY;
  assign S_AXI_LITE_awready = Conn1_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_LITE_bvalid = Conn1_BVALID;
  assign S_AXI_LITE_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_LITE_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_LITE_rvalid = Conn1_RVALID;
  assign S_AXI_LITE_wready = Conn1_WREADY;
  assign S_AXI_arready = Conn3_ARREADY;
  assign S_AXI_awready = Conn3_AWREADY;
  assign S_AXI_bresp[1:0] = Conn3_BRESP;
  assign S_AXI_bvalid = Conn3_BVALID;
  assign S_AXI_rdata[31:0] = Conn3_RDATA;
  assign S_AXI_rresp[1:0] = Conn3_RRESP;
  assign S_AXI_rvalid = Conn3_RVALID;
  assign S_AXI_wready = Conn3_WREADY;
  assign axi_resetn_1 = axi_resetn;
  assign cmos_data_1 = cmos_data[7:0];
  assign cmos_href_1 = cmos_href;
  assign cmos_iic_scl_o = Conn4_SCL_O;
  assign cmos_iic_scl_t = Conn4_SCL_T;
  assign cmos_iic_sda_o = Conn4_SDA_O;
  assign cmos_iic_sda_t = Conn4_SDA_T;
  assign cmos_pclk_1 = cmos_pclk;
  assign cmos_pwdn_tri_o[0] = Conn7_TRI_O;
  assign cmos_rst_tri_o[0] = Conn6_TRI_O;
  assign cmos_vsync_1 = cmos_vsync;
  assign iic2intc_irpt = axi_iic_0_iic2intc_irpt;
  assign ip2intc_irpt = axi_gpio_1_ip2intc_irpt;
  assign reset_0_1 = reset_0;
  assign reset_1_1 = reset_1;
  assign s_axi_lite_aclk_1 = s_axi_lite_aclk;
  assign sys_clock_0_1 = sys_clock_0;
  assign vga_pBlue_0[3:0] = rgb2vga_0_vga_pBlue;
  assign vga_pGreen_0[3:0] = rgb2vga_0_vga_pGreen;
  assign vga_pHSync_0 = rgb2vga_0_vga_pHSync;
  assign vga_pRed_0[3:0] = rgb2vga_0_vga_pRed;
  assign vga_pVSync_0 = rgb2vga_0_vga_pVSync;
  m3_for_arty_a7_OV_Sensor_0_0 OV_Sensor_0
       (.CLK_i(clk_wiz_clk_24M),
        .cmos_data_i(cmos_data_1),
        .cmos_href_i(cmos_href_1),
        .cmos_pclk_i(cmos_pclk_1),
        .cmos_vsync_i(cmos_vsync_1),
        .vid_active_video(OV_Sensor_0_video_o_ACTIVE_VIDEO),
        .vid_clk_ce(OV_Sensor_0_vid_clk_ce),
        .vid_data(OV_Sensor_0_video_o_DATA),
        .vid_hsync(OV_Sensor_0_video_o_HSYNC),
        .vid_vsync(OV_Sensor_0_video_o_VSYNC));
  m3_for_arty_a7_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_o(Conn6_TRI_O),
        .gpio_io_o(Conn7_TRI_O),
        .ip2intc_irpt(axi_gpio_1_ip2intc_irpt),
        .s_axi_aclk(s_axi_lite_aclk_1),
        .s_axi_araddr(Conn5_ARADDR[8:0]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(Conn5_ARREADY),
        .s_axi_arvalid(Conn5_ARVALID),
        .s_axi_awaddr(Conn5_AWADDR[8:0]),
        .s_axi_awready(Conn5_AWREADY),
        .s_axi_awvalid(Conn5_AWVALID),
        .s_axi_bready(Conn5_BREADY),
        .s_axi_bresp(Conn5_BRESP),
        .s_axi_bvalid(Conn5_BVALID),
        .s_axi_rdata(Conn5_RDATA),
        .s_axi_rready(Conn5_RREADY),
        .s_axi_rresp(Conn5_RRESP),
        .s_axi_rvalid(Conn5_RVALID),
        .s_axi_wdata(Conn5_WDATA),
        .s_axi_wready(Conn5_WREADY),
        .s_axi_wstrb(Conn5_WSTRB),
        .s_axi_wvalid(Conn5_WVALID));
  m3_for_arty_a7_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(s_axi_lite_aclk_1),
        .s_axi_araddr(Conn3_ARADDR[8:0]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(Conn3_ARREADY),
        .s_axi_arvalid(Conn3_ARVALID),
        .s_axi_awaddr(Conn3_AWADDR[8:0]),
        .s_axi_awready(Conn3_AWREADY),
        .s_axi_awvalid(Conn3_AWVALID),
        .s_axi_bready(Conn3_BREADY),
        .s_axi_bresp(Conn3_BRESP),
        .s_axi_bvalid(Conn3_BVALID),
        .s_axi_rdata(Conn3_RDATA),
        .s_axi_rready(Conn3_RREADY),
        .s_axi_rresp(Conn3_RRESP),
        .s_axi_rvalid(Conn3_RVALID),
        .s_axi_wdata(Conn3_WDATA),
        .s_axi_wready(Conn3_WREADY),
        .s_axi_wstrb(Conn3_WSTRB),
        .s_axi_wvalid(Conn3_WVALID),
        .scl_i(Conn4_SCL_I),
        .scl_o(Conn4_SCL_O),
        .scl_t(Conn4_SCL_T),
        .sda_i(Conn4_SDA_I),
        .sda_o(Conn4_SDA_O),
        .sda_t(Conn4_SDA_T));
  m3_for_arty_a7_axi_smc_3 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(Conn8_ARADDR),
        .S02_AXI_arburst(Conn8_ARBURST),
        .S02_AXI_arcache(Conn8_ARCACHE),
        .S02_AXI_arlen(Conn8_ARLEN),
        .S02_AXI_arlock(Conn8_ARLOCK),
        .S02_AXI_arprot(Conn8_ARPROT),
        .S02_AXI_arqos(Conn8_ARQOS),
        .S02_AXI_arready(Conn8_ARREADY),
        .S02_AXI_arsize(Conn8_ARSIZE),
        .S02_AXI_aruser(Conn8_ARUSER),
        .S02_AXI_arvalid(Conn8_ARVALID),
        .S02_AXI_awaddr(Conn8_AWADDR),
        .S02_AXI_awburst(Conn8_AWBURST),
        .S02_AXI_awcache(Conn8_AWCACHE),
        .S02_AXI_awlen(Conn8_AWLEN),
        .S02_AXI_awlock(Conn8_AWLOCK),
        .S02_AXI_awprot(Conn8_AWPROT),
        .S02_AXI_awqos(Conn8_AWQOS),
        .S02_AXI_awready(Conn8_AWREADY),
        .S02_AXI_awsize(Conn8_AWSIZE),
        .S02_AXI_awuser(Conn8_AWUSER),
        .S02_AXI_awvalid(Conn8_AWVALID),
        .S02_AXI_bready(Conn8_BREADY),
        .S02_AXI_bresp(Conn8_BRESP),
        .S02_AXI_bvalid(Conn8_BVALID),
        .S02_AXI_rdata(Conn8_RDATA),
        .S02_AXI_rlast(Conn8_RLAST),
        .S02_AXI_rready(Conn8_RREADY),
        .S02_AXI_rresp(Conn8_RRESP),
        .S02_AXI_rvalid(Conn8_RVALID),
        .S02_AXI_wdata(Conn8_WDATA),
        .S02_AXI_wlast(Conn8_WLAST),
        .S02_AXI_wready(Conn8_WREADY),
        .S02_AXI_wstrb(Conn8_WSTRB),
        .S02_AXI_wvalid(Conn8_WVALID),
        .aclk(mig_7series_0_ui_clk),
        .aclk1(s_axi_lite_aclk_1),
        .aresetn(aresetn_1));
  m3_for_arty_a7_axi_vdma_0_1 axi_vdma_0
       (.axi_resetn(axi_resetn_1),
        .m_axi_mm2s_aclk(mig_7series_0_ui_clk),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(mig_7series_0_ui_clk),
        .m_axi_s2mm_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_aclk(mig_7series_0_ui_addn_clk_0),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(s_axi_lite_aclk_1),
        .s_axi_lite_araddr(Conn1_ARADDR[8:0]),
        .s_axi_lite_arready(Conn1_ARREADY),
        .s_axi_lite_arvalid(Conn1_ARVALID),
        .s_axi_lite_awaddr(Conn1_AWADDR[8:0]),
        .s_axi_lite_awready(Conn1_AWREADY),
        .s_axi_lite_awvalid(Conn1_AWVALID),
        .s_axi_lite_bready(Conn1_BREADY),
        .s_axi_lite_bresp(Conn1_BRESP),
        .s_axi_lite_bvalid(Conn1_BVALID),
        .s_axi_lite_rdata(Conn1_RDATA),
        .s_axi_lite_rready(Conn1_RREADY),
        .s_axi_lite_rresp(Conn1_RRESP),
        .s_axi_lite_rvalid(Conn1_RVALID),
        .s_axi_lite_wdata(Conn1_WDATA),
        .s_axi_lite_wready(Conn1_WREADY),
        .s_axi_lite_wvalid(Conn1_WVALID),
        .s_axis_s2mm_aclk(mig_7series_0_ui_addn_clk_0),
        .s_axis_s2mm_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .s_axis_s2mm_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .s_axis_s2mm_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .s_axis_s2mm_tvalid(v_vid_in_axi4s_0_video_out_TVALID));
  m3_for_arty_a7_clk_wiz_1 clk_wiz
       (.clk_24M(clk_wiz_clk_24M),
        .clk_25M(clk_wiz_clk_25M),
        .clk_in1(sys_clock_0_1),
        .locked(clk_wiz_locked),
        .resetn(reset_1_1));
  m3_for_arty_a7_clk_wiz_0_1 clk_wiz_0
       (.clk_200M(mig_7series_0_ui_addn_clk_0),
        .clk_in1(sys_clock_0_1),
        .resetn(reset_1_1));
  m3_for_arty_a7_mig_7series_0_1 mig_7series_0
       (.aresetn(aresetn_1),
        .ddr2_addr(Conn2_ADDR),
        .ddr2_ba(Conn2_BA),
        .ddr2_cas_n(Conn2_CAS_N),
        .ddr2_ck_n(Conn2_CK_N),
        .ddr2_ck_p(Conn2_CK_P),
        .ddr2_cke(Conn2_CKE),
        .ddr2_cs_n(Conn2_CS_N),
        .ddr2_dm(Conn2_DM),
        .ddr2_dq(DDR2_0_dq[15:0]),
        .ddr2_dqs_n(DDR2_0_dqs_n[1:0]),
        .ddr2_dqs_p(DDR2_0_dqs_p[1:0]),
        .ddr2_odt(Conn2_ODT),
        .ddr2_ras_n(Conn2_RAS_N),
        .ddr2_we_n(Conn2_WE_N),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID),
        .sys_clk_i(mig_7series_0_ui_addn_clk_0),
        .sys_rst(reset_0_1),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  m3_for_arty_a7_rgb2vga_0_0 rgb2vga_0
       (.PixelClk(clk_wiz_clk_25M),
        .rgb_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .rgb_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .rgb_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .rgb_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vga_pBlue(rgb2vga_0_vga_pBlue),
        .vga_pGreen(rgb2vga_0_vga_pGreen),
        .vga_pHSync(rgb2vga_0_vga_pHSync),
        .vga_pRed(rgb2vga_0_vga_pRed),
        .vga_pVSync(rgb2vga_0_vga_pVSync));
  m3_for_arty_a7_rst_mig_7series_0_81M_3 rst_mig_7series_0_81M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(aresetn_1),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  m3_for_arty_a7_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(mig_7series_0_ui_addn_clk_0),
        .aclken(clk_wiz_locked),
        .aresetn(clk_wiz_locked),
        .fid(1'b0),
        .s_axis_video_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_video_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_video_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_video_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_video_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(clk_wiz_locked),
        .vid_io_out_clk(clk_wiz_clk_25M),
        .vid_io_out_reset(clk_wiz_locked),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  m3_for_arty_a7_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(clk_wiz_clk_25M),
        .clken(clk_wiz_locked),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(clk_wiz_locked),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  m3_for_arty_a7_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(mig_7series_0_ui_addn_clk_0),
        .aclken(1'b1),
        .aresetn(1'b1),
        .axis_enable(1'b1),
        .m_axis_video_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .vid_active_video(OV_Sensor_0_video_o_ACTIVE_VIDEO),
        .vid_data(OV_Sensor_0_video_o_DATA),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(OV_Sensor_0_video_o_HSYNC),
        .vid_io_in_ce(OV_Sensor_0_vid_clk_ce),
        .vid_io_in_clk(cmos_pclk_1),
        .vid_io_in_reset(1'b0),
        .vid_vblank(1'b0),
        .vid_vsync(OV_Sensor_0_video_o_VSYNC));
endmodule

module s00_couplers_imp_11BAHIF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire [0:0]auto_pc_to_s00_couplers_ARUSER;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire [0:0]auto_pc_to_s00_couplers_AWUSER;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_pc_ARUSER;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_pc_AWUSER;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[0] = auto_pc_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[0] = auto_pc_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_10 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_aruser(auto_pc_to_s00_couplers_ARUSER),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awuser(auto_pc_to_s00_couplers_AWUSER),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_pc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_pc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_LNGPOQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire [0:0]s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [0:0]s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire [0:0]s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready[0] = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast[0] = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid[0];
  m3_for_arty_a7_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
