//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Jul 18 14:53:08 2019
//Host        : desktopzyq running 64-bit major release  (build 9200)
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

module Image_Process_imp_1FI7WQV
   (M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tid,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tuser,
    M_AXIS_tvalid,
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
    S00_AXI_wvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    axi_clk,
    axi_resetn,
    axis_clk,
    axis_resetn,
    char_valid_co);
  output [23:0]M_AXIS_tdata;
  output [0:0]M_AXIS_tdest;
  output [0:0]M_AXIS_tid;
  output [2:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input [0:0]M_AXIS_tready;
  output [2:0]M_AXIS_tstrb;
  output [0:0]M_AXIS_tuser;
  output [0:0]M_AXIS_tvalid;
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
  input [23:0]S_AXIS_tdata;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;
  input axi_clk;
  input axi_resetn;
  input axis_clk;
  input axis_resetn;
  output char_valid_co;

  wire ACLK_1;
  wire ARESETN_1;
  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire [0:0]Conn1_ARREADY;
  wire [3:0]Conn1_ARREGION;
  wire [2:0]Conn1_ARSIZE;
  wire [0:0]Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire [0:0]Conn1_AWREADY;
  wire [3:0]Conn1_AWREGION;
  wire [2:0]Conn1_AWSIZE;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire [0:0]Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RLAST;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire [0:0]Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire [0:0]Conn1_WLAST;
  wire [0:0]Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire [27:0]axi_gpio_0_gpio2_io_o;
  wire [6:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [6:0]axi_interconnect_0_M00_AXI_AWADDR;
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
  wire [5:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [5:0]axi_interconnect_0_M01_AXI_AWADDR;
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
  wire [6:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [6:0]axi_interconnect_0_M02_AXI_AWADDR;
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
  wire [5:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire axi_interconnect_0_M03_AXI_ARVALID;
  wire [5:0]axi_interconnect_0_M03_AXI_AWADDR;
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
  wire [4:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire axi_interconnect_0_M04_AXI_ARREADY;
  wire axi_interconnect_0_M04_AXI_ARVALID;
  wire [4:0]axi_interconnect_0_M04_AXI_AWADDR;
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
  wire [5:0]axi_interconnect_0_M05_AXI_ARADDR;
  wire axi_interconnect_0_M05_AXI_ARREADY;
  wire axi_interconnect_0_M05_AXI_ARVALID;
  wire [5:0]axi_interconnect_0_M05_AXI_AWADDR;
  wire axi_interconnect_0_M05_AXI_AWREADY;
  wire axi_interconnect_0_M05_AXI_AWVALID;
  wire axi_interconnect_0_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_BRESP;
  wire axi_interconnect_0_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_RDATA;
  wire axi_interconnect_0_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_RRESP;
  wire axi_interconnect_0_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_WDATA;
  wire axi_interconnect_0_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M05_AXI_WSTRB;
  wire axi_interconnect_0_M05_AXI_WVALID;
  wire [3:0]axi_interconnect_0_M06_AXI_ARADDR;
  wire axi_interconnect_0_M06_AXI_ARREADY;
  wire axi_interconnect_0_M06_AXI_ARVALID;
  wire [3:0]axi_interconnect_0_M06_AXI_AWADDR;
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
  wire [8:0]axi_interconnect_0_M07_AXI_ARADDR;
  wire axi_interconnect_0_M07_AXI_ARREADY;
  wire axi_interconnect_0_M07_AXI_ARVALID;
  wire [8:0]axi_interconnect_0_M07_AXI_AWADDR;
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
  wire axi_resetn_1;
  wire [7:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TDEST;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TID;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TKEEP;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TLAST;
  wire axis_broadcaster_0_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TSTRB;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TUSER;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [15:8]axis_broadcaster_0_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TDEST;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TID;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TKEEP;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TLAST;
  wire axis_broadcaster_0_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TSTRB;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TUSER;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  (* DEBUG = "true" *) wire [23:0]axis_data_fifo_0_M_AXIS_TDATA;
  (* DEBUG = "true" *) wire [0:0]axis_data_fifo_0_M_AXIS_TDEST;
  (* DEBUG = "true" *) wire [0:0]axis_data_fifo_0_M_AXIS_TID;
  (* DEBUG = "true" *) wire [2:0]axis_data_fifo_0_M_AXIS_TKEEP;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS_TLAST;
  (* DEBUG = "true" *) wire [0:0]axis_data_fifo_0_M_AXIS_TREADY;
  (* DEBUG = "true" *) wire [2:0]axis_data_fifo_0_M_AXIS_TSTRB;
  (* DEBUG = "true" *) wire [0:0]axis_data_fifo_0_M_AXIS_TUSER;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [15:0]bound_fsm_0_bound_x_max_o;
  wire [15:0]bound_fsm_0_bound_x_min_o;
  wire [15:0]bound_fsm_0_bound_y_max_o;
  wire [15:0]bound_fsm_0_bound_y_min_o;
  wire [15:0]bound_x_max1_doutb;
  wire [15:0]bound_x_max_doutb;
  wire [15:0]bound_x_min1_doutb;
  wire [15:0]bound_x_min_doutb;
  wire clk_200M_1;
  wire [127:0]combine_0_char_diff_c;
  wire [31:0]combine_0_char_index_c;
  wire combine_0_char_valid_c;
  wire [15:0]contrast_hls_rom_0_diff_sum_0;
  wire contrast_hls_rom_0_diff_sum_0_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_1;
  wire [15:0]contrast_hls_rom_0_diff_sum_10;
  wire contrast_hls_rom_0_diff_sum_10_ap_vld;
  wire contrast_hls_rom_0_diff_sum_1_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_2;
  wire contrast_hls_rom_0_diff_sum_2_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_3;
  wire contrast_hls_rom_0_diff_sum_3_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_4;
  wire contrast_hls_rom_0_diff_sum_4_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_5;
  wire contrast_hls_rom_0_diff_sum_5_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_6;
  wire contrast_hls_rom_0_diff_sum_6_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_7;
  wire contrast_hls_rom_0_diff_sum_7_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_8;
  wire contrast_hls_rom_0_diff_sum_8_ap_vld;
  wire [15:0]contrast_hls_rom_0_diff_sum_9;
  wire contrast_hls_rom_0_diff_sum_9_ap_vld;
  wire contrast_hls_rom_0_input_r_TREADY;
  wire [2:0]draw_line_hls_0_bound_max_address0;
  wire draw_line_hls_0_bound_max_ce0;
  wire [2:0]draw_line_hls_0_bound_min_address0;
  wire draw_line_hls_0_bound_min_ce0;
  wire [7:0]draw_line_hls_0_output_r_TDATA;
  wire [0:0]draw_line_hls_0_output_r_TDEST;
  wire [0:0]draw_line_hls_0_output_r_TID;
  wire [0:0]draw_line_hls_0_output_r_TKEEP;
  wire [0:0]draw_line_hls_0_output_r_TLAST;
  wire draw_line_hls_0_output_r_TREADY;
  wire [0:0]draw_line_hls_0_output_r_TSTRB;
  wire [0:0]draw_line_hls_0_output_r_TUSER;
  wire draw_line_hls_0_output_r_TVALID;
  wire [15:0]gpio_allocate_0_max_diff;
  wire [3:0]gpio_allocate_0_min_continue;
  wire [7:0]gpio_allocate_0_min_counter;
  (* DEBUG = "true" *) wire hold_0_trick_o;
  (* DEBUG = "true" *) wire [23:0]input_r_1_TDATA;
  (* DEBUG = "true" *) wire [2:0]input_r_1_TKEEP;
  (* DEBUG = "true" *) wire [0:0]input_r_1_TLAST;
  (* DEBUG = "true" *) wire input_r_1_TREADY;
  (* DEBUG = "true" *) wire [0:0]input_r_1_TUSER;
  (* DEBUG = "true" *) wire [0:0]input_r_1_TVALID;
  wire [19:0]judge_0_char_index_co;
  wire judge_0_char_valid_co;
  wire [7:0]mask_0_output_r_TDATA;
  wire [0:0]mask_0_output_r_TDEST;
  wire [0:0]mask_0_output_r_TID;
  wire [0:0]mask_0_output_r_TKEEP;
  wire [0:0]mask_0_output_r_TLAST;
  wire mask_0_output_r_TREADY;
  wire [0:0]mask_0_output_r_TSTRB;
  wire [0:0]mask_0_output_r_TUSER;
  wire mask_0_output_r_TVALID;
  wire [15:0]projection1_hls_0_bound_x_max;
  wire projection1_hls_0_bound_x_max_ap_vld;
  wire [15:0]projection1_hls_0_bound_x_min;
  wire projection1_hls_0_bound_x_min_ap_vld;
  wire [15:0]projection1_hls_0_bound_y_max;
  wire projection1_hls_0_bound_y_max_ap_vld;
  wire [15:0]projection1_hls_0_bound_y_min;
  wire projection1_hls_0_bound_y_min_ap_vld;
  wire [7:0]projection1_hls_0_output_r_TDATA;
  wire [0:0]projection1_hls_0_output_r_TDEST;
  wire [0:0]projection1_hls_0_output_r_TID;
  wire [0:0]projection1_hls_0_output_r_TKEEP;
  wire [0:0]projection1_hls_0_output_r_TLAST;
  wire projection1_hls_0_output_r_TREADY;
  wire [0:0]projection1_hls_0_output_r_TSTRB;
  wire [0:0]projection1_hls_0_output_r_TUSER;
  wire projection1_hls_0_output_r_TVALID;
  wire [2:0]projection_mul_hls_0_bound_max_address0;
  wire projection_mul_hls_0_bound_max_ce0;
  wire [15:0]projection_mul_hls_0_bound_max_d0;
  wire projection_mul_hls_0_bound_max_we0;
  wire [2:0]projection_mul_hls_0_bound_min_address0;
  wire projection_mul_hls_0_bound_min_ce0;
  wire [15:0]projection_mul_hls_0_bound_min_d0;
  wire projection_mul_hls_0_bound_min_we0;
  wire [7:0]projection_mul_hls_0_output_r_TDATA;
  wire [0:0]projection_mul_hls_0_output_r_TDEST;
  wire [0:0]projection_mul_hls_0_output_r_TID;
  wire [0:0]projection_mul_hls_0_output_r_TKEEP;
  wire [0:0]projection_mul_hls_0_output_r_TLAST;
  wire projection_mul_hls_0_output_r_TREADY;
  wire [0:0]projection_mul_hls_0_output_r_TSTRB;
  wire [0:0]projection_mul_hls_0_output_r_TUSER;
  wire projection_mul_hls_0_output_r_TVALID;
  wire [2:0]resize_ctrl_0_bound_x_max_addr;
  wire [15:0]resize_ctrl_0_bound_x_max_o;
  wire [2:0]resize_ctrl_0_bound_x_min_addr;
  wire [15:0]resize_ctrl_0_bound_x_min_o;
  wire [15:0]resize_ctrl_0_bound_y_max_o;
  wire [15:0]resize_ctrl_0_bound_y_min_o;
  wire [7:0]resize_hls_axis_0_output_r_TDATA;
  wire [0:0]resize_hls_axis_0_output_r_TDEST;
  wire [0:0]resize_hls_axis_0_output_r_TID;
  wire [0:0]resize_hls_axis_0_output_r_TKEEP;
  wire [0:0]resize_hls_axis_0_output_r_TLAST;
  wire [0:0]resize_hls_axis_0_output_r_TSTRB;
  wire [0:0]resize_hls_axis_0_output_r_TUSER;
  wire resize_hls_axis_0_output_r_TVALID;
  wire [15:0]sort_0_char_diff;
  wire [3:0]sort_0_char_index;
  wire sort_0_interrupt;
  wire [7:0]threshold2_0_output_r_TDATA;
  wire [0:0]threshold2_0_output_r_TDEST;
  wire [0:0]threshold2_0_output_r_TID;
  wire [0:0]threshold2_0_output_r_TKEEP;
  wire [0:0]threshold2_0_output_r_TLAST;
  wire threshold2_0_output_r_TREADY;
  wire [0:0]threshold2_0_output_r_TSTRB;
  wire [0:0]threshold2_0_output_r_TUSER;
  wire threshold2_0_output_r_TVALID;
  wire [0:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;

  assign ACLK_1 = axi_clk;
  assign ARESETN_1 = axi_resetn;
  assign Conn1_ARADDR = S00_AXI_araddr[31:0];
  assign Conn1_ARBURST = S00_AXI_arburst[1:0];
  assign Conn1_ARCACHE = S00_AXI_arcache[3:0];
  assign Conn1_ARLEN = S00_AXI_arlen[7:0];
  assign Conn1_ARLOCK = S00_AXI_arlock[0];
  assign Conn1_ARPROT = S00_AXI_arprot[2:0];
  assign Conn1_ARQOS = S00_AXI_arqos[3:0];
  assign Conn1_ARREGION = S00_AXI_arregion[3:0];
  assign Conn1_ARSIZE = S00_AXI_arsize[2:0];
  assign Conn1_ARVALID = S00_AXI_arvalid[0];
  assign Conn1_AWADDR = S00_AXI_awaddr[31:0];
  assign Conn1_AWBURST = S00_AXI_awburst[1:0];
  assign Conn1_AWCACHE = S00_AXI_awcache[3:0];
  assign Conn1_AWLEN = S00_AXI_awlen[7:0];
  assign Conn1_AWLOCK = S00_AXI_awlock[0];
  assign Conn1_AWPROT = S00_AXI_awprot[2:0];
  assign Conn1_AWQOS = S00_AXI_awqos[3:0];
  assign Conn1_AWREGION = S00_AXI_awregion[3:0];
  assign Conn1_AWSIZE = S00_AXI_awsize[2:0];
  assign Conn1_AWVALID = S00_AXI_awvalid[0];
  assign Conn1_BREADY = S00_AXI_bready[0];
  assign Conn1_RREADY = S00_AXI_rready[0];
  assign Conn1_WDATA = S00_AXI_wdata[31:0];
  assign Conn1_WLAST = S00_AXI_wlast[0];
  assign Conn1_WSTRB = S00_AXI_wstrb[3:0];
  assign Conn1_WVALID = S00_AXI_wvalid[0];
  assign M_AXIS_tdata[23:0] = axis_data_fifo_0_M_AXIS_TDATA;
  assign M_AXIS_tdest[0] = axis_data_fifo_0_M_AXIS_TDEST;
  assign M_AXIS_tid[0] = axis_data_fifo_0_M_AXIS_TID;
  assign M_AXIS_tkeep[2:0] = axis_data_fifo_0_M_AXIS_TKEEP;
  assign M_AXIS_tlast[0] = axis_data_fifo_0_M_AXIS_TLAST;
  assign M_AXIS_tstrb[2:0] = axis_data_fifo_0_M_AXIS_TSTRB;
  assign M_AXIS_tuser[0] = axis_data_fifo_0_M_AXIS_TUSER;
  assign M_AXIS_tvalid[0] = axis_data_fifo_0_M_AXIS_TVALID;
  assign S00_AXI_arready[0] = Conn1_ARREADY;
  assign S00_AXI_awready[0] = Conn1_AWREADY;
  assign S00_AXI_bresp[1:0] = Conn1_BRESP;
  assign S00_AXI_bvalid[0] = Conn1_BVALID;
  assign S00_AXI_rdata[31:0] = Conn1_RDATA;
  assign S00_AXI_rlast[0] = Conn1_RLAST;
  assign S00_AXI_rresp[1:0] = Conn1_RRESP;
  assign S00_AXI_rvalid[0] = Conn1_RVALID;
  assign S00_AXI_wready[0] = Conn1_WREADY;
  assign S_AXIS_tready[0] = input_r_1_TREADY;
  assign axi_resetn_1 = axis_resetn;
  assign axis_data_fifo_0_M_AXIS_TREADY = M_AXIS_tready[0];
  assign char_valid_co = hold_0_trick_o;
  assign clk_200M_1 = axis_clk;
  assign input_r_1_TDATA = S_AXIS_tdata[23:0];
  assign input_r_1_TKEEP = S_AXIS_tkeep[2:0];
  assign input_r_1_TLAST = S_AXIS_tlast[0];
  assign input_r_1_TUSER = S_AXIS_tuser[0];
  assign input_r_1_TVALID = S_AXIS_tvalid[0];
  m3_for_arty_a7_axi_gpio_0_1 axi_gpio_0
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_i(judge_0_char_index_co),
        .s_axi_aclk(clk_200M_1),
        .s_axi_araddr(axi_interconnect_0_M07_AXI_ARADDR),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_interconnect_0_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M07_AXI_AWADDR),
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
        .s_axi_wvalid(axi_interconnect_0_M07_AXI_WVALID));
  m3_for_arty_a7_axi_interconnect_0_2 axi_interconnect_0
       (.ACLK(ACLK_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(clk_200M_1),
        .M00_ARESETN(axi_resetn_1),
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
        .M01_ACLK(clk_200M_1),
        .M01_ARESETN(axi_resetn_1),
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
        .M02_ACLK(clk_200M_1),
        .M02_ARESETN(axi_resetn_1),
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
        .M03_ACLK(clk_200M_1),
        .M03_ARESETN(axi_resetn_1),
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
        .M04_ACLK(clk_200M_1),
        .M04_ARESETN(axi_resetn_1),
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
        .M05_ACLK(clk_200M_1),
        .M05_ARESETN(axi_resetn_1),
        .M05_AXI_araddr(axi_interconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_0_M05_AXI_WVALID),
        .M06_ACLK(clk_200M_1),
        .M06_ARESETN(axi_resetn_1),
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
        .M07_ACLK(clk_200M_1),
        .M07_ARESETN(axi_resetn_1),
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
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(Conn1_ARADDR),
        .S00_AXI_arburst(Conn1_ARBURST),
        .S00_AXI_arcache(Conn1_ARCACHE),
        .S00_AXI_arlen(Conn1_ARLEN),
        .S00_AXI_arlock(Conn1_ARLOCK),
        .S00_AXI_arprot(Conn1_ARPROT),
        .S00_AXI_arqos(Conn1_ARQOS),
        .S00_AXI_arready(Conn1_ARREADY),
        .S00_AXI_arregion(Conn1_ARREGION),
        .S00_AXI_arsize(Conn1_ARSIZE),
        .S00_AXI_arvalid(Conn1_ARVALID),
        .S00_AXI_awaddr(Conn1_AWADDR),
        .S00_AXI_awburst(Conn1_AWBURST),
        .S00_AXI_awcache(Conn1_AWCACHE),
        .S00_AXI_awlen(Conn1_AWLEN),
        .S00_AXI_awlock(Conn1_AWLOCK),
        .S00_AXI_awprot(Conn1_AWPROT),
        .S00_AXI_awqos(Conn1_AWQOS),
        .S00_AXI_awready(Conn1_AWREADY),
        .S00_AXI_awregion(Conn1_AWREGION),
        .S00_AXI_awsize(Conn1_AWSIZE),
        .S00_AXI_awvalid(Conn1_AWVALID),
        .S00_AXI_bready(Conn1_BREADY),
        .S00_AXI_bresp(Conn1_BRESP),
        .S00_AXI_bvalid(Conn1_BVALID),
        .S00_AXI_rdata(Conn1_RDATA),
        .S00_AXI_rlast(Conn1_RLAST),
        .S00_AXI_rready(Conn1_RREADY),
        .S00_AXI_rresp(Conn1_RRESP),
        .S00_AXI_rvalid(Conn1_RVALID),
        .S00_AXI_wdata(Conn1_WDATA),
        .S00_AXI_wlast(Conn1_WLAST),
        .S00_AXI_wready(Conn1_WREADY),
        .S00_AXI_wstrb(Conn1_WSTRB),
        .S00_AXI_wvalid(Conn1_WVALID));
  m3_for_arty_a7_axis_broadcaster_0_0 axis_broadcaster_0
       (.aclk(clk_200M_1),
        .aresetn(axi_resetn_1),
        .m_axis_tdata({axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tdest({axis_broadcaster_0_M01_AXIS_TDEST,axis_broadcaster_0_M00_AXIS_TDEST}),
        .m_axis_tid({axis_broadcaster_0_M01_AXIS_TID,axis_broadcaster_0_M00_AXIS_TID}),
        .m_axis_tkeep({axis_broadcaster_0_M01_AXIS_TKEEP,axis_broadcaster_0_M00_AXIS_TKEEP}),
        .m_axis_tlast({axis_broadcaster_0_M01_AXIS_TLAST,axis_broadcaster_0_M00_AXIS_TLAST}),
        .m_axis_tready({axis_broadcaster_0_M01_AXIS_TREADY,axis_broadcaster_0_M00_AXIS_TREADY}),
        .m_axis_tstrb({axis_broadcaster_0_M01_AXIS_TSTRB,axis_broadcaster_0_M00_AXIS_TSTRB}),
        .m_axis_tuser({axis_broadcaster_0_M01_AXIS_TUSER,axis_broadcaster_0_M00_AXIS_TUSER}),
        .m_axis_tvalid({axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata(projection_mul_hls_0_output_r_TDATA),
        .s_axis_tdest(projection_mul_hls_0_output_r_TDEST),
        .s_axis_tid(projection_mul_hls_0_output_r_TID),
        .s_axis_tkeep(projection_mul_hls_0_output_r_TKEEP),
        .s_axis_tlast(projection_mul_hls_0_output_r_TLAST),
        .s_axis_tready(projection_mul_hls_0_output_r_TREADY),
        .s_axis_tstrb(projection_mul_hls_0_output_r_TSTRB),
        .s_axis_tuser(projection_mul_hls_0_output_r_TUSER),
        .s_axis_tvalid(projection_mul_hls_0_output_r_TVALID));
  m3_for_arty_a7_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(clk_200M_1),
        .aresetn(axi_resetn_1),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_0_M_AXIS_TDEST),
        .m_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tstrb(axis_data_fifo_0_M_AXIS_TSTRB),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_tdata(draw_line_hls_0_output_r_TDATA),
        .s_axis_tdest(draw_line_hls_0_output_r_TDEST),
        .s_axis_tid(draw_line_hls_0_output_r_TID),
        .s_axis_tkeep(draw_line_hls_0_output_r_TKEEP),
        .s_axis_tlast(draw_line_hls_0_output_r_TLAST),
        .s_axis_tready(draw_line_hls_0_output_r_TREADY),
        .s_axis_tstrb(draw_line_hls_0_output_r_TSTRB),
        .s_axis_tuser(draw_line_hls_0_output_r_TUSER),
        .s_axis_tvalid(draw_line_hls_0_output_r_TVALID));
  m3_for_arty_a7_bound_fsm_0_0 bound_fsm_0
       (.bound_x_max_ap_vld_i(projection1_hls_0_bound_x_max_ap_vld),
        .bound_x_max_i(projection1_hls_0_bound_x_max),
        .bound_x_max_o(bound_fsm_0_bound_x_max_o),
        .bound_x_min_ap_vld_i(projection1_hls_0_bound_x_min_ap_vld),
        .bound_x_min_i(projection1_hls_0_bound_x_min),
        .bound_x_min_o(bound_fsm_0_bound_x_min_o),
        .bound_y_max_ap_vld_i(projection1_hls_0_bound_y_max_ap_vld),
        .bound_y_max_i(projection1_hls_0_bound_y_max),
        .bound_y_max_o(bound_fsm_0_bound_y_max_o),
        .bound_y_min_ap_vld_i(projection1_hls_0_bound_y_min_ap_vld),
        .bound_y_min_i(projection1_hls_0_bound_y_min),
        .bound_y_min_o(bound_fsm_0_bound_y_min_o),
        .clk(clk_200M_1),
        .rst_n(axi_resetn_1));
  m3_for_arty_a7_bound_x_min_0 bound_x_max
       (.addra(projection_mul_hls_0_bound_max_address0),
        .addrb(draw_line_hls_0_bound_max_address0),
        .clka(clk_200M_1),
        .clkb(clk_200M_1),
        .dina(projection_mul_hls_0_bound_max_d0),
        .doutb(bound_x_max_doutb),
        .ena(projection_mul_hls_0_bound_max_ce0),
        .enb(draw_line_hls_0_bound_max_ce0),
        .wea(projection_mul_hls_0_bound_max_we0));
  m3_for_arty_a7_bound_x_max_0 bound_x_max1
       (.addra(projection_mul_hls_0_bound_max_address0),
        .addrb(resize_ctrl_0_bound_x_max_addr),
        .clka(clk_200M_1),
        .clkb(clk_200M_1),
        .dina(projection_mul_hls_0_bound_max_d0),
        .doutb(bound_x_max1_doutb),
        .ena(projection_mul_hls_0_bound_max_ce0),
        .wea(projection_mul_hls_0_bound_max_we0));
  m3_for_arty_a7_blk_mem_gen_0_1 bound_x_min
       (.addra(projection_mul_hls_0_bound_min_address0),
        .addrb(draw_line_hls_0_bound_min_address0),
        .clka(clk_200M_1),
        .clkb(clk_200M_1),
        .dina(projection_mul_hls_0_bound_min_d0),
        .doutb(bound_x_min_doutb),
        .ena(projection_mul_hls_0_bound_min_ce0),
        .enb(draw_line_hls_0_bound_min_ce0),
        .wea(projection_mul_hls_0_bound_min_we0));
  m3_for_arty_a7_bound_x_min_1 bound_x_min1
       (.addra(projection_mul_hls_0_bound_min_address0),
        .addrb(resize_ctrl_0_bound_x_min_addr),
        .clka(clk_200M_1),
        .clkb(clk_200M_1),
        .dina(projection_mul_hls_0_bound_min_d0),
        .doutb(bound_x_min1_doutb),
        .ena(projection_mul_hls_0_bound_min_ce0),
        .wea(projection_mul_hls_0_bound_min_we0));
  m3_for_arty_a7_combine_0_0 combine_0
       (.char_addr(resize_ctrl_0_bound_x_min_addr),
        .char_diff(sort_0_char_diff),
        .char_diff_c(combine_0_char_diff_c),
        .char_index(sort_0_char_index),
        .char_index_c(combine_0_char_index_c),
        .char_valid(sort_0_interrupt),
        .char_valid_c(combine_0_char_valid_c),
        .clk(clk_200M_1),
        .rst_n(axi_resetn_1));
  m3_for_arty_a7_contrast_hls_rom_0_0 contrast_hls_rom_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .diff_sum_0(contrast_hls_rom_0_diff_sum_0),
        .diff_sum_0_ap_vld(contrast_hls_rom_0_diff_sum_0_ap_vld),
        .diff_sum_1(contrast_hls_rom_0_diff_sum_1),
        .diff_sum_10(contrast_hls_rom_0_diff_sum_10),
        .diff_sum_10_ap_vld(contrast_hls_rom_0_diff_sum_10_ap_vld),
        .diff_sum_1_ap_vld(contrast_hls_rom_0_diff_sum_1_ap_vld),
        .diff_sum_2(contrast_hls_rom_0_diff_sum_2),
        .diff_sum_2_ap_vld(contrast_hls_rom_0_diff_sum_2_ap_vld),
        .diff_sum_3(contrast_hls_rom_0_diff_sum_3),
        .diff_sum_3_ap_vld(contrast_hls_rom_0_diff_sum_3_ap_vld),
        .diff_sum_4(contrast_hls_rom_0_diff_sum_4),
        .diff_sum_4_ap_vld(contrast_hls_rom_0_diff_sum_4_ap_vld),
        .diff_sum_5(contrast_hls_rom_0_diff_sum_5),
        .diff_sum_5_ap_vld(contrast_hls_rom_0_diff_sum_5_ap_vld),
        .diff_sum_6(contrast_hls_rom_0_diff_sum_6),
        .diff_sum_6_ap_vld(contrast_hls_rom_0_diff_sum_6_ap_vld),
        .diff_sum_7(contrast_hls_rom_0_diff_sum_7),
        .diff_sum_7_ap_vld(contrast_hls_rom_0_diff_sum_7_ap_vld),
        .diff_sum_8(contrast_hls_rom_0_diff_sum_8),
        .diff_sum_8_ap_vld(contrast_hls_rom_0_diff_sum_8_ap_vld),
        .diff_sum_9(contrast_hls_rom_0_diff_sum_9),
        .diff_sum_9_ap_vld(contrast_hls_rom_0_diff_sum_9_ap_vld),
        .input_r_TDATA(resize_hls_axis_0_output_r_TDATA),
        .input_r_TDEST(resize_hls_axis_0_output_r_TDEST),
        .input_r_TID(resize_hls_axis_0_output_r_TID),
        .input_r_TKEEP(resize_hls_axis_0_output_r_TKEEP),
        .input_r_TLAST(resize_hls_axis_0_output_r_TLAST),
        .input_r_TREADY(contrast_hls_rom_0_input_r_TREADY),
        .input_r_TSTRB(resize_hls_axis_0_output_r_TSTRB),
        .input_r_TUSER(resize_hls_axis_0_output_r_TUSER),
        .input_r_TVALID(resize_hls_axis_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M06_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M06_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M06_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M06_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M06_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M06_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M06_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M06_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M06_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M06_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M06_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M06_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M06_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M06_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M06_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M06_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M06_AXI_WVALID));
  m3_for_arty_a7_draw_line_hls_0_0 draw_line_hls_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .bound_max_address0(draw_line_hls_0_bound_max_address0),
        .bound_max_ce0(draw_line_hls_0_bound_max_ce0),
        .bound_max_q0(bound_x_max_doutb),
        .bound_min_address0(draw_line_hls_0_bound_min_address0),
        .bound_min_ce0(draw_line_hls_0_bound_min_ce0),
        .bound_min_q0(bound_x_min_doutb),
        .bound_y_max(bound_fsm_0_bound_y_max_o),
        .bound_y_max_ap_vld(xlconstant_0_dout),
        .bound_y_min(bound_fsm_0_bound_y_min_o),
        .bound_y_min_ap_vld(xlconstant_0_dout),
        .input_r_TDATA(axis_broadcaster_0_M00_AXIS_TDATA),
        .input_r_TDEST(axis_broadcaster_0_M00_AXIS_TDEST),
        .input_r_TID(axis_broadcaster_0_M00_AXIS_TID),
        .input_r_TKEEP(axis_broadcaster_0_M00_AXIS_TKEEP),
        .input_r_TLAST(axis_broadcaster_0_M00_AXIS_TLAST),
        .input_r_TREADY(axis_broadcaster_0_M00_AXIS_TREADY),
        .input_r_TSTRB(axis_broadcaster_0_M00_AXIS_TSTRB),
        .input_r_TUSER(axis_broadcaster_0_M00_AXIS_TUSER),
        .input_r_TVALID(axis_broadcaster_0_M00_AXIS_TVALID),
        .output_r_TDATA(draw_line_hls_0_output_r_TDATA),
        .output_r_TDEST(draw_line_hls_0_output_r_TDEST),
        .output_r_TID(draw_line_hls_0_output_r_TID),
        .output_r_TKEEP(draw_line_hls_0_output_r_TKEEP),
        .output_r_TLAST(draw_line_hls_0_output_r_TLAST),
        .output_r_TREADY(draw_line_hls_0_output_r_TREADY),
        .output_r_TSTRB(draw_line_hls_0_output_r_TSTRB),
        .output_r_TUSER(draw_line_hls_0_output_r_TUSER),
        .output_r_TVALID(draw_line_hls_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M04_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M04_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M04_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M04_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M04_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M04_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M04_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M04_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M04_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M04_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M04_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M04_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M04_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M04_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M04_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M04_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M04_AXI_WVALID));
  m3_for_arty_a7_gpio_allocate_0_0 gpio_allocate_0
       (.gpio_input(axi_gpio_0_gpio2_io_o),
        .max_diff(gpio_allocate_0_max_diff),
        .min_continue(gpio_allocate_0_min_continue),
        .min_counter(gpio_allocate_0_min_counter));
  m3_for_arty_a7_hold_0_0 hold_0
       (.clk(clk_200M_1),
        .rst_n(axi_resetn_1),
        .trick_i(judge_0_char_valid_co),
        .trick_o(hold_0_trick_o));
  m3_for_arty_a7_judge_0_0 judge_0
       (.char_diff_c(combine_0_char_diff_c),
        .char_index_c(combine_0_char_index_c),
        .char_index_co(judge_0_char_index_co),
        .char_valid_c(combine_0_char_valid_c),
        .char_valid_co(judge_0_char_valid_co),
        .clk(clk_200M_1),
        .max_diff(gpio_allocate_0_max_diff),
        .min_continue(gpio_allocate_0_min_continue),
        .min_counter(gpio_allocate_0_min_counter),
        .rst_n(axi_resetn_1));
  m3_for_arty_a7_mask_0_0 mask_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .bound_x_max(bound_fsm_0_bound_x_max_o),
        .bound_x_max_ap_vld(xlconstant_0_dout),
        .bound_x_min(bound_fsm_0_bound_x_min_o),
        .bound_x_min_ap_vld(xlconstant_0_dout),
        .bound_y_max(bound_fsm_0_bound_y_max_o),
        .bound_y_max_ap_vld(xlconstant_0_dout),
        .bound_y_min(bound_fsm_0_bound_y_min_o),
        .bound_y_min_ap_vld(xlconstant_0_dout),
        .input_r_TDATA(projection1_hls_0_output_r_TDATA),
        .input_r_TDEST(projection1_hls_0_output_r_TDEST),
        .input_r_TID(projection1_hls_0_output_r_TID),
        .input_r_TKEEP(projection1_hls_0_output_r_TKEEP),
        .input_r_TLAST(projection1_hls_0_output_r_TLAST),
        .input_r_TREADY(projection1_hls_0_output_r_TREADY),
        .input_r_TSTRB(projection1_hls_0_output_r_TSTRB),
        .input_r_TUSER(projection1_hls_0_output_r_TUSER),
        .input_r_TVALID(projection1_hls_0_output_r_TVALID),
        .output_r_TDATA(mask_0_output_r_TDATA),
        .output_r_TDEST(mask_0_output_r_TDEST),
        .output_r_TID(mask_0_output_r_TID),
        .output_r_TKEEP(mask_0_output_r_TKEEP),
        .output_r_TLAST(mask_0_output_r_TLAST),
        .output_r_TREADY(mask_0_output_r_TREADY),
        .output_r_TSTRB(mask_0_output_r_TSTRB),
        .output_r_TUSER(mask_0_output_r_TUSER),
        .output_r_TVALID(mask_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M01_AXI_WVALID));
  m3_for_arty_a7_projection1_hls_0_1 projection1_hls_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .bound_x_max(projection1_hls_0_bound_x_max),
        .bound_x_max_ap_vld(projection1_hls_0_bound_x_max_ap_vld),
        .bound_x_min(projection1_hls_0_bound_x_min),
        .bound_x_min_ap_vld(projection1_hls_0_bound_x_min_ap_vld),
        .bound_y_max(projection1_hls_0_bound_y_max),
        .bound_y_max_ap_vld(projection1_hls_0_bound_y_max_ap_vld),
        .bound_y_min(projection1_hls_0_bound_y_min),
        .bound_y_min_ap_vld(projection1_hls_0_bound_y_min_ap_vld),
        .input_r_TDATA(threshold2_0_output_r_TDATA),
        .input_r_TDEST(threshold2_0_output_r_TDEST),
        .input_r_TID(threshold2_0_output_r_TID),
        .input_r_TKEEP(threshold2_0_output_r_TKEEP),
        .input_r_TLAST(threshold2_0_output_r_TLAST),
        .input_r_TREADY(threshold2_0_output_r_TREADY),
        .input_r_TSTRB(threshold2_0_output_r_TSTRB),
        .input_r_TUSER(threshold2_0_output_r_TUSER),
        .input_r_TVALID(threshold2_0_output_r_TVALID),
        .output_r_TDATA(projection1_hls_0_output_r_TDATA),
        .output_r_TDEST(projection1_hls_0_output_r_TDEST),
        .output_r_TID(projection1_hls_0_output_r_TID),
        .output_r_TKEEP(projection1_hls_0_output_r_TKEEP),
        .output_r_TLAST(projection1_hls_0_output_r_TLAST),
        .output_r_TREADY(projection1_hls_0_output_r_TREADY),
        .output_r_TSTRB(projection1_hls_0_output_r_TSTRB),
        .output_r_TUSER(projection1_hls_0_output_r_TUSER),
        .output_r_TVALID(projection1_hls_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M02_AXI_WVALID));
  m3_for_arty_a7_projection_mul_hls_0_0 projection_mul_hls_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .bound_max_address0(projection_mul_hls_0_bound_max_address0),
        .bound_max_ce0(projection_mul_hls_0_bound_max_ce0),
        .bound_max_d0(projection_mul_hls_0_bound_max_d0),
        .bound_max_q0(xlconstant_1_dout),
        .bound_max_we0(projection_mul_hls_0_bound_max_we0),
        .bound_min_address0(projection_mul_hls_0_bound_min_address0),
        .bound_min_ce0(projection_mul_hls_0_bound_min_ce0),
        .bound_min_d0(projection_mul_hls_0_bound_min_d0),
        .bound_min_q0(xlconstant_1_dout),
        .bound_min_we0(projection_mul_hls_0_bound_min_we0),
        .input_r_TDATA(mask_0_output_r_TDATA),
        .input_r_TDEST(mask_0_output_r_TDEST),
        .input_r_TID(mask_0_output_r_TID),
        .input_r_TKEEP(mask_0_output_r_TKEEP),
        .input_r_TLAST(mask_0_output_r_TLAST),
        .input_r_TREADY(mask_0_output_r_TREADY),
        .input_r_TSTRB(mask_0_output_r_TSTRB),
        .input_r_TUSER(mask_0_output_r_TUSER),
        .input_r_TVALID(mask_0_output_r_TVALID),
        .output_r_TDATA(projection_mul_hls_0_output_r_TDATA),
        .output_r_TDEST(projection_mul_hls_0_output_r_TDEST),
        .output_r_TID(projection_mul_hls_0_output_r_TID),
        .output_r_TKEEP(projection_mul_hls_0_output_r_TKEEP),
        .output_r_TLAST(projection_mul_hls_0_output_r_TLAST),
        .output_r_TREADY(projection_mul_hls_0_output_r_TREADY),
        .output_r_TSTRB(projection_mul_hls_0_output_r_TSTRB),
        .output_r_TUSER(projection_mul_hls_0_output_r_TUSER),
        .output_r_TVALID(projection_mul_hls_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M03_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M03_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M03_AXI_WVALID));
  m3_for_arty_a7_resize_ctrl_0_0 resize_ctrl_0
       (.bound_x_max_addr(resize_ctrl_0_bound_x_max_addr),
        .bound_x_max_i(bound_x_max1_doutb),
        .bound_x_max_o(resize_ctrl_0_bound_x_max_o),
        .bound_x_min_addr(resize_ctrl_0_bound_x_min_addr),
        .bound_x_min_i(bound_x_min1_doutb),
        .bound_x_min_o(resize_ctrl_0_bound_x_min_o),
        .bound_y_max_i(bound_fsm_0_bound_y_max_o),
        .bound_y_max_o(resize_ctrl_0_bound_y_max_o),
        .bound_y_min_i(bound_fsm_0_bound_y_min_o),
        .bound_y_min_o(resize_ctrl_0_bound_y_min_o),
        .clk(clk_200M_1),
        .resize_interrupt(resize_hls_axis_0_output_r_TUSER),
        .resize_o_addr(xlconstant_1_dout[9:0]),
        .resize_o_ce(xlconstant_1_dout[0]),
        .resize_o_d(xlconstant_1_dout[0]),
        .resize_o_we(xlconstant_1_dout[0]),
        .rst_n(axi_resetn_1));
  m3_for_arty_a7_resize_hls_axis_0_0 resize_hls_axis_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .bound_x_max(resize_ctrl_0_bound_x_max_o),
        .bound_x_max_ap_vld(xlconstant_0_dout),
        .bound_x_min(resize_ctrl_0_bound_x_min_o),
        .bound_x_min_ap_vld(xlconstant_0_dout),
        .bound_y_max(resize_ctrl_0_bound_y_max_o),
        .bound_y_max_ap_vld(xlconstant_0_dout),
        .bound_y_min(resize_ctrl_0_bound_y_min_o),
        .bound_y_min_ap_vld(xlconstant_0_dout),
        .input_r_TDATA(axis_broadcaster_0_M01_AXIS_TDATA),
        .input_r_TDEST(axis_broadcaster_0_M01_AXIS_TDEST),
        .input_r_TID(axis_broadcaster_0_M01_AXIS_TID),
        .input_r_TKEEP(axis_broadcaster_0_M01_AXIS_TKEEP),
        .input_r_TLAST(axis_broadcaster_0_M01_AXIS_TLAST),
        .input_r_TREADY(axis_broadcaster_0_M01_AXIS_TREADY),
        .input_r_TSTRB(axis_broadcaster_0_M01_AXIS_TSTRB),
        .input_r_TUSER(axis_broadcaster_0_M01_AXIS_TUSER),
        .input_r_TVALID(axis_broadcaster_0_M01_AXIS_TVALID),
        .output_r_TDATA(resize_hls_axis_0_output_r_TDATA),
        .output_r_TDEST(resize_hls_axis_0_output_r_TDEST),
        .output_r_TID(resize_hls_axis_0_output_r_TID),
        .output_r_TKEEP(resize_hls_axis_0_output_r_TKEEP),
        .output_r_TLAST(resize_hls_axis_0_output_r_TLAST),
        .output_r_TREADY(contrast_hls_rom_0_input_r_TREADY),
        .output_r_TSTRB(resize_hls_axis_0_output_r_TSTRB),
        .output_r_TUSER(resize_hls_axis_0_output_r_TUSER),
        .output_r_TVALID(resize_hls_axis_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M05_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M05_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M05_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M05_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M05_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M05_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M05_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M05_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M05_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M05_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M05_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M05_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M05_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M05_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M05_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M05_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M05_AXI_WVALID));
  m3_for_arty_a7_sort_0_0 sort_0
       (.char_diff(sort_0_char_diff),
        .char_index(sort_0_char_index),
        .clk(clk_200M_1),
        .diff_sum_0(contrast_hls_rom_0_diff_sum_0),
        .diff_sum_0_ap_vld(contrast_hls_rom_0_diff_sum_0_ap_vld),
        .diff_sum_1(contrast_hls_rom_0_diff_sum_1),
        .diff_sum_10(contrast_hls_rom_0_diff_sum_10),
        .diff_sum_10_ap_vld(contrast_hls_rom_0_diff_sum_10_ap_vld),
        .diff_sum_1_ap_vld(contrast_hls_rom_0_diff_sum_1_ap_vld),
        .diff_sum_2(contrast_hls_rom_0_diff_sum_2),
        .diff_sum_2_ap_vld(contrast_hls_rom_0_diff_sum_2_ap_vld),
        .diff_sum_3(contrast_hls_rom_0_diff_sum_3),
        .diff_sum_3_ap_vld(contrast_hls_rom_0_diff_sum_3_ap_vld),
        .diff_sum_4(contrast_hls_rom_0_diff_sum_4),
        .diff_sum_4_ap_vld(contrast_hls_rom_0_diff_sum_4_ap_vld),
        .diff_sum_5(contrast_hls_rom_0_diff_sum_5),
        .diff_sum_5_ap_vld(contrast_hls_rom_0_diff_sum_5_ap_vld),
        .diff_sum_6(contrast_hls_rom_0_diff_sum_6),
        .diff_sum_6_ap_vld(contrast_hls_rom_0_diff_sum_6_ap_vld),
        .diff_sum_7(contrast_hls_rom_0_diff_sum_7),
        .diff_sum_7_ap_vld(contrast_hls_rom_0_diff_sum_7_ap_vld),
        .diff_sum_8(contrast_hls_rom_0_diff_sum_8),
        .diff_sum_8_ap_vld(contrast_hls_rom_0_diff_sum_8_ap_vld),
        .diff_sum_9(contrast_hls_rom_0_diff_sum_9),
        .diff_sum_9_ap_vld(contrast_hls_rom_0_diff_sum_9_ap_vld),
        .interrupt(sort_0_interrupt),
        .rst_n(axi_resetn_1));
  m3_for_arty_a7_threshold2_0_1 threshold2_0
       (.ap_clk(clk_200M_1),
        .ap_rst_n(axi_resetn_1),
        .input_r_TDATA(input_r_1_TDATA),
        .input_r_TDEST(1'b0),
        .input_r_TID(1'b0),
        .input_r_TKEEP(input_r_1_TKEEP),
        .input_r_TLAST(input_r_1_TLAST),
        .input_r_TREADY(input_r_1_TREADY),
        .input_r_TSTRB({1'b1,1'b1,1'b1}),
        .input_r_TUSER(input_r_1_TUSER),
        .input_r_TVALID(input_r_1_TVALID),
        .output_r_TDATA(threshold2_0_output_r_TDATA),
        .output_r_TDEST(threshold2_0_output_r_TDEST),
        .output_r_TID(threshold2_0_output_r_TID),
        .output_r_TKEEP(threshold2_0_output_r_TKEEP),
        .output_r_TLAST(threshold2_0_output_r_TLAST),
        .output_r_TREADY(threshold2_0_output_r_TREADY),
        .output_r_TSTRB(threshold2_0_output_r_TSTRB),
        .output_r_TUSER(threshold2_0_output_r_TUSER),
        .output_r_TVALID(threshold2_0_output_r_TVALID),
        .s_axi_AXILiteS_ARADDR(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_AXILiteS_ARREADY(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_AXILiteS_ARVALID(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_AXILiteS_AWADDR(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_AXILiteS_AWREADY(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_AXILiteS_AWVALID(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_AXILiteS_BREADY(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_AXILiteS_BRESP(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_AXILiteS_BVALID(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_AXILiteS_RDATA(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_AXILiteS_RREADY(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_AXILiteS_RRESP(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_AXILiteS_RVALID(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_AXILiteS_WDATA(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_AXILiteS_WREADY(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_AXILiteS_WSTRB(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_AXILiteS_WVALID(axi_interconnect_0_M00_AXI_WVALID));
  m3_for_arty_a7_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  m3_for_arty_a7_xlconstant_1_4 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module LCD_imp_153HW5T
   (AXI_FULL_araddr,
    AXI_FULL_arburst,
    AXI_FULL_arcache,
    AXI_FULL_arlen,
    AXI_FULL_arlock,
    AXI_FULL_arprot,
    AXI_FULL_arready,
    AXI_FULL_arsize,
    AXI_FULL_arvalid,
    AXI_FULL_awaddr,
    AXI_FULL_awburst,
    AXI_FULL_awcache,
    AXI_FULL_awlen,
    AXI_FULL_awlock,
    AXI_FULL_awprot,
    AXI_FULL_awready,
    AXI_FULL_awsize,
    AXI_FULL_awvalid,
    AXI_FULL_bready,
    AXI_FULL_bresp,
    AXI_FULL_bvalid,
    AXI_FULL_rdata,
    AXI_FULL_rlast,
    AXI_FULL_rready,
    AXI_FULL_rresp,
    AXI_FULL_rvalid,
    AXI_FULL_wdata,
    AXI_FULL_wlast,
    AXI_FULL_wready,
    AXI_FULL_wstrb,
    AXI_FULL_wvalid,
    GPIO_lcd,
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
    ext_spi_clk,
    ip2intc_irpt,
    s_axi_aclk,
    s_axi_aresetn,
    spi_rtl_io0_i,
    spi_rtl_io0_o,
    spi_rtl_io0_t,
    spi_rtl_io1_i,
    spi_rtl_io1_o,
    spi_rtl_io1_t,
    spi_rtl_sck_i,
    spi_rtl_sck_o,
    spi_rtl_sck_t,
    spi_rtl_ss_i,
    spi_rtl_ss_o,
    spi_rtl_ss_t);
  input [31:0]AXI_FULL_araddr;
  input [1:0]AXI_FULL_arburst;
  input [3:0]AXI_FULL_arcache;
  input [7:0]AXI_FULL_arlen;
  input AXI_FULL_arlock;
  input [2:0]AXI_FULL_arprot;
  output AXI_FULL_arready;
  input [2:0]AXI_FULL_arsize;
  input AXI_FULL_arvalid;
  input [31:0]AXI_FULL_awaddr;
  input [1:0]AXI_FULL_awburst;
  input [3:0]AXI_FULL_awcache;
  input [7:0]AXI_FULL_awlen;
  input AXI_FULL_awlock;
  input [2:0]AXI_FULL_awprot;
  output AXI_FULL_awready;
  input [2:0]AXI_FULL_awsize;
  input AXI_FULL_awvalid;
  input AXI_FULL_bready;
  output [1:0]AXI_FULL_bresp;
  output AXI_FULL_bvalid;
  output [31:0]AXI_FULL_rdata;
  output AXI_FULL_rlast;
  input AXI_FULL_rready;
  output [1:0]AXI_FULL_rresp;
  output AXI_FULL_rvalid;
  input [31:0]AXI_FULL_wdata;
  input AXI_FULL_wlast;
  output AXI_FULL_wready;
  input [3:0]AXI_FULL_wstrb;
  input AXI_FULL_wvalid;
  output [2:0]GPIO_lcd;
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
  input ext_spi_clk;
  output ip2intc_irpt;
  input s_axi_aclk;
  input s_axi_aresetn;
  input spi_rtl_io0_i;
  output spi_rtl_io0_o;
  output spi_rtl_io0_t;
  input spi_rtl_io1_i;
  output spi_rtl_io1_o;
  output spi_rtl_io1_t;
  input spi_rtl_sck_i;
  output spi_rtl_sck_o;
  output spi_rtl_sck_t;
  input [1:0]spi_rtl_ss_i;
  output [1:0]spi_rtl_ss_o;
  output spi_rtl_ss_t;

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
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [7:0]Conn2_ARLEN;
  wire Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [7:0]Conn2_AWLEN;
  wire Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire Conn3_IO0_I;
  wire Conn3_IO0_O;
  wire Conn3_IO0_T;
  wire Conn3_IO1_I;
  wire Conn3_IO1_O;
  wire Conn3_IO1_T;
  wire Conn3_SCK_I;
  wire Conn3_SCK_O;
  wire Conn3_SCK_T;
  wire [1:0]Conn3_SS_I;
  wire [1:0]Conn3_SS_O;
  wire Conn3_SS_T;
  wire [2:0]axi_gpio_1_gpio_io_o;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire ext_spi_clk_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;

  assign AXI_FULL_arready = Conn2_ARREADY;
  assign AXI_FULL_awready = Conn2_AWREADY;
  assign AXI_FULL_bresp[1:0] = Conn2_BRESP;
  assign AXI_FULL_bvalid = Conn2_BVALID;
  assign AXI_FULL_rdata[31:0] = Conn2_RDATA;
  assign AXI_FULL_rlast = Conn2_RLAST;
  assign AXI_FULL_rresp[1:0] = Conn2_RRESP;
  assign AXI_FULL_rvalid = Conn2_RVALID;
  assign AXI_FULL_wready = Conn2_WREADY;
  assign Conn1_ARADDR = S_AXI_araddr[31:0];
  assign Conn1_ARVALID = S_AXI_arvalid;
  assign Conn1_AWADDR = S_AXI_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI_awvalid;
  assign Conn1_BREADY = S_AXI_bready;
  assign Conn1_RREADY = S_AXI_rready;
  assign Conn1_WDATA = S_AXI_wdata[31:0];
  assign Conn1_WSTRB = S_AXI_wstrb[3:0];
  assign Conn1_WVALID = S_AXI_wvalid;
  assign Conn2_ARADDR = AXI_FULL_araddr[31:0];
  assign Conn2_ARBURST = AXI_FULL_arburst[1:0];
  assign Conn2_ARCACHE = AXI_FULL_arcache[3:0];
  assign Conn2_ARLEN = AXI_FULL_arlen[7:0];
  assign Conn2_ARLOCK = AXI_FULL_arlock;
  assign Conn2_ARPROT = AXI_FULL_arprot[2:0];
  assign Conn2_ARSIZE = AXI_FULL_arsize[2:0];
  assign Conn2_ARVALID = AXI_FULL_arvalid;
  assign Conn2_AWADDR = AXI_FULL_awaddr[31:0];
  assign Conn2_AWBURST = AXI_FULL_awburst[1:0];
  assign Conn2_AWCACHE = AXI_FULL_awcache[3:0];
  assign Conn2_AWLEN = AXI_FULL_awlen[7:0];
  assign Conn2_AWLOCK = AXI_FULL_awlock;
  assign Conn2_AWPROT = AXI_FULL_awprot[2:0];
  assign Conn2_AWSIZE = AXI_FULL_awsize[2:0];
  assign Conn2_AWVALID = AXI_FULL_awvalid;
  assign Conn2_BREADY = AXI_FULL_bready;
  assign Conn2_RREADY = AXI_FULL_rready;
  assign Conn2_WDATA = AXI_FULL_wdata[31:0];
  assign Conn2_WLAST = AXI_FULL_wlast;
  assign Conn2_WSTRB = AXI_FULL_wstrb[3:0];
  assign Conn2_WVALID = AXI_FULL_wvalid;
  assign Conn3_IO0_I = spi_rtl_io0_i;
  assign Conn3_IO1_I = spi_rtl_io1_i;
  assign Conn3_SCK_I = spi_rtl_sck_i;
  assign Conn3_SS_I = spi_rtl_ss_i[1:0];
  assign GPIO_lcd[2:0] = axi_gpio_1_gpio_io_o;
  assign S_AXI_arready = Conn1_ARREADY;
  assign S_AXI_awready = Conn1_AWREADY;
  assign S_AXI_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_bvalid = Conn1_BVALID;
  assign S_AXI_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_rvalid = Conn1_RVALID;
  assign S_AXI_wready = Conn1_WREADY;
  assign ext_spi_clk_1 = ext_spi_clk;
  assign ip2intc_irpt = axi_quad_spi_0_ip2intc_irpt;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign spi_rtl_io0_o = Conn3_IO0_O;
  assign spi_rtl_io0_t = Conn3_IO0_T;
  assign spi_rtl_io1_o = Conn3_IO1_O;
  assign spi_rtl_io1_t = Conn3_IO1_T;
  assign spi_rtl_sck_o = Conn3_SCK_O;
  assign spi_rtl_sck_t = Conn3_SCK_T;
  assign spi_rtl_ss_o[1:0] = Conn3_SS_O;
  assign spi_rtl_ss_t = Conn3_SS_T;
  m3_for_arty_a7_axi_gpio_1_1 axi_gpio_1
       (.gpio_io_o(axi_gpio_1_gpio_io_o),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[8:0]),
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
        .s_axi_wvalid(Conn1_WVALID));
  m3_for_arty_a7_axi_quad_spi_0_2 axi_quad_spi_0
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(Conn3_IO0_I),
        .io0_o(Conn3_IO0_O),
        .io0_t(Conn3_IO0_T),
        .io1_i(Conn3_IO1_I),
        .io1_o(Conn3_IO1_O),
        .io1_t(Conn3_IO1_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi4_aclk(s_axi_aclk_1),
        .s_axi4_araddr(Conn2_ARADDR[23:0]),
        .s_axi4_arburst(Conn2_ARBURST),
        .s_axi4_arcache(Conn2_ARCACHE),
        .s_axi4_aresetn(s_axi_aresetn_1),
        .s_axi4_arlen(Conn2_ARLEN),
        .s_axi4_arlock(Conn2_ARLOCK),
        .s_axi4_arprot(Conn2_ARPROT),
        .s_axi4_arready(Conn2_ARREADY),
        .s_axi4_arsize(Conn2_ARSIZE),
        .s_axi4_arvalid(Conn2_ARVALID),
        .s_axi4_awaddr(Conn2_AWADDR[23:0]),
        .s_axi4_awburst(Conn2_AWBURST),
        .s_axi4_awcache(Conn2_AWCACHE),
        .s_axi4_awlen(Conn2_AWLEN),
        .s_axi4_awlock(Conn2_AWLOCK),
        .s_axi4_awprot(Conn2_AWPROT),
        .s_axi4_awready(Conn2_AWREADY),
        .s_axi4_awsize(Conn2_AWSIZE),
        .s_axi4_awvalid(Conn2_AWVALID),
        .s_axi4_bready(Conn2_BREADY),
        .s_axi4_bresp(Conn2_BRESP),
        .s_axi4_bvalid(Conn2_BVALID),
        .s_axi4_rdata(Conn2_RDATA),
        .s_axi4_rlast(Conn2_RLAST),
        .s_axi4_rready(Conn2_RREADY),
        .s_axi4_rresp(Conn2_RRESP),
        .s_axi4_rvalid(Conn2_RVALID),
        .s_axi4_wdata(Conn2_WDATA),
        .s_axi4_wlast(Conn2_WLAST),
        .s_axi4_wready(Conn2_WREADY),
        .s_axi4_wstrb(Conn2_WSTRB),
        .s_axi4_wvalid(Conn2_WVALID),
        .sck_i(Conn3_SCK_I),
        .sck_o(Conn3_SCK_O),
        .sck_t(Conn3_SCK_T),
        .ss_i(Conn3_SS_I),
        .ss_o(Conn3_SS_O),
        .ss_t(Conn3_SS_T));
endmodule

module clk_and_reset_imp_1VC78JG
   (clk_200M,
    clk_24M,
    clk_25M,
    ddr_clk_81M,
    ddr_locked,
    ddr_reset,
    locked,
    peripheral_aresetn_200M,
    peripheral_aresetn_25M,
    peripheral_aresetn_81M,
    peripheral_reset_25M,
    sys_clock,
    sys_reset);
  output clk_200M;
  output clk_24M;
  output clk_25M;
  input ddr_clk_81M;
  input ddr_locked;
  input ddr_reset;
  output locked;
  output [0:0]peripheral_aresetn_200M;
  output [0:0]peripheral_aresetn_25M;
  output [0:0]peripheral_aresetn_81M;
  output [0:0]peripheral_reset_25M;
  input sys_clock;
  input sys_reset;

  wire clk_wiz_1_clk_200M;
  wire clk_wiz_1_locked;
  wire clk_wiz_clk_24M;
  wire clk_wiz_clk_25M;
  wire clk_wiz_locked;
  wire dcm_locked_1;
  wire ext_reset_in_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_25M_peripheral_aresetn;
  wire [0:0]proc_sys_reset_25M_peripheral_reset;
  wire reset_1;
  wire [0:0]rst_mig_7series_0_81M_peripheral_aresetn;
  wire slowest_sync_clk_1;
  wire sys_clock_1;

  assign clk_200M = clk_wiz_1_clk_200M;
  assign clk_24M = clk_wiz_clk_24M;
  assign clk_25M = clk_wiz_clk_25M;
  assign dcm_locked_1 = ddr_locked;
  assign ext_reset_in_1 = ddr_reset;
  assign locked = clk_wiz_locked;
  assign peripheral_aresetn_200M[0] = proc_sys_reset_0_peripheral_aresetn;
  assign peripheral_aresetn_25M[0] = proc_sys_reset_25M_peripheral_aresetn;
  assign peripheral_aresetn_81M[0] = rst_mig_7series_0_81M_peripheral_aresetn;
  assign peripheral_reset_25M[0] = proc_sys_reset_25M_peripheral_reset;
  assign reset_1 = sys_reset;
  assign slowest_sync_clk_1 = ddr_clk_81M;
  assign sys_clock_1 = sys_clock;
  m3_for_arty_a7_clk_wiz_1 clk_wiz
       (.clk_24M(clk_wiz_clk_24M),
        .clk_25M(clk_wiz_clk_25M),
        .clk_in1(sys_clock_1),
        .locked(clk_wiz_locked),
        .resetn(reset_1));
  m3_for_arty_a7_clk_wiz_0 clk_wiz_1
       (.clk_200M(clk_wiz_1_clk_200M),
        .clk_in1(sys_clock_1),
        .locked(clk_wiz_1_locked),
        .resetn(reset_1));
  m3_for_arty_a7_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_1_clk_200M));
  m3_for_arty_a7_proc_sys_reset_0_0 proc_sys_reset_25M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_25M_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_25M_peripheral_reset),
        .slowest_sync_clk(clk_wiz_clk_25M));
  m3_for_arty_a7_rst_mig_7series_0_81M_3 rst_mig_7series_0_81M
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mig_7series_0_81M_peripheral_aresetn),
        .slowest_sync_clk(slowest_sync_clk_1));
endmodule

module cmos2axis_imp_1N4HUND
   (S_AXI1_araddr,
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
    aclken,
    axi_clk,
    axi_resetn,
    axis_clk,
    axis_resetn,
    clk_24M,
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
    cmos_xclk_o_0,
    iic2intc_irpt,
    reset_25M,
    vid_io_in_active_video,
    vid_io_in_data,
    vid_io_in_hsync,
    vid_io_in_vsync,
    video_out_tdata,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid);
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
  input aclken;
  input axi_clk;
  input axi_resetn;
  input axis_clk;
  input axis_resetn;
  input clk_24M;
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
  output cmos_xclk_o_0;
  output iic2intc_irpt;
  input reset_25M;
  output vid_io_in_active_video;
  output [23:0]vid_io_in_data;
  output vid_io_in_hsync;
  output vid_io_in_vsync;
  output [23:0]video_out_tdata;
  output video_out_tlast;
  input video_out_tready;
  output video_out_tuser;
  output video_out_tvalid;

  wire CLK_i_1;
  (* DEBUG = "true" *) wire [23:0]Conn1_TDATA;
  (* DEBUG = "true" *) wire Conn1_TLAST;
  (* DEBUG = "true" *) wire Conn1_TREADY;
  (* DEBUG = "true" *) wire Conn1_TUSER;
  (* DEBUG = "true" *) wire Conn1_TVALID;
  wire Conn2_SCL_I;
  wire Conn2_SCL_O;
  wire Conn2_SCL_T;
  wire Conn2_SDA_I;
  wire Conn2_SDA_O;
  wire Conn2_SDA_T;
  wire [0:0]Conn3_TRI_O;
  wire [0:0]Conn4_TRI_O;
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
  wire [31:0]Conn6_ARADDR;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire OV_Sensor_0_cmos_xclk_o;
  wire OV_Sensor_0_vid_clk_ce;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OV_Sensor_0_video_o_ACTIVE_VIDEO;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]OV_Sensor_0_video_o_DATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OV_Sensor_0_video_o_HSYNC;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire OV_Sensor_0_video_o_VSYNC;
  wire aclken_1;
  wire aresetn_1;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_resetn_1;
  wire [7:0]cmos_data_1;
  wire cmos_href_1;
  wire cmos_pclk_1;
  wire cmos_vsync_1;
  wire s_axi_lite_aclk_1;
  wire ui_addn_clk_0_1;
  wire vid_io_in_reset_1;

  assign CLK_i_1 = clk_24M;
  assign Conn1_TREADY = video_out_tready;
  assign Conn2_SCL_I = cmos_iic_scl_i;
  assign Conn2_SDA_I = cmos_iic_sda_i;
  assign Conn5_ARADDR = S_AXI_araddr[31:0];
  assign Conn5_ARVALID = S_AXI_arvalid;
  assign Conn5_AWADDR = S_AXI_awaddr[31:0];
  assign Conn5_AWVALID = S_AXI_awvalid;
  assign Conn5_BREADY = S_AXI_bready;
  assign Conn5_RREADY = S_AXI_rready;
  assign Conn5_WDATA = S_AXI_wdata[31:0];
  assign Conn5_WSTRB = S_AXI_wstrb[3:0];
  assign Conn5_WVALID = S_AXI_wvalid;
  assign Conn6_ARADDR = S_AXI1_araddr[31:0];
  assign Conn6_ARVALID = S_AXI1_arvalid;
  assign Conn6_AWADDR = S_AXI1_awaddr[31:0];
  assign Conn6_AWVALID = S_AXI1_awvalid;
  assign Conn6_BREADY = S_AXI1_bready;
  assign Conn6_RREADY = S_AXI1_rready;
  assign Conn6_WDATA = S_AXI1_wdata[31:0];
  assign Conn6_WSTRB = S_AXI1_wstrb[3:0];
  assign Conn6_WVALID = S_AXI1_wvalid;
  assign S_AXI1_arready = Conn6_ARREADY;
  assign S_AXI1_awready = Conn6_AWREADY;
  assign S_AXI1_bresp[1:0] = Conn6_BRESP;
  assign S_AXI1_bvalid = Conn6_BVALID;
  assign S_AXI1_rdata[31:0] = Conn6_RDATA;
  assign S_AXI1_rresp[1:0] = Conn6_RRESP;
  assign S_AXI1_rvalid = Conn6_RVALID;
  assign S_AXI1_wready = Conn6_WREADY;
  assign S_AXI_arready = Conn5_ARREADY;
  assign S_AXI_awready = Conn5_AWREADY;
  assign S_AXI_bresp[1:0] = Conn5_BRESP;
  assign S_AXI_bvalid = Conn5_BVALID;
  assign S_AXI_rdata[31:0] = Conn5_RDATA;
  assign S_AXI_rresp[1:0] = Conn5_RRESP;
  assign S_AXI_rvalid = Conn5_RVALID;
  assign S_AXI_wready = Conn5_WREADY;
  assign aclken_1 = aclken;
  assign aresetn_1 = axis_resetn;
  assign axi_resetn_1 = axi_resetn;
  assign cmos_data_1 = cmos_data[7:0];
  assign cmos_href_1 = cmos_href;
  assign cmos_iic_scl_o = Conn2_SCL_O;
  assign cmos_iic_scl_t = Conn2_SCL_T;
  assign cmos_iic_sda_o = Conn2_SDA_O;
  assign cmos_iic_sda_t = Conn2_SDA_T;
  assign cmos_pclk_1 = cmos_pclk;
  assign cmos_pwdn_tri_o[0] = Conn3_TRI_O;
  assign cmos_rst_tri_o[0] = Conn4_TRI_O;
  assign cmos_vsync_1 = cmos_vsync;
  assign cmos_xclk_o_0 = OV_Sensor_0_cmos_xclk_o;
  assign iic2intc_irpt = axi_iic_0_iic2intc_irpt;
  assign s_axi_lite_aclk_1 = axi_clk;
  assign ui_addn_clk_0_1 = axis_clk;
  assign vid_io_in_active_video = OV_Sensor_0_video_o_ACTIVE_VIDEO;
  assign vid_io_in_data[23:0] = OV_Sensor_0_video_o_DATA;
  assign vid_io_in_hsync = OV_Sensor_0_video_o_HSYNC;
  assign vid_io_in_reset_1 = reset_25M;
  assign vid_io_in_vsync = OV_Sensor_0_video_o_VSYNC;
  assign video_out_tdata[23:0] = Conn1_TDATA;
  assign video_out_tlast = Conn1_TLAST;
  assign video_out_tuser = Conn1_TUSER;
  assign video_out_tvalid = Conn1_TVALID;
  m3_for_arty_a7_OV_Sensor_0_0 OV_Sensor_0
       (.CLK_i(CLK_i_1),
        .cmos_data_i(cmos_data_1),
        .cmos_href_i(cmos_href_1),
        .cmos_pclk_i(cmos_pclk_1),
        .cmos_vsync_i(cmos_vsync_1),
        .cmos_xclk_o(OV_Sensor_0_cmos_xclk_o),
        .vid_active_video(OV_Sensor_0_video_o_ACTIVE_VIDEO),
        .vid_clk_ce(OV_Sensor_0_vid_clk_ce),
        .vid_data(OV_Sensor_0_video_o_DATA),
        .vid_hsync(OV_Sensor_0_video_o_HSYNC),
        .vid_vsync(OV_Sensor_0_video_o_VSYNC));
  m3_for_arty_a7_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_o(Conn4_TRI_O),
        .gpio_io_o(Conn3_TRI_O),
        .s_axi_aclk(s_axi_lite_aclk_1),
        .s_axi_araddr(Conn6_ARADDR[8:0]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(Conn6_ARREADY),
        .s_axi_arvalid(Conn6_ARVALID),
        .s_axi_awaddr(Conn6_AWADDR[8:0]),
        .s_axi_awready(Conn6_AWREADY),
        .s_axi_awvalid(Conn6_AWVALID),
        .s_axi_bready(Conn6_BREADY),
        .s_axi_bresp(Conn6_BRESP),
        .s_axi_bvalid(Conn6_BVALID),
        .s_axi_rdata(Conn6_RDATA),
        .s_axi_rready(Conn6_RREADY),
        .s_axi_rresp(Conn6_RRESP),
        .s_axi_rvalid(Conn6_RVALID),
        .s_axi_wdata(Conn6_WDATA),
        .s_axi_wready(Conn6_WREADY),
        .s_axi_wstrb(Conn6_WSTRB),
        .s_axi_wvalid(Conn6_WVALID));
  m3_for_arty_a7_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
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
        .s_axi_wvalid(Conn5_WVALID),
        .scl_i(Conn2_SCL_I),
        .scl_o(Conn2_SCL_O),
        .scl_t(Conn2_SCL_T),
        .sda_i(Conn2_SDA_I),
        .sda_o(Conn2_SDA_O),
        .sda_t(Conn2_SDA_T));
  m3_for_arty_a7_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(ui_addn_clk_0_1),
        .aclken(aclken_1),
        .aresetn(aresetn_1),
        .axis_enable(aclken_1),
        .m_axis_video_tdata(Conn1_TDATA),
        .m_axis_video_tlast(Conn1_TLAST),
        .m_axis_video_tready(Conn1_TREADY),
        .m_axis_video_tuser(Conn1_TUSER),
        .m_axis_video_tvalid(Conn1_TVALID),
        .vid_active_video(OV_Sensor_0_video_o_ACTIVE_VIDEO),
        .vid_data(OV_Sensor_0_video_o_DATA),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(OV_Sensor_0_video_o_HSYNC),
        .vid_io_in_ce(OV_Sensor_0_vid_clk_ce),
        .vid_io_in_clk(cmos_pclk_1),
        .vid_io_in_reset(vid_io_in_reset_1),
        .vid_vblank(1'b0),
        .vid_vsync(OV_Sensor_0_video_o_VSYNC));
endmodule

module display_imp_10OMWVT
   (S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tid,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    axis_clk,
    axis_resetn,
    clk_25M,
    reset_25M,
    resetn_25M,
    vga_pBlue_0,
    vga_pGreen_0,
    vga_pHSync_0,
    vga_pRed_0,
    vga_pVSync_0);
  input [23:0]S_AXIS_tdata;
  input [0:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tid;
  input [2:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output [0:0]S_AXIS_tready;
  input [2:0]S_AXIS_tstrb;
  input [0:0]S_AXIS_tuser;
  input [0:0]S_AXIS_tvalid;
  input axis_clk;
  input axis_resetn;
  input clk_25M;
  input reset_25M;
  input resetn_25M;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  (* DEBUG = "true" *) wire [23:0]Conn1_TDATA;
  (* DEBUG = "true" *) wire [0:0]Conn1_TDEST;
  (* DEBUG = "true" *) wire [0:0]Conn1_TID;
  (* DEBUG = "true" *) wire [2:0]Conn1_TKEEP;
  (* DEBUG = "true" *) wire [0:0]Conn1_TLAST;
  (* DEBUG = "true" *) wire Conn1_TREADY;
  (* DEBUG = "true" *) wire [2:0]Conn1_TSTRB;
  (* DEBUG = "true" *) wire [0:0]Conn1_TUSER;
  (* DEBUG = "true" *) wire [0:0]Conn1_TVALID;
  wire [23:0]RGB2RBG_M_AXIS_TDATA;
  wire RGB2RBG_M_AXIS_TLAST;
  wire RGB2RBG_M_AXIS_TREADY;
  wire [0:0]RGB2RBG_M_AXIS_TUSER;
  wire RGB2RBG_M_AXIS_TVALID;
  wire aresetn_1;
  wire clk_25M;
  wire resetn_1;
  wire [3:0]rgb2vga_0_vga_pBlue;
  wire [3:0]rgb2vga_0_vga_pGreen;
  wire rgb2vga_0_vga_pHSync;
  wire [3:0]rgb2vga_0_vga_pRed;
  wire rgb2vga_0_vga_pVSync;
  wire ui_addn_clk_0_1;
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
  wire vid_io_out_reset_1;

  assign Conn1_TDATA = S_AXIS_tdata[23:0];
  assign Conn1_TDEST = S_AXIS_tdest[0];
  assign Conn1_TID = S_AXIS_tid[0];
  assign Conn1_TKEEP = S_AXIS_tkeep[2:0];
  assign Conn1_TLAST = S_AXIS_tlast[0];
  assign Conn1_TSTRB = S_AXIS_tstrb[2:0];
  assign Conn1_TUSER = S_AXIS_tuser[0];
  assign Conn1_TVALID = S_AXIS_tvalid[0];
  assign S_AXIS_tready[0] = Conn1_TREADY;
  assign aresetn_1 = axis_resetn;
  assign resetn_1 = resetn_25M;
  assign ui_addn_clk_0_1 = axis_clk;
  assign vga_pBlue_0[3:0] = rgb2vga_0_vga_pBlue;
  assign vga_pGreen_0[3:0] = rgb2vga_0_vga_pGreen;
  assign vga_pHSync_0 = rgb2vga_0_vga_pHSync;
  assign vga_pRed_0[3:0] = rgb2vga_0_vga_pRed;
  assign vga_pVSync_0 = rgb2vga_0_vga_pVSync;
  assign vid_io_out_reset_1 = reset_25M;
  m3_for_arty_a7_axis_subset_converter_0_1 RGB2RBG
       (.aclk(ui_addn_clk_0_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(RGB2RBG_M_AXIS_TDATA),
        .m_axis_tlast(RGB2RBG_M_AXIS_TLAST),
        .m_axis_tready(RGB2RBG_M_AXIS_TREADY),
        .m_axis_tuser(RGB2RBG_M_AXIS_TUSER),
        .m_axis_tvalid(RGB2RBG_M_AXIS_TVALID),
        .s_axis_tdata(Conn1_TDATA),
        .s_axis_tdest(Conn1_TDEST),
        .s_axis_tid(Conn1_TID),
        .s_axis_tkeep(Conn1_TKEEP),
        .s_axis_tlast(Conn1_TLAST),
        .s_axis_tready(Conn1_TREADY),
        .s_axis_tstrb(Conn1_TSTRB),
        .s_axis_tuser(Conn1_TUSER),
        .s_axis_tvalid(Conn1_TVALID));
  m3_for_arty_a7_rgb2vga_0_0 rgb2vga_0
       (.PixelClk(clk_25M),
        .rgb_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .rgb_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .rgb_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .rgb_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vga_pBlue(rgb2vga_0_vga_pBlue),
        .vga_pGreen(rgb2vga_0_vga_pGreen),
        .vga_pHSync(rgb2vga_0_vga_pHSync),
        .vga_pRed(rgb2vga_0_vga_pRed),
        .vga_pVSync(rgb2vga_0_vga_pVSync));
  m3_for_arty_a7_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(ui_addn_clk_0_1),
        .aclken(1'b1),
        .aresetn(aresetn_1),
        .fid(1'b0),
        .s_axis_video_tdata(RGB2RBG_M_AXIS_TDATA),
        .s_axis_video_tlast(RGB2RBG_M_AXIS_TLAST),
        .s_axis_video_tready(RGB2RBG_M_AXIS_TREADY),
        .s_axis_video_tuser(RGB2RBG_M_AXIS_TUSER),
        .s_axis_video_tvalid(RGB2RBG_M_AXIS_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(clk_25M),
        .vid_io_out_reset(vid_io_out_reset_1),
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
        .clk(clk_25M),
        .clken(1'b1),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(resetn_1),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
endmodule

module m00_couplers_imp_177L6YV
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
  m3_for_arty_a7_auto_pc_8 auto_pc
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

module m00_couplers_imp_1QMO27N
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m00_couplers_ARADDR;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [6:0]auto_cc_to_m00_couplers_AWADDR;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [3:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
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
  m3_for_arty_a7_auto_pc_0 auto_pc
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
  m3_for_arty_a7_auto_pc_1 auto_pc
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

module m01_couplers_imp_7DOYAO
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
  m3_for_arty_a7_auto_pc_9 auto_pc
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

module m01_couplers_imp_QT2NTG
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [5:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
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
  m3_for_arty_a7_auto_pc_2 auto_pc
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

module m02_couplers_imp_FOHTFG
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [6:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_IGJWY0
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
  m3_for_arty_a7_auto_pc_10 auto_pc
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

module m03_couplers_imp_1FIE3A3
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m03_couplers_ARADDR;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [5:0]auto_cc_to_m03_couplers_AWADDR;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [3:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_1IA59DB
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
    S_AXI_arregion,
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
    S_AXI_awregion,
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
  input [3:0]S_AXI_arregion;
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
  input [3:0]S_AXI_awregion;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m03_couplers_ARADDR;
  wire [1:0]auto_cc_to_m03_couplers_ARBURST;
  wire [3:0]auto_cc_to_m03_couplers_ARCACHE;
  wire [7:0]auto_cc_to_m03_couplers_ARLEN;
  wire [0:0]auto_cc_to_m03_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m03_couplers_ARPROT;
  wire [3:0]auto_cc_to_m03_couplers_ARQOS;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire [2:0]auto_cc_to_m03_couplers_ARSIZE;
  wire [0:0]auto_cc_to_m03_couplers_ARUSER;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [31:0]auto_cc_to_m03_couplers_AWADDR;
  wire [1:0]auto_cc_to_m03_couplers_AWBURST;
  wire [3:0]auto_cc_to_m03_couplers_AWCACHE;
  wire [7:0]auto_cc_to_m03_couplers_AWLEN;
  wire [0:0]auto_cc_to_m03_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m03_couplers_AWPROT;
  wire [3:0]auto_cc_to_m03_couplers_AWQOS;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire [2:0]auto_cc_to_m03_couplers_AWSIZE;
  wire [0:0]auto_cc_to_m03_couplers_AWUSER;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RLAST;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WLAST;
  wire auto_cc_to_m03_couplers_WREADY;
  wire [3:0]auto_cc_to_m03_couplers_WSTRB;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [1:0]m03_couplers_to_auto_cc_ARBURST;
  wire [3:0]m03_couplers_to_auto_cc_ARCACHE;
  wire [7:0]m03_couplers_to_auto_cc_ARLEN;
  wire [0:0]m03_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire [3:0]m03_couplers_to_auto_cc_ARQOS;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire [3:0]m03_couplers_to_auto_cc_ARREGION;
  wire [2:0]m03_couplers_to_auto_cc_ARSIZE;
  wire [0:0]m03_couplers_to_auto_cc_ARUSER;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [1:0]m03_couplers_to_auto_cc_AWBURST;
  wire [3:0]m03_couplers_to_auto_cc_AWCACHE;
  wire [7:0]m03_couplers_to_auto_cc_AWLEN;
  wire [0:0]m03_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire [3:0]m03_couplers_to_auto_cc_AWQOS;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire [3:0]m03_couplers_to_auto_cc_AWREGION;
  wire [2:0]m03_couplers_to_auto_cc_AWSIZE;
  wire [0:0]m03_couplers_to_auto_cc_AWUSER;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RLAST;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WLAST;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m03_couplers_ARSIZE;
  assign M_AXI_aruser[0] = auto_cc_to_m03_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m03_couplers_AWSIZE;
  assign M_AXI_awuser[0] = auto_cc_to_m03_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rlast = m03_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_cc_ARUSER = S_AXI_aruser[0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_cc_AWUSER = S_AXI_awuser[0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_8 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m03_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m03_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_m03_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m03_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m03_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m03_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m03_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_m03_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m03_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m03_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_m03_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m03_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m03_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m03_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m03_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_m03_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_m03_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m03_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(m03_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m03_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_cc_AWCACHE),
        .s_axi_awlen(m03_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m03_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rlast(m03_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_8J5MKA
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
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
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
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
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

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [1:0]m03_couplers_to_m03_couplers_ARBURST;
  wire [3:0]m03_couplers_to_m03_couplers_ARCACHE;
  wire [7:0]m03_couplers_to_m03_couplers_ARLEN;
  wire [0:0]m03_couplers_to_m03_couplers_ARLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [3:0]m03_couplers_to_m03_couplers_ARQOS;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [2:0]m03_couplers_to_m03_couplers_ARSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_ARUSER;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [1:0]m03_couplers_to_m03_couplers_AWBURST;
  wire [3:0]m03_couplers_to_m03_couplers_AWCACHE;
  wire [7:0]m03_couplers_to_m03_couplers_AWLEN;
  wire [0:0]m03_couplers_to_m03_couplers_AWLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [3:0]m03_couplers_to_m03_couplers_AWQOS;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [2:0]m03_couplers_to_m03_couplers_AWSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_AWUSER;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RLAST;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WLAST;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m03_couplers_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m03_couplers_to_m03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m03_couplers_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = m03_couplers_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m03_couplers_to_m03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m03_couplers_to_m03_couplers_ARSIZE;
  assign M_AXI_aruser[0] = m03_couplers_to_m03_couplers_ARUSER;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m03_couplers_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m03_couplers_to_m03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m03_couplers_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = m03_couplers_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m03_couplers_to_m03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m03_couplers_to_m03_couplers_AWSIZE;
  assign M_AXI_awuser[0] = m03_couplers_to_m03_couplers_AWUSER;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wlast[0] = m03_couplers_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rlast[0] = m03_couplers_to_m03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_m03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_m03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_m03_couplers_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_m03_couplers_ARUSER = S_AXI_aruser[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_m03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_m03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_m03_couplers_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_m03_couplers_AWUSER = S_AXI_awuser[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RLAST = M_AXI_rlast[0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WLAST = S_AXI_wlast[0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_11XVXPO
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [4:0]auto_cc_to_m04_couplers_ARADDR;
  wire auto_cc_to_m04_couplers_ARREADY;
  wire auto_cc_to_m04_couplers_ARVALID;
  wire [4:0]auto_cc_to_m04_couplers_AWADDR;
  wire auto_cc_to_m04_couplers_AWREADY;
  wire auto_cc_to_m04_couplers_AWVALID;
  wire auto_cc_to_m04_couplers_BREADY;
  wire [1:0]auto_cc_to_m04_couplers_BRESP;
  wire auto_cc_to_m04_couplers_BVALID;
  wire [31:0]auto_cc_to_m04_couplers_RDATA;
  wire auto_cc_to_m04_couplers_RREADY;
  wire [1:0]auto_cc_to_m04_couplers_RRESP;
  wire auto_cc_to_m04_couplers_RVALID;
  wire [31:0]auto_cc_to_m04_couplers_WDATA;
  wire auto_cc_to_m04_couplers_WREADY;
  wire [3:0]auto_cc_to_m04_couplers_WSTRB;
  wire auto_cc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [31:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[4:0] = auto_cc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = auto_cc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[4:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[4:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
endmodule

module m04_couplers_imp_1VCJU8O
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

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [1:0]m04_couplers_to_m04_couplers_ARBURST;
  wire [3:0]m04_couplers_to_m04_couplers_ARCACHE;
  wire [7:0]m04_couplers_to_m04_couplers_ARLEN;
  wire [0:0]m04_couplers_to_m04_couplers_ARLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire [3:0]m04_couplers_to_m04_couplers_ARQOS;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [3:0]m04_couplers_to_m04_couplers_ARREGION;
  wire [2:0]m04_couplers_to_m04_couplers_ARSIZE;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [1:0]m04_couplers_to_m04_couplers_AWBURST;
  wire [3:0]m04_couplers_to_m04_couplers_AWCACHE;
  wire [7:0]m04_couplers_to_m04_couplers_AWLEN;
  wire [0:0]m04_couplers_to_m04_couplers_AWLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire [3:0]m04_couplers_to_m04_couplers_AWQOS;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [3:0]m04_couplers_to_m04_couplers_AWREGION;
  wire [2:0]m04_couplers_to_m04_couplers_AWSIZE;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RLAST;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WLAST;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m04_couplers_to_m04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m04_couplers_to_m04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m04_couplers_to_m04_couplers_ARLEN;
  assign M_AXI_arlock[0] = m04_couplers_to_m04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m04_couplers_to_m04_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m04_couplers_to_m04_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m04_couplers_to_m04_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m04_couplers_to_m04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m04_couplers_to_m04_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m04_couplers_to_m04_couplers_AWLEN;
  assign M_AXI_awlock[0] = m04_couplers_to_m04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m04_couplers_to_m04_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m04_couplers_to_m04_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m04_couplers_to_m04_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wlast[0] = m04_couplers_to_m04_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rlast[0] = m04_couplers_to_m04_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_m04_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_m04_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_m04_couplers_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_m04_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_m04_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_m04_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_m04_couplers_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_m04_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RLAST = M_AXI_rlast[0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WLAST = S_AXI_wlast[0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_D9WIKT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
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
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
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
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
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
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
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

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [1:0]m04_couplers_to_m04_couplers_ARBURST;
  wire [3:0]m04_couplers_to_m04_couplers_ARCACHE;
  wire [7:0]m04_couplers_to_m04_couplers_ARLEN;
  wire m04_couplers_to_m04_couplers_ARLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire [2:0]m04_couplers_to_m04_couplers_ARSIZE;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [1:0]m04_couplers_to_m04_couplers_AWBURST;
  wire [3:0]m04_couplers_to_m04_couplers_AWCACHE;
  wire [7:0]m04_couplers_to_m04_couplers_AWLEN;
  wire m04_couplers_to_m04_couplers_AWLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire [2:0]m04_couplers_to_m04_couplers_AWSIZE;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RLAST;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WLAST;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m04_couplers_to_m04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m04_couplers_to_m04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m04_couplers_to_m04_couplers_ARLEN;
  assign M_AXI_arlock = m04_couplers_to_m04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m04_couplers_to_m04_couplers_ARSIZE;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m04_couplers_to_m04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m04_couplers_to_m04_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m04_couplers_to_m04_couplers_AWLEN;
  assign M_AXI_awlock = m04_couplers_to_m04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m04_couplers_to_m04_couplers_AWSIZE;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wlast = m04_couplers_to_m04_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rlast = m04_couplers_to_m04_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_m04_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_m04_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_m04_couplers_ARLOCK = S_AXI_arlock;
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_m04_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_m04_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_m04_couplers_AWLOCK = S_AXI_awlock;
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RLAST = M_AXI_rlast;
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WLAST = S_AXI_wlast;
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_1CJX44Q
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
  wire [31:0]auto_pc_to_m05_couplers_ARADDR;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [31:0]auto_pc_to_m05_couplers_AWADDR;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [1:0]m05_couplers_to_auto_pc_ARBURST;
  wire [3:0]m05_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m05_couplers_to_auto_pc_ARLEN;
  wire [0:0]m05_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire [3:0]m05_couplers_to_auto_pc_ARQOS;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire [3:0]m05_couplers_to_auto_pc_ARREGION;
  wire [2:0]m05_couplers_to_auto_pc_ARSIZE;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [1:0]m05_couplers_to_auto_pc_AWBURST;
  wire [3:0]m05_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m05_couplers_to_auto_pc_AWLEN;
  wire [0:0]m05_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire [3:0]m05_couplers_to_auto_pc_AWQOS;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire [3:0]m05_couplers_to_auto_pc_AWREGION;
  wire [2:0]m05_couplers_to_auto_pc_AWSIZE;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire m05_couplers_to_auto_pc_RLAST;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WLAST;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m05_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m05_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m05_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m05_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_2NYJ4B
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m05_couplers_ARADDR;
  wire auto_cc_to_m05_couplers_ARREADY;
  wire auto_cc_to_m05_couplers_ARVALID;
  wire [5:0]auto_cc_to_m05_couplers_AWADDR;
  wire auto_cc_to_m05_couplers_AWREADY;
  wire auto_cc_to_m05_couplers_AWVALID;
  wire auto_cc_to_m05_couplers_BREADY;
  wire [1:0]auto_cc_to_m05_couplers_BRESP;
  wire auto_cc_to_m05_couplers_BVALID;
  wire [31:0]auto_cc_to_m05_couplers_RDATA;
  wire auto_cc_to_m05_couplers_RREADY;
  wire [1:0]auto_cc_to_m05_couplers_RRESP;
  wire auto_cc_to_m05_couplers_RVALID;
  wire [31:0]auto_cc_to_m05_couplers_WDATA;
  wire auto_cc_to_m05_couplers_WREADY;
  wire [3:0]auto_cc_to_m05_couplers_WSTRB;
  wire auto_cc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_cc_ARADDR;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [31:0]m05_couplers_to_auto_cc_AWADDR;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [31:0]m05_couplers_to_auto_cc_RDATA;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [31:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [3:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = auto_cc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = auto_cc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m05_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
endmodule

module m05_couplers_imp_W2XZB3
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
  wire [31:0]auto_pc_to_m05_couplers_ARADDR;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [31:0]auto_pc_to_m05_couplers_AWADDR;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [1:0]m05_couplers_to_auto_pc_ARBURST;
  wire [3:0]m05_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m05_couplers_to_auto_pc_ARLEN;
  wire [0:0]m05_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire [3:0]m05_couplers_to_auto_pc_ARQOS;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire [3:0]m05_couplers_to_auto_pc_ARREGION;
  wire [2:0]m05_couplers_to_auto_pc_ARSIZE;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [1:0]m05_couplers_to_auto_pc_AWBURST;
  wire [3:0]m05_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m05_couplers_to_auto_pc_AWLEN;
  wire [0:0]m05_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire [3:0]m05_couplers_to_auto_pc_AWQOS;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire [3:0]m05_couplers_to_auto_pc_AWREGION;
  wire [2:0]m05_couplers_to_auto_pc_AWSIZE;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire m05_couplers_to_auto_pc_RLAST;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WLAST;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m05_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_pc_11 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m05_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m05_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m05_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
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
  m3_for_arty_a7_auto_pc_4 auto_pc
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

module m06_couplers_imp_C2K8UV
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
  m3_for_arty_a7_auto_pc_12 auto_pc
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

module m06_couplers_imp_MMBBKZ
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [3:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [3:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [3:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [31:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[3:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[3:0]),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module m07_couplers_imp_1LVX4JO
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
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
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
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
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
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
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

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m07_couplers_ARADDR;
  wire auto_cc_to_m07_couplers_ARREADY;
  wire auto_cc_to_m07_couplers_ARVALID;
  wire [8:0]auto_cc_to_m07_couplers_AWADDR;
  wire auto_cc_to_m07_couplers_AWREADY;
  wire auto_cc_to_m07_couplers_AWVALID;
  wire auto_cc_to_m07_couplers_BREADY;
  wire [1:0]auto_cc_to_m07_couplers_BRESP;
  wire auto_cc_to_m07_couplers_BVALID;
  wire [31:0]auto_cc_to_m07_couplers_RDATA;
  wire auto_cc_to_m07_couplers_RREADY;
  wire [1:0]auto_cc_to_m07_couplers_RRESP;
  wire auto_cc_to_m07_couplers_RVALID;
  wire [31:0]auto_cc_to_m07_couplers_WDATA;
  wire auto_cc_to_m07_couplers_WREADY;
  wire [3:0]auto_cc_to_m07_couplers_WSTRB;
  wire auto_cc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [31:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  m3_for_arty_a7_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m07_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
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
  output [12:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
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
  wire [12:0]auto_pc_to_m07_couplers_ARADDR;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [12:0]auto_pc_to_m07_couplers_AWADDR;
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

  assign M_AXI_araddr[12:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m07_couplers_AWADDR;
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
  m3_for_arty_a7_auto_pc_5 auto_pc
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
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR[12:0]),
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
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR[12:0]),
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

/* cpu clk 50M
qspi clk 50M */
(* CORE_GENERATION_INFO = "m3_for_arty_a7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=m3_for_arty_a7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=129,numReposBlks=93,numNonXlnxBlks=10,numHierBlks=36,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=7,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=27,da_board_cnt=22,da_bram_cntlr_cnt=3,da_clkrst_cnt=30,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "m3_for_arty_a7.hwdef" *) 
module m3_for_arty_a7
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
    GPIO_lcd,
    SDWIO,
    SWCLK,
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
    cmos_xclk_o_0,
    dip_switches_4bits_tri_i,
    led_4bits_tri_i,
    led_4bits_tri_o,
    led_4bits_tri_t,
    nSRST,
    reset,
    spi_rtl_io0_i,
    spi_rtl_io0_o,
    spi_rtl_io0_t,
    spi_rtl_io1_i,
    spi_rtl_io1_o,
    spi_rtl_io1_t,
    spi_rtl_sck_i,
    spi_rtl_sck_o,
    spi_rtl_sck_t,
    spi_rtl_ss_i,
    spi_rtl_ss_o,
    spi_rtl_ss_t,
    sys_clock,
    uart_keyboard_rxd,
    uart_keyboard_txd,
    uart_wifi_rx,
    uart_wifi_tx,
    usb_uart_rxd,
    usb_uart_txd,
    vga_pBlue_0,
    vga_pGreen_0,
    vga_pHSync_0,
    vga_pRed_0,
    vga_pVSync_0);
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
  output [2:0]GPIO_lcd;
  inout [0:0]SDWIO;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SWCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SWCLK, CLK_DOMAIN m3_for_arty_a7_SWCLK, FREQ_HZ 100000000, PHASE 0.000" *) input SWCLK;
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
  output cmos_xclk_o_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_4bits TRI_I" *) input [3:0]dip_switches_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_I" *) input [3:0]led_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_O" *) output [3:0]led_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_T" *) output [3:0]led_4bits_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.NSRST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.NSRST, POLARITY ACTIVE_LOW" *) input nSRST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl IO0_I" *) input spi_rtl_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl IO0_O" *) output spi_rtl_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl IO0_T" *) output spi_rtl_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl IO1_I" *) input spi_rtl_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl IO1_O" *) output spi_rtl_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl IO1_T" *) output spi_rtl_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl SCK_I" *) input spi_rtl_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl SCK_O" *) output spi_rtl_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl SCK_T" *) output spi_rtl_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl SS_I" *) input [1:0]spi_rtl_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl SS_O" *) output [1:0]spi_rtl_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl SS_T" *) output spi_rtl_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN m3_for_arty_a7_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_keyboard RxD" *) input uart_keyboard_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_keyboard TxD" *) output uart_keyboard_txd;
  input uart_wifi_rx;
  output uart_wifi_tx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  wire Clocks_and_Resets_clk_qspi;
  wire [0:0]Clocks_and_Resets_dbgresetn;
  wire [0:0]Clocks_and_Resets_sysresetn;
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
  wire Cortex_M3_0_SWDO;
  wire [0:0]Cortex_M3_0_SWDOEN;
  wire Cortex_M3_0_SWDOEN1;
  wire Cortex_M3_0_SYSRESETREQ;
  wire [2:0]LCD_GPIO_lcd;
  wire LCD_ip2intc_irpt;
  wire LCD_spi_rtl_IO0_I;
  wire LCD_spi_rtl_IO0_O;
  wire LCD_spi_rtl_IO0_T;
  wire LCD_spi_rtl_IO1_I;
  wire LCD_spi_rtl_IO1_O;
  wire LCD_spi_rtl_IO1_T;
  wire LCD_spi_rtl_SCK_I;
  wire LCD_spi_rtl_SCK_O;
  wire LCD_spi_rtl_SCK_T;
  wire [1:0]LCD_spi_rtl_SS_I;
  wire [1:0]LCD_spi_rtl_SS_O;
  wire LCD_spi_rtl_SS_T;
  wire [0:0]Net;
  wire SWCLKTCK_0_1;
  wire aux_reset_in_0_1;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_gpio_0_GPIO2_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire [3:0]axi_gpio_0_GPIO_TRI_T;
  wire axi_gpio_0_ip2intc_irpt;
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
  wire [31:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M03_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M03_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M03_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M03_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M03_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M03_AXI_ARQOS;
  wire [0:0]axi_interconnect_0_M03_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M03_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M03_AXI_ARUSER;
  wire [0:0]axi_interconnect_0_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M03_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M03_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M03_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M03_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M03_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M03_AXI_AWQOS;
  wire [0:0]axi_interconnect_0_M03_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M03_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M03_AXI_AWUSER;
  wire [0:0]axi_interconnect_0_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M03_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M03_AXI_WLAST;
  wire [0:0]axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M04_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M04_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M04_AXI_ARLEN;
  wire axi_interconnect_0_M04_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M04_AXI_ARPROT;
  wire axi_interconnect_0_M04_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M04_AXI_ARSIZE;
  wire axi_interconnect_0_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M04_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M04_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M04_AXI_AWLEN;
  wire axi_interconnect_0_M04_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M04_AXI_AWPROT;
  wire axi_interconnect_0_M04_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M04_AXI_AWSIZE;
  wire axi_interconnect_0_M04_AXI_AWVALID;
  wire axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_BRESP;
  wire axi_interconnect_0_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_RDATA;
  wire axi_interconnect_0_M04_AXI_RLAST;
  wire axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_RRESP;
  wire axi_interconnect_0_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_WDATA;
  wire axi_interconnect_0_M04_AXI_WLAST;
  wire axi_interconnect_0_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_WSTRB;
  wire axi_interconnect_0_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_ARADDR;
  wire axi_interconnect_0_M05_AXI_ARREADY;
  wire axi_interconnect_0_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_AWADDR;
  wire axi_interconnect_0_M05_AXI_AWREADY;
  wire axi_interconnect_0_M05_AXI_AWVALID;
  wire axi_interconnect_0_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_BRESP;
  wire axi_interconnect_0_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_RDATA;
  wire axi_interconnect_0_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M05_AXI_RRESP;
  wire axi_interconnect_0_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M05_AXI_WDATA;
  wire axi_interconnect_0_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M05_AXI_WSTRB;
  wire axi_interconnect_0_M05_AXI_WVALID;
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
  wire [12:0]axi_interconnect_0_M07_AXI_ARADDR;
  wire axi_interconnect_0_M07_AXI_ARREADY;
  wire axi_interconnect_0_M07_AXI_ARVALID;
  wire [12:0]axi_interconnect_0_M07_AXI_AWADDR;
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
  wire axi_timer_0_interrupt;
  wire axi_uart16550_0_ip2intc_irpt;
  wire axi_uart16550_0_sout;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_1_UART_RxD;
  wire axi_uartlite_1_UART_TxD;
  wire axi_uartlite_keyboard_interrupt;
  wire clk_wiz_0_clk_out1;
  wire [7:0]cmos_data_1;
  wire cmos_href_1;
  wire cmos_pclk_1;
  wire cmos_vsync_1;
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
  (* DEBUG = "true" *) wire ov_cmos_char_valid_c_o_0;
  wire ov_cmos_cmos_iic_SCL_I;
  wire ov_cmos_cmos_iic_SCL_O;
  wire ov_cmos_cmos_iic_SCL_T;
  wire ov_cmos_cmos_iic_SDA_I;
  wire ov_cmos_cmos_iic_SDA_O;
  wire ov_cmos_cmos_iic_SDA_T;
  wire [0:0]ov_cmos_cmos_pwdn_TRI_O;
  wire [0:0]ov_cmos_cmos_rst_TRI_O;
  wire ov_cmos_cmos_xclk_o_0;
  wire ov_cmos_iic2intc_irpt;
  wire [3:0]ov_cmos_vga_pBlue_0;
  wire [3:0]ov_cmos_vga_pGreen_0;
  wire ov_cmos_vga_pHSync_0;
  wire [3:0]ov_cmos_vga_pRed_0;
  wire ov_cmos_vga_pVSync_0;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;
  wire sin_0_1;
  wire sys_clock_1;
  wire sys_clock_2;
  wire [0:0]tri_io_buf_0_dout;
  wire [11:0]xlconcat_0_dout;
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
  assign GPIO_lcd[2:0] = LCD_GPIO_lcd;
  assign LCD_spi_rtl_IO0_I = spi_rtl_io0_i;
  assign LCD_spi_rtl_IO1_I = spi_rtl_io1_i;
  assign LCD_spi_rtl_SCK_I = spi_rtl_sck_i;
  assign LCD_spi_rtl_SS_I = spi_rtl_ss_i[1:0];
  assign SWCLKTCK_0_1 = SWCLK;
  assign aux_reset_in_0_1 = nSRST;
  assign axi_gpio_0_GPIO2_TRI_I = dip_switches_4bits_tri_i[3:0];
  assign axi_gpio_0_GPIO_TRI_I = led_4bits_tri_i[3:0];
  assign axi_uartlite_0_UART_RxD = usb_uart_rxd;
  assign axi_uartlite_1_UART_RxD = uart_keyboard_rxd;
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
  assign cmos_xclk_o_0 = ov_cmos_cmos_xclk_o_0;
  assign led_4bits_tri_o[3:0] = axi_gpio_0_GPIO_TRI_O;
  assign led_4bits_tri_t[3:0] = axi_gpio_0_GPIO_TRI_T;
  assign ov_cmos_cmos_iic_SCL_I = cmos_iic_scl_i;
  assign ov_cmos_cmos_iic_SDA_I = cmos_iic_sda_i;
  assign reset_1 = reset;
  assign sin_0_1 = uart_wifi_rx;
  assign spi_rtl_io0_o = LCD_spi_rtl_IO0_O;
  assign spi_rtl_io0_t = LCD_spi_rtl_IO0_T;
  assign spi_rtl_io1_o = LCD_spi_rtl_IO1_O;
  assign spi_rtl_io1_t = LCD_spi_rtl_IO1_T;
  assign spi_rtl_sck_o = LCD_spi_rtl_SCK_O;
  assign spi_rtl_sck_t = LCD_spi_rtl_SCK_T;
  assign spi_rtl_ss_o[1:0] = LCD_spi_rtl_SS_O;
  assign spi_rtl_ss_t = LCD_spi_rtl_SS_T;
  assign sys_clock_1 = sys_clock;
  assign uart_keyboard_txd = axi_uartlite_1_UART_TxD;
  assign uart_wifi_tx = axi_uart16550_0_sout;
  assign usb_uart_txd = axi_uartlite_0_UART_TxD;
  assign vga_pBlue_0[3:0] = ov_cmos_vga_pBlue_0;
  assign vga_pGreen_0[3:0] = ov_cmos_vga_pGreen_0;
  assign vga_pHSync_0 = ov_cmos_vga_pHSync_0;
  assign vga_pRed_0[3:0] = ov_cmos_vga_pRed_0;
  assign vga_pVSync_0 = ov_cmos_vga_pVSync_0;
  Clocks_and_Resets_imp_1WLR2TP Clocks_and_Resets
       (.aux_reset_in(aux_reset_in_0_1),
        .clk_100M(sys_clock_2),
        .clk_cpu(clk_wiz_0_clk_out1),
        .clk_qspi(Clocks_and_Resets_clk_qspi),
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
        .SWCLKTCK(SWCLKTCK_0_1),
        .SWDITMS(tri_io_buf_0_dout),
        .SWDO(Cortex_M3_0_SWDO),
        .SWDOEN(Cortex_M3_0_SWDOEN1),
        .SYSRESETREQ(Cortex_M3_0_SYSRESETREQ),
        .SYSRESETn(Clocks_and_Resets_sysresetn),
        .WLASTC(Cortex_M3_0_CM3_CODE_AXI3_WLAST),
        .WLASTS(Cortex_M3_0_CM3_SYS_AXI3_WLAST),
        .WREADYC(Cortex_M3_0_CM3_CODE_AXI3_WREADY),
        .WREADYS(Cortex_M3_0_CM3_SYS_AXI3_WREADY),
        .WSTRBC(Cortex_M3_0_CM3_CODE_AXI3_WSTRB),
        .WSTRBS(Cortex_M3_0_CM3_SYS_AXI3_WSTRB),
        .WVALIDC(Cortex_M3_0_CM3_CODE_AXI3_WVALID),
        .WVALIDS(Cortex_M3_0_CM3_SYS_AXI3_WVALID));
  LCD_imp_153HW5T LCD
       (.AXI_FULL_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .AXI_FULL_arburst(axi_interconnect_0_M04_AXI_ARBURST),
        .AXI_FULL_arcache(axi_interconnect_0_M04_AXI_ARCACHE),
        .AXI_FULL_arlen(axi_interconnect_0_M04_AXI_ARLEN),
        .AXI_FULL_arlock(axi_interconnect_0_M04_AXI_ARLOCK),
        .AXI_FULL_arprot(axi_interconnect_0_M04_AXI_ARPROT),
        .AXI_FULL_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .AXI_FULL_arsize(axi_interconnect_0_M04_AXI_ARSIZE),
        .AXI_FULL_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .AXI_FULL_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .AXI_FULL_awburst(axi_interconnect_0_M04_AXI_AWBURST),
        .AXI_FULL_awcache(axi_interconnect_0_M04_AXI_AWCACHE),
        .AXI_FULL_awlen(axi_interconnect_0_M04_AXI_AWLEN),
        .AXI_FULL_awlock(axi_interconnect_0_M04_AXI_AWLOCK),
        .AXI_FULL_awprot(axi_interconnect_0_M04_AXI_AWPROT),
        .AXI_FULL_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .AXI_FULL_awsize(axi_interconnect_0_M04_AXI_AWSIZE),
        .AXI_FULL_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .AXI_FULL_bready(axi_interconnect_0_M04_AXI_BREADY),
        .AXI_FULL_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .AXI_FULL_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .AXI_FULL_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .AXI_FULL_rlast(axi_interconnect_0_M04_AXI_RLAST),
        .AXI_FULL_rready(axi_interconnect_0_M04_AXI_RREADY),
        .AXI_FULL_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .AXI_FULL_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .AXI_FULL_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .AXI_FULL_wlast(axi_interconnect_0_M04_AXI_WLAST),
        .AXI_FULL_wready(axi_interconnect_0_M04_AXI_WREADY),
        .AXI_FULL_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .AXI_FULL_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .GPIO_lcd(LCD_GPIO_lcd),
        .S_AXI_araddr(axi_interconnect_0_M05_AXI_ARADDR),
        .S_AXI_arready(axi_interconnect_0_M05_AXI_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_M05_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_M05_AXI_AWADDR),
        .S_AXI_awready(axi_interconnect_0_M05_AXI_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_M05_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_0_M05_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_0_M05_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_M05_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_0_M05_AXI_RDATA),
        .S_AXI_rready(axi_interconnect_0_M05_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_0_M05_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_M05_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_0_M05_AXI_WDATA),
        .S_AXI_wready(axi_interconnect_0_M05_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_M05_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_M05_AXI_WVALID),
        .ext_spi_clk(Clocks_and_Resets_clk_qspi),
        .ip2intc_irpt(LCD_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .spi_rtl_io0_i(LCD_spi_rtl_IO0_I),
        .spi_rtl_io0_o(LCD_spi_rtl_IO0_O),
        .spi_rtl_io0_t(LCD_spi_rtl_IO0_T),
        .spi_rtl_io1_i(LCD_spi_rtl_IO1_I),
        .spi_rtl_io1_o(LCD_spi_rtl_IO1_O),
        .spi_rtl_io1_t(LCD_spi_rtl_IO1_T),
        .spi_rtl_sck_i(LCD_spi_rtl_SCK_I),
        .spi_rtl_sck_o(LCD_spi_rtl_SCK_O),
        .spi_rtl_sck_t(LCD_spi_rtl_SCK_T),
        .spi_rtl_ss_i(LCD_spi_rtl_SS_I),
        .spi_rtl_ss_o(LCD_spi_rtl_SS_O),
        .spi_rtl_ss_t(LCD_spi_rtl_SS_T));
  m3_for_arty_a7_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR[11:0]),
        .s_axi_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .s_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .s_axi_arsize(axi_protocol_convert_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR[11:0]),
        .s_axi_awburst(axi_protocol_convert_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_protocol_convert_0_M_AXI_AWCACHE),
        .s_axi_awlen(axi_protocol_convert_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_protocol_convert_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .s_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .s_axi_awsize(axi_protocol_convert_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .s_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .s_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .s_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .s_axi_rlast(axi_protocol_convert_0_M_AXI_RLAST),
        .s_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .s_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .s_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .s_axi_wlast(axi_protocol_convert_0_M_AXI_WLAST),
        .s_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID));
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
        .M03_AXI_arburst(axi_interconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(axi_interconnect_0_M03_AXI_ARCACHE),
        .M03_AXI_arlen(axi_interconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(axi_interconnect_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arqos(axi_interconnect_0_M03_AXI_ARQOS),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(axi_interconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_aruser(axi_interconnect_0_M03_AXI_ARUSER),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(axi_interconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(axi_interconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awlen(axi_interconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(axi_interconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awqos(axi_interconnect_0_M03_AXI_AWQOS),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(axi_interconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awuser(axi_interconnect_0_M03_AXI_AWUSER),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rlast(axi_interconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(axi_interconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out1),
        .M04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arburst(axi_interconnect_0_M04_AXI_ARBURST),
        .M04_AXI_arcache(axi_interconnect_0_M04_AXI_ARCACHE),
        .M04_AXI_arlen(axi_interconnect_0_M04_AXI_ARLEN),
        .M04_AXI_arlock(axi_interconnect_0_M04_AXI_ARLOCK),
        .M04_AXI_arprot(axi_interconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arsize(axi_interconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awburst(axi_interconnect_0_M04_AXI_AWBURST),
        .M04_AXI_awcache(axi_interconnect_0_M04_AXI_AWCACHE),
        .M04_AXI_awlen(axi_interconnect_0_M04_AXI_AWLEN),
        .M04_AXI_awlock(axi_interconnect_0_M04_AXI_AWLOCK),
        .M04_AXI_awprot(axi_interconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awsize(axi_interconnect_0_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rlast(axi_interconnect_0_M04_AXI_RLAST),
        .M04_AXI_rready(axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wlast(axi_interconnect_0_M04_AXI_WLAST),
        .M04_AXI_wready(axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out1),
        .M05_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M05_AXI_araddr(axi_interconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_0_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_0_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_0_M05_AXI_WVALID),
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
  m3_for_arty_a7_axi_protocol_convert_0_1 axi_protocol_convert_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(proc_sys_reset_1_interconnect_aresetn),
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
        .s_axi_araddr(Cortex_M3_0_CM3_CODE_AXI3_ARADDR),
        .s_axi_arburst(Cortex_M3_0_CM3_CODE_AXI3_ARBURST),
        .s_axi_arcache(Cortex_M3_0_CM3_CODE_AXI3_ARCACHE),
        .s_axi_arlen(Cortex_M3_0_CM3_CODE_AXI3_ARLEN),
        .s_axi_arlock(Cortex_M3_0_CM3_CODE_AXI3_ARLOCK),
        .s_axi_arprot(Cortex_M3_0_CM3_CODE_AXI3_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(Cortex_M3_0_CM3_CODE_AXI3_ARREADY),
        .s_axi_arsize(Cortex_M3_0_CM3_CODE_AXI3_ARSIZE),
        .s_axi_arvalid(Cortex_M3_0_CM3_CODE_AXI3_ARVALID),
        .s_axi_awaddr(Cortex_M3_0_CM3_CODE_AXI3_AWADDR),
        .s_axi_awburst(Cortex_M3_0_CM3_CODE_AXI3_AWBURST),
        .s_axi_awcache(Cortex_M3_0_CM3_CODE_AXI3_AWCACHE),
        .s_axi_awlen(Cortex_M3_0_CM3_CODE_AXI3_AWLEN),
        .s_axi_awlock(Cortex_M3_0_CM3_CODE_AXI3_AWLOCK),
        .s_axi_awprot(Cortex_M3_0_CM3_CODE_AXI3_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(Cortex_M3_0_CM3_CODE_AXI3_AWREADY),
        .s_axi_awsize(Cortex_M3_0_CM3_CODE_AXI3_AWSIZE),
        .s_axi_awvalid(Cortex_M3_0_CM3_CODE_AXI3_AWVALID),
        .s_axi_bready(Cortex_M3_0_CM3_CODE_AXI3_BREADY),
        .s_axi_bresp(Cortex_M3_0_CM3_CODE_AXI3_BRESP),
        .s_axi_bvalid(Cortex_M3_0_CM3_CODE_AXI3_BVALID),
        .s_axi_rdata(Cortex_M3_0_CM3_CODE_AXI3_RDATA),
        .s_axi_rlast(Cortex_M3_0_CM3_CODE_AXI3_RLAST),
        .s_axi_rready(Cortex_M3_0_CM3_CODE_AXI3_RREADY),
        .s_axi_rresp(Cortex_M3_0_CM3_CODE_AXI3_RRESP),
        .s_axi_rvalid(Cortex_M3_0_CM3_CODE_AXI3_RVALID),
        .s_axi_wdata(Cortex_M3_0_CM3_CODE_AXI3_WDATA),
        .s_axi_wlast(Cortex_M3_0_CM3_CODE_AXI3_WLAST),
        .s_axi_wready(Cortex_M3_0_CM3_CODE_AXI3_WREADY),
        .s_axi_wstrb(Cortex_M3_0_CM3_CODE_AXI3_WSTRB),
        .s_axi_wvalid(Cortex_M3_0_CM3_CODE_AXI3_WVALID));
  m3_for_arty_a7_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[4:0]),
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
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID));
  m3_for_arty_a7_axi_uart16550_0_0 axi_uart16550_0
       (.ctsn(1'b1),
        .dcdn(1'b1),
        .dsrn(1'b1),
        .freeze(1'b0),
        .ip2intc_irpt(axi_uart16550_0_ip2intc_irpt),
        .rin(1'b1),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M07_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M07_AXI_AWADDR),
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
        .sin(sin_0_1),
        .sout(axi_uart16550_0_sout));
  m3_for_arty_a7_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[3:0]),
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
        .tx(axi_uartlite_0_UART_TxD));
  m3_for_arty_a7_axi_uartlite_1_0 axi_uartlite_keyboard
       (.interrupt(axi_uartlite_keyboard_interrupt),
        .rx(axi_uartlite_1_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M06_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M06_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_0_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M06_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M06_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M06_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M06_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M06_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M06_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M06_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M06_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M06_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M06_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M06_AXI_WVALID),
        .tx(axi_uartlite_1_UART_TxD));
  m3_for_arty_a7_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST));
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
        .S00_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .S00_AXI_arburst(axi_interconnect_0_M03_AXI_ARBURST),
        .S00_AXI_arcache(axi_interconnect_0_M03_AXI_ARCACHE),
        .S00_AXI_arlen(axi_interconnect_0_M03_AXI_ARLEN),
        .S00_AXI_arlock(axi_interconnect_0_M03_AXI_ARLOCK),
        .S00_AXI_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .S00_AXI_arqos(axi_interconnect_0_M03_AXI_ARQOS),
        .S00_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .S00_AXI_arsize(axi_interconnect_0_M03_AXI_ARSIZE),
        .S00_AXI_aruser(axi_interconnect_0_M03_AXI_ARUSER),
        .S00_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .S00_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .S00_AXI_awburst(axi_interconnect_0_M03_AXI_AWBURST),
        .S00_AXI_awcache(axi_interconnect_0_M03_AXI_AWCACHE),
        .S00_AXI_awlen(axi_interconnect_0_M03_AXI_AWLEN),
        .S00_AXI_awlock(axi_interconnect_0_M03_AXI_AWLOCK),
        .S00_AXI_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .S00_AXI_awqos(axi_interconnect_0_M03_AXI_AWQOS),
        .S00_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .S00_AXI_awsize(axi_interconnect_0_M03_AXI_AWSIZE),
        .S00_AXI_awuser(axi_interconnect_0_M03_AXI_AWUSER),
        .S00_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .S00_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .S00_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .S00_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .S00_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .S00_AXI_rlast(axi_interconnect_0_M03_AXI_RLAST),
        .S00_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .S00_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .S00_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .S00_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .S00_AXI_wlast(axi_interconnect_0_M03_AXI_WLAST),
        .S00_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .S00_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .S00_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .axi_resetn(proc_sys_reset_1_interconnect_aresetn),
        .char_valid_c_o_0(ov_cmos_char_valid_c_o_0),
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
        .cmos_xclk_o_0(ov_cmos_cmos_xclk_o_0),
        .iic2intc_irpt(ov_cmos_iic2intc_irpt),
        .interconnect_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .reset(reset_1),
        .s_axi_lite_aclk(clk_wiz_0_clk_out1),
        .sys_clock(sys_clock_2),
        .vga_pBlue_0(ov_cmos_vga_pBlue_0),
        .vga_pGreen_0(ov_cmos_vga_pGreen_0),
        .vga_pHSync_0(ov_cmos_vga_pHSync_0),
        .vga_pRed_0(ov_cmos_vga_pRed_0),
        .vga_pVSync_0(ov_cmos_vga_pVSync_0));
  m3_for_arty_a7_tri_io_buf_0_0 tri_io_buf_0
       (.din(Cortex_M3_0_SWDO),
        .dout(tri_io_buf_0_dout),
        .io_pad(SDWIO[0]),
        .oen_N(Cortex_M3_0_SWDOEN));
  m3_for_arty_a7_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Cortex_M3_0_SWDOEN1),
        .Res(Cortex_M3_0_SWDOEN));
  m3_for_arty_a7_xlconcat_0_0 xlconcat_0
       (.In0(axi_uartlite_0_interrupt),
        .In1(axi_gpio_0_ip2intc_irpt),
        .In10(axi_timer_0_interrupt),
        .In11(LCD_ip2intc_irpt),
        .In2(axi_uartlite_keyboard_interrupt),
        .In3(axi_uart16550_0_ip2intc_irpt),
        .In4(1'b0),
        .In5(ov_cmos_char_valid_c_o_0),
        .In6(1'b0),
        .In7(xlconstant_1_dout),
        .In8(ov_cmos_iic2intc_irpt),
        .In9(1'b0),
        .dout(xlconcat_0_dout));
  m3_for_arty_a7_xlconcat_1_0 xlconcat_1
       (.In0(xlconstant_1_dout),
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
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_aruser,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awqos,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awuser,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arburst,
    M04_AXI_arcache,
    M04_AXI_arlen,
    M04_AXI_arlock,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arsize,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awburst,
    M04_AXI_awcache,
    M04_AXI_awlen,
    M04_AXI_awlock,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awsize,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rlast,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wlast,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
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
  output [31:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  input [0:0]M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output [0:0]M03_AXI_aruser;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  output [3:0]M03_AXI_awqos;
  input [0:0]M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output [0:0]M03_AXI_awuser;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  input [0:0]M03_AXI_rlast;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  output [0:0]M03_AXI_wlast;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [1:0]M04_AXI_arburst;
  output [3:0]M04_AXI_arcache;
  output [7:0]M04_AXI_arlen;
  output M04_AXI_arlock;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output [2:0]M04_AXI_arsize;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [1:0]M04_AXI_awburst;
  output [3:0]M04_AXI_awcache;
  output [7:0]M04_AXI_awlen;
  output M04_AXI_awlock;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output [2:0]M04_AXI_awsize;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  input M04_AXI_rlast;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  output M04_AXI_wlast;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
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
  output [12:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [12:0]M07_AXI_awaddr;
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
  wire [31:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m03_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m03_couplers_to_axi_interconnect_0_ARQOS;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARUSER;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m03_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m03_couplers_to_axi_interconnect_0_AWQOS;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWUSER;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m04_couplers_to_axi_interconnect_0_ARLEN;
  wire m04_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARPROT;
  wire m04_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARSIZE;
  wire m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m04_couplers_to_axi_interconnect_0_AWLEN;
  wire m04_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWPROT;
  wire m04_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWSIZE;
  wire m04_couplers_to_axi_interconnect_0_AWVALID;
  wire m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire m04_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire m04_couplers_to_axi_interconnect_0_RLAST;
  wire m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire m04_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire m04_couplers_to_axi_interconnect_0_WLAST;
  wire m04_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire m04_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_ARADDR;
  wire m05_couplers_to_axi_interconnect_0_ARREADY;
  wire m05_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_AWADDR;
  wire m05_couplers_to_axi_interconnect_0_AWREADY;
  wire m05_couplers_to_axi_interconnect_0_AWVALID;
  wire m05_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_BRESP;
  wire m05_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_RDATA;
  wire m05_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_RRESP;
  wire m05_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_WDATA;
  wire m05_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_WSTRB;
  wire m05_couplers_to_axi_interconnect_0_WVALID;
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
  wire [12:0]m07_couplers_to_axi_interconnect_0_ARADDR;
  wire m07_couplers_to_axi_interconnect_0_ARREADY;
  wire m07_couplers_to_axi_interconnect_0_ARVALID;
  wire [12:0]m07_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARUSER;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWUSER;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [0:0]xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
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
  wire xbar_to_m05_couplers_ARREADY;
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
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
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
  wire [31:0]NLW_xbar_m_axi_arqos_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_awqos_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_awregion_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_awuser_UNCONNECTED;

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
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_axi_interconnect_0_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_axi_interconnect_0_ARCACHE;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_axi_interconnect_0_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_axi_interconnect_0_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_0_ARPROT;
  assign M03_AXI_arqos[3:0] = m03_couplers_to_axi_interconnect_0_ARQOS;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_axi_interconnect_0_ARSIZE;
  assign M03_AXI_aruser[0] = m03_couplers_to_axi_interconnect_0_ARUSER;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_axi_interconnect_0_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_axi_interconnect_0_AWCACHE;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_axi_interconnect_0_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_axi_interconnect_0_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_0_AWPROT;
  assign M03_AXI_awqos[3:0] = m03_couplers_to_axi_interconnect_0_AWQOS;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_axi_interconnect_0_AWSIZE;
  assign M03_AXI_awuser[0] = m03_couplers_to_axi_interconnect_0_AWUSER;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wlast[0] = m03_couplers_to_axi_interconnect_0_WLAST;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arburst[1:0] = m04_couplers_to_axi_interconnect_0_ARBURST;
  assign M04_AXI_arcache[3:0] = m04_couplers_to_axi_interconnect_0_ARCACHE;
  assign M04_AXI_arlen[7:0] = m04_couplers_to_axi_interconnect_0_ARLEN;
  assign M04_AXI_arlock = m04_couplers_to_axi_interconnect_0_ARLOCK;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_interconnect_0_ARPROT;
  assign M04_AXI_arsize[2:0] = m04_couplers_to_axi_interconnect_0_ARSIZE;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awburst[1:0] = m04_couplers_to_axi_interconnect_0_AWBURST;
  assign M04_AXI_awcache[3:0] = m04_couplers_to_axi_interconnect_0_AWCACHE;
  assign M04_AXI_awlen[7:0] = m04_couplers_to_axi_interconnect_0_AWLEN;
  assign M04_AXI_awlock = m04_couplers_to_axi_interconnect_0_AWLOCK;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_interconnect_0_AWPROT;
  assign M04_AXI_awsize[2:0] = m04_couplers_to_axi_interconnect_0_AWSIZE;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wlast = m04_couplers_to_axi_interconnect_0_WLAST;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_0_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_0_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_0_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_0_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_0_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_0_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_0_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_0_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_0_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_interconnect_0_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_0_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_interconnect_0_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_interconnect_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_0_WVALID;
  assign M07_AXI_araddr[12:0] = m07_couplers_to_axi_interconnect_0_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_interconnect_0_ARVALID;
  assign M07_AXI_awaddr[12:0] = m07_couplers_to_axi_interconnect_0_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_interconnect_0_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_interconnect_0_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_interconnect_0_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_interconnect_0_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_interconnect_0_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_interconnect_0_WVALID;
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
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RLAST = M03_AXI_rlast[0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_0_RLAST = M04_AXI_rlast;
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_interconnect_0_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_0_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_0_WREADY = M05_AXI_wready;
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
        .M_AXI_arburst(m03_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m03_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m03_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m03_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m03_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m03_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_aruser(m03_couplers_to_axi_interconnect_0_ARUSER),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m03_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m03_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m03_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m03_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m03_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m03_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awuser(m03_couplers_to_axi_interconnect_0_AWUSER),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m03_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m03_couplers_to_axi_interconnect_0_WLAST),
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
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m03_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m03_couplers_AWUSER),
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
        .M_AXI_arburst(m04_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m04_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m04_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m04_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m04_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m04_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m04_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m04_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m04_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m04_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m04_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m04_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m04_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m04_couplers_to_axi_interconnect_0_WLAST),
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
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
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
        .M_AXI_arready(m05_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_0_WDATA),
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
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,NLW_xbar_m_axi_arqos_UNCONNECTED[19:16],xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[19:12],xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser({xbar_to_m03_couplers_ARUSER,NLW_xbar_m_axi_aruser_UNCONNECTED[2:0]}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,NLW_xbar_m_axi_awqos_UNCONNECTED[19:16],xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[19:12],xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser({xbar_to_m03_couplers_AWUSER,NLW_xbar_m_axi_awuser_UNCONNECTED[2:0]}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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

module m3_for_arty_a7_axi_interconnect_0_2
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
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
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
  output [6:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [6:0]M00_AXI_awaddr;
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
  output [5:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [5:0]M01_AXI_awaddr;
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
  output [6:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [6:0]M02_AXI_awaddr;
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
  output [5:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [5:0]M03_AXI_awaddr;
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
  output [4:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [4:0]M04_AXI_awaddr;
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
  output [5:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [5:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [3:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [3:0]M06_AXI_awaddr;
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
  output [8:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [8:0]M07_AXI_awaddr;
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

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
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
  wire [6:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m00_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [5:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [5:0]m01_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [6:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m02_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [5:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [5:0]m03_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [4:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire m04_couplers_to_axi_interconnect_0_ARREADY;
  wire m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [4:0]m04_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [5:0]m05_couplers_to_axi_interconnect_0_ARADDR;
  wire m05_couplers_to_axi_interconnect_0_ARREADY;
  wire m05_couplers_to_axi_interconnect_0_ARVALID;
  wire [5:0]m05_couplers_to_axi_interconnect_0_AWADDR;
  wire m05_couplers_to_axi_interconnect_0_AWREADY;
  wire m05_couplers_to_axi_interconnect_0_AWVALID;
  wire m05_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_BRESP;
  wire m05_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_RDATA;
  wire m05_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_RRESP;
  wire m05_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_0_WDATA;
  wire m05_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m05_couplers_to_axi_interconnect_0_WSTRB;
  wire m05_couplers_to_axi_interconnect_0_WVALID;
  wire [3:0]m06_couplers_to_axi_interconnect_0_ARADDR;
  wire m06_couplers_to_axi_interconnect_0_ARREADY;
  wire m06_couplers_to_axi_interconnect_0_ARVALID;
  wire [3:0]m06_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [8:0]m07_couplers_to_axi_interconnect_0_ARADDR;
  wire m07_couplers_to_axi_interconnect_0_ARREADY;
  wire m07_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m07_couplers_to_axi_interconnect_0_AWADDR;
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
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
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
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
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
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
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
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[6:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[6:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[5:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[5:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[6:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[6:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[5:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[5:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[4:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[4:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_interconnect_0_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[5:0] = m05_couplers_to_axi_interconnect_0_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_0_ARVALID;
  assign M05_AXI_awaddr[5:0] = m05_couplers_to_axi_interconnect_0_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_0_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_0_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_0_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_interconnect_0_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_0_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[3:0] = m06_couplers_to_axi_interconnect_0_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_0_ARVALID;
  assign M06_AXI_awaddr[3:0] = m06_couplers_to_axi_interconnect_0_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_interconnect_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_0_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[8:0] = m07_couplers_to_axi_interconnect_0_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_interconnect_0_ARVALID;
  assign M07_AXI_awaddr[8:0] = m07_couplers_to_axi_interconnect_0_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_interconnect_0_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_interconnect_0_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_interconnect_0_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_interconnect_0_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_interconnect_0_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
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
  assign m05_couplers_to_axi_interconnect_0_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_0_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_0_WREADY = M05_AXI_wready;
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
  m00_couplers_imp_1QMO27N m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
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
  m01_couplers_imp_QT2NTG m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
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
  m02_couplers_imp_FOHTFG m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
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
  m03_couplers_imp_1FIE3A3 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
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
  m04_couplers_imp_11XVXPO m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_2NYJ4B m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_MMBBKZ m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1LVX4JO m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
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
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_96RCXY s00_couplers
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
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
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
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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

module m3_for_arty_a7_axi_interconnect_0_3
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
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_aruser,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awqos,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awuser,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arburst,
    M04_AXI_arcache,
    M04_AXI_arlen,
    M04_AXI_arlock,
    M04_AXI_arprot,
    M04_AXI_arqos,
    M04_AXI_arready,
    M04_AXI_arregion,
    M04_AXI_arsize,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awburst,
    M04_AXI_awcache,
    M04_AXI_awlen,
    M04_AXI_awlock,
    M04_AXI_awprot,
    M04_AXI_awqos,
    M04_AXI_awready,
    M04_AXI_awregion,
    M04_AXI_awsize,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rlast,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wlast,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
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
    M06_AXI_wvalid,
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
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
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
  output [31:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  input M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output [0:0]M03_AXI_aruser;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  output [3:0]M03_AXI_awqos;
  input M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output [0:0]M03_AXI_awuser;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  output M03_AXI_wlast;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [1:0]M04_AXI_arburst;
  output [3:0]M04_AXI_arcache;
  output [7:0]M04_AXI_arlen;
  output [0:0]M04_AXI_arlock;
  output [2:0]M04_AXI_arprot;
  output [3:0]M04_AXI_arqos;
  input [0:0]M04_AXI_arready;
  output [3:0]M04_AXI_arregion;
  output [2:0]M04_AXI_arsize;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [1:0]M04_AXI_awburst;
  output [3:0]M04_AXI_awcache;
  output [7:0]M04_AXI_awlen;
  output [0:0]M04_AXI_awlock;
  output [2:0]M04_AXI_awprot;
  output [3:0]M04_AXI_awqos;
  input [0:0]M04_AXI_awready;
  output [3:0]M04_AXI_awregion;
  output [2:0]M04_AXI_awsize;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  input [0:0]M04_AXI_rlast;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  output [0:0]M04_AXI_wlast;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output M05_AXI_wvalid;
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
  output M06_AXI_wvalid;
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
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
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

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARUSER;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWUSER;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_1_to_s00_couplers_RLAST;
  wire [0:0]axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_1_to_s00_couplers_WLAST;
  wire [0:0]axi_interconnect_1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_1_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire m00_couplers_to_axi_interconnect_1_ARREADY;
  wire m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire m00_couplers_to_axi_interconnect_1_AWREADY;
  wire m00_couplers_to_axi_interconnect_1_AWVALID;
  wire m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire m00_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire m00_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire m00_couplers_to_axi_interconnect_1_WREADY;
  wire m00_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_ARADDR;
  wire m01_couplers_to_axi_interconnect_1_ARREADY;
  wire m01_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_AWADDR;
  wire m01_couplers_to_axi_interconnect_1_AWREADY;
  wire m01_couplers_to_axi_interconnect_1_AWVALID;
  wire m01_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_BRESP;
  wire m01_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_RDATA;
  wire m01_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_RRESP;
  wire m01_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_WDATA;
  wire m01_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_1_WSTRB;
  wire m01_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_ARADDR;
  wire m02_couplers_to_axi_interconnect_1_ARREADY;
  wire m02_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_AWADDR;
  wire m02_couplers_to_axi_interconnect_1_AWREADY;
  wire m02_couplers_to_axi_interconnect_1_AWVALID;
  wire m02_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_1_BRESP;
  wire m02_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_RDATA;
  wire m02_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_1_RRESP;
  wire m02_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_1_WDATA;
  wire m02_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_1_WSTRB;
  wire m02_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_1_ARCACHE;
  wire [7:0]m03_couplers_to_axi_interconnect_1_ARLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]m03_couplers_to_axi_interconnect_1_ARQOS;
  wire m03_couplers_to_axi_interconnect_1_ARREADY;
  wire [2:0]m03_couplers_to_axi_interconnect_1_ARSIZE;
  wire [0:0]m03_couplers_to_axi_interconnect_1_ARUSER;
  wire m03_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_1_AWCACHE;
  wire [7:0]m03_couplers_to_axi_interconnect_1_AWLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]m03_couplers_to_axi_interconnect_1_AWQOS;
  wire m03_couplers_to_axi_interconnect_1_AWREADY;
  wire [2:0]m03_couplers_to_axi_interconnect_1_AWSIZE;
  wire [0:0]m03_couplers_to_axi_interconnect_1_AWUSER;
  wire m03_couplers_to_axi_interconnect_1_AWVALID;
  wire m03_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_1_BRESP;
  wire m03_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_RDATA;
  wire m03_couplers_to_axi_interconnect_1_RLAST;
  wire m03_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_1_RRESP;
  wire m03_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_1_WDATA;
  wire m03_couplers_to_axi_interconnect_1_WLAST;
  wire m03_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_1_WSTRB;
  wire m03_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_1_ARCACHE;
  wire [7:0]m04_couplers_to_axi_interconnect_1_ARLEN;
  wire [0:0]m04_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]m04_couplers_to_axi_interconnect_1_ARQOS;
  wire [0:0]m04_couplers_to_axi_interconnect_1_ARREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_1_ARREGION;
  wire [2:0]m04_couplers_to_axi_interconnect_1_ARSIZE;
  wire [0:0]m04_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_1_AWCACHE;
  wire [7:0]m04_couplers_to_axi_interconnect_1_AWLEN;
  wire [0:0]m04_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]m04_couplers_to_axi_interconnect_1_AWQOS;
  wire [0:0]m04_couplers_to_axi_interconnect_1_AWREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_1_AWREGION;
  wire [2:0]m04_couplers_to_axi_interconnect_1_AWSIZE;
  wire [0:0]m04_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m04_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_1_RLAST;
  wire [0:0]m04_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_1_WLAST;
  wire [0:0]m04_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_1_WSTRB;
  wire [0:0]m04_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_ARADDR;
  wire m05_couplers_to_axi_interconnect_1_ARREADY;
  wire m05_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_AWADDR;
  wire m05_couplers_to_axi_interconnect_1_AWREADY;
  wire m05_couplers_to_axi_interconnect_1_AWVALID;
  wire m05_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_1_BRESP;
  wire m05_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_RDATA;
  wire m05_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_1_RRESP;
  wire m05_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m05_couplers_to_axi_interconnect_1_WDATA;
  wire m05_couplers_to_axi_interconnect_1_WREADY;
  wire m05_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_1_ARADDR;
  wire m06_couplers_to_axi_interconnect_1_ARREADY;
  wire m06_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_1_AWADDR;
  wire m06_couplers_to_axi_interconnect_1_AWREADY;
  wire m06_couplers_to_axi_interconnect_1_AWVALID;
  wire m06_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_1_BRESP;
  wire m06_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_1_RDATA;
  wire m06_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_1_RRESP;
  wire m06_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m06_couplers_to_axi_interconnect_1_WDATA;
  wire m06_couplers_to_axi_interconnect_1_WREADY;
  wire m06_couplers_to_axi_interconnect_1_WVALID;
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
  wire [0:0]s00_couplers_to_xbar_ARVALID;
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
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
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
  wire [3:3]xbar_to_m03_couplers_ARUSER;
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
  wire [3:3]xbar_to_m03_couplers_AWUSER;
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
  wire [0:0]xbar_to_m04_couplers_ARREADY;
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
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [0:0]xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
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
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
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
  wire [6:0]NLW_xbar_m_axi_aruser_UNCONNECTED;
  wire [6:0]NLW_xbar_m_axi_awuser_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_1_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_1_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_1_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_1_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_1_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_1_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_1_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_1_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_1_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_1_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_1_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_1_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_axi_interconnect_1_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_axi_interconnect_1_ARCACHE;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_axi_interconnect_1_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_axi_interconnect_1_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_1_ARPROT;
  assign M03_AXI_arqos[3:0] = m03_couplers_to_axi_interconnect_1_ARQOS;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_axi_interconnect_1_ARSIZE;
  assign M03_AXI_aruser[0] = m03_couplers_to_axi_interconnect_1_ARUSER;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_1_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_1_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_axi_interconnect_1_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_axi_interconnect_1_AWCACHE;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_axi_interconnect_1_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_axi_interconnect_1_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_1_AWPROT;
  assign M03_AXI_awqos[3:0] = m03_couplers_to_axi_interconnect_1_AWQOS;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_axi_interconnect_1_AWSIZE;
  assign M03_AXI_awuser[0] = m03_couplers_to_axi_interconnect_1_AWUSER;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_1_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_1_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_1_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_1_WDATA;
  assign M03_AXI_wlast = m03_couplers_to_axi_interconnect_1_WLAST;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_1_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_1_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_1_ARADDR;
  assign M04_AXI_arburst[1:0] = m04_couplers_to_axi_interconnect_1_ARBURST;
  assign M04_AXI_arcache[3:0] = m04_couplers_to_axi_interconnect_1_ARCACHE;
  assign M04_AXI_arlen[7:0] = m04_couplers_to_axi_interconnect_1_ARLEN;
  assign M04_AXI_arlock[0] = m04_couplers_to_axi_interconnect_1_ARLOCK;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_interconnect_1_ARPROT;
  assign M04_AXI_arqos[3:0] = m04_couplers_to_axi_interconnect_1_ARQOS;
  assign M04_AXI_arregion[3:0] = m04_couplers_to_axi_interconnect_1_ARREGION;
  assign M04_AXI_arsize[2:0] = m04_couplers_to_axi_interconnect_1_ARSIZE;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_interconnect_1_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_1_AWADDR;
  assign M04_AXI_awburst[1:0] = m04_couplers_to_axi_interconnect_1_AWBURST;
  assign M04_AXI_awcache[3:0] = m04_couplers_to_axi_interconnect_1_AWCACHE;
  assign M04_AXI_awlen[7:0] = m04_couplers_to_axi_interconnect_1_AWLEN;
  assign M04_AXI_awlock[0] = m04_couplers_to_axi_interconnect_1_AWLOCK;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_interconnect_1_AWPROT;
  assign M04_AXI_awqos[3:0] = m04_couplers_to_axi_interconnect_1_AWQOS;
  assign M04_AXI_awregion[3:0] = m04_couplers_to_axi_interconnect_1_AWREGION;
  assign M04_AXI_awsize[2:0] = m04_couplers_to_axi_interconnect_1_AWSIZE;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_interconnect_1_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_interconnect_1_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_interconnect_1_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_1_WDATA;
  assign M04_AXI_wlast[0] = m04_couplers_to_axi_interconnect_1_WLAST;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_1_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_interconnect_1_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_interconnect_1_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_interconnect_1_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_interconnect_1_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_interconnect_1_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_interconnect_1_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_interconnect_1_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_interconnect_1_WDATA;
  assign M05_AXI_wvalid = m05_couplers_to_axi_interconnect_1_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_interconnect_1_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_interconnect_1_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_interconnect_1_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_interconnect_1_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_interconnect_1_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_interconnect_1_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_interconnect_1_WDATA;
  assign M06_AXI_wvalid = m06_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast[0] = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_1_to_s00_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_1_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_1_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_1_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_1_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_1_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_1_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_1_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_1_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_1_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_1_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_1_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_1_RLAST = M03_AXI_rlast;
  assign m03_couplers_to_axi_interconnect_1_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_1_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_1_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_interconnect_1_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_interconnect_1_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_interconnect_1_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_1_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_interconnect_1_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_1_RLAST = M04_AXI_rlast[0];
  assign m04_couplers_to_axi_interconnect_1_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_1_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_interconnect_1_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_interconnect_1_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_interconnect_1_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_interconnect_1_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_1_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_interconnect_1_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_interconnect_1_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_1_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_interconnect_1_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_interconnect_1_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_interconnect_1_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_interconnect_1_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_interconnect_1_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_interconnect_1_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_interconnect_1_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_interconnect_1_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_interconnect_1_WREADY = M06_AXI_wready;
  m00_couplers_imp_177L6YV m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
  m01_couplers_imp_7DOYAO m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
  m02_couplers_imp_IGJWY0 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
  m03_couplers_imp_1IA59DB m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(m03_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(m03_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arlen(m03_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(m03_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(m03_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arsize(m03_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_aruser(m03_couplers_to_axi_interconnect_1_ARUSER),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(m03_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(m03_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awlen(m03_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(m03_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(m03_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awsize(m03_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awuser(m03_couplers_to_axi_interconnect_1_AWUSER),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rlast(m03_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(m03_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
        .S_AXI_aruser(xbar_to_m03_couplers_ARUSER),
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
        .S_AXI_awuser(xbar_to_m03_couplers_AWUSER),
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
  m04_couplers_imp_1VCJU8O m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(m04_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(m04_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arlen(m04_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(m04_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(m04_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(m04_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arregion(m04_couplers_to_axi_interconnect_1_ARREGION),
        .M_AXI_arsize(m04_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(m04_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(m04_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awlen(m04_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(m04_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(m04_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(m04_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awregion(m04_couplers_to_axi_interconnect_1_AWREGION),
        .M_AXI_awsize(m04_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rlast(m04_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(m04_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
  m05_couplers_imp_W2XZB3 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
  m06_couplers_imp_C2K8UV m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wvalid(m06_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
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
  s00_couplers_imp_P9Z27M s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
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
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_1_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_1_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_1_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
  m3_for_arty_a7_xbar_3 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser({xbar_to_m03_couplers_ARUSER,NLW_xbar_m_axi_aruser_UNCONNECTED[2:0]}),
        .m_axi_arvalid({xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser({xbar_to_m03_couplers_AWUSER,NLW_xbar_m_axi_awuser_UNCONNECTED[2:0]}),
        .m_axi_awvalid({xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
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
    S00_AXI_awqos,
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
    S00_AXI_wvalid,
    axi_resetn,
    char_valid_c_o_0,
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
    cmos_xclk_o_0,
    iic2intc_irpt,
    interconnect_aresetn,
    reset,
    s_axi_lite_aclk,
    sys_clock,
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
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
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
  input axi_resetn;
  output char_valid_c_o_0;
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
  output cmos_xclk_o_0;
  output iic2intc_irpt;
  input interconnect_aresetn;
  input reset;
  input s_axi_lite_aclk;
  input sys_clock;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  wire CLK_i_1;
  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire [0:0]Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire [0:0]Conn1_ARUSER;
  wire [0:0]Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire [0:0]Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire [0:0]Conn1_AWUSER;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire [0:0]Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RLAST;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire [0:0]Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire [0:0]Conn1_WLAST;
  wire [0:0]Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
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
  (* CONN_BUS_INFO = "Conn xilinx.com:interface:vid_io:1.0 None ACTIVE_VIDEO" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire Conn_ACTIVE_VIDEO;
  (* CONN_BUS_INFO = "Conn xilinx.com:interface:vid_io:1.0 None DATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]Conn_DATA;
  (* CONN_BUS_INFO = "Conn xilinx.com:interface:vid_io:1.0 None HSYNC" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire Conn_HSYNC;
  (* CONN_BUS_INFO = "Conn xilinx.com:interface:vid_io:1.0 None VSYNC" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire Conn_VSYNC;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]Image_Process_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TDEST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]Image_Process_M_AXIS_TDEST;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]Image_Process_M_AXIS_TID;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]Image_Process_M_AXIS_TKEEP;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]Image_Process_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:1]Image_Process_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]Image_Process_M_AXIS_TSTRB;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]Image_Process_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "Image_Process_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]Image_Process_M_AXIS_TVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire Image_Process_char_valid_c_o_0;
  wire M04_ARESETN_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [3:0]S00_AXI_1_ARREGION;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire [0:0]S00_AXI_1_AWREADY;
  wire [3:0]S00_AXI_1_AWREGION;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire [0:0]aresetn_1;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_RDATA;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire axi_interconnect_1_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_AWADDR;
  wire axi_interconnect_1_M01_AXI_AWREADY;
  wire axi_interconnect_1_M01_AXI_AWVALID;
  wire axi_interconnect_1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_BRESP;
  wire axi_interconnect_1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_RDATA;
  wire axi_interconnect_1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_RRESP;
  wire axi_interconnect_1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_WDATA;
  wire axi_interconnect_1_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M01_AXI_WSTRB;
  wire axi_interconnect_1_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_ARADDR;
  wire axi_interconnect_1_M02_AXI_ARREADY;
  wire axi_interconnect_1_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_AWADDR;
  wire axi_interconnect_1_M02_AXI_AWREADY;
  wire axi_interconnect_1_M02_AXI_AWVALID;
  wire axi_interconnect_1_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M02_AXI_BRESP;
  wire axi_interconnect_1_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_RDATA;
  wire axi_interconnect_1_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M02_AXI_RRESP;
  wire axi_interconnect_1_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M02_AXI_WDATA;
  wire axi_interconnect_1_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M02_AXI_WSTRB;
  wire axi_interconnect_1_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M03_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M03_AXI_ARCACHE;
  wire [7:0]axi_interconnect_1_M03_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M03_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M03_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M03_AXI_ARQOS;
  wire axi_interconnect_1_M03_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M03_AXI_ARSIZE;
  wire [0:0]axi_interconnect_1_M03_AXI_ARUSER;
  wire axi_interconnect_1_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M03_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M03_AXI_AWCACHE;
  wire [7:0]axi_interconnect_1_M03_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M03_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M03_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M03_AXI_AWQOS;
  wire axi_interconnect_1_M03_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M03_AXI_AWSIZE;
  wire [0:0]axi_interconnect_1_M03_AXI_AWUSER;
  wire axi_interconnect_1_M03_AXI_AWVALID;
  wire axi_interconnect_1_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M03_AXI_BRESP;
  wire axi_interconnect_1_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_RDATA;
  wire axi_interconnect_1_M03_AXI_RLAST;
  wire axi_interconnect_1_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M03_AXI_RRESP;
  wire axi_interconnect_1_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_WDATA;
  wire axi_interconnect_1_M03_AXI_WLAST;
  wire axi_interconnect_1_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M03_AXI_WSTRB;
  wire axi_interconnect_1_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_ARADDR;
  wire axi_interconnect_1_M05_AXI_ARREADY;
  wire axi_interconnect_1_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_AWADDR;
  wire axi_interconnect_1_M05_AXI_AWREADY;
  wire axi_interconnect_1_M05_AXI_AWVALID;
  wire axi_interconnect_1_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M05_AXI_BRESP;
  wire axi_interconnect_1_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_RDATA;
  wire axi_interconnect_1_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M05_AXI_RRESP;
  wire axi_interconnect_1_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_WDATA;
  wire axi_interconnect_1_M05_AXI_WREADY;
  wire axi_interconnect_1_M05_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_ARADDR;
  wire axi_interconnect_1_M06_AXI_ARREADY;
  wire axi_interconnect_1_M06_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_AWADDR;
  wire axi_interconnect_1_M06_AXI_AWREADY;
  wire axi_interconnect_1_M06_AXI_AWVALID;
  wire axi_interconnect_1_M06_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M06_AXI_BRESP;
  wire axi_interconnect_1_M06_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_RDATA;
  wire axi_interconnect_1_M06_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M06_AXI_RRESP;
  wire axi_interconnect_1_M06_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_WDATA;
  wire axi_interconnect_1_M06_AXI_WREADY;
  wire axi_interconnect_1_M06_AXI_WVALID;
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
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_vdma_0_M_AXIS_MM2S_TKEEP;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_0_M_AXIS_MM2S_TREADY;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  (* CONN_BUS_INFO = "axi_vdma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_vdma_0_M_AXIS_MM2S_TVALID;
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
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]axis_switch_0_M00_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TDEST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_0_M00_AXIS_TDEST;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_0_M00_AXIS_TID;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axis_switch_0_M00_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_0_M00_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_0_M00_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axis_switch_0_M00_AXIS_TSTRB;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_0_M00_AXIS_TUSER;
  (* CONN_BUS_INFO = "axis_switch_0_M00_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_0_M00_AXIS_TVALID;
  wire [23:0]axis_switch_1_M00_AXIS_TDATA;
  wire [2:0]axis_switch_1_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_1_M00_AXIS_TLAST;
  wire [0:0]axis_switch_1_M00_AXIS_TREADY;
  wire [0:0]axis_switch_1_M00_AXIS_TUSER;
  wire [0:0]axis_switch_1_M00_AXIS_TVALID;
  (* CONN_BUS_INFO = "axis_switch_1_M01_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [47:24]axis_switch_1_M01_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_switch_1_M01_AXIS xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:3]axis_switch_1_M01_AXIS_TKEEP;
  (* CONN_BUS_INFO = "axis_switch_1_M01_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:1]axis_switch_1_M01_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_switch_1_M01_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_switch_1_M01_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_switch_1_M01_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:1]axis_switch_1_M01_AXIS_TUSER;
  (* CONN_BUS_INFO = "axis_switch_1_M01_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:1]axis_switch_1_M01_AXIS_TVALID;
  wire clk_and_reset_clk_200M;
  wire clk_and_reset_locked;
  wire [0:0]clk_and_reset_peripheral_aresetn_200M;
  wire clk_wiz_clk_25M;
  wire cmos2axis_cmos_iic_SCL_I;
  wire cmos2axis_cmos_iic_SCL_O;
  wire cmos2axis_cmos_iic_SCL_T;
  wire cmos2axis_cmos_iic_SDA_I;
  wire cmos2axis_cmos_iic_SDA_O;
  wire cmos2axis_cmos_iic_SDA_T;
  wire [0:0]cmos2axis_cmos_pwdn_TRI_O;
  wire [0:0]cmos2axis_cmos_rst_TRI_O;
  wire cmos2axis_cmos_xclk_o_0;
  wire cmos2axis_iic2intc_irpt;
  (* CONN_BUS_INFO = "cmos2axis_video_out xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]cmos2axis_video_out_TDATA;
  (* CONN_BUS_INFO = "cmos2axis_video_out xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire cmos2axis_video_out_TLAST;
  (* CONN_BUS_INFO = "cmos2axis_video_out xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire cmos2axis_video_out_TREADY;
  (* CONN_BUS_INFO = "cmos2axis_video_out xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire cmos2axis_video_out_TUSER;
  (* CONN_BUS_INFO = "cmos2axis_video_out xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire cmos2axis_video_out_TVALID;
  wire [7:0]cmos_data_1;
  wire cmos_href_1;
  wire cmos_pclk_1;
  wire cmos_vsync_1;
  wire [3:0]display_vga_pBlue_0;
  wire [3:0]display_vga_pGreen_0;
  wire display_vga_pHSync_0;
  wire [3:0]display_vga_pRed_0;
  wire display_vga_pVSync_0;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire reset_0_1;
  wire [0:0]resetn_1;
  wire s_axi_lite_aclk_1;
  wire sys_clock_1;

  assign Conn1_ARADDR = S00_AXI_araddr[31:0];
  assign Conn1_ARBURST = S00_AXI_arburst[1:0];
  assign Conn1_ARCACHE = S00_AXI_arcache[3:0];
  assign Conn1_ARLEN = S00_AXI_arlen[7:0];
  assign Conn1_ARLOCK = S00_AXI_arlock[0];
  assign Conn1_ARPROT = S00_AXI_arprot[2:0];
  assign Conn1_ARQOS = S00_AXI_arqos[3:0];
  assign Conn1_ARSIZE = S00_AXI_arsize[2:0];
  assign Conn1_ARUSER = S00_AXI_aruser[0];
  assign Conn1_ARVALID = S00_AXI_arvalid[0];
  assign Conn1_AWADDR = S00_AXI_awaddr[31:0];
  assign Conn1_AWBURST = S00_AXI_awburst[1:0];
  assign Conn1_AWCACHE = S00_AXI_awcache[3:0];
  assign Conn1_AWLEN = S00_AXI_awlen[7:0];
  assign Conn1_AWLOCK = S00_AXI_awlock[0];
  assign Conn1_AWPROT = S00_AXI_awprot[2:0];
  assign Conn1_AWQOS = S00_AXI_awqos[3:0];
  assign Conn1_AWSIZE = S00_AXI_awsize[2:0];
  assign Conn1_AWUSER = S00_AXI_awuser[0];
  assign Conn1_AWVALID = S00_AXI_awvalid[0];
  assign Conn1_BREADY = S00_AXI_bready[0];
  assign Conn1_RREADY = S00_AXI_rready[0];
  assign Conn1_WDATA = S00_AXI_wdata[31:0];
  assign Conn1_WLAST = S00_AXI_wlast[0];
  assign Conn1_WSTRB = S00_AXI_wstrb[3:0];
  assign Conn1_WVALID = S00_AXI_wvalid[0];
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
  assign M04_ARESETN_1 = interconnect_aresetn;
  assign S00_AXI_arready[0] = Conn1_ARREADY;
  assign S00_AXI_awready[0] = Conn1_AWREADY;
  assign S00_AXI_bresp[1:0] = Conn1_BRESP;
  assign S00_AXI_bvalid[0] = Conn1_BVALID;
  assign S00_AXI_rdata[31:0] = Conn1_RDATA;
  assign S00_AXI_rlast[0] = Conn1_RLAST;
  assign S00_AXI_rresp[1:0] = Conn1_RRESP;
  assign S00_AXI_rvalid[0] = Conn1_RVALID;
  assign S00_AXI_wready[0] = Conn1_WREADY;
  assign axi_resetn_1 = axi_resetn;
  assign char_valid_c_o_0 = Image_Process_char_valid_c_o_0;
  assign cmos2axis_cmos_iic_SCL_I = cmos_iic_scl_i;
  assign cmos2axis_cmos_iic_SDA_I = cmos_iic_sda_i;
  assign cmos_data_1 = cmos_data[7:0];
  assign cmos_href_1 = cmos_href;
  assign cmos_iic_scl_o = cmos2axis_cmos_iic_SCL_O;
  assign cmos_iic_scl_t = cmos2axis_cmos_iic_SCL_T;
  assign cmos_iic_sda_o = cmos2axis_cmos_iic_SDA_O;
  assign cmos_iic_sda_t = cmos2axis_cmos_iic_SDA_T;
  assign cmos_pclk_1 = cmos_pclk;
  assign cmos_pwdn_tri_o[0] = cmos2axis_cmos_pwdn_TRI_O;
  assign cmos_rst_tri_o[0] = cmos2axis_cmos_rst_TRI_O;
  assign cmos_vsync_1 = cmos_vsync;
  assign cmos_xclk_o_0 = cmos2axis_cmos_xclk_o_0;
  assign iic2intc_irpt = cmos2axis_iic2intc_irpt;
  assign reset_0_1 = reset;
  assign s_axi_lite_aclk_1 = s_axi_lite_aclk;
  assign sys_clock_1 = sys_clock;
  assign vga_pBlue_0[3:0] = display_vga_pBlue_0;
  assign vga_pGreen_0[3:0] = display_vga_pGreen_0;
  assign vga_pHSync_0 = display_vga_pHSync_0;
  assign vga_pRed_0[3:0] = display_vga_pRed_0;
  assign vga_pVSync_0 = display_vga_pVSync_0;
  Image_Process_imp_1FI7WQV Image_Process
       (.M_AXIS_tdata(Image_Process_M_AXIS_TDATA),
        .M_AXIS_tdest(Image_Process_M_AXIS_TDEST),
        .M_AXIS_tid(Image_Process_M_AXIS_TID),
        .M_AXIS_tkeep(Image_Process_M_AXIS_TKEEP),
        .M_AXIS_tlast(Image_Process_M_AXIS_TLAST),
        .M_AXIS_tready(Image_Process_M_AXIS_TREADY),
        .M_AXIS_tstrb(Image_Process_M_AXIS_TSTRB),
        .M_AXIS_tuser(Image_Process_M_AXIS_TUSER),
        .M_AXIS_tvalid(Image_Process_M_AXIS_TVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arregion(S00_AXI_1_ARREGION),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awregion(S00_AXI_1_AWREGION),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S_AXIS_tdata(axis_switch_1_M01_AXIS_TDATA),
        .S_AXIS_tkeep(axis_switch_1_M01_AXIS_TKEEP),
        .S_AXIS_tlast(axis_switch_1_M01_AXIS_TLAST),
        .S_AXIS_tready(axis_switch_1_M01_AXIS_TREADY),
        .S_AXIS_tuser(axis_switch_1_M01_AXIS_TUSER),
        .S_AXIS_tvalid(axis_switch_1_M01_AXIS_TVALID),
        .axi_clk(s_axi_lite_aclk_1),
        .axi_resetn(axi_resetn_1),
        .axis_clk(clk_and_reset_clk_200M),
        .axis_resetn(clk_and_reset_peripheral_aresetn_200M),
        .char_valid_co(Image_Process_char_valid_c_o_0));
  m3_for_arty_a7_axi_interconnect_0_3 axi_interconnect_1
       (.ACLK(s_axi_lite_aclk_1),
        .ARESETN(M04_ARESETN_1),
        .M00_ACLK(s_axi_lite_aclk_1),
        .M00_ARESETN(M04_ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .M01_ACLK(s_axi_lite_aclk_1),
        .M01_ARESETN(M04_ARESETN_1),
        .M01_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .M02_ACLK(s_axi_lite_aclk_1),
        .M02_ARESETN(M04_ARESETN_1),
        .M02_AXI_araddr(axi_interconnect_1_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_1_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_1_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_1_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_1_M02_AXI_WVALID),
        .M03_ACLK(mig_7series_0_ui_clk),
        .M03_ARESETN(M04_ARESETN_1),
        .M03_AXI_araddr(axi_interconnect_1_M03_AXI_ARADDR),
        .M03_AXI_arburst(axi_interconnect_1_M03_AXI_ARBURST),
        .M03_AXI_arcache(axi_interconnect_1_M03_AXI_ARCACHE),
        .M03_AXI_arlen(axi_interconnect_1_M03_AXI_ARLEN),
        .M03_AXI_arlock(axi_interconnect_1_M03_AXI_ARLOCK),
        .M03_AXI_arprot(axi_interconnect_1_M03_AXI_ARPROT),
        .M03_AXI_arqos(axi_interconnect_1_M03_AXI_ARQOS),
        .M03_AXI_arready(axi_interconnect_1_M03_AXI_ARREADY),
        .M03_AXI_arsize(axi_interconnect_1_M03_AXI_ARSIZE),
        .M03_AXI_aruser(axi_interconnect_1_M03_AXI_ARUSER),
        .M03_AXI_arvalid(axi_interconnect_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_1_M03_AXI_AWADDR),
        .M03_AXI_awburst(axi_interconnect_1_M03_AXI_AWBURST),
        .M03_AXI_awcache(axi_interconnect_1_M03_AXI_AWCACHE),
        .M03_AXI_awlen(axi_interconnect_1_M03_AXI_AWLEN),
        .M03_AXI_awlock(axi_interconnect_1_M03_AXI_AWLOCK),
        .M03_AXI_awprot(axi_interconnect_1_M03_AXI_AWPROT),
        .M03_AXI_awqos(axi_interconnect_1_M03_AXI_AWQOS),
        .M03_AXI_awready(axi_interconnect_1_M03_AXI_AWREADY),
        .M03_AXI_awsize(axi_interconnect_1_M03_AXI_AWSIZE),
        .M03_AXI_awuser(axi_interconnect_1_M03_AXI_AWUSER),
        .M03_AXI_awvalid(axi_interconnect_1_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_1_M03_AXI_RDATA),
        .M03_AXI_rlast(axi_interconnect_1_M03_AXI_RLAST),
        .M03_AXI_rready(axi_interconnect_1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_1_M03_AXI_WDATA),
        .M03_AXI_wlast(axi_interconnect_1_M03_AXI_WLAST),
        .M03_AXI_wready(axi_interconnect_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_1_M03_AXI_WVALID),
        .M04_ACLK(s_axi_lite_aclk_1),
        .M04_ARESETN(M04_ARESETN_1),
        .M04_AXI_araddr(S00_AXI_1_ARADDR),
        .M04_AXI_arburst(S00_AXI_1_ARBURST),
        .M04_AXI_arcache(S00_AXI_1_ARCACHE),
        .M04_AXI_arlen(S00_AXI_1_ARLEN),
        .M04_AXI_arlock(S00_AXI_1_ARLOCK),
        .M04_AXI_arprot(S00_AXI_1_ARPROT),
        .M04_AXI_arqos(S00_AXI_1_ARQOS),
        .M04_AXI_arready(S00_AXI_1_ARREADY),
        .M04_AXI_arregion(S00_AXI_1_ARREGION),
        .M04_AXI_arsize(S00_AXI_1_ARSIZE),
        .M04_AXI_arvalid(S00_AXI_1_ARVALID),
        .M04_AXI_awaddr(S00_AXI_1_AWADDR),
        .M04_AXI_awburst(S00_AXI_1_AWBURST),
        .M04_AXI_awcache(S00_AXI_1_AWCACHE),
        .M04_AXI_awlen(S00_AXI_1_AWLEN),
        .M04_AXI_awlock(S00_AXI_1_AWLOCK),
        .M04_AXI_awprot(S00_AXI_1_AWPROT),
        .M04_AXI_awqos(S00_AXI_1_AWQOS),
        .M04_AXI_awready(S00_AXI_1_AWREADY),
        .M04_AXI_awregion(S00_AXI_1_AWREGION),
        .M04_AXI_awsize(S00_AXI_1_AWSIZE),
        .M04_AXI_awvalid(S00_AXI_1_AWVALID),
        .M04_AXI_bready(S00_AXI_1_BREADY),
        .M04_AXI_bresp(S00_AXI_1_BRESP),
        .M04_AXI_bvalid(S00_AXI_1_BVALID),
        .M04_AXI_rdata(S00_AXI_1_RDATA),
        .M04_AXI_rlast(S00_AXI_1_RLAST),
        .M04_AXI_rready(S00_AXI_1_RREADY),
        .M04_AXI_rresp(S00_AXI_1_RRESP),
        .M04_AXI_rvalid(S00_AXI_1_RVALID),
        .M04_AXI_wdata(S00_AXI_1_WDATA),
        .M04_AXI_wlast(S00_AXI_1_WLAST),
        .M04_AXI_wready(S00_AXI_1_WREADY),
        .M04_AXI_wstrb(S00_AXI_1_WSTRB),
        .M04_AXI_wvalid(S00_AXI_1_WVALID),
        .M05_ACLK(s_axi_lite_aclk_1),
        .M05_ARESETN(M04_ARESETN_1),
        .M05_AXI_araddr(axi_interconnect_1_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_1_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_1_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_1_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_1_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_1_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_1_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_1_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_1_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_1_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_1_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_1_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_1_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_1_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_1_M05_AXI_WREADY),
        .M05_AXI_wvalid(axi_interconnect_1_M05_AXI_WVALID),
        .M06_ACLK(s_axi_lite_aclk_1),
        .M06_ARESETN(M04_ARESETN_1),
        .M06_AXI_araddr(axi_interconnect_1_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_interconnect_1_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_interconnect_1_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_interconnect_1_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_interconnect_1_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_interconnect_1_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_interconnect_1_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_interconnect_1_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_interconnect_1_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_interconnect_1_M06_AXI_RDATA),
        .M06_AXI_rready(axi_interconnect_1_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_interconnect_1_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_interconnect_1_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_interconnect_1_M06_AXI_WDATA),
        .M06_AXI_wready(axi_interconnect_1_M06_AXI_WREADY),
        .M06_AXI_wvalid(axi_interconnect_1_M06_AXI_WVALID),
        .S00_ACLK(s_axi_lite_aclk_1),
        .S00_ARESETN(M04_ARESETN_1),
        .S00_AXI_araddr(Conn1_ARADDR),
        .S00_AXI_arburst(Conn1_ARBURST),
        .S00_AXI_arcache(Conn1_ARCACHE),
        .S00_AXI_arlen(Conn1_ARLEN),
        .S00_AXI_arlock(Conn1_ARLOCK),
        .S00_AXI_arprot(Conn1_ARPROT),
        .S00_AXI_arqos(Conn1_ARQOS),
        .S00_AXI_arready(Conn1_ARREADY),
        .S00_AXI_arsize(Conn1_ARSIZE),
        .S00_AXI_aruser(Conn1_ARUSER),
        .S00_AXI_arvalid(Conn1_ARVALID),
        .S00_AXI_awaddr(Conn1_AWADDR),
        .S00_AXI_awburst(Conn1_AWBURST),
        .S00_AXI_awcache(Conn1_AWCACHE),
        .S00_AXI_awlen(Conn1_AWLEN),
        .S00_AXI_awlock(Conn1_AWLOCK),
        .S00_AXI_awprot(Conn1_AWPROT),
        .S00_AXI_awqos(Conn1_AWQOS),
        .S00_AXI_awready(Conn1_AWREADY),
        .S00_AXI_awsize(Conn1_AWSIZE),
        .S00_AXI_awuser(Conn1_AWUSER),
        .S00_AXI_awvalid(Conn1_AWVALID),
        .S00_AXI_bready(Conn1_BREADY),
        .S00_AXI_bresp(Conn1_BRESP),
        .S00_AXI_bvalid(Conn1_BVALID),
        .S00_AXI_rdata(Conn1_RDATA),
        .S00_AXI_rlast(Conn1_RLAST),
        .S00_AXI_rready(Conn1_RREADY),
        .S00_AXI_rresp(Conn1_RRESP),
        .S00_AXI_rvalid(Conn1_RVALID),
        .S00_AXI_wdata(Conn1_WDATA),
        .S00_AXI_wlast(Conn1_WLAST),
        .S00_AXI_wready(Conn1_WREADY),
        .S00_AXI_wstrb(Conn1_WSTRB),
        .S00_AXI_wvalid(Conn1_WVALID));
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
        .S02_AXI_araddr(axi_interconnect_1_M03_AXI_ARADDR),
        .S02_AXI_arburst(axi_interconnect_1_M03_AXI_ARBURST),
        .S02_AXI_arcache(axi_interconnect_1_M03_AXI_ARCACHE),
        .S02_AXI_arlen(axi_interconnect_1_M03_AXI_ARLEN),
        .S02_AXI_arlock(axi_interconnect_1_M03_AXI_ARLOCK),
        .S02_AXI_arprot(axi_interconnect_1_M03_AXI_ARPROT),
        .S02_AXI_arqos(axi_interconnect_1_M03_AXI_ARQOS),
        .S02_AXI_arready(axi_interconnect_1_M03_AXI_ARREADY),
        .S02_AXI_arsize(axi_interconnect_1_M03_AXI_ARSIZE),
        .S02_AXI_aruser(axi_interconnect_1_M03_AXI_ARUSER),
        .S02_AXI_arvalid(axi_interconnect_1_M03_AXI_ARVALID),
        .S02_AXI_awaddr(axi_interconnect_1_M03_AXI_AWADDR),
        .S02_AXI_awburst(axi_interconnect_1_M03_AXI_AWBURST),
        .S02_AXI_awcache(axi_interconnect_1_M03_AXI_AWCACHE),
        .S02_AXI_awlen(axi_interconnect_1_M03_AXI_AWLEN),
        .S02_AXI_awlock(axi_interconnect_1_M03_AXI_AWLOCK),
        .S02_AXI_awprot(axi_interconnect_1_M03_AXI_AWPROT),
        .S02_AXI_awqos(axi_interconnect_1_M03_AXI_AWQOS),
        .S02_AXI_awready(axi_interconnect_1_M03_AXI_AWREADY),
        .S02_AXI_awsize(axi_interconnect_1_M03_AXI_AWSIZE),
        .S02_AXI_awuser(axi_interconnect_1_M03_AXI_AWUSER),
        .S02_AXI_awvalid(axi_interconnect_1_M03_AXI_AWVALID),
        .S02_AXI_bready(axi_interconnect_1_M03_AXI_BREADY),
        .S02_AXI_bresp(axi_interconnect_1_M03_AXI_BRESP),
        .S02_AXI_bvalid(axi_interconnect_1_M03_AXI_BVALID),
        .S02_AXI_rdata(axi_interconnect_1_M03_AXI_RDATA),
        .S02_AXI_rlast(axi_interconnect_1_M03_AXI_RLAST),
        .S02_AXI_rready(axi_interconnect_1_M03_AXI_RREADY),
        .S02_AXI_rresp(axi_interconnect_1_M03_AXI_RRESP),
        .S02_AXI_rvalid(axi_interconnect_1_M03_AXI_RVALID),
        .S02_AXI_wdata(axi_interconnect_1_M03_AXI_WDATA),
        .S02_AXI_wlast(axi_interconnect_1_M03_AXI_WLAST),
        .S02_AXI_wready(axi_interconnect_1_M03_AXI_WREADY),
        .S02_AXI_wstrb(axi_interconnect_1_M03_AXI_WSTRB),
        .S02_AXI_wvalid(axi_interconnect_1_M03_AXI_WVALID),
        .aclk(mig_7series_0_ui_clk),
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
        .m_axis_mm2s_aclk(clk_and_reset_clk_200M),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(s_axi_lite_aclk_1),
        .s_axi_lite_araddr(axi_interconnect_1_M00_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_1_M00_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_1_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_1_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_1_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .s_axis_s2mm_aclk(clk_and_reset_clk_200M),
        .s_axis_s2mm_tdata(cmos2axis_video_out_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(cmos2axis_video_out_TLAST),
        .s_axis_s2mm_tready(cmos2axis_video_out_TREADY),
        .s_axis_s2mm_tuser(cmos2axis_video_out_TUSER),
        .s_axis_s2mm_tvalid(cmos2axis_video_out_TVALID));
  m3_for_arty_a7_axis_switch_1_0 axis_switch_0
       (.aclk(clk_and_reset_clk_200M),
        .aresetn(clk_and_reset_peripheral_aresetn_200M),
        .m_axis_tdata({axis_switch_1_M01_AXIS_TDATA,axis_switch_1_M00_AXIS_TDATA}),
        .m_axis_tkeep({axis_switch_1_M01_AXIS_TKEEP,axis_switch_1_M00_AXIS_TKEEP}),
        .m_axis_tlast({axis_switch_1_M01_AXIS_TLAST,axis_switch_1_M00_AXIS_TLAST}),
        .m_axis_tready({axis_switch_1_M01_AXIS_TREADY,axis_switch_1_M00_AXIS_TREADY}),
        .m_axis_tuser({axis_switch_1_M01_AXIS_TUSER,axis_switch_1_M00_AXIS_TUSER}),
        .m_axis_tvalid({axis_switch_1_M01_AXIS_TVALID,axis_switch_1_M00_AXIS_TVALID}),
        .s_axi_ctrl_aclk(s_axi_lite_aclk_1),
        .s_axi_ctrl_araddr(axi_interconnect_1_M05_AXI_ARADDR[6:0]),
        .s_axi_ctrl_aresetn(axi_resetn_1),
        .s_axi_ctrl_arready(axi_interconnect_1_M05_AXI_ARREADY),
        .s_axi_ctrl_arvalid(axi_interconnect_1_M05_AXI_ARVALID),
        .s_axi_ctrl_awaddr(axi_interconnect_1_M05_AXI_AWADDR[6:0]),
        .s_axi_ctrl_awready(axi_interconnect_1_M05_AXI_AWREADY),
        .s_axi_ctrl_awvalid(axi_interconnect_1_M05_AXI_AWVALID),
        .s_axi_ctrl_bready(axi_interconnect_1_M05_AXI_BREADY),
        .s_axi_ctrl_bresp(axi_interconnect_1_M05_AXI_BRESP),
        .s_axi_ctrl_bvalid(axi_interconnect_1_M05_AXI_BVALID),
        .s_axi_ctrl_rdata(axi_interconnect_1_M05_AXI_RDATA),
        .s_axi_ctrl_rready(axi_interconnect_1_M05_AXI_RREADY),
        .s_axi_ctrl_rresp(axi_interconnect_1_M05_AXI_RRESP),
        .s_axi_ctrl_rvalid(axi_interconnect_1_M05_AXI_RVALID),
        .s_axi_ctrl_wdata(axi_interconnect_1_M05_AXI_WDATA),
        .s_axi_ctrl_wready(axi_interconnect_1_M05_AXI_WREADY),
        .s_axi_ctrl_wvalid(axi_interconnect_1_M05_AXI_WVALID),
        .s_axis_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID));
  m3_for_arty_a7_axis_switch_0_0 axis_switch_1
       (.aclk(clk_and_reset_clk_200M),
        .aresetn(clk_and_reset_peripheral_aresetn_200M),
        .m_axis_tdata(axis_switch_0_M00_AXIS_TDATA),
        .m_axis_tdest(axis_switch_0_M00_AXIS_TDEST),
        .m_axis_tid(axis_switch_0_M00_AXIS_TID),
        .m_axis_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_0_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_0_M00_AXIS_TREADY),
        .m_axis_tstrb(axis_switch_0_M00_AXIS_TSTRB),
        .m_axis_tuser(axis_switch_0_M00_AXIS_TUSER),
        .m_axis_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .s_axi_ctrl_aclk(s_axi_lite_aclk_1),
        .s_axi_ctrl_araddr(axi_interconnect_1_M06_AXI_ARADDR[6:0]),
        .s_axi_ctrl_aresetn(axi_resetn_1),
        .s_axi_ctrl_arready(axi_interconnect_1_M06_AXI_ARREADY),
        .s_axi_ctrl_arvalid(axi_interconnect_1_M06_AXI_ARVALID),
        .s_axi_ctrl_awaddr(axi_interconnect_1_M06_AXI_AWADDR[6:0]),
        .s_axi_ctrl_awready(axi_interconnect_1_M06_AXI_AWREADY),
        .s_axi_ctrl_awvalid(axi_interconnect_1_M06_AXI_AWVALID),
        .s_axi_ctrl_bready(axi_interconnect_1_M06_AXI_BREADY),
        .s_axi_ctrl_bresp(axi_interconnect_1_M06_AXI_BRESP),
        .s_axi_ctrl_bvalid(axi_interconnect_1_M06_AXI_BVALID),
        .s_axi_ctrl_rdata(axi_interconnect_1_M06_AXI_RDATA),
        .s_axi_ctrl_rready(axi_interconnect_1_M06_AXI_RREADY),
        .s_axi_ctrl_rresp(axi_interconnect_1_M06_AXI_RRESP),
        .s_axi_ctrl_rvalid(axi_interconnect_1_M06_AXI_RVALID),
        .s_axi_ctrl_wdata(axi_interconnect_1_M06_AXI_WDATA),
        .s_axi_ctrl_wready(axi_interconnect_1_M06_AXI_WREADY),
        .s_axi_ctrl_wvalid(axi_interconnect_1_M06_AXI_WVALID),
        .s_axis_tdata({Image_Process_M_AXIS_TDATA,axis_switch_1_M00_AXIS_TDATA}),
        .s_axis_tdest({Image_Process_M_AXIS_TDEST,1'b0}),
        .s_axis_tid({Image_Process_M_AXIS_TID,1'b0}),
        .s_axis_tkeep({Image_Process_M_AXIS_TKEEP,axis_switch_1_M00_AXIS_TKEEP}),
        .s_axis_tlast({Image_Process_M_AXIS_TLAST,axis_switch_1_M00_AXIS_TLAST}),
        .s_axis_tready({Image_Process_M_AXIS_TREADY,axis_switch_1_M00_AXIS_TREADY}),
        .s_axis_tstrb({Image_Process_M_AXIS_TSTRB,1'b1,1'b1,1'b1}),
        .s_axis_tuser({Image_Process_M_AXIS_TUSER,axis_switch_1_M00_AXIS_TUSER}),
        .s_axis_tvalid({Image_Process_M_AXIS_TVALID,axis_switch_1_M00_AXIS_TVALID}));
  clk_and_reset_imp_1VC78JG clk_and_reset
       (.clk_200M(clk_and_reset_clk_200M),
        .clk_24M(CLK_i_1),
        .clk_25M(clk_wiz_clk_25M),
        .ddr_clk_81M(mig_7series_0_ui_clk),
        .ddr_locked(mig_7series_0_mmcm_locked),
        .ddr_reset(mig_7series_0_ui_clk_sync_rst),
        .locked(clk_and_reset_locked),
        .peripheral_aresetn_200M(clk_and_reset_peripheral_aresetn_200M),
        .peripheral_aresetn_25M(resetn_1),
        .peripheral_aresetn_81M(aresetn_1),
        .peripheral_reset_25M(proc_sys_reset_0_peripheral_reset),
        .sys_clock(sys_clock_1),
        .sys_reset(reset_0_1));
  cmos2axis_imp_1N4HUND cmos2axis
       (.S_AXI1_araddr(axi_interconnect_1_M02_AXI_ARADDR),
        .S_AXI1_arready(axi_interconnect_1_M02_AXI_ARREADY),
        .S_AXI1_arvalid(axi_interconnect_1_M02_AXI_ARVALID),
        .S_AXI1_awaddr(axi_interconnect_1_M02_AXI_AWADDR),
        .S_AXI1_awready(axi_interconnect_1_M02_AXI_AWREADY),
        .S_AXI1_awvalid(axi_interconnect_1_M02_AXI_AWVALID),
        .S_AXI1_bready(axi_interconnect_1_M02_AXI_BREADY),
        .S_AXI1_bresp(axi_interconnect_1_M02_AXI_BRESP),
        .S_AXI1_bvalid(axi_interconnect_1_M02_AXI_BVALID),
        .S_AXI1_rdata(axi_interconnect_1_M02_AXI_RDATA),
        .S_AXI1_rready(axi_interconnect_1_M02_AXI_RREADY),
        .S_AXI1_rresp(axi_interconnect_1_M02_AXI_RRESP),
        .S_AXI1_rvalid(axi_interconnect_1_M02_AXI_RVALID),
        .S_AXI1_wdata(axi_interconnect_1_M02_AXI_WDATA),
        .S_AXI1_wready(axi_interconnect_1_M02_AXI_WREADY),
        .S_AXI1_wstrb(axi_interconnect_1_M02_AXI_WSTRB),
        .S_AXI1_wvalid(axi_interconnect_1_M02_AXI_WVALID),
        .S_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .S_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .S_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .S_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .S_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .S_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .S_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .aclken(clk_and_reset_locked),
        .axi_clk(s_axi_lite_aclk_1),
        .axi_resetn(axi_resetn_1),
        .axis_clk(clk_and_reset_clk_200M),
        .axis_resetn(clk_and_reset_peripheral_aresetn_200M),
        .clk_24M(CLK_i_1),
        .cmos_data(cmos_data_1),
        .cmos_href(cmos_href_1),
        .cmos_iic_scl_i(cmos2axis_cmos_iic_SCL_I),
        .cmos_iic_scl_o(cmos2axis_cmos_iic_SCL_O),
        .cmos_iic_scl_t(cmos2axis_cmos_iic_SCL_T),
        .cmos_iic_sda_i(cmos2axis_cmos_iic_SDA_I),
        .cmos_iic_sda_o(cmos2axis_cmos_iic_SDA_O),
        .cmos_iic_sda_t(cmos2axis_cmos_iic_SDA_T),
        .cmos_pclk(cmos_pclk_1),
        .cmos_pwdn_tri_o(cmos2axis_cmos_pwdn_TRI_O),
        .cmos_rst_tri_o(cmos2axis_cmos_rst_TRI_O),
        .cmos_vsync(cmos_vsync_1),
        .cmos_xclk_o_0(cmos2axis_cmos_xclk_o_0),
        .iic2intc_irpt(cmos2axis_iic2intc_irpt),
        .reset_25M(proc_sys_reset_0_peripheral_reset),
        .vid_io_in_active_video(Conn_ACTIVE_VIDEO),
        .vid_io_in_data(Conn_DATA),
        .vid_io_in_hsync(Conn_HSYNC),
        .vid_io_in_vsync(Conn_VSYNC),
        .video_out_tdata(cmos2axis_video_out_TDATA),
        .video_out_tlast(cmos2axis_video_out_TLAST),
        .video_out_tready(cmos2axis_video_out_TREADY),
        .video_out_tuser(cmos2axis_video_out_TUSER),
        .video_out_tvalid(cmos2axis_video_out_TVALID));
  display_imp_10OMWVT display
       (.S_AXIS_tdata(axis_switch_0_M00_AXIS_TDATA),
        .S_AXIS_tdest(axis_switch_0_M00_AXIS_TDEST),
        .S_AXIS_tid(axis_switch_0_M00_AXIS_TID),
        .S_AXIS_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .S_AXIS_tlast(axis_switch_0_M00_AXIS_TLAST),
        .S_AXIS_tready(axis_switch_0_M00_AXIS_TREADY),
        .S_AXIS_tstrb(axis_switch_0_M00_AXIS_TSTRB),
        .S_AXIS_tuser(axis_switch_0_M00_AXIS_TUSER),
        .S_AXIS_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .axis_clk(clk_and_reset_clk_200M),
        .axis_resetn(clk_and_reset_peripheral_aresetn_200M),
        .clk_25M(clk_wiz_clk_25M),
        .reset_25M(proc_sys_reset_0_peripheral_reset),
        .resetn_25M(resetn_1),
        .vga_pBlue_0(display_vga_pBlue_0),
        .vga_pGreen_0(display_vga_pGreen_0),
        .vga_pHSync_0(display_vga_pHSync_0),
        .vga_pRed_0(display_vga_pRed_0),
        .vga_pVSync_0(display_vga_pVSync_0));
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
        .sys_clk_i(clk_and_reset_clk_200M),
        .sys_rst(reset_0_1),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  m3_for_arty_a7_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(cmos2axis_video_out_TDATA),
        .SLOT_0_AXIS_tlast(cmos2axis_video_out_TLAST),
        .SLOT_0_AXIS_tready(cmos2axis_video_out_TREADY),
        .SLOT_0_AXIS_tuser(cmos2axis_video_out_TUSER),
        .SLOT_0_AXIS_tvalid(cmos2axis_video_out_TVALID),
        .SLOT_1_AXIS_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .SLOT_1_AXIS_tkeep(axi_vdma_0_M_AXIS_MM2S_TKEEP),
        .SLOT_1_AXIS_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .SLOT_1_AXIS_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .SLOT_1_AXIS_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .SLOT_1_AXIS_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .SLOT_2_AXIS_tdata(axis_switch_0_M00_AXIS_TDATA),
        .SLOT_2_AXIS_tdest(axis_switch_0_M00_AXIS_TDEST),
        .SLOT_2_AXIS_tid(axis_switch_0_M00_AXIS_TID),
        .SLOT_2_AXIS_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .SLOT_2_AXIS_tlast(axis_switch_0_M00_AXIS_TLAST),
        .SLOT_2_AXIS_tready(axis_switch_0_M00_AXIS_TREADY),
        .SLOT_2_AXIS_tstrb(axis_switch_0_M00_AXIS_TSTRB),
        .SLOT_2_AXIS_tuser(axis_switch_0_M00_AXIS_TUSER),
        .SLOT_2_AXIS_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .SLOT_3_AXIS_tdata(axis_switch_1_M01_AXIS_TDATA),
        .SLOT_3_AXIS_tkeep(axis_switch_1_M01_AXIS_TKEEP),
        .SLOT_3_AXIS_tlast(axis_switch_1_M01_AXIS_TLAST),
        .SLOT_3_AXIS_tready(axis_switch_1_M01_AXIS_TREADY),
        .SLOT_3_AXIS_tuser(axis_switch_1_M01_AXIS_TUSER),
        .SLOT_3_AXIS_tvalid(axis_switch_1_M01_AXIS_TVALID),
        .SLOT_4_AXIS_tdata(Image_Process_M_AXIS_TDATA),
        .SLOT_4_AXIS_tdest(Image_Process_M_AXIS_TDEST),
        .SLOT_4_AXIS_tid(Image_Process_M_AXIS_TID),
        .SLOT_4_AXIS_tkeep(Image_Process_M_AXIS_TKEEP),
        .SLOT_4_AXIS_tlast(Image_Process_M_AXIS_TLAST),
        .SLOT_4_AXIS_tready(Image_Process_M_AXIS_TREADY),
        .SLOT_4_AXIS_tstrb(Image_Process_M_AXIS_TSTRB),
        .SLOT_4_AXIS_tuser(Image_Process_M_AXIS_TUSER),
        .SLOT_4_AXIS_tvalid(Image_Process_M_AXIS_TVALID),
        .clk(clk_and_reset_clk_200M),
        .probe0(Image_Process_char_valid_c_o_0),
        .resetn(clk_and_reset_peripheral_aresetn_200M));
  m3_for_arty_a7_system_ila_1_0 system_ila_1
       (.SLOT_0_VID_IO_active_video(Conn_ACTIVE_VIDEO),
        .SLOT_0_VID_IO_data(Conn_DATA),
        .SLOT_0_VID_IO_hsync(Conn_HSYNC),
        .SLOT_0_VID_IO_vsync(Conn_VSYNC),
        .clk(cmos_pclk_1));
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
  m3_for_arty_a7_auto_pc_6 auto_pc
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

module s00_couplers_imp_96RCXY
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
  m3_for_arty_a7_auto_pc_7 auto_pc
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

module s00_couplers_imp_P9Z27M
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
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
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
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
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

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARUSER;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_AWUSER;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WLAST;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast[0] = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
