// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 23:47:48 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               V:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_contrast_hls_rom_0_0/m3_for_arty_a7_contrast_hls_rom_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_contrast_hls_rom_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_contrast_hls_rom_0_0,contrast_hls_rom,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "contrast_hls_rom,Vivado 2018.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_contrast_hls_rom_0_0
   (diff_sum_0_ap_vld,
    diff_sum_1_ap_vld,
    diff_sum_2_ap_vld,
    diff_sum_3_ap_vld,
    diff_sum_4_ap_vld,
    diff_sum_5_ap_vld,
    diff_sum_6_ap_vld,
    diff_sum_7_ap_vld,
    diff_sum_8_ap_vld,
    diff_sum_9_ap_vld,
    diff_sum_10_ap_vld,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    input_r_TVALID,
    input_r_TREADY,
    input_r_TDATA,
    input_r_TKEEP,
    input_r_TSTRB,
    input_r_TUSER,
    input_r_TLAST,
    input_r_TID,
    input_r_TDEST,
    diff_sum_0,
    diff_sum_1,
    diff_sum_2,
    diff_sum_3,
    diff_sum_4,
    diff_sum_5,
    diff_sum_6,
    diff_sum_7,
    diff_sum_8,
    diff_sum_9,
    diff_sum_10);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) input [3:0]s_axi_AXILiteS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [3:0]s_axi_AXILiteS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 200000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_AXILiteS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:input_r, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TVALID" *) input input_r_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TREADY" *) output input_r_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDATA" *) input [7:0]input_r_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TKEEP" *) input [0:0]input_r_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TSTRB" *) input [0:0]input_r_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TUSER" *) input [0:0]input_r_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TLAST" *) input [0:0]input_r_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TID" *) input [0:0]input_r_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_r, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input [0:0]input_r_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_9, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 diff_sum_10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_sum_10, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [15:0]diff_sum_10;

  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]diff_sum_0;
  wire diff_sum_0_ap_vld;
  wire [15:0]diff_sum_1;
  wire [15:0]diff_sum_10;
  wire diff_sum_10_ap_vld;
  wire diff_sum_1_ap_vld;
  wire [15:0]diff_sum_2;
  wire diff_sum_2_ap_vld;
  wire [15:0]diff_sum_3;
  wire diff_sum_3_ap_vld;
  wire [15:0]diff_sum_4;
  wire diff_sum_4_ap_vld;
  wire [15:0]diff_sum_5;
  wire diff_sum_5_ap_vld;
  wire [15:0]diff_sum_6;
  wire diff_sum_6_ap_vld;
  wire [15:0]diff_sum_7;
  wire diff_sum_7_ap_vld;
  wire [15:0]diff_sum_8;
  wire diff_sum_8_ap_vld;
  wire [15:0]diff_sum_9;
  wire diff_sum_9_ap_vld;
  wire [7:0]input_r_TDATA;
  wire [0:0]input_r_TDEST;
  wire [0:0]input_r_TID;
  wire [0:0]input_r_TKEEP;
  wire [0:0]input_r_TLAST;
  wire input_r_TREADY;
  wire [0:0]input_r_TSTRB;
  wire [0:0]input_r_TUSER;
  wire input_r_TVALID;
  wire interrupt;
  wire [3:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [3:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;

  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  m3_for_arty_a7_contrast_hls_rom_0_0_contrast_hls_rom inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .diff_sum_0(diff_sum_0),
        .diff_sum_0_ap_vld(diff_sum_0_ap_vld),
        .diff_sum_1(diff_sum_1),
        .diff_sum_10(diff_sum_10),
        .diff_sum_10_ap_vld(diff_sum_10_ap_vld),
        .diff_sum_1_ap_vld(diff_sum_1_ap_vld),
        .diff_sum_2(diff_sum_2),
        .diff_sum_2_ap_vld(diff_sum_2_ap_vld),
        .diff_sum_3(diff_sum_3),
        .diff_sum_3_ap_vld(diff_sum_3_ap_vld),
        .diff_sum_4(diff_sum_4),
        .diff_sum_4_ap_vld(diff_sum_4_ap_vld),
        .diff_sum_5(diff_sum_5),
        .diff_sum_5_ap_vld(diff_sum_5_ap_vld),
        .diff_sum_6(diff_sum_6),
        .diff_sum_6_ap_vld(diff_sum_6_ap_vld),
        .diff_sum_7(diff_sum_7),
        .diff_sum_7_ap_vld(diff_sum_7_ap_vld),
        .diff_sum_8(diff_sum_8),
        .diff_sum_8_ap_vld(diff_sum_8_ap_vld),
        .diff_sum_9(diff_sum_9),
        .diff_sum_9_ap_vld(diff_sum_9_ap_vld),
        .input_r_TDATA(input_r_TDATA),
        .input_r_TDEST(input_r_TDEST),
        .input_r_TID(input_r_TID),
        .input_r_TKEEP(input_r_TKEEP),
        .input_r_TLAST(input_r_TLAST),
        .input_r_TREADY(input_r_TREADY),
        .input_r_TSTRB(input_r_TSTRB),
        .input_r_TUSER(input_r_TUSER),
        .input_r_TVALID(input_r_TVALID),
        .interrupt(interrupt),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
endmodule

(* ORIG_REF_NAME = "AXIvideo2Mat" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_AXIvideo2Mat
   (ap_rst_n_inv,
    input_r_TREADY,
    CO,
    start_once_reg,
    Q,
    AXIvideo2Mat_U0_ap_ready,
    \axi_data_V_1_i_reg_266_reg[0]_0 ,
    E,
    D,
    ap_clk,
    ap_rst_n,
    internal_empty_n_reg,
    img_src_0_data_strea_full_n,
    input_r_TVALID,
    start_for_Duplicate_my_U0_full_n,
    Block_proc_U0_ap_start,
    input_r_TLAST,
    input_r_TUSER,
    input_r_TDATA);
  output ap_rst_n_inv;
  output input_r_TREADY;
  output [0:0]CO;
  output start_once_reg;
  output [1:0]Q;
  output AXIvideo2Mat_U0_ap_ready;
  output \axi_data_V_1_i_reg_266_reg[0]_0 ;
  output [0:0]E;
  output [7:0]D;
  input ap_clk;
  input ap_rst_n;
  input internal_empty_n_reg;
  input img_src_0_data_strea_full_n;
  input input_r_TVALID;
  input start_for_Duplicate_my_U0_full_n;
  input Block_proc_U0_ap_start;
  input [0:0]input_r_TLAST;
  input [0:0]input_r_TUSER;
  input [7:0]input_r_TDATA;

  wire AXI_video_strm_V_data_V_0_ack_in;
  wire [7:0]AXI_video_strm_V_data_V_0_data_out;
  wire AXI_video_strm_V_data_V_0_load_A;
  wire AXI_video_strm_V_data_V_0_load_B;
  wire [7:0]AXI_video_strm_V_data_V_0_payload_A;
  wire [7:0]AXI_video_strm_V_data_V_0_payload_B;
  wire AXI_video_strm_V_data_V_0_sel;
  wire AXI_video_strm_V_data_V_0_sel0;
  wire AXI_video_strm_V_data_V_0_sel2;
  wire AXI_video_strm_V_data_V_0_sel_rd_i_1_n_0;
  wire AXI_video_strm_V_data_V_0_sel_wr;
  wire AXI_video_strm_V_data_V_0_sel_wr_i_1_n_0;
  wire [1:1]AXI_video_strm_V_data_V_0_state;
  wire \AXI_video_strm_V_data_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ;
  wire [1:1]AXI_video_strm_V_dest_V_0_state;
  wire \AXI_video_strm_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_dest_V_0_state[1]_i_4_n_0 ;
  wire \AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ;
  wire AXI_video_strm_V_last_V_0_ack_in;
  wire AXI_video_strm_V_last_V_0_data_out;
  wire AXI_video_strm_V_last_V_0_payload_A;
  wire \AXI_video_strm_V_last_V_0_payload_A[0]_i_1_n_0 ;
  wire AXI_video_strm_V_last_V_0_payload_B;
  wire \AXI_video_strm_V_last_V_0_payload_B[0]_i_1_n_0 ;
  wire AXI_video_strm_V_last_V_0_sel;
  wire AXI_video_strm_V_last_V_0_sel_rd_i_1_n_0;
  wire AXI_video_strm_V_last_V_0_sel_wr;
  wire AXI_video_strm_V_last_V_0_sel_wr_i_1_n_0;
  wire [1:1]AXI_video_strm_V_last_V_0_state;
  wire \AXI_video_strm_V_last_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ;
  wire AXI_video_strm_V_user_V_0_ack_in;
  wire AXI_video_strm_V_user_V_0_payload_A;
  wire \AXI_video_strm_V_user_V_0_payload_A[0]_i_1_n_0 ;
  wire AXI_video_strm_V_user_V_0_payload_B;
  wire \AXI_video_strm_V_user_V_0_payload_B[0]_i_1_n_0 ;
  wire AXI_video_strm_V_user_V_0_sel;
  wire AXI_video_strm_V_user_V_0_sel_rd_i_1_n_0;
  wire AXI_video_strm_V_user_V_0_sel_wr;
  wire AXI_video_strm_V_user_V_0_sel_wr_i_1_n_0;
  wire [1:1]AXI_video_strm_V_user_V_0_state;
  wire \AXI_video_strm_V_user_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ;
  wire AXIvideo2Mat_U0_ap_ready;
  wire Block_proc_U0_ap_start;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \ap_CS_fsm[5]_i_2_n_0 ;
  wire ap_CS_fsm_pp1_stage0;
  wire ap_CS_fsm_pp2_stage0;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state7;
  wire [7:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_2_n_0;
  wire ap_enable_reg_pp1_iter1_reg_n_0;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp2_iter0_i_1_n_0;
  wire ap_enable_reg_pp2_iter0_i_2_n_0;
  wire ap_enable_reg_pp2_iter1_i_1_n_0;
  wire ap_enable_reg_pp2_iter1_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]axi_data_V1_i_reg_211;
  wire \axi_data_V1_i_reg_211[0]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[1]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[2]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[3]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[4]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[5]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[6]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_211[7]_i_1_n_0 ;
  wire [7:0]axi_data_V_1_i_reg_266;
  wire \axi_data_V_1_i_reg_266[0]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[1]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[2]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[3]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[4]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[5]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[6]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266[7]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_266_reg[0]_0 ;
  wire [7:0]axi_data_V_3_i_reg_326;
  wire \axi_data_V_3_i_reg_326[0]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[1]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[2]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[3]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[4]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[5]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[6]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_326[7]_i_1_n_0 ;
  wire axi_last_V1_i_reg_201;
  wire \axi_last_V1_i_reg_201[0]_i_1_n_0 ;
  wire axi_last_V_3_i_reg_314;
  wire \axi_last_V_3_i_reg_314[0]_i_1_n_0 ;
  wire brmerge_i_reg_449;
  wire \brmerge_i_reg_449[0]_i_1_n_0 ;
  wire \brmerge_i_reg_449[0]_i_2_n_0 ;
  wire \brmerge_i_reg_449[0]_i_3_n_0 ;
  wire \brmerge_i_reg_449[0]_i_4_n_0 ;
  wire \eol_2_i_reg_303[0]_i_1_n_0 ;
  wire \eol_2_i_reg_303[0]_i_2_n_0 ;
  wire \eol_2_i_reg_303_reg_n_0_[0] ;
  wire eol_i_reg_243;
  wire \eol_i_reg_243_reg_n_0_[0] ;
  wire \eol_reg_255[0]_i_1_n_0 ;
  wire \eol_reg_255[0]_i_2_n_0 ;
  wire \eol_reg_255_reg_n_0_[0] ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_0 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_1 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_2 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_3 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry__1_n_2 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry__1_n_3 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry_n_0 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry_n_1 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry_n_2 ;
  wire \exitcond3_i_fu_365_p2_inferred__0/i__carry_n_3 ;
  wire exitcond_i_fu_376_p2;
  wire exitcond_i_fu_376_p2_carry__0_i_1_n_0;
  wire exitcond_i_fu_376_p2_carry__0_i_2_n_0;
  wire exitcond_i_fu_376_p2_carry__0_i_3_n_0;
  wire exitcond_i_fu_376_p2_carry__0_i_4_n_0;
  wire exitcond_i_fu_376_p2_carry__0_n_0;
  wire exitcond_i_fu_376_p2_carry__0_n_1;
  wire exitcond_i_fu_376_p2_carry__0_n_2;
  wire exitcond_i_fu_376_p2_carry__0_n_3;
  wire exitcond_i_fu_376_p2_carry__1_i_1_n_0;
  wire exitcond_i_fu_376_p2_carry__1_i_2_n_0;
  wire exitcond_i_fu_376_p2_carry__1_i_3_n_0;
  wire exitcond_i_fu_376_p2_carry__1_n_2;
  wire exitcond_i_fu_376_p2_carry__1_n_3;
  wire exitcond_i_fu_376_p2_carry_i_1_n_0;
  wire exitcond_i_fu_376_p2_carry_i_2_n_0;
  wire exitcond_i_fu_376_p2_carry_i_3_n_0;
  wire exitcond_i_fu_376_p2_carry_i_4_n_0;
  wire exitcond_i_fu_376_p2_carry_n_0;
  wire exitcond_i_fu_376_p2_carry_n_1;
  wire exitcond_i_fu_376_p2_carry_n_2;
  wire exitcond_i_fu_376_p2_carry_n_3;
  wire \exitcond_i_reg_440[0]_i_1_n_0 ;
  wire \exitcond_i_reg_440_reg_n_0_[0] ;
  wire [31:0]i_V_fu_370_p2;
  wire [31:0]i_V_reg_435;
  wire \i_V_reg_435_reg[12]_i_1_n_0 ;
  wire \i_V_reg_435_reg[12]_i_1_n_1 ;
  wire \i_V_reg_435_reg[12]_i_1_n_2 ;
  wire \i_V_reg_435_reg[12]_i_1_n_3 ;
  wire \i_V_reg_435_reg[16]_i_1_n_0 ;
  wire \i_V_reg_435_reg[16]_i_1_n_1 ;
  wire \i_V_reg_435_reg[16]_i_1_n_2 ;
  wire \i_V_reg_435_reg[16]_i_1_n_3 ;
  wire \i_V_reg_435_reg[20]_i_1_n_0 ;
  wire \i_V_reg_435_reg[20]_i_1_n_1 ;
  wire \i_V_reg_435_reg[20]_i_1_n_2 ;
  wire \i_V_reg_435_reg[20]_i_1_n_3 ;
  wire \i_V_reg_435_reg[24]_i_1_n_0 ;
  wire \i_V_reg_435_reg[24]_i_1_n_1 ;
  wire \i_V_reg_435_reg[24]_i_1_n_2 ;
  wire \i_V_reg_435_reg[24]_i_1_n_3 ;
  wire \i_V_reg_435_reg[28]_i_1_n_0 ;
  wire \i_V_reg_435_reg[28]_i_1_n_1 ;
  wire \i_V_reg_435_reg[28]_i_1_n_2 ;
  wire \i_V_reg_435_reg[28]_i_1_n_3 ;
  wire \i_V_reg_435_reg[31]_i_1_n_2 ;
  wire \i_V_reg_435_reg[31]_i_1_n_3 ;
  wire \i_V_reg_435_reg[4]_i_1_n_0 ;
  wire \i_V_reg_435_reg[4]_i_1_n_1 ;
  wire \i_V_reg_435_reg[4]_i_1_n_2 ;
  wire \i_V_reg_435_reg[4]_i_1_n_3 ;
  wire \i_V_reg_435_reg[8]_i_1_n_0 ;
  wire \i_V_reg_435_reg[8]_i_1_n_1 ;
  wire \i_V_reg_435_reg[8]_i_1_n_2 ;
  wire \i_V_reg_435_reg[8]_i_1_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire img_src_0_data_strea_full_n;
  wire [7:0]input_r_TDATA;
  wire [0:0]input_r_TLAST;
  wire input_r_TREADY;
  wire [0:0]input_r_TUSER;
  wire input_r_TVALID;
  wire internal_empty_n_reg;
  wire sof_1_i_fu_144;
  wire sof_1_i_fu_1440;
  wire \sof_1_i_fu_144[0]_i_1_n_0 ;
  wire start_for_Duplicate_my_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire t_V_3_reg_232;
  wire \t_V_3_reg_232[0]_i_4_n_0 ;
  wire \t_V_3_reg_232[0]_i_5_n_0 ;
  wire [31:0]t_V_3_reg_232_reg;
  wire \t_V_3_reg_232_reg[0]_i_3_n_0 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_1 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_2 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_3 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_4 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_5 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_6 ;
  wire \t_V_3_reg_232_reg[0]_i_3_n_7 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_0 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[12]_i_1_n_7 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_0 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[16]_i_1_n_7 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_0 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[20]_i_1_n_7 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_0 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[24]_i_1_n_7 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[28]_i_1_n_7 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_0 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[4]_i_1_n_7 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_0 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_1 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_2 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_3 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_4 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_5 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_6 ;
  wire \t_V_3_reg_232_reg[8]_i_1_n_7 ;
  wire [31:0]t_V_reg_221;
  wire [7:0]tmp_data_V_reg_411;
  wire tmp_last_V_reg_419;
  wire [3:0]\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_exitcond_i_fu_376_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_376_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_exitcond_i_fu_376_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_376_p2_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_i_V_reg_435_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_435_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_t_V_3_reg_232_reg[28]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h45)) 
    \AXI_video_strm_V_data_V_0_payload_A[7]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_sel_wr),
        .I1(AXI_video_strm_V_data_V_0_ack_in),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .O(AXI_video_strm_V_data_V_0_load_A));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[0]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[1]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[2]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[3]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[4]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[5]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[6]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[7]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \AXI_video_strm_V_data_V_0_payload_B[7]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_sel_wr),
        .I1(AXI_video_strm_V_data_V_0_ack_in),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .O(AXI_video_strm_V_data_V_0_load_B));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[0]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[1]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[2]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[3]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[4]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[5]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[6]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[7]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    AXI_video_strm_V_data_V_0_sel_rd_i_1
       (.I0(AXI_video_strm_V_data_V_0_sel0),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .O(AXI_video_strm_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_data_V_0_sel_rd_i_1_n_0),
        .Q(AXI_video_strm_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_data_V_0_sel_wr_i_1
       (.I0(AXI_video_strm_V_data_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_data_V_0_sel_wr),
        .O(AXI_video_strm_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_data_V_0_sel_wr_i_1_n_0),
        .Q(AXI_video_strm_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \AXI_video_strm_V_data_V_0_state[0]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_data_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_data_V_0_state[1]_i_1 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(AXI_video_strm_V_data_V_0_ack_in),
        .O(AXI_video_strm_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_data_V_0_state),
        .Q(AXI_video_strm_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \AXI_video_strm_V_dest_V_0_state[0]_i_1 
       (.I0(input_r_TREADY),
        .I1(input_r_TVALID),
        .I2(\AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_2 
       (.I0(\AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(input_r_TREADY),
        .O(AXI_video_strm_V_dest_V_0_state));
  LUT5 #(
    .INIT(32'hFFFFF111)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_3 
       (.I0(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I1(brmerge_i_reg_449),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state2),
        .I4(\AXI_video_strm_V_dest_V_0_state[1]_i_4_n_0 ),
        .O(AXI_video_strm_V_data_V_0_sel0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_4 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(\eol_2_i_reg_303_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp2_iter1_reg_n_0),
        .O(\AXI_video_strm_V_dest_V_0_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_dest_V_0_state),
        .Q(input_r_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \AXI_video_strm_V_last_V_0_payload_A[0]_i_1 
       (.I0(input_r_TLAST),
        .I1(AXI_video_strm_V_last_V_0_sel_wr),
        .I2(AXI_video_strm_V_last_V_0_ack_in),
        .I3(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\AXI_video_strm_V_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \AXI_video_strm_V_last_V_0_payload_B[0]_i_1 
       (.I0(input_r_TLAST),
        .I1(AXI_video_strm_V_last_V_0_sel_wr),
        .I2(AXI_video_strm_V_last_V_0_ack_in),
        .I3(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_last_V_0_payload_B),
        .O(\AXI_video_strm_V_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_last_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_last_V_0_sel_rd_i_1
       (.I0(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(AXI_video_strm_V_last_V_0_sel),
        .O(AXI_video_strm_V_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_last_V_0_sel_rd_i_1_n_0),
        .Q(AXI_video_strm_V_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_last_V_0_sel_wr_i_1
       (.I0(AXI_video_strm_V_last_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_last_V_0_sel_wr),
        .O(AXI_video_strm_V_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_last_V_0_sel_wr_i_1_n_0),
        .Q(AXI_video_strm_V_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \AXI_video_strm_V_last_V_0_state[0]_i_1 
       (.I0(AXI_video_strm_V_last_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I3(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_last_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_last_V_0_state[1]_i_1 
       (.I0(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(AXI_video_strm_V_last_V_0_ack_in),
        .O(AXI_video_strm_V_last_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_last_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_last_V_0_state),
        .Q(AXI_video_strm_V_last_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \AXI_video_strm_V_user_V_0_payload_A[0]_i_1 
       (.I0(input_r_TUSER),
        .I1(AXI_video_strm_V_user_V_0_sel_wr),
        .I2(AXI_video_strm_V_user_V_0_ack_in),
        .I3(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_user_V_0_payload_A),
        .O(\AXI_video_strm_V_user_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_user_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \AXI_video_strm_V_user_V_0_payload_B[0]_i_1 
       (.I0(input_r_TUSER),
        .I1(AXI_video_strm_V_user_V_0_sel_wr),
        .I2(AXI_video_strm_V_user_V_0_ack_in),
        .I3(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_user_V_0_payload_B),
        .O(\AXI_video_strm_V_user_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_user_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_user_V_0_sel_rd_i_1
       (.I0(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(AXI_video_strm_V_user_V_0_sel),
        .O(AXI_video_strm_V_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_user_V_0_sel_rd_i_1_n_0),
        .Q(AXI_video_strm_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_user_V_0_sel_wr_i_1
       (.I0(AXI_video_strm_V_user_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_user_V_0_sel_wr),
        .O(AXI_video_strm_V_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_user_V_0_sel_wr_i_1_n_0),
        .Q(AXI_video_strm_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hD8F8)) 
    \AXI_video_strm_V_user_V_0_state[0]_i_1 
       (.I0(AXI_video_strm_V_user_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I3(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_user_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_user_V_0_state[1]_i_1 
       (.I0(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(AXI_video_strm_V_user_V_0_ack_in),
        .O(AXI_video_strm_V_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_user_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_user_V_0_state),
        .Q(AXI_video_strm_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][0]_i_1 
       (.I0(axi_data_V_1_i_reg_266[0]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[0]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][1]_i_1 
       (.I0(axi_data_V_1_i_reg_266[1]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[1]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][2]_i_1 
       (.I0(axi_data_V_1_i_reg_266[2]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[2]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][3]_i_1 
       (.I0(axi_data_V_1_i_reg_266[3]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[3]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][4]_i_1 
       (.I0(axi_data_V_1_i_reg_266[4]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[4]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][5]_i_1 
       (.I0(axi_data_V_1_i_reg_266[5]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[5]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][6]_i_1 
       (.I0(axi_data_V_1_i_reg_266[6]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[6]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00A8000000000000)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(img_src_0_data_strea_full_n),
        .I1(brmerge_i_reg_449),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(\exitcond_i_reg_440_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp1_iter1_reg_n_0),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(E));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(axi_data_V_1_i_reg_266[7]),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_data_V_0_payload_B[7]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[0]_i_1__10 
       (.I0(Q[1]),
        .I1(CO),
        .I2(internal_empty_n_reg),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hAEAEAEEEEEEEAEEE)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(internal_empty_n_reg),
        .I1(ap_CS_fsm_state2),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AXI_video_strm_V_user_V_0_payload_A),
        .I4(AXI_video_strm_V_user_V_0_sel),
        .I5(AXI_video_strm_V_user_V_0_payload_B),
        .O(ap_NS_fsm[1]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \ap_CS_fsm[2]_i_1__10 
       (.I0(ap_CS_fsm_state2),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AXI_video_strm_V_user_V_0_payload_A),
        .I3(AXI_video_strm_V_user_V_0_sel),
        .I4(AXI_video_strm_V_user_V_0_payload_B),
        .O(ap_NS_fsm[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[3]_i_1__11 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state10),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'hFF44FF444F44FF44)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(\ap_CS_fsm[5]_i_2_n_0 ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(ap_enable_reg_pp1_iter1_reg_n_0),
        .I5(ap_enable_reg_pp1_iter0),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\ap_CS_fsm[5]_i_2_n_0 ),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(ap_enable_reg_pp1_iter1_reg_n_0),
        .I3(ap_enable_reg_pp1_iter0),
        .O(ap_NS_fsm[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(\exitcond_i_reg_440_reg_n_0_[0] ),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(brmerge_i_reg_449),
        .I3(img_src_0_data_strea_full_n),
        .O(\ap_CS_fsm[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAABAAFFAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(\eol_2_i_reg_303_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(ap_enable_reg_pp2_iter1_reg_n_0),
        .I5(ap_enable_reg_pp2_iter0),
        .O(ap_NS_fsm[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000E000)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(\eol_2_i_reg_303_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp2_stage0),
        .I3(ap_enable_reg_pp2_iter1_reg_n_0),
        .I4(ap_enable_reg_pp2_iter0),
        .O(ap_NS_fsm[7]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_pp2_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hD0D0D0D000D00000)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(exitcond_i_fu_376_p2),
        .I1(\t_V_3_reg_232[0]_i_4_n_0 ),
        .I2(ap_rst_n),
        .I3(CO),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp1_iter0),
        .O(ap_enable_reg_pp1_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD000F0F0D0000000)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(Q[1]),
        .I1(CO),
        .I2(ap_rst_n),
        .I3(ap_enable_reg_pp1_iter1_reg_n_0),
        .I4(ap_enable_reg_pp1_iter1_i_2_n_0),
        .I5(ap_enable_reg_pp1_iter0),
        .O(ap_enable_reg_pp1_iter1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000222A)) 
    ap_enable_reg_pp1_iter1_i_2
       (.I0(ap_enable_reg_pp1_iter1_reg_n_0),
        .I1(img_src_0_data_strea_full_n),
        .I2(brmerge_i_reg_449),
        .I3(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I4(\exitcond_i_reg_440_reg_n_0_[0] ),
        .O(ap_enable_reg_pp1_iter1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000057777777)) 
    ap_enable_reg_pp2_iter0_i_1
       (.I0(ap_CS_fsm_pp2_stage0),
        .I1(\eol_2_i_reg_303_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp2_iter1_reg_n_0),
        .I3(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_last_V_0_data_out),
        .I5(ap_enable_reg_pp2_iter0_i_2_n_0),
        .O(ap_enable_reg_pp2_iter0_i_1_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    ap_enable_reg_pp2_iter0_i_2
       (.I0(ap_enable_reg_pp2_iter0),
        .I1(ap_CS_fsm_state7),
        .I2(ap_rst_n),
        .O(ap_enable_reg_pp2_iter0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCC4CC00000400)) 
    ap_enable_reg_pp2_iter1_i_1
       (.I0(ap_CS_fsm_state7),
        .I1(ap_rst_n),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp2_iter1_reg_n_0),
        .I4(\eol_2_i_reg_303_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp2_iter0),
        .O(ap_enable_reg_pp2_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter1_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[0]_i_1 
       (.I0(tmp_data_V_reg_411[0]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[0]),
        .O(\axi_data_V1_i_reg_211[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[1]_i_1 
       (.I0(tmp_data_V_reg_411[1]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[1]),
        .O(\axi_data_V1_i_reg_211[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[2]_i_1 
       (.I0(tmp_data_V_reg_411[2]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[2]),
        .O(\axi_data_V1_i_reg_211[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[3]_i_1 
       (.I0(tmp_data_V_reg_411[3]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[3]),
        .O(\axi_data_V1_i_reg_211[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[4]_i_1 
       (.I0(tmp_data_V_reg_411[4]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[4]),
        .O(\axi_data_V1_i_reg_211[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[5]_i_1 
       (.I0(tmp_data_V_reg_411[5]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[5]),
        .O(\axi_data_V1_i_reg_211[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[6]_i_1 
       (.I0(tmp_data_V_reg_411[6]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[6]),
        .O(\axi_data_V1_i_reg_211[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_211[7]_i_1 
       (.I0(tmp_data_V_reg_411[7]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_326[7]),
        .O(\axi_data_V1_i_reg_211[7]_i_1_n_0 ));
  FDRE \axi_data_V1_i_reg_211_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[0]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[0]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[1]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[1]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[2]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[2]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[3]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[3]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[4]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[4]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[5]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[5]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[6]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[6]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_211_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_211[7]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_211[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[0]_i_1 
       (.I0(axi_data_V1_i_reg_211[0]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[0]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[0]),
        .O(\axi_data_V_1_i_reg_266[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[1]_i_1 
       (.I0(axi_data_V1_i_reg_211[1]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[1]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[1]),
        .O(\axi_data_V_1_i_reg_266[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[2]_i_1 
       (.I0(axi_data_V1_i_reg_211[2]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[2]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[2]),
        .O(\axi_data_V_1_i_reg_266[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[3]_i_1 
       (.I0(axi_data_V1_i_reg_211[3]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[3]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[3]),
        .O(\axi_data_V_1_i_reg_266[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[4]_i_1 
       (.I0(axi_data_V1_i_reg_211[4]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[4]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[4]),
        .O(\axi_data_V_1_i_reg_266[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[5]_i_1 
       (.I0(axi_data_V1_i_reg_211[5]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[5]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[5]),
        .O(\axi_data_V_1_i_reg_266[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[6]_i_1 
       (.I0(axi_data_V1_i_reg_211[6]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[6]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[6]),
        .O(\axi_data_V_1_i_reg_266[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_1_i_reg_266[7]_i_1 
       (.I0(axi_data_V1_i_reg_211[7]),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(axi_data_V_1_i_reg_266[7]),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_data_V_0_data_out[7]),
        .O(\axi_data_V_1_i_reg_266[7]_i_1_n_0 ));
  FDRE \axi_data_V_1_i_reg_266_reg[0] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[0]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[0]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[1] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[1]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[1]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[2] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[2]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[2]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[3] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[3]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[3]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[4] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[4]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[4]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[5] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[5]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[5]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[6] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[6]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[6]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_266_reg[7] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_266[7]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_266[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[0]_i_1 
       (.I0(axi_data_V_1_i_reg_266[0]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[0]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[0]),
        .O(\axi_data_V_3_i_reg_326[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[1]_i_1 
       (.I0(axi_data_V_1_i_reg_266[1]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[1]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[1]),
        .O(\axi_data_V_3_i_reg_326[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[2]_i_1 
       (.I0(axi_data_V_1_i_reg_266[2]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[2]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[2]),
        .O(\axi_data_V_3_i_reg_326[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[3]_i_1 
       (.I0(axi_data_V_1_i_reg_266[3]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[3]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[3]),
        .O(\axi_data_V_3_i_reg_326[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[4]_i_1 
       (.I0(axi_data_V_1_i_reg_266[4]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[4]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[4]),
        .O(\axi_data_V_3_i_reg_326[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[5]_i_1 
       (.I0(axi_data_V_1_i_reg_266[5]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[5]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[5]),
        .O(\axi_data_V_3_i_reg_326[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[6]_i_1 
       (.I0(axi_data_V_1_i_reg_266[6]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[6]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[6]),
        .O(\axi_data_V_3_i_reg_326[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_326[7]_i_1 
       (.I0(axi_data_V_1_i_reg_266[7]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[7]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[7]),
        .O(\axi_data_V_3_i_reg_326[7]_i_1_n_0 ));
  FDRE \axi_data_V_3_i_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[0]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[0]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[1] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[1]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[1]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[2] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[2]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[2]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[3] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[3]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[3]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[4] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[4]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[4]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[5] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[5]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[5]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[6] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[6]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[6]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_326_reg[7] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_326[7]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_326[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V1_i_reg_201[0]_i_1 
       (.I0(tmp_last_V_reg_419),
        .I1(ap_CS_fsm_state3),
        .I2(axi_last_V_3_i_reg_314),
        .O(\axi_last_V1_i_reg_201[0]_i_1_n_0 ));
  FDRE \axi_last_V1_i_reg_201_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_last_V1_i_reg_201[0]_i_1_n_0 ),
        .Q(axi_last_V1_i_reg_201),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_last_V_3_i_reg_314[0]_i_1 
       (.I0(\eol_reg_255_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(AXI_video_strm_V_last_V_0_sel),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\axi_last_V_3_i_reg_314[0]_i_1_n_0 ));
  FDRE \axi_last_V_3_i_reg_314_reg[0] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\axi_last_V_3_i_reg_314[0]_i_1_n_0 ),
        .Q(axi_last_V_3_i_reg_314),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBB88B8B8)) 
    \brmerge_i_reg_449[0]_i_1 
       (.I0(brmerge_i_reg_449),
        .I1(\brmerge_i_reg_449[0]_i_2_n_0 ),
        .I2(\brmerge_i_reg_449[0]_i_3_n_0 ),
        .I3(\eol_i_reg_243_reg_n_0_[0] ),
        .I4(\brmerge_i_reg_449[0]_i_4_n_0 ),
        .I5(sof_1_i_fu_144),
        .O(\brmerge_i_reg_449[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \brmerge_i_reg_449[0]_i_2 
       (.I0(exitcond_i_fu_376_p2),
        .I1(\t_V_3_reg_232[0]_i_4_n_0 ),
        .O(\brmerge_i_reg_449[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \brmerge_i_reg_449[0]_i_3 
       (.I0(\eol_reg_255_reg_n_0_[0] ),
        .I1(brmerge_i_reg_449),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(AXI_video_strm_V_last_V_0_sel),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\brmerge_i_reg_449[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \brmerge_i_reg_449[0]_i_4 
       (.I0(\exitcond_i_reg_440_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(ap_CS_fsm_pp1_stage0),
        .O(\brmerge_i_reg_449[0]_i_4_n_0 ));
  FDRE \brmerge_i_reg_449_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\brmerge_i_reg_449[0]_i_1_n_0 ),
        .Q(brmerge_i_reg_449),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \eol_2_i_reg_303[0]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(ap_enable_reg_pp2_iter1_reg_n_0),
        .I2(\eol_2_i_reg_303_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .O(\eol_2_i_reg_303[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \eol_2_i_reg_303[0]_i_2 
       (.I0(\eol_i_reg_243_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(AXI_video_strm_V_last_V_0_sel),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\eol_2_i_reg_303[0]_i_2_n_0 ));
  FDRE \eol_2_i_reg_303_reg[0] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_303[0]_i_1_n_0 ),
        .D(\eol_2_i_reg_303[0]_i_2_n_0 ),
        .Q(\eol_2_i_reg_303_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \eol_i_reg_243[0]_i_1 
       (.I0(AXI_video_strm_V_last_V_0_payload_A),
        .I1(AXI_video_strm_V_last_V_0_sel),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(brmerge_i_reg_449),
        .I4(\eol_reg_255_reg_n_0_[0] ),
        .I5(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .O(eol_i_reg_243));
  FDRE \eol_i_reg_243_reg[0] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(eol_i_reg_243),
        .Q(\eol_i_reg_243_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \eol_reg_255[0]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .O(\eol_reg_255[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \eol_reg_255[0]_i_2 
       (.I0(axi_last_V1_i_reg_201),
        .I1(\axi_data_V_1_i_reg_266_reg[0]_0 ),
        .I2(\eol_reg_255_reg_n_0_[0] ),
        .I3(brmerge_i_reg_449),
        .I4(AXI_video_strm_V_last_V_0_data_out),
        .O(\eol_reg_255[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7FFFFFFFFFF)) 
    \eol_reg_255[0]_i_3 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond_i_reg_440_reg_n_0_[0] ),
        .I3(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I4(brmerge_i_reg_449),
        .I5(img_src_0_data_strea_full_n),
        .O(\axi_data_V_1_i_reg_266_reg[0]_0 ));
  FDRE \eol_reg_255_reg[0] 
       (.C(ap_clk),
        .CE(\eol_reg_255[0]_i_1_n_0 ),
        .D(\eol_reg_255[0]_i_2_n_0 ),
        .Q(\eol_reg_255_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \exitcond3_i_fu_365_p2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\exitcond3_i_fu_365_p2_inferred__0/i__carry_n_0 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry_n_1 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry_n_2 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \exitcond3_i_fu_365_p2_inferred__0/i__carry__0 
       (.CI(\exitcond3_i_fu_365_p2_inferred__0/i__carry_n_0 ),
        .CO({\exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_0 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_1 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_2 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \exitcond3_i_fu_365_p2_inferred__0/i__carry__1 
       (.CI(\exitcond3_i_fu_365_p2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry__1_CO_UNCONNECTED [3],CO,\exitcond3_i_fu_365_p2_inferred__0/i__carry__1_n_2 ,\exitcond3_i_fu_365_p2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond3_i_fu_365_p2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  CARRY4 exitcond_i_fu_376_p2_carry
       (.CI(1'b0),
        .CO({exitcond_i_fu_376_p2_carry_n_0,exitcond_i_fu_376_p2_carry_n_1,exitcond_i_fu_376_p2_carry_n_2,exitcond_i_fu_376_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_376_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_376_p2_carry_i_1_n_0,exitcond_i_fu_376_p2_carry_i_2_n_0,exitcond_i_fu_376_p2_carry_i_3_n_0,exitcond_i_fu_376_p2_carry_i_4_n_0}));
  CARRY4 exitcond_i_fu_376_p2_carry__0
       (.CI(exitcond_i_fu_376_p2_carry_n_0),
        .CO({exitcond_i_fu_376_p2_carry__0_n_0,exitcond_i_fu_376_p2_carry__0_n_1,exitcond_i_fu_376_p2_carry__0_n_2,exitcond_i_fu_376_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_376_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_376_p2_carry__0_i_1_n_0,exitcond_i_fu_376_p2_carry__0_i_2_n_0,exitcond_i_fu_376_p2_carry__0_i_3_n_0,exitcond_i_fu_376_p2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry__0_i_1
       (.I0(t_V_3_reg_232_reg[22]),
        .I1(t_V_3_reg_232_reg[23]),
        .I2(t_V_3_reg_232_reg[21]),
        .O(exitcond_i_fu_376_p2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry__0_i_2
       (.I0(t_V_3_reg_232_reg[19]),
        .I1(t_V_3_reg_232_reg[20]),
        .I2(t_V_3_reg_232_reg[18]),
        .O(exitcond_i_fu_376_p2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry__0_i_3
       (.I0(t_V_3_reg_232_reg[16]),
        .I1(t_V_3_reg_232_reg[17]),
        .I2(t_V_3_reg_232_reg[15]),
        .O(exitcond_i_fu_376_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry__0_i_4
       (.I0(t_V_3_reg_232_reg[13]),
        .I1(t_V_3_reg_232_reg[14]),
        .I2(t_V_3_reg_232_reg[12]),
        .O(exitcond_i_fu_376_p2_carry__0_i_4_n_0));
  CARRY4 exitcond_i_fu_376_p2_carry__1
       (.CI(exitcond_i_fu_376_p2_carry__0_n_0),
        .CO({NLW_exitcond_i_fu_376_p2_carry__1_CO_UNCONNECTED[3],exitcond_i_fu_376_p2,exitcond_i_fu_376_p2_carry__1_n_2,exitcond_i_fu_376_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_376_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,exitcond_i_fu_376_p2_carry__1_i_1_n_0,exitcond_i_fu_376_p2_carry__1_i_2_n_0,exitcond_i_fu_376_p2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    exitcond_i_fu_376_p2_carry__1_i_1
       (.I0(t_V_3_reg_232_reg[31]),
        .I1(t_V_3_reg_232_reg[30]),
        .O(exitcond_i_fu_376_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry__1_i_2
       (.I0(t_V_3_reg_232_reg[28]),
        .I1(t_V_3_reg_232_reg[29]),
        .I2(t_V_3_reg_232_reg[27]),
        .O(exitcond_i_fu_376_p2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry__1_i_3
       (.I0(t_V_3_reg_232_reg[25]),
        .I1(t_V_3_reg_232_reg[26]),
        .I2(t_V_3_reg_232_reg[24]),
        .O(exitcond_i_fu_376_p2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry_i_1
       (.I0(t_V_3_reg_232_reg[10]),
        .I1(t_V_3_reg_232_reg[11]),
        .I2(t_V_3_reg_232_reg[9]),
        .O(exitcond_i_fu_376_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_376_p2_carry_i_2
       (.I0(t_V_3_reg_232_reg[7]),
        .I1(t_V_3_reg_232_reg[8]),
        .I2(t_V_3_reg_232_reg[6]),
        .O(exitcond_i_fu_376_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    exitcond_i_fu_376_p2_carry_i_3
       (.I0(t_V_3_reg_232_reg[3]),
        .I1(t_V_3_reg_232_reg[4]),
        .I2(t_V_3_reg_232_reg[5]),
        .O(exitcond_i_fu_376_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond_i_fu_376_p2_carry_i_4
       (.I0(t_V_3_reg_232_reg[0]),
        .I1(t_V_3_reg_232_reg[2]),
        .I2(t_V_3_reg_232_reg[1]),
        .O(exitcond_i_fu_376_p2_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \exitcond_i_reg_440[0]_i_1 
       (.I0(\exitcond_i_reg_440_reg_n_0_[0] ),
        .I1(\t_V_3_reg_232[0]_i_4_n_0 ),
        .I2(exitcond_i_fu_376_p2),
        .O(\exitcond_i_reg_440[0]_i_1_n_0 ));
  FDRE \exitcond_i_reg_440_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_i_reg_440[0]_i_1_n_0 ),
        .Q(\exitcond_i_reg_440_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_435[0]_i_1 
       (.I0(t_V_reg_221[0]),
        .O(i_V_fu_370_p2[0]));
  FDRE \i_V_reg_435_reg[0] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[0]),
        .Q(i_V_reg_435[0]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[10] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[10]),
        .Q(i_V_reg_435[10]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[11] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[11]),
        .Q(i_V_reg_435[11]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[12] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[12]),
        .Q(i_V_reg_435[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[12]_i_1 
       (.CI(\i_V_reg_435_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_435_reg[12]_i_1_n_0 ,\i_V_reg_435_reg[12]_i_1_n_1 ,\i_V_reg_435_reg[12]_i_1_n_2 ,\i_V_reg_435_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[12:9]),
        .S(t_V_reg_221[12:9]));
  FDRE \i_V_reg_435_reg[13] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[13]),
        .Q(i_V_reg_435[13]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[14] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[14]),
        .Q(i_V_reg_435[14]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[15] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[15]),
        .Q(i_V_reg_435[15]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[16] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[16]),
        .Q(i_V_reg_435[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[16]_i_1 
       (.CI(\i_V_reg_435_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_435_reg[16]_i_1_n_0 ,\i_V_reg_435_reg[16]_i_1_n_1 ,\i_V_reg_435_reg[16]_i_1_n_2 ,\i_V_reg_435_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[16:13]),
        .S(t_V_reg_221[16:13]));
  FDRE \i_V_reg_435_reg[17] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[17]),
        .Q(i_V_reg_435[17]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[18] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[18]),
        .Q(i_V_reg_435[18]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[19] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[19]),
        .Q(i_V_reg_435[19]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[1] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[1]),
        .Q(i_V_reg_435[1]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[20] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[20]),
        .Q(i_V_reg_435[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[20]_i_1 
       (.CI(\i_V_reg_435_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_435_reg[20]_i_1_n_0 ,\i_V_reg_435_reg[20]_i_1_n_1 ,\i_V_reg_435_reg[20]_i_1_n_2 ,\i_V_reg_435_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[20:17]),
        .S(t_V_reg_221[20:17]));
  FDRE \i_V_reg_435_reg[21] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[21]),
        .Q(i_V_reg_435[21]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[22] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[22]),
        .Q(i_V_reg_435[22]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[23] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[23]),
        .Q(i_V_reg_435[23]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[24] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[24]),
        .Q(i_V_reg_435[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[24]_i_1 
       (.CI(\i_V_reg_435_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_435_reg[24]_i_1_n_0 ,\i_V_reg_435_reg[24]_i_1_n_1 ,\i_V_reg_435_reg[24]_i_1_n_2 ,\i_V_reg_435_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[24:21]),
        .S(t_V_reg_221[24:21]));
  FDRE \i_V_reg_435_reg[25] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[25]),
        .Q(i_V_reg_435[25]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[26] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[26]),
        .Q(i_V_reg_435[26]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[27] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[27]),
        .Q(i_V_reg_435[27]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[28] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[28]),
        .Q(i_V_reg_435[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[28]_i_1 
       (.CI(\i_V_reg_435_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_435_reg[28]_i_1_n_0 ,\i_V_reg_435_reg[28]_i_1_n_1 ,\i_V_reg_435_reg[28]_i_1_n_2 ,\i_V_reg_435_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[28:25]),
        .S(t_V_reg_221[28:25]));
  FDRE \i_V_reg_435_reg[29] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[29]),
        .Q(i_V_reg_435[29]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[2] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[2]),
        .Q(i_V_reg_435[2]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[30] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[30]),
        .Q(i_V_reg_435[30]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[31] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[31]),
        .Q(i_V_reg_435[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[31]_i_1 
       (.CI(\i_V_reg_435_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_435_reg[31]_i_1_CO_UNCONNECTED [3:2],\i_V_reg_435_reg[31]_i_1_n_2 ,\i_V_reg_435_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_435_reg[31]_i_1_O_UNCONNECTED [3],i_V_fu_370_p2[31:29]}),
        .S({1'b0,t_V_reg_221[31:29]}));
  FDRE \i_V_reg_435_reg[3] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[3]),
        .Q(i_V_reg_435[3]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[4] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[4]),
        .Q(i_V_reg_435[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_435_reg[4]_i_1_n_0 ,\i_V_reg_435_reg[4]_i_1_n_1 ,\i_V_reg_435_reg[4]_i_1_n_2 ,\i_V_reg_435_reg[4]_i_1_n_3 }),
        .CYINIT(t_V_reg_221[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[4:1]),
        .S(t_V_reg_221[4:1]));
  FDRE \i_V_reg_435_reg[5] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[5]),
        .Q(i_V_reg_435[5]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[6] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[6]),
        .Q(i_V_reg_435[6]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[7] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[7]),
        .Q(i_V_reg_435[7]),
        .R(1'b0));
  FDRE \i_V_reg_435_reg[8] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[8]),
        .Q(i_V_reg_435[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_435_reg[8]_i_1 
       (.CI(\i_V_reg_435_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_435_reg[8]_i_1_n_0 ,\i_V_reg_435_reg[8]_i_1_n_1 ,\i_V_reg_435_reg[8]_i_1_n_2 ,\i_V_reg_435_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[8:5]),
        .S(t_V_reg_221[8:5]));
  FDRE \i_V_reg_435_reg[9] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_370_p2[9]),
        .Q(i_V_reg_435[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1
       (.I0(t_V_reg_221[22]),
        .I1(t_V_reg_221[23]),
        .I2(t_V_reg_221[21]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2
       (.I0(t_V_reg_221[19]),
        .I1(t_V_reg_221[20]),
        .I2(t_V_reg_221[18]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3
       (.I0(t_V_reg_221[16]),
        .I1(t_V_reg_221[17]),
        .I2(t_V_reg_221[15]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4
       (.I0(t_V_reg_221[13]),
        .I1(t_V_reg_221[14]),
        .I2(t_V_reg_221[12]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(t_V_reg_221[31]),
        .I1(t_V_reg_221[30]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2
       (.I0(t_V_reg_221[28]),
        .I1(t_V_reg_221[29]),
        .I2(t_V_reg_221[27]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3
       (.I0(t_V_reg_221[25]),
        .I1(t_V_reg_221[26]),
        .I2(t_V_reg_221[24]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1
       (.I0(t_V_reg_221[10]),
        .I1(t_V_reg_221[11]),
        .I2(t_V_reg_221[9]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2
       (.I0(t_V_reg_221[7]),
        .I1(t_V_reg_221[8]),
        .I2(t_V_reg_221[6]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_3
       (.I0(t_V_reg_221[3]),
        .I1(t_V_reg_221[4]),
        .I2(t_V_reg_221[5]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_4
       (.I0(t_V_reg_221[0]),
        .I1(t_V_reg_221[2]),
        .I2(t_V_reg_221[1]),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_ready_i_1
       (.I0(CO),
        .I1(Q[1]),
        .O(AXIvideo2Mat_U0_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFDFDFD00)) 
    \sof_1_i_fu_144[0]_i_1 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(\t_V_3_reg_232[0]_i_4_n_0 ),
        .I2(exitcond_i_fu_376_p2),
        .I3(sof_1_i_fu_144),
        .I4(ap_CS_fsm_state3),
        .O(\sof_1_i_fu_144[0]_i_1_n_0 ));
  FDRE \sof_1_i_fu_144_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sof_1_i_fu_144[0]_i_1_n_0 ),
        .Q(sof_1_i_fu_144),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77707070)) 
    start_once_reg_i_1
       (.I0(Q[1]),
        .I1(CO),
        .I2(start_once_reg),
        .I3(start_for_Duplicate_my_U0_full_n),
        .I4(Block_proc_U0_ap_start),
        .O(start_once_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_0),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00FD0000)) 
    \t_V_3_reg_232[0]_i_1 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(\t_V_3_reg_232[0]_i_4_n_0 ),
        .I2(exitcond_i_fu_376_p2),
        .I3(CO),
        .I4(Q[1]),
        .O(t_V_3_reg_232));
  LUT3 #(
    .INIT(8'h02)) 
    \t_V_3_reg_232[0]_i_2 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(\t_V_3_reg_232[0]_i_4_n_0 ),
        .I2(exitcond_i_fu_376_p2),
        .O(sof_1_i_fu_1440));
  LUT6 #(
    .INIT(64'h01550000FFFFFFFF)) 
    \t_V_3_reg_232[0]_i_4 
       (.I0(\exitcond_i_reg_440_reg_n_0_[0] ),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(brmerge_i_reg_449),
        .I3(img_src_0_data_strea_full_n),
        .I4(ap_enable_reg_pp1_iter1_reg_n_0),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(\t_V_3_reg_232[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_3_reg_232[0]_i_5 
       (.I0(t_V_3_reg_232_reg[0]),
        .O(\t_V_3_reg_232[0]_i_5_n_0 ));
  FDRE \t_V_3_reg_232_reg[0] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[0]_i_3_n_7 ),
        .Q(t_V_3_reg_232_reg[0]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_3_reg_232_reg[0]_i_3_n_0 ,\t_V_3_reg_232_reg[0]_i_3_n_1 ,\t_V_3_reg_232_reg[0]_i_3_n_2 ,\t_V_3_reg_232_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_3_reg_232_reg[0]_i_3_n_4 ,\t_V_3_reg_232_reg[0]_i_3_n_5 ,\t_V_3_reg_232_reg[0]_i_3_n_6 ,\t_V_3_reg_232_reg[0]_i_3_n_7 }),
        .S({t_V_3_reg_232_reg[3:1],\t_V_3_reg_232[0]_i_5_n_0 }));
  FDRE \t_V_3_reg_232_reg[10] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[8]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[10]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[11] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[8]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[11]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[12] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[12]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[12]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[12]_i_1 
       (.CI(\t_V_3_reg_232_reg[8]_i_1_n_0 ),
        .CO({\t_V_3_reg_232_reg[12]_i_1_n_0 ,\t_V_3_reg_232_reg[12]_i_1_n_1 ,\t_V_3_reg_232_reg[12]_i_1_n_2 ,\t_V_3_reg_232_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[12]_i_1_n_4 ,\t_V_3_reg_232_reg[12]_i_1_n_5 ,\t_V_3_reg_232_reg[12]_i_1_n_6 ,\t_V_3_reg_232_reg[12]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[15:12]));
  FDRE \t_V_3_reg_232_reg[13] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[12]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[13]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[14] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[12]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[14]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[15] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[12]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[15]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[16] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[16]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[16]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[16]_i_1 
       (.CI(\t_V_3_reg_232_reg[12]_i_1_n_0 ),
        .CO({\t_V_3_reg_232_reg[16]_i_1_n_0 ,\t_V_3_reg_232_reg[16]_i_1_n_1 ,\t_V_3_reg_232_reg[16]_i_1_n_2 ,\t_V_3_reg_232_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[16]_i_1_n_4 ,\t_V_3_reg_232_reg[16]_i_1_n_5 ,\t_V_3_reg_232_reg[16]_i_1_n_6 ,\t_V_3_reg_232_reg[16]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[19:16]));
  FDRE \t_V_3_reg_232_reg[17] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[16]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[17]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[18] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[16]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[18]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[19] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[16]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[19]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[1] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[0]_i_3_n_6 ),
        .Q(t_V_3_reg_232_reg[1]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[20] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[20]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[20]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[20]_i_1 
       (.CI(\t_V_3_reg_232_reg[16]_i_1_n_0 ),
        .CO({\t_V_3_reg_232_reg[20]_i_1_n_0 ,\t_V_3_reg_232_reg[20]_i_1_n_1 ,\t_V_3_reg_232_reg[20]_i_1_n_2 ,\t_V_3_reg_232_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[20]_i_1_n_4 ,\t_V_3_reg_232_reg[20]_i_1_n_5 ,\t_V_3_reg_232_reg[20]_i_1_n_6 ,\t_V_3_reg_232_reg[20]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[23:20]));
  FDRE \t_V_3_reg_232_reg[21] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[20]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[21]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[22] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[20]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[22]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[23] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[20]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[23]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[24] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[24]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[24]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[24]_i_1 
       (.CI(\t_V_3_reg_232_reg[20]_i_1_n_0 ),
        .CO({\t_V_3_reg_232_reg[24]_i_1_n_0 ,\t_V_3_reg_232_reg[24]_i_1_n_1 ,\t_V_3_reg_232_reg[24]_i_1_n_2 ,\t_V_3_reg_232_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[24]_i_1_n_4 ,\t_V_3_reg_232_reg[24]_i_1_n_5 ,\t_V_3_reg_232_reg[24]_i_1_n_6 ,\t_V_3_reg_232_reg[24]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[27:24]));
  FDRE \t_V_3_reg_232_reg[25] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[24]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[25]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[26] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[24]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[26]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[27] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[24]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[27]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[28] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[28]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[28]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[28]_i_1 
       (.CI(\t_V_3_reg_232_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_3_reg_232_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_3_reg_232_reg[28]_i_1_n_1 ,\t_V_3_reg_232_reg[28]_i_1_n_2 ,\t_V_3_reg_232_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[28]_i_1_n_4 ,\t_V_3_reg_232_reg[28]_i_1_n_5 ,\t_V_3_reg_232_reg[28]_i_1_n_6 ,\t_V_3_reg_232_reg[28]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[31:28]));
  FDRE \t_V_3_reg_232_reg[29] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[28]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[29]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[2] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[0]_i_3_n_5 ),
        .Q(t_V_3_reg_232_reg[2]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[30] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[28]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[30]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[31] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[28]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[31]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[3] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[0]_i_3_n_4 ),
        .Q(t_V_3_reg_232_reg[3]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[4] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[4]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[4]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[4]_i_1 
       (.CI(\t_V_3_reg_232_reg[0]_i_3_n_0 ),
        .CO({\t_V_3_reg_232_reg[4]_i_1_n_0 ,\t_V_3_reg_232_reg[4]_i_1_n_1 ,\t_V_3_reg_232_reg[4]_i_1_n_2 ,\t_V_3_reg_232_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[4]_i_1_n_4 ,\t_V_3_reg_232_reg[4]_i_1_n_5 ,\t_V_3_reg_232_reg[4]_i_1_n_6 ,\t_V_3_reg_232_reg[4]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[7:4]));
  FDRE \t_V_3_reg_232_reg[5] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[4]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[5]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[6] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[4]_i_1_n_5 ),
        .Q(t_V_3_reg_232_reg[6]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[7] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[4]_i_1_n_4 ),
        .Q(t_V_3_reg_232_reg[7]),
        .R(t_V_3_reg_232));
  FDRE \t_V_3_reg_232_reg[8] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[8]_i_1_n_7 ),
        .Q(t_V_3_reg_232_reg[8]),
        .R(t_V_3_reg_232));
  CARRY4 \t_V_3_reg_232_reg[8]_i_1 
       (.CI(\t_V_3_reg_232_reg[4]_i_1_n_0 ),
        .CO({\t_V_3_reg_232_reg[8]_i_1_n_0 ,\t_V_3_reg_232_reg[8]_i_1_n_1 ,\t_V_3_reg_232_reg[8]_i_1_n_2 ,\t_V_3_reg_232_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_3_reg_232_reg[8]_i_1_n_4 ,\t_V_3_reg_232_reg[8]_i_1_n_5 ,\t_V_3_reg_232_reg[8]_i_1_n_6 ,\t_V_3_reg_232_reg[8]_i_1_n_7 }),
        .S(t_V_3_reg_232_reg[11:8]));
  FDRE \t_V_3_reg_232_reg[9] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1440),
        .D(\t_V_3_reg_232_reg[8]_i_1_n_6 ),
        .Q(t_V_3_reg_232_reg[9]),
        .R(t_V_3_reg_232));
  FDRE \t_V_reg_221_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[0]),
        .Q(t_V_reg_221[0]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[10]),
        .Q(t_V_reg_221[10]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[11]),
        .Q(t_V_reg_221[11]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[12]),
        .Q(t_V_reg_221[12]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[13]),
        .Q(t_V_reg_221[13]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[14]),
        .Q(t_V_reg_221[14]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[15]),
        .Q(t_V_reg_221[15]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[16]),
        .Q(t_V_reg_221[16]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[17]),
        .Q(t_V_reg_221[17]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[18]),
        .Q(t_V_reg_221[18]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[19]),
        .Q(t_V_reg_221[19]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[1]),
        .Q(t_V_reg_221[1]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[20]),
        .Q(t_V_reg_221[20]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[21]),
        .Q(t_V_reg_221[21]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[22]),
        .Q(t_V_reg_221[22]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[23]),
        .Q(t_V_reg_221[23]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[24]),
        .Q(t_V_reg_221[24]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[25]),
        .Q(t_V_reg_221[25]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[26]),
        .Q(t_V_reg_221[26]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[27]),
        .Q(t_V_reg_221[27]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[28]),
        .Q(t_V_reg_221[28]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[29]),
        .Q(t_V_reg_221[29]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[2]),
        .Q(t_V_reg_221[2]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[30]),
        .Q(t_V_reg_221[30]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[31]),
        .Q(t_V_reg_221[31]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[3]),
        .Q(t_V_reg_221[3]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[4]),
        .Q(t_V_reg_221[4]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[5]),
        .Q(t_V_reg_221[5]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[6]),
        .Q(t_V_reg_221[6]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[7]),
        .Q(t_V_reg_221[7]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[8]),
        .Q(t_V_reg_221[8]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_221_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_435[9]),
        .Q(t_V_reg_221[9]),
        .R(ap_CS_fsm_state3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[0]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[0]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[0]),
        .O(AXI_video_strm_V_data_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[1]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[1]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[1]),
        .O(AXI_video_strm_V_data_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[2]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[2]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[2]),
        .O(AXI_video_strm_V_data_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[3]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[3]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[3]),
        .O(AXI_video_strm_V_data_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[4]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[4]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[4]),
        .O(AXI_video_strm_V_data_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[5]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[5]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[5]),
        .O(AXI_video_strm_V_data_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[6]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[6]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[6]),
        .O(AXI_video_strm_V_data_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_411[7]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[7]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[7]),
        .O(AXI_video_strm_V_data_V_0_data_out[7]));
  FDRE \tmp_data_V_reg_411_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[0]),
        .Q(tmp_data_V_reg_411[0]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[1] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[1]),
        .Q(tmp_data_V_reg_411[1]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[2] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[2]),
        .Q(tmp_data_V_reg_411[2]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[3] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[3]),
        .Q(tmp_data_V_reg_411[3]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[4] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[4]),
        .Q(tmp_data_V_reg_411[4]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[5] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[5]),
        .Q(tmp_data_V_reg_411[5]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[6] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[6]),
        .Q(tmp_data_V_reg_411[6]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_411_reg[7] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[7]),
        .Q(tmp_data_V_reg_411[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_last_V_reg_419[0]_i_1 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .O(AXI_video_strm_V_data_V_0_sel2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_last_V_reg_419[0]_i_2 
       (.I0(AXI_video_strm_V_last_V_0_payload_B),
        .I1(AXI_video_strm_V_last_V_0_sel),
        .I2(AXI_video_strm_V_last_V_0_payload_A),
        .O(AXI_video_strm_V_last_V_0_data_out));
  FDRE \tmp_last_V_reg_419_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_last_V_0_data_out),
        .Q(tmp_last_V_reg_419),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Duplicate_my" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_Duplicate_my
   (CO,
    start_once_reg,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[0]_0 ,
    internal_full_n_reg,
    Q,
    internal_empty_n4_out,
    \mOutPtr_reg[1] ,
    internal_full_n_reg_0,
    internal_empty_n_reg,
    shiftReg_ce,
    ap_rst_n_inv,
    ap_clk,
    \ap_CS_fsm_reg[4] ,
    \mOutPtr_reg[0]_1 ,
    ap_rst_n,
    internal_empty_n_reg_0,
    img_src_0_cols_V_c27_empty_n,
    img_src_0_rows_V_c26_empty_n,
    internal_empty_n_reg_1,
    internal_empty_n_reg_2,
    Duplicate_my_U0_ap_start,
    internal_full_n_reg_1,
    internal_full_n_reg_2,
    internal_full_n_reg_3,
    internal_full_n_reg_4,
    img_src_c_2_data_str_full_n,
    img_src_c_3_data_str_full_n,
    img_src_c_4_data_str_full_n,
    img_src_c_5_data_str_full_n);
  output [0:0]CO;
  output start_once_reg;
  output \mOutPtr_reg[0] ;
  output \mOutPtr_reg[0]_0 ;
  output internal_full_n_reg;
  output [1:0]Q;
  output internal_empty_n4_out;
  output \mOutPtr_reg[1] ;
  output internal_full_n_reg_0;
  output internal_empty_n_reg;
  output shiftReg_ce;
  input ap_rst_n_inv;
  input ap_clk;
  input \ap_CS_fsm_reg[4] ;
  input \mOutPtr_reg[0]_1 ;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input img_src_0_cols_V_c27_empty_n;
  input img_src_0_rows_V_c26_empty_n;
  input internal_empty_n_reg_1;
  input internal_empty_n_reg_2;
  input Duplicate_my_U0_ap_start;
  input internal_full_n_reg_1;
  input internal_full_n_reg_2;
  input internal_full_n_reg_3;
  input internal_full_n_reg_4;
  input img_src_c_2_data_str_full_n;
  input img_src_c_3_data_str_full_n;
  input img_src_c_4_data_str_full_n;
  input img_src_c_5_data_str_full_n;

  wire [0:0]CO;
  wire Duplicate_my_U0_ap_start;
  wire [1:0]Q;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_i_1__10_n_0;
  wire ap_enable_reg_pp0_iter0_i_2_n_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire exitcond2_i_fu_378_p2_carry__0_i_1_n_0;
  wire exitcond2_i_fu_378_p2_carry__0_i_2_n_0;
  wire exitcond2_i_fu_378_p2_carry__0_i_3_n_0;
  wire exitcond2_i_fu_378_p2_carry__0_i_4_n_0;
  wire exitcond2_i_fu_378_p2_carry__0_n_0;
  wire exitcond2_i_fu_378_p2_carry__0_n_1;
  wire exitcond2_i_fu_378_p2_carry__0_n_2;
  wire exitcond2_i_fu_378_p2_carry__0_n_3;
  wire exitcond2_i_fu_378_p2_carry__1_i_1_n_0;
  wire exitcond2_i_fu_378_p2_carry__1_i_2_n_0;
  wire exitcond2_i_fu_378_p2_carry__1_i_3_n_0;
  wire exitcond2_i_fu_378_p2_carry__1_n_2;
  wire exitcond2_i_fu_378_p2_carry__1_n_3;
  wire exitcond2_i_fu_378_p2_carry_i_1_n_0;
  wire exitcond2_i_fu_378_p2_carry_i_2_n_0;
  wire exitcond2_i_fu_378_p2_carry_i_3_n_0;
  wire exitcond2_i_fu_378_p2_carry_i_4_n_0;
  wire exitcond2_i_fu_378_p2_carry_n_0;
  wire exitcond2_i_fu_378_p2_carry_n_1;
  wire exitcond2_i_fu_378_p2_carry_n_2;
  wire exitcond2_i_fu_378_p2_carry_n_3;
  wire exitcond_i_fu_389_p2_carry__0_i_1_n_0;
  wire exitcond_i_fu_389_p2_carry__0_i_2_n_0;
  wire exitcond_i_fu_389_p2_carry__0_i_3_n_0;
  wire exitcond_i_fu_389_p2_carry__0_i_4_n_0;
  wire exitcond_i_fu_389_p2_carry__0_n_0;
  wire exitcond_i_fu_389_p2_carry__0_n_1;
  wire exitcond_i_fu_389_p2_carry__0_n_2;
  wire exitcond_i_fu_389_p2_carry__0_n_3;
  wire exitcond_i_fu_389_p2_carry__1_i_1_n_0;
  wire exitcond_i_fu_389_p2_carry__1_i_2_n_0;
  wire exitcond_i_fu_389_p2_carry__1_i_3_n_0;
  wire exitcond_i_fu_389_p2_carry__1_n_2;
  wire exitcond_i_fu_389_p2_carry__1_n_3;
  wire exitcond_i_fu_389_p2_carry_i_1_n_0;
  wire exitcond_i_fu_389_p2_carry_i_2_n_0;
  wire exitcond_i_fu_389_p2_carry_i_3_n_0;
  wire exitcond_i_fu_389_p2_carry_i_4_n_0;
  wire exitcond_i_fu_389_p2_carry_n_0;
  wire exitcond_i_fu_389_p2_carry_n_1;
  wire exitcond_i_fu_389_p2_carry_n_2;
  wire exitcond_i_fu_389_p2_carry_n_3;
  wire \exitcond_i_reg_419[0]_i_1_n_0 ;
  wire \exitcond_i_reg_419_reg_n_0_[0] ;
  wire [31:0]i_V_fu_383_p2;
  wire [31:0]i_V_reg_414;
  wire \i_V_reg_414_reg[12]_i_1_n_0 ;
  wire \i_V_reg_414_reg[12]_i_1_n_1 ;
  wire \i_V_reg_414_reg[12]_i_1_n_2 ;
  wire \i_V_reg_414_reg[12]_i_1_n_3 ;
  wire \i_V_reg_414_reg[16]_i_1_n_0 ;
  wire \i_V_reg_414_reg[16]_i_1_n_1 ;
  wire \i_V_reg_414_reg[16]_i_1_n_2 ;
  wire \i_V_reg_414_reg[16]_i_1_n_3 ;
  wire \i_V_reg_414_reg[20]_i_1_n_0 ;
  wire \i_V_reg_414_reg[20]_i_1_n_1 ;
  wire \i_V_reg_414_reg[20]_i_1_n_2 ;
  wire \i_V_reg_414_reg[20]_i_1_n_3 ;
  wire \i_V_reg_414_reg[24]_i_1_n_0 ;
  wire \i_V_reg_414_reg[24]_i_1_n_1 ;
  wire \i_V_reg_414_reg[24]_i_1_n_2 ;
  wire \i_V_reg_414_reg[24]_i_1_n_3 ;
  wire \i_V_reg_414_reg[28]_i_1_n_0 ;
  wire \i_V_reg_414_reg[28]_i_1_n_1 ;
  wire \i_V_reg_414_reg[28]_i_1_n_2 ;
  wire \i_V_reg_414_reg[28]_i_1_n_3 ;
  wire \i_V_reg_414_reg[31]_i_1_n_2 ;
  wire \i_V_reg_414_reg[31]_i_1_n_3 ;
  wire \i_V_reg_414_reg[4]_i_1_n_0 ;
  wire \i_V_reg_414_reg[4]_i_1_n_1 ;
  wire \i_V_reg_414_reg[4]_i_1_n_2 ;
  wire \i_V_reg_414_reg[4]_i_1_n_3 ;
  wire \i_V_reg_414_reg[8]_i_1_n_0 ;
  wire \i_V_reg_414_reg[8]_i_1_n_1 ;
  wire \i_V_reg_414_reg[8]_i_1_n_2 ;
  wire \i_V_reg_414_reg[8]_i_1_n_3 ;
  wire img_src_0_cols_V_c27_empty_n;
  wire img_src_0_rows_V_c26_empty_n;
  wire img_src_c_2_data_str_full_n;
  wire img_src_c_3_data_str_full_n;
  wire img_src_c_4_data_str_full_n;
  wire img_src_c_5_data_str_full_n;
  wire internal_empty_n4_out;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire internal_full_n_reg;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire internal_full_n_reg_2;
  wire internal_full_n_reg_3;
  wire internal_full_n_reg_4;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[1] ;
  wire shiftReg_ce;
  wire start_once_reg;
  wire start_once_reg_i_1__0_n_0;
  wire t_V_2_reg_359;
  wire t_V_2_reg_3590;
  wire \t_V_2_reg_359[0]_i_4_n_0 ;
  wire [31:0]t_V_2_reg_359_reg;
  wire \t_V_2_reg_359_reg[0]_i_3_n_0 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_1 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_2 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_3 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_4 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_5 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_6 ;
  wire \t_V_2_reg_359_reg[0]_i_3_n_7 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_0 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[12]_i_1_n_7 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_0 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[16]_i_1_n_7 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_0 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[20]_i_1_n_7 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_0 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[24]_i_1_n_7 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[28]_i_1_n_7 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_0 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[4]_i_1_n_7 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_0 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_1 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_2 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_3 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_4 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_5 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_6 ;
  wire \t_V_2_reg_359_reg[8]_i_1_n_7 ;
  wire t_V_reg_348;
  wire \t_V_reg_348_reg_n_0_[0] ;
  wire \t_V_reg_348_reg_n_0_[10] ;
  wire \t_V_reg_348_reg_n_0_[11] ;
  wire \t_V_reg_348_reg_n_0_[12] ;
  wire \t_V_reg_348_reg_n_0_[13] ;
  wire \t_V_reg_348_reg_n_0_[14] ;
  wire \t_V_reg_348_reg_n_0_[15] ;
  wire \t_V_reg_348_reg_n_0_[16] ;
  wire \t_V_reg_348_reg_n_0_[17] ;
  wire \t_V_reg_348_reg_n_0_[18] ;
  wire \t_V_reg_348_reg_n_0_[19] ;
  wire \t_V_reg_348_reg_n_0_[1] ;
  wire \t_V_reg_348_reg_n_0_[20] ;
  wire \t_V_reg_348_reg_n_0_[21] ;
  wire \t_V_reg_348_reg_n_0_[22] ;
  wire \t_V_reg_348_reg_n_0_[23] ;
  wire \t_V_reg_348_reg_n_0_[24] ;
  wire \t_V_reg_348_reg_n_0_[25] ;
  wire \t_V_reg_348_reg_n_0_[26] ;
  wire \t_V_reg_348_reg_n_0_[27] ;
  wire \t_V_reg_348_reg_n_0_[28] ;
  wire \t_V_reg_348_reg_n_0_[29] ;
  wire \t_V_reg_348_reg_n_0_[2] ;
  wire \t_V_reg_348_reg_n_0_[30] ;
  wire \t_V_reg_348_reg_n_0_[31] ;
  wire \t_V_reg_348_reg_n_0_[3] ;
  wire \t_V_reg_348_reg_n_0_[4] ;
  wire \t_V_reg_348_reg_n_0_[5] ;
  wire \t_V_reg_348_reg_n_0_[6] ;
  wire \t_V_reg_348_reg_n_0_[7] ;
  wire \t_V_reg_348_reg_n_0_[8] ;
  wire \t_V_reg_348_reg_n_0_[9] ;
  wire [3:0]NLW_exitcond2_i_fu_378_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_exitcond2_i_fu_378_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_exitcond2_i_fu_378_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_exitcond2_i_fu_378_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_389_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_389_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_exitcond_i_fu_389_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_389_p2_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_i_V_reg_414_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_414_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_t_V_2_reg_359_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \SRL_SIG[1][1]_i_1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .O(shiftReg_ce));
  LUT6 #(
    .INIT(64'hFFFF8AAA8AAA8AAA)) 
    \ap_CS_fsm[0]_i_1__11 
       (.I0(Q[0]),
        .I1(internal_empty_n_reg_0),
        .I2(img_src_0_cols_V_c27_empty_n),
        .I3(img_src_0_rows_V_c26_empty_n),
        .I4(Q[1]),
        .I5(CO),
        .O(ap_NS_fsm[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_CS_fsm_state5),
        .I1(internal_empty_n_reg_2),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \ap_CS_fsm[2]_i_1__11 
       (.I0(CO),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .I4(\ap_CS_fsm[3]_i_2_n_0 ),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT4 #(
    .INIT(16'h0800)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(\ap_CS_fsm[3]_i_2_n_0 ),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(\ap_CS_fsm[3]_i_3_n_0 ),
        .I1(internal_full_n_reg_4),
        .I2(img_src_c_2_data_str_full_n),
        .I3(img_src_c_3_data_str_full_n),
        .I4(img_src_c_4_data_str_full_n),
        .I5(img_src_c_5_data_str_full_n),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\exitcond_i_reg_419_reg_n_0_[0] ),
        .O(\ap_CS_fsm[3]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hD0D0D0D000D00000)) 
    ap_enable_reg_pp0_iter0_i_1__10
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0_i_2_n_0),
        .I2(ap_rst_n),
        .I3(CO),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__10_n_0));
  LUT6 #(
    .INIT(64'h0000FD00FFFFFFFF)) 
    ap_enable_reg_pp0_iter0_i_2
       (.I0(internal_full_n_reg_1),
        .I1(internal_full_n_reg_2),
        .I2(internal_full_n_reg_3),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(\exitcond_i_reg_419_reg_n_0_[0] ),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_enable_reg_pp0_iter0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__10_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000400040CC4000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(\ap_CS_fsm[3]_i_2_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(Q[1]),
        .I1(CO),
        .O(ap_enable_reg_pp0_iter00));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  CARRY4 exitcond2_i_fu_378_p2_carry
       (.CI(1'b0),
        .CO({exitcond2_i_fu_378_p2_carry_n_0,exitcond2_i_fu_378_p2_carry_n_1,exitcond2_i_fu_378_p2_carry_n_2,exitcond2_i_fu_378_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond2_i_fu_378_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond2_i_fu_378_p2_carry_i_1_n_0,exitcond2_i_fu_378_p2_carry_i_2_n_0,exitcond2_i_fu_378_p2_carry_i_3_n_0,exitcond2_i_fu_378_p2_carry_i_4_n_0}));
  CARRY4 exitcond2_i_fu_378_p2_carry__0
       (.CI(exitcond2_i_fu_378_p2_carry_n_0),
        .CO({exitcond2_i_fu_378_p2_carry__0_n_0,exitcond2_i_fu_378_p2_carry__0_n_1,exitcond2_i_fu_378_p2_carry__0_n_2,exitcond2_i_fu_378_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond2_i_fu_378_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({exitcond2_i_fu_378_p2_carry__0_i_1_n_0,exitcond2_i_fu_378_p2_carry__0_i_2_n_0,exitcond2_i_fu_378_p2_carry__0_i_3_n_0,exitcond2_i_fu_378_p2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry__0_i_1
       (.I0(\t_V_reg_348_reg_n_0_[22] ),
        .I1(\t_V_reg_348_reg_n_0_[23] ),
        .I2(\t_V_reg_348_reg_n_0_[21] ),
        .O(exitcond2_i_fu_378_p2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry__0_i_2
       (.I0(\t_V_reg_348_reg_n_0_[19] ),
        .I1(\t_V_reg_348_reg_n_0_[20] ),
        .I2(\t_V_reg_348_reg_n_0_[18] ),
        .O(exitcond2_i_fu_378_p2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry__0_i_3
       (.I0(\t_V_reg_348_reg_n_0_[16] ),
        .I1(\t_V_reg_348_reg_n_0_[17] ),
        .I2(\t_V_reg_348_reg_n_0_[15] ),
        .O(exitcond2_i_fu_378_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry__0_i_4
       (.I0(\t_V_reg_348_reg_n_0_[13] ),
        .I1(\t_V_reg_348_reg_n_0_[14] ),
        .I2(\t_V_reg_348_reg_n_0_[12] ),
        .O(exitcond2_i_fu_378_p2_carry__0_i_4_n_0));
  CARRY4 exitcond2_i_fu_378_p2_carry__1
       (.CI(exitcond2_i_fu_378_p2_carry__0_n_0),
        .CO({NLW_exitcond2_i_fu_378_p2_carry__1_CO_UNCONNECTED[3],CO,exitcond2_i_fu_378_p2_carry__1_n_2,exitcond2_i_fu_378_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond2_i_fu_378_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,exitcond2_i_fu_378_p2_carry__1_i_1_n_0,exitcond2_i_fu_378_p2_carry__1_i_2_n_0,exitcond2_i_fu_378_p2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    exitcond2_i_fu_378_p2_carry__1_i_1
       (.I0(\t_V_reg_348_reg_n_0_[31] ),
        .I1(\t_V_reg_348_reg_n_0_[30] ),
        .O(exitcond2_i_fu_378_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry__1_i_2
       (.I0(\t_V_reg_348_reg_n_0_[28] ),
        .I1(\t_V_reg_348_reg_n_0_[29] ),
        .I2(\t_V_reg_348_reg_n_0_[27] ),
        .O(exitcond2_i_fu_378_p2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry__1_i_3
       (.I0(\t_V_reg_348_reg_n_0_[25] ),
        .I1(\t_V_reg_348_reg_n_0_[26] ),
        .I2(\t_V_reg_348_reg_n_0_[24] ),
        .O(exitcond2_i_fu_378_p2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry_i_1
       (.I0(\t_V_reg_348_reg_n_0_[10] ),
        .I1(\t_V_reg_348_reg_n_0_[11] ),
        .I2(\t_V_reg_348_reg_n_0_[9] ),
        .O(exitcond2_i_fu_378_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_378_p2_carry_i_2
       (.I0(\t_V_reg_348_reg_n_0_[7] ),
        .I1(\t_V_reg_348_reg_n_0_[8] ),
        .I2(\t_V_reg_348_reg_n_0_[6] ),
        .O(exitcond2_i_fu_378_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    exitcond2_i_fu_378_p2_carry_i_3
       (.I0(\t_V_reg_348_reg_n_0_[3] ),
        .I1(\t_V_reg_348_reg_n_0_[4] ),
        .I2(\t_V_reg_348_reg_n_0_[5] ),
        .O(exitcond2_i_fu_378_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond2_i_fu_378_p2_carry_i_4
       (.I0(\t_V_reg_348_reg_n_0_[0] ),
        .I1(\t_V_reg_348_reg_n_0_[2] ),
        .I2(\t_V_reg_348_reg_n_0_[1] ),
        .O(exitcond2_i_fu_378_p2_carry_i_4_n_0));
  CARRY4 exitcond_i_fu_389_p2_carry
       (.CI(1'b0),
        .CO({exitcond_i_fu_389_p2_carry_n_0,exitcond_i_fu_389_p2_carry_n_1,exitcond_i_fu_389_p2_carry_n_2,exitcond_i_fu_389_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_389_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_389_p2_carry_i_1_n_0,exitcond_i_fu_389_p2_carry_i_2_n_0,exitcond_i_fu_389_p2_carry_i_3_n_0,exitcond_i_fu_389_p2_carry_i_4_n_0}));
  CARRY4 exitcond_i_fu_389_p2_carry__0
       (.CI(exitcond_i_fu_389_p2_carry_n_0),
        .CO({exitcond_i_fu_389_p2_carry__0_n_0,exitcond_i_fu_389_p2_carry__0_n_1,exitcond_i_fu_389_p2_carry__0_n_2,exitcond_i_fu_389_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_389_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_389_p2_carry__0_i_1_n_0,exitcond_i_fu_389_p2_carry__0_i_2_n_0,exitcond_i_fu_389_p2_carry__0_i_3_n_0,exitcond_i_fu_389_p2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry__0_i_1
       (.I0(t_V_2_reg_359_reg[22]),
        .I1(t_V_2_reg_359_reg[23]),
        .I2(t_V_2_reg_359_reg[21]),
        .O(exitcond_i_fu_389_p2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry__0_i_2
       (.I0(t_V_2_reg_359_reg[19]),
        .I1(t_V_2_reg_359_reg[20]),
        .I2(t_V_2_reg_359_reg[18]),
        .O(exitcond_i_fu_389_p2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry__0_i_3
       (.I0(t_V_2_reg_359_reg[16]),
        .I1(t_V_2_reg_359_reg[17]),
        .I2(t_V_2_reg_359_reg[15]),
        .O(exitcond_i_fu_389_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry__0_i_4
       (.I0(t_V_2_reg_359_reg[13]),
        .I1(t_V_2_reg_359_reg[14]),
        .I2(t_V_2_reg_359_reg[12]),
        .O(exitcond_i_fu_389_p2_carry__0_i_4_n_0));
  CARRY4 exitcond_i_fu_389_p2_carry__1
       (.CI(exitcond_i_fu_389_p2_carry__0_n_0),
        .CO({NLW_exitcond_i_fu_389_p2_carry__1_CO_UNCONNECTED[3],ap_condition_pp0_exit_iter0_state3,exitcond_i_fu_389_p2_carry__1_n_2,exitcond_i_fu_389_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_389_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,exitcond_i_fu_389_p2_carry__1_i_1_n_0,exitcond_i_fu_389_p2_carry__1_i_2_n_0,exitcond_i_fu_389_p2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    exitcond_i_fu_389_p2_carry__1_i_1
       (.I0(t_V_2_reg_359_reg[31]),
        .I1(t_V_2_reg_359_reg[30]),
        .O(exitcond_i_fu_389_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry__1_i_2
       (.I0(t_V_2_reg_359_reg[28]),
        .I1(t_V_2_reg_359_reg[29]),
        .I2(t_V_2_reg_359_reg[27]),
        .O(exitcond_i_fu_389_p2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry__1_i_3
       (.I0(t_V_2_reg_359_reg[25]),
        .I1(t_V_2_reg_359_reg[26]),
        .I2(t_V_2_reg_359_reg[24]),
        .O(exitcond_i_fu_389_p2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry_i_1
       (.I0(t_V_2_reg_359_reg[10]),
        .I1(t_V_2_reg_359_reg[11]),
        .I2(t_V_2_reg_359_reg[9]),
        .O(exitcond_i_fu_389_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_389_p2_carry_i_2
       (.I0(t_V_2_reg_359_reg[7]),
        .I1(t_V_2_reg_359_reg[8]),
        .I2(t_V_2_reg_359_reg[6]),
        .O(exitcond_i_fu_389_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    exitcond_i_fu_389_p2_carry_i_3
       (.I0(t_V_2_reg_359_reg[3]),
        .I1(t_V_2_reg_359_reg[4]),
        .I2(t_V_2_reg_359_reg[5]),
        .O(exitcond_i_fu_389_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond_i_fu_389_p2_carry_i_4
       (.I0(t_V_2_reg_359_reg[0]),
        .I1(t_V_2_reg_359_reg[2]),
        .I2(t_V_2_reg_359_reg[1]),
        .O(exitcond_i_fu_389_p2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \exitcond_i_reg_419[0]_i_1 
       (.I0(\exitcond_i_reg_419_reg_n_0_[0] ),
        .I1(\ap_CS_fsm[3]_i_2_n_0 ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .O(\exitcond_i_reg_419[0]_i_1_n_0 ));
  FDRE \exitcond_i_reg_419_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_i_reg_419[0]_i_1_n_0 ),
        .Q(\exitcond_i_reg_419_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_414[0]_i_1 
       (.I0(\t_V_reg_348_reg_n_0_[0] ),
        .O(i_V_fu_383_p2[0]));
  FDRE \i_V_reg_414_reg[0] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[0]),
        .Q(i_V_reg_414[0]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[10] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[10]),
        .Q(i_V_reg_414[10]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[11] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[11]),
        .Q(i_V_reg_414[11]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[12] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[12]),
        .Q(i_V_reg_414[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[12]_i_1 
       (.CI(\i_V_reg_414_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_414_reg[12]_i_1_n_0 ,\i_V_reg_414_reg[12]_i_1_n_1 ,\i_V_reg_414_reg[12]_i_1_n_2 ,\i_V_reg_414_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[12:9]),
        .S({\t_V_reg_348_reg_n_0_[12] ,\t_V_reg_348_reg_n_0_[11] ,\t_V_reg_348_reg_n_0_[10] ,\t_V_reg_348_reg_n_0_[9] }));
  FDRE \i_V_reg_414_reg[13] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[13]),
        .Q(i_V_reg_414[13]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[14] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[14]),
        .Q(i_V_reg_414[14]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[15] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[15]),
        .Q(i_V_reg_414[15]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[16] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[16]),
        .Q(i_V_reg_414[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[16]_i_1 
       (.CI(\i_V_reg_414_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_414_reg[16]_i_1_n_0 ,\i_V_reg_414_reg[16]_i_1_n_1 ,\i_V_reg_414_reg[16]_i_1_n_2 ,\i_V_reg_414_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[16:13]),
        .S({\t_V_reg_348_reg_n_0_[16] ,\t_V_reg_348_reg_n_0_[15] ,\t_V_reg_348_reg_n_0_[14] ,\t_V_reg_348_reg_n_0_[13] }));
  FDRE \i_V_reg_414_reg[17] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[17]),
        .Q(i_V_reg_414[17]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[18] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[18]),
        .Q(i_V_reg_414[18]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[19] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[19]),
        .Q(i_V_reg_414[19]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[1] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[1]),
        .Q(i_V_reg_414[1]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[20] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[20]),
        .Q(i_V_reg_414[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[20]_i_1 
       (.CI(\i_V_reg_414_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_414_reg[20]_i_1_n_0 ,\i_V_reg_414_reg[20]_i_1_n_1 ,\i_V_reg_414_reg[20]_i_1_n_2 ,\i_V_reg_414_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[20:17]),
        .S({\t_V_reg_348_reg_n_0_[20] ,\t_V_reg_348_reg_n_0_[19] ,\t_V_reg_348_reg_n_0_[18] ,\t_V_reg_348_reg_n_0_[17] }));
  FDRE \i_V_reg_414_reg[21] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[21]),
        .Q(i_V_reg_414[21]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[22] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[22]),
        .Q(i_V_reg_414[22]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[23] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[23]),
        .Q(i_V_reg_414[23]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[24] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[24]),
        .Q(i_V_reg_414[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[24]_i_1 
       (.CI(\i_V_reg_414_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_414_reg[24]_i_1_n_0 ,\i_V_reg_414_reg[24]_i_1_n_1 ,\i_V_reg_414_reg[24]_i_1_n_2 ,\i_V_reg_414_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[24:21]),
        .S({\t_V_reg_348_reg_n_0_[24] ,\t_V_reg_348_reg_n_0_[23] ,\t_V_reg_348_reg_n_0_[22] ,\t_V_reg_348_reg_n_0_[21] }));
  FDRE \i_V_reg_414_reg[25] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[25]),
        .Q(i_V_reg_414[25]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[26] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[26]),
        .Q(i_V_reg_414[26]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[27] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[27]),
        .Q(i_V_reg_414[27]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[28] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[28]),
        .Q(i_V_reg_414[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[28]_i_1 
       (.CI(\i_V_reg_414_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_414_reg[28]_i_1_n_0 ,\i_V_reg_414_reg[28]_i_1_n_1 ,\i_V_reg_414_reg[28]_i_1_n_2 ,\i_V_reg_414_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[28:25]),
        .S({\t_V_reg_348_reg_n_0_[28] ,\t_V_reg_348_reg_n_0_[27] ,\t_V_reg_348_reg_n_0_[26] ,\t_V_reg_348_reg_n_0_[25] }));
  FDRE \i_V_reg_414_reg[29] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[29]),
        .Q(i_V_reg_414[29]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[2] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[2]),
        .Q(i_V_reg_414[2]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[30] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[30]),
        .Q(i_V_reg_414[30]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[31] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[31]),
        .Q(i_V_reg_414[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[31]_i_1 
       (.CI(\i_V_reg_414_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_414_reg[31]_i_1_CO_UNCONNECTED [3:2],\i_V_reg_414_reg[31]_i_1_n_2 ,\i_V_reg_414_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_414_reg[31]_i_1_O_UNCONNECTED [3],i_V_fu_383_p2[31:29]}),
        .S({1'b0,\t_V_reg_348_reg_n_0_[31] ,\t_V_reg_348_reg_n_0_[30] ,\t_V_reg_348_reg_n_0_[29] }));
  FDRE \i_V_reg_414_reg[3] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[3]),
        .Q(i_V_reg_414[3]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[4] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[4]),
        .Q(i_V_reg_414[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_414_reg[4]_i_1_n_0 ,\i_V_reg_414_reg[4]_i_1_n_1 ,\i_V_reg_414_reg[4]_i_1_n_2 ,\i_V_reg_414_reg[4]_i_1_n_3 }),
        .CYINIT(\t_V_reg_348_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[4:1]),
        .S({\t_V_reg_348_reg_n_0_[4] ,\t_V_reg_348_reg_n_0_[3] ,\t_V_reg_348_reg_n_0_[2] ,\t_V_reg_348_reg_n_0_[1] }));
  FDRE \i_V_reg_414_reg[5] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[5]),
        .Q(i_V_reg_414[5]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[6] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[6]),
        .Q(i_V_reg_414[6]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[7] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[7]),
        .Q(i_V_reg_414[7]),
        .R(1'b0));
  FDRE \i_V_reg_414_reg[8] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[8]),
        .Q(i_V_reg_414[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_414_reg[8]_i_1 
       (.CI(\i_V_reg_414_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_414_reg[8]_i_1_n_0 ,\i_V_reg_414_reg[8]_i_1_n_1 ,\i_V_reg_414_reg[8]_i_1_n_2 ,\i_V_reg_414_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_383_p2[8:5]),
        .S({\t_V_reg_348_reg_n_0_[8] ,\t_V_reg_348_reg_n_0_[7] ,\t_V_reg_348_reg_n_0_[6] ,\t_V_reg_348_reg_n_0_[5] }));
  FDRE \i_V_reg_414_reg[9] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_383_p2[9]),
        .Q(i_V_reg_414[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    internal_empty_n_i_2
       (.I0(CO),
        .I1(Q[1]),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    internal_full_n_i_2__10
       (.I0(Q[0]),
        .I1(internal_empty_n_reg_0),
        .I2(img_src_0_cols_V_c27_empty_n),
        .I3(img_src_0_rows_V_c26_empty_n),
        .I4(internal_empty_n_reg_1),
        .O(internal_empty_n4_out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__11
       (.I0(Duplicate_my_U0_ap_start),
        .I1(Q[1]),
        .I2(CO),
        .O(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(\mOutPtr_reg[0]_1 ),
        .O(\mOutPtr_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    \mOutPtr[1]_i_2__2 
       (.I0(start_once_reg),
        .I1(internal_empty_n_reg_0),
        .O(\mOutPtr_reg[1] ));
  LUT3 #(
    .INIT(8'hEF)) 
    \mOutPtr[1]_i_2__3 
       (.I0(ap_enable_reg_pp0_iter0_i_2_n_0),
        .I1(\exitcond_i_reg_419_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\mOutPtr_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \mOutPtr[1]_i_3 
       (.I0(Q[0]),
        .I1(internal_empty_n_reg_0),
        .I2(img_src_0_cols_V_c27_empty_n),
        .I3(img_src_0_rows_V_c26_empty_n),
        .I4(internal_empty_n_reg_1),
        .O(internal_full_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7707)) 
    start_once_reg_i_1__0
       (.I0(Q[1]),
        .I1(CO),
        .I2(internal_empty_n_reg_0),
        .I3(start_once_reg),
        .O(start_once_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__0_n_0),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h4444404444444444)) 
    \t_V_2_reg_359[0]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ap_CS_fsm[3]_i_2_n_0 ),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(t_V_2_reg_359));
  LUT4 #(
    .INIT(16'h0020)) 
    \t_V_2_reg_359[0]_i_2 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[3]_i_2_n_0 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_condition_pp0_exit_iter0_state3),
        .O(t_V_2_reg_3590));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_2_reg_359[0]_i_4 
       (.I0(t_V_2_reg_359_reg[0]),
        .O(\t_V_2_reg_359[0]_i_4_n_0 ));
  FDRE \t_V_2_reg_359_reg[0] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[0]_i_3_n_7 ),
        .Q(t_V_2_reg_359_reg[0]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_2_reg_359_reg[0]_i_3_n_0 ,\t_V_2_reg_359_reg[0]_i_3_n_1 ,\t_V_2_reg_359_reg[0]_i_3_n_2 ,\t_V_2_reg_359_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_2_reg_359_reg[0]_i_3_n_4 ,\t_V_2_reg_359_reg[0]_i_3_n_5 ,\t_V_2_reg_359_reg[0]_i_3_n_6 ,\t_V_2_reg_359_reg[0]_i_3_n_7 }),
        .S({t_V_2_reg_359_reg[3:1],\t_V_2_reg_359[0]_i_4_n_0 }));
  FDRE \t_V_2_reg_359_reg[10] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[8]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[10]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[11] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[8]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[11]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[12] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[12]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[12]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[12]_i_1 
       (.CI(\t_V_2_reg_359_reg[8]_i_1_n_0 ),
        .CO({\t_V_2_reg_359_reg[12]_i_1_n_0 ,\t_V_2_reg_359_reg[12]_i_1_n_1 ,\t_V_2_reg_359_reg[12]_i_1_n_2 ,\t_V_2_reg_359_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[12]_i_1_n_4 ,\t_V_2_reg_359_reg[12]_i_1_n_5 ,\t_V_2_reg_359_reg[12]_i_1_n_6 ,\t_V_2_reg_359_reg[12]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[15:12]));
  FDRE \t_V_2_reg_359_reg[13] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[12]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[13]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[14] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[12]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[14]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[15] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[12]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[15]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[16] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[16]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[16]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[16]_i_1 
       (.CI(\t_V_2_reg_359_reg[12]_i_1_n_0 ),
        .CO({\t_V_2_reg_359_reg[16]_i_1_n_0 ,\t_V_2_reg_359_reg[16]_i_1_n_1 ,\t_V_2_reg_359_reg[16]_i_1_n_2 ,\t_V_2_reg_359_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[16]_i_1_n_4 ,\t_V_2_reg_359_reg[16]_i_1_n_5 ,\t_V_2_reg_359_reg[16]_i_1_n_6 ,\t_V_2_reg_359_reg[16]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[19:16]));
  FDRE \t_V_2_reg_359_reg[17] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[16]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[17]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[18] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[16]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[18]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[19] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[16]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[19]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[1] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[0]_i_3_n_6 ),
        .Q(t_V_2_reg_359_reg[1]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[20] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[20]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[20]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[20]_i_1 
       (.CI(\t_V_2_reg_359_reg[16]_i_1_n_0 ),
        .CO({\t_V_2_reg_359_reg[20]_i_1_n_0 ,\t_V_2_reg_359_reg[20]_i_1_n_1 ,\t_V_2_reg_359_reg[20]_i_1_n_2 ,\t_V_2_reg_359_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[20]_i_1_n_4 ,\t_V_2_reg_359_reg[20]_i_1_n_5 ,\t_V_2_reg_359_reg[20]_i_1_n_6 ,\t_V_2_reg_359_reg[20]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[23:20]));
  FDRE \t_V_2_reg_359_reg[21] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[20]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[21]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[22] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[20]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[22]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[23] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[20]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[23]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[24] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[24]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[24]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[24]_i_1 
       (.CI(\t_V_2_reg_359_reg[20]_i_1_n_0 ),
        .CO({\t_V_2_reg_359_reg[24]_i_1_n_0 ,\t_V_2_reg_359_reg[24]_i_1_n_1 ,\t_V_2_reg_359_reg[24]_i_1_n_2 ,\t_V_2_reg_359_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[24]_i_1_n_4 ,\t_V_2_reg_359_reg[24]_i_1_n_5 ,\t_V_2_reg_359_reg[24]_i_1_n_6 ,\t_V_2_reg_359_reg[24]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[27:24]));
  FDRE \t_V_2_reg_359_reg[25] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[24]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[25]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[26] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[24]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[26]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[27] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[24]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[27]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[28] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[28]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[28]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[28]_i_1 
       (.CI(\t_V_2_reg_359_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_2_reg_359_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_2_reg_359_reg[28]_i_1_n_1 ,\t_V_2_reg_359_reg[28]_i_1_n_2 ,\t_V_2_reg_359_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[28]_i_1_n_4 ,\t_V_2_reg_359_reg[28]_i_1_n_5 ,\t_V_2_reg_359_reg[28]_i_1_n_6 ,\t_V_2_reg_359_reg[28]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[31:28]));
  FDRE \t_V_2_reg_359_reg[29] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[28]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[29]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[2] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[0]_i_3_n_5 ),
        .Q(t_V_2_reg_359_reg[2]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[30] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[28]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[30]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[31] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[28]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[31]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[3] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[0]_i_3_n_4 ),
        .Q(t_V_2_reg_359_reg[3]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[4] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[4]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[4]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[4]_i_1 
       (.CI(\t_V_2_reg_359_reg[0]_i_3_n_0 ),
        .CO({\t_V_2_reg_359_reg[4]_i_1_n_0 ,\t_V_2_reg_359_reg[4]_i_1_n_1 ,\t_V_2_reg_359_reg[4]_i_1_n_2 ,\t_V_2_reg_359_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[4]_i_1_n_4 ,\t_V_2_reg_359_reg[4]_i_1_n_5 ,\t_V_2_reg_359_reg[4]_i_1_n_6 ,\t_V_2_reg_359_reg[4]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[7:4]));
  FDRE \t_V_2_reg_359_reg[5] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[4]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[5]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[6] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[4]_i_1_n_5 ),
        .Q(t_V_2_reg_359_reg[6]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[7] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[4]_i_1_n_4 ),
        .Q(t_V_2_reg_359_reg[7]),
        .R(t_V_2_reg_359));
  FDRE \t_V_2_reg_359_reg[8] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[8]_i_1_n_7 ),
        .Q(t_V_2_reg_359_reg[8]),
        .R(t_V_2_reg_359));
  CARRY4 \t_V_2_reg_359_reg[8]_i_1 
       (.CI(\t_V_2_reg_359_reg[4]_i_1_n_0 ),
        .CO({\t_V_2_reg_359_reg[8]_i_1_n_0 ,\t_V_2_reg_359_reg[8]_i_1_n_1 ,\t_V_2_reg_359_reg[8]_i_1_n_2 ,\t_V_2_reg_359_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_359_reg[8]_i_1_n_4 ,\t_V_2_reg_359_reg[8]_i_1_n_5 ,\t_V_2_reg_359_reg[8]_i_1_n_6 ,\t_V_2_reg_359_reg[8]_i_1_n_7 }),
        .S(t_V_2_reg_359_reg[11:8]));
  FDRE \t_V_2_reg_359_reg[9] 
       (.C(ap_clk),
        .CE(t_V_2_reg_3590),
        .D(\t_V_2_reg_359_reg[8]_i_1_n_6 ),
        .Q(t_V_2_reg_359_reg[9]),
        .R(t_V_2_reg_359));
  LUT2 #(
    .INIT(4'h1)) 
    \t_V_reg_348[31]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(internal_empty_n_reg_2),
        .O(t_V_reg_348));
  FDRE \t_V_reg_348_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[0]),
        .Q(\t_V_reg_348_reg_n_0_[0] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[10]),
        .Q(\t_V_reg_348_reg_n_0_[10] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[11]),
        .Q(\t_V_reg_348_reg_n_0_[11] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[12]),
        .Q(\t_V_reg_348_reg_n_0_[12] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[13]),
        .Q(\t_V_reg_348_reg_n_0_[13] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[14]),
        .Q(\t_V_reg_348_reg_n_0_[14] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[15]),
        .Q(\t_V_reg_348_reg_n_0_[15] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[16]),
        .Q(\t_V_reg_348_reg_n_0_[16] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[17]),
        .Q(\t_V_reg_348_reg_n_0_[17] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[18]),
        .Q(\t_V_reg_348_reg_n_0_[18] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[19]),
        .Q(\t_V_reg_348_reg_n_0_[19] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[1]),
        .Q(\t_V_reg_348_reg_n_0_[1] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[20]),
        .Q(\t_V_reg_348_reg_n_0_[20] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[21]),
        .Q(\t_V_reg_348_reg_n_0_[21] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[22]),
        .Q(\t_V_reg_348_reg_n_0_[22] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[23]),
        .Q(\t_V_reg_348_reg_n_0_[23] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[24]),
        .Q(\t_V_reg_348_reg_n_0_[24] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[25]),
        .Q(\t_V_reg_348_reg_n_0_[25] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[26]),
        .Q(\t_V_reg_348_reg_n_0_[26] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[27]),
        .Q(\t_V_reg_348_reg_n_0_[27] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[28]),
        .Q(\t_V_reg_348_reg_n_0_[28] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[29]),
        .Q(\t_V_reg_348_reg_n_0_[29] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[2]),
        .Q(\t_V_reg_348_reg_n_0_[2] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[30]),
        .Q(\t_V_reg_348_reg_n_0_[30] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[31]),
        .Q(\t_V_reg_348_reg_n_0_[31] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[3]),
        .Q(\t_V_reg_348_reg_n_0_[3] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[4]),
        .Q(\t_V_reg_348_reg_n_0_[4] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[5]),
        .Q(\t_V_reg_348_reg_n_0_[5] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[6]),
        .Q(\t_V_reg_348_reg_n_0_[6] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[7]),
        .Q(\t_V_reg_348_reg_n_0_[7] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[8]),
        .Q(\t_V_reg_348_reg_n_0_[8] ),
        .R(t_V_reg_348));
  FDRE \t_V_reg_348_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_414[9]),
        .Q(\t_V_reg_348_reg_n_0_[9] ),
        .R(t_V_reg_348));
endmodule

(* C_S_AXI_ADDR_WIDTH = "32" *) (* C_S_AXI_AXILITES_ADDR_WIDTH = "4" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
(* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) 
(* ORIG_REF_NAME = "contrast_hls_rom" *) (* hls_module = "yes" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_contrast_hls_rom
   (s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt,
    input_r_TDATA,
    input_r_TKEEP,
    input_r_TSTRB,
    input_r_TUSER,
    input_r_TLAST,
    input_r_TID,
    input_r_TDEST,
    diff_sum_0,
    diff_sum_1,
    diff_sum_2,
    diff_sum_3,
    diff_sum_4,
    diff_sum_5,
    diff_sum_6,
    diff_sum_7,
    diff_sum_8,
    diff_sum_9,
    diff_sum_10,
    input_r_TVALID,
    input_r_TREADY,
    diff_sum_0_ap_vld,
    diff_sum_1_ap_vld,
    diff_sum_2_ap_vld,
    diff_sum_3_ap_vld,
    diff_sum_4_ap_vld,
    diff_sum_5_ap_vld,
    diff_sum_6_ap_vld,
    diff_sum_7_ap_vld,
    diff_sum_8_ap_vld,
    diff_sum_9_ap_vld,
    diff_sum_10_ap_vld);
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [3:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [3:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
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
  input input_r_TVALID;
  output input_r_TREADY;
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

  wire \<const0> ;
  wire AXIvideo2Mat_U0_ap_ready;
  wire [7:0]AXIvideo2Mat_U0_img_data_stream_V_din;
  wire AXIvideo2Mat_U0_n_5;
  wire AXIvideo2Mat_U0_n_7;
  wire Block_proc_U0_ap_start;
  wire Duplicate_my_U0_ap_start;
  wire Duplicate_my_U0_n_10;
  wire Duplicate_my_U0_n_2;
  wire Duplicate_my_U0_n_3;
  wire Duplicate_my_U0_n_4;
  wire Duplicate_my_U0_n_6;
  wire Duplicate_my_U0_n_8;
  wire Duplicate_my_U0_n_9;
  wire [7:0]\SRL_SIG_reg[0]_2 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage0_10;
  wire ap_CS_fsm_pp0_stage0_11;
  wire ap_CS_fsm_pp0_stage0_12;
  wire ap_CS_fsm_pp0_stage0_14;
  wire ap_CS_fsm_pp0_stage0_15;
  wire ap_CS_fsm_pp0_stage0_3;
  wire ap_CS_fsm_pp0_stage0_4;
  wire ap_CS_fsm_pp0_stage0_5;
  wire ap_CS_fsm_pp0_stage0_6;
  wire ap_CS_fsm_pp0_stage0_8;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state4;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_13;
  wire ap_done_reg_16;
  wire ap_done_reg_7;
  wire ap_done_reg_9;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sync_done;
  wire contrast_hls_rom_AXILiteS_s_axi_U_n_10;
  wire contrast_hls_rom_AXILiteS_s_axi_U_n_6;
  wire contrast_hls_rom_AXILiteS_s_axi_U_n_8;
  wire contrast_hls_rom_AXILiteS_s_axi_U_n_9;
  wire [15:0]diff_sum_0;
  wire diff_sum_0_ap_vld;
  wire [15:0]diff_sum_1;
  wire [15:0]diff_sum_10;
  wire diff_sum_10_ap_vld;
  wire diff_sum_1_ap_vld;
  wire [15:0]diff_sum_2;
  wire diff_sum_2_ap_vld;
  wire [15:0]diff_sum_3;
  wire diff_sum_3_ap_vld;
  wire [15:0]diff_sum_4;
  wire diff_sum_4_ap_vld;
  wire [15:0]diff_sum_5;
  wire diff_sum_5_ap_vld;
  wire [15:0]diff_sum_6;
  wire diff_sum_6_ap_vld;
  wire [15:0]diff_sum_7;
  wire diff_sum_7_ap_vld;
  wire [15:0]diff_sum_8;
  wire diff_sum_8_ap_vld;
  wire [15:0]diff_sum_9;
  wire diff_sum_9_ap_vld;
  wire exitcond2_i_fu_378_p2;
  wire exitcond3_i_fu_365_p2;
  wire img_src_0_cols_V_c27_empty_n;
  wire img_src_0_cols_V_c27_full_n;
  wire img_src_0_cols_V_c_empty_n;
  wire img_src_0_cols_V_c_full_n;
  wire img_src_0_data_strea_U_n_0;
  wire [7:0]img_src_0_data_strea_dout;
  wire img_src_0_data_strea_empty_n;
  wire img_src_0_data_strea_full_n;
  wire img_src_0_rows_V_c26_U_n_2;
  wire img_src_0_rows_V_c26_U_n_3;
  wire img_src_0_rows_V_c26_empty_n;
  wire img_src_0_rows_V_c26_full_n;
  wire img_src_0_rows_V_c_empty_n;
  wire img_src_0_rows_V_c_full_n;
  wire img_src_c_0_data_str_U_n_0;
  wire img_src_c_0_data_str_U_n_11;
  wire img_src_c_0_data_str_U_n_12;
  wire img_src_c_0_data_str_U_n_13;
  wire img_src_c_0_data_str_U_n_14;
  wire img_src_c_0_data_str_U_n_15;
  wire img_src_c_0_data_str_U_n_16;
  wire img_src_c_0_data_str_U_n_17;
  wire img_src_c_0_data_str_U_n_18;
  wire img_src_c_0_data_str_U_n_19;
  wire img_src_c_0_data_str_U_n_20;
  wire img_src_c_0_data_str_U_n_21;
  wire img_src_c_0_data_str_empty_n;
  wire img_src_c_0_data_str_full_n;
  wire img_src_c_10_data_st_U_n_0;
  wire img_src_c_10_data_st_U_n_1;
  wire img_src_c_10_data_st_U_n_4;
  wire img_src_c_10_data_st_empty_n;
  wire img_src_c_10_data_st_full_n;
  wire img_src_c_1_data_str_U_n_0;
  wire img_src_c_1_data_str_U_n_1;
  wire img_src_c_1_data_str_U_n_4;
  wire img_src_c_1_data_str_empty_n;
  wire img_src_c_1_data_str_full_n;
  wire img_src_c_2_data_str_U_n_0;
  wire img_src_c_2_data_str_U_n_1;
  wire img_src_c_2_data_str_U_n_4;
  wire img_src_c_2_data_str_empty_n;
  wire img_src_c_2_data_str_full_n;
  wire img_src_c_3_data_str_U_n_0;
  wire img_src_c_3_data_str_U_n_1;
  wire img_src_c_3_data_str_empty_n;
  wire img_src_c_3_data_str_full_n;
  wire img_src_c_4_data_str_U_n_0;
  wire img_src_c_4_data_str_U_n_1;
  wire img_src_c_4_data_str_empty_n;
  wire img_src_c_4_data_str_full_n;
  wire img_src_c_5_data_str_U_n_0;
  wire img_src_c_5_data_str_U_n_3;
  wire img_src_c_5_data_str_U_n_4;
  wire img_src_c_5_data_str_U_n_5;
  wire img_src_c_5_data_str_U_n_6;
  wire img_src_c_5_data_str_U_n_7;
  wire img_src_c_5_data_str_U_n_8;
  wire img_src_c_5_data_str_empty_n;
  wire img_src_c_5_data_str_full_n;
  wire img_src_c_6_data_str_U_n_0;
  wire img_src_c_6_data_str_U_n_1;
  wire img_src_c_6_data_str_U_n_3;
  wire img_src_c_6_data_str_empty_n;
  wire img_src_c_7_data_str_U_n_0;
  wire img_src_c_7_data_str_U_n_1;
  wire img_src_c_7_data_str_empty_n;
  wire img_src_c_7_data_str_full_n;
  wire img_src_c_8_data_str_U_n_0;
  wire img_src_c_8_data_str_U_n_1;
  wire img_src_c_8_data_str_empty_n;
  wire img_src_c_8_data_str_full_n;
  wire img_src_c_9_data_str_U_n_0;
  wire img_src_c_9_data_str_U_n_1;
  wire img_src_c_9_data_str_empty_n;
  wire img_src_c_9_data_str_full_n;
  wire [7:0]input_r_TDATA;
  wire [0:0]input_r_TLAST;
  wire input_r_TREADY;
  wire [0:0]input_r_TUSER;
  wire input_r_TVALID;
  wire internal_empty_n4_out;
  wire interrupt;
  wire minus_vector26_U0_ap_start;
  wire minus_vector26_U0_n_0;
  wire minus_vector26_U0_n_1;
  wire minus_vector26_U0_n_23;
  wire minus_vector26_U0_n_3;
  wire minus_vector26_U0_n_4;
  wire minus_vector26_U0_n_5;
  wire minus_vector27_U0_ap_start;
  wire minus_vector27_U0_n_0;
  wire minus_vector27_U0_n_1;
  wire minus_vector27_U0_n_2;
  wire minus_vector27_U0_n_24;
  wire minus_vector27_U0_n_4;
  wire minus_vector27_U0_n_6;
  wire minus_vector28_U0_ap_start;
  wire minus_vector28_U0_n_1;
  wire minus_vector28_U0_n_2;
  wire minus_vector28_U0_n_23;
  wire minus_vector28_U0_n_4;
  wire minus_vector28_U0_n_5;
  wire minus_vector29_U0_ap_start;
  wire minus_vector29_U0_n_0;
  wire minus_vector29_U0_n_1;
  wire minus_vector29_U0_n_23;
  wire minus_vector29_U0_n_3;
  wire minus_vector29_U0_n_4;
  wire minus_vector29_U0_n_5;
  wire minus_vector30_U0_ap_start;
  wire minus_vector30_U0_n_1;
  wire minus_vector30_U0_n_2;
  wire minus_vector30_U0_n_23;
  wire minus_vector30_U0_n_4;
  wire minus_vector30_U0_n_5;
  wire minus_vector31_U0_ap_start;
  wire minus_vector31_U0_n_1;
  wire minus_vector31_U0_n_2;
  wire minus_vector31_U0_n_22;
  wire minus_vector31_U0_n_23;
  wire minus_vector31_U0_n_4;
  wire minus_vector32_U0_ap_start;
  wire minus_vector32_U0_n_0;
  wire minus_vector32_U0_n_1;
  wire minus_vector32_U0_n_23;
  wire minus_vector32_U0_n_3;
  wire minus_vector32_U0_n_4;
  wire minus_vector32_U0_n_5;
  wire minus_vector33_U0_ap_start;
  wire minus_vector33_U0_n_0;
  wire minus_vector33_U0_n_1;
  wire minus_vector33_U0_n_23;
  wire minus_vector33_U0_n_3;
  wire minus_vector33_U0_n_4;
  wire minus_vector33_U0_n_5;
  wire minus_vector34_U0_ap_start;
  wire minus_vector34_U0_n_1;
  wire minus_vector34_U0_n_2;
  wire minus_vector34_U0_n_22;
  wire minus_vector34_U0_n_23;
  wire minus_vector34_U0_n_4;
  wire minus_vector35_U0_ap_start;
  wire minus_vector35_U0_n_0;
  wire minus_vector35_U0_n_1;
  wire minus_vector35_U0_n_23;
  wire minus_vector35_U0_n_3;
  wire minus_vector35_U0_n_4;
  wire minus_vector35_U0_n_5;
  wire minus_vector_U0_ap_start;
  wire minus_vector_U0_n_1;
  wire minus_vector_U0_n_2;
  wire minus_vector_U0_n_22;
  wire minus_vector_U0_n_23;
  wire minus_vector_U0_n_4;
  wire [3:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [3:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [7:0]\^s_axi_AXILiteS_RDATA ;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire start_for_Duplicamb6_U_n_3;
  wire start_for_Duplicate_my_U0_full_n;
  wire start_for_minus_vector26_U0_full_n;
  wire start_for_minus_vector27_U0_full_n;
  wire start_for_minus_vector28_U0_full_n;
  wire start_for_minus_vector29_U0_full_n;
  wire start_for_minus_vector30_U0_full_n;
  wire start_for_minus_vector32_U0_full_n;
  wire start_for_minus_vector34_U0_full_n;
  wire start_for_minus_vector35_U0_full_n;
  wire start_for_minus_vsc4_U_n_1;
  wire start_for_minus_vudo_U_n_1;
  wire start_for_minus_vwdI_U_n_2;
  wire start_for_minus_vxdS_U_n_1;
  wire start_once_reg;
  wire start_once_reg_1;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[31] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[30] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[29] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[28] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[27] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[26] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[25] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[24] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[23] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[22] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[21] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[20] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[19] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[18] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[17] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[16] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[15] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[14] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[13] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[12] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[11] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[10] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[9] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[8] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[7] = \^s_axi_AXILiteS_RDATA [7];
  assign s_axi_AXILiteS_RDATA[6] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[5] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[4] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[3:0] = \^s_axi_AXILiteS_RDATA [3:0];
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  m3_for_arty_a7_contrast_hls_rom_0_0_AXIvideo2Mat AXIvideo2Mat_U0
       (.AXIvideo2Mat_U0_ap_ready(AXIvideo2Mat_U0_ap_ready),
        .Block_proc_U0_ap_start(Block_proc_U0_ap_start),
        .CO(exitcond3_i_fu_365_p2),
        .D(AXIvideo2Mat_U0_img_data_stream_V_din),
        .E(shiftReg_ce),
        .Q({ap_CS_fsm_state4,AXIvideo2Mat_U0_n_5}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\axi_data_V_1_i_reg_266_reg[0]_0 (AXIvideo2Mat_U0_n_7),
        .img_src_0_data_strea_full_n(img_src_0_data_strea_full_n),
        .input_r_TDATA(input_r_TDATA),
        .input_r_TLAST(input_r_TLAST),
        .input_r_TREADY(input_r_TREADY),
        .input_r_TUSER(input_r_TUSER),
        .input_r_TVALID(input_r_TVALID),
        .internal_empty_n_reg(contrast_hls_rom_AXILiteS_s_axi_U_n_8),
        .start_for_Duplicate_my_U0_full_n(start_for_Duplicate_my_U0_full_n),
        .start_once_reg(start_once_reg));
  m3_for_arty_a7_contrast_hls_rom_0_0_Duplicate_my Duplicate_my_U0
       (.CO(exitcond2_i_fu_378_p2),
        .Duplicate_my_U0_ap_start(Duplicate_my_U0_ap_start),
        .Q({ap_CS_fsm_state2,Duplicate_my_U0_n_6}),
        .\ap_CS_fsm_reg[4] (AXIvideo2Mat_U0_n_7),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_src_0_cols_V_c27_empty_n(img_src_0_cols_V_c27_empty_n),
        .img_src_0_rows_V_c26_empty_n(img_src_0_rows_V_c26_empty_n),
        .img_src_c_2_data_str_full_n(img_src_c_2_data_str_full_n),
        .img_src_c_3_data_str_full_n(img_src_c_3_data_str_full_n),
        .img_src_c_4_data_str_full_n(img_src_c_4_data_str_full_n),
        .img_src_c_5_data_str_full_n(img_src_c_5_data_str_full_n),
        .internal_empty_n4_out(internal_empty_n4_out),
        .internal_empty_n_reg(Duplicate_my_U0_n_10),
        .internal_empty_n_reg_0(start_for_Duplicamb6_U_n_3),
        .internal_empty_n_reg_1(contrast_hls_rom_AXILiteS_s_axi_U_n_8),
        .internal_empty_n_reg_2(img_src_0_rows_V_c26_U_n_2),
        .internal_full_n_reg(Duplicate_my_U0_n_4),
        .internal_full_n_reg_0(Duplicate_my_U0_n_9),
        .internal_full_n_reg_1(img_src_c_2_data_str_U_n_4),
        .internal_full_n_reg_2(img_src_c_6_data_str_U_n_3),
        .internal_full_n_reg_3(img_src_c_10_data_st_U_n_4),
        .internal_full_n_reg_4(img_src_c_1_data_str_U_n_4),
        .\mOutPtr_reg[0] (Duplicate_my_U0_n_2),
        .\mOutPtr_reg[0]_0 (Duplicate_my_U0_n_3),
        .\mOutPtr_reg[0]_1 (img_src_0_data_strea_U_n_0),
        .\mOutPtr_reg[1] (Duplicate_my_U0_n_8),
        .shiftReg_ce(shiftReg_ce_0),
        .start_once_reg(start_once_reg_1));
  GND GND
       (.G(\<const0> ));
  m3_for_arty_a7_contrast_hls_rom_0_0_contrast_hls_rom_AXILiteS_s_axi contrast_hls_rom_AXILiteS_s_axi_U
       (.AXIvideo2Mat_U0_ap_ready(AXIvideo2Mat_U0_ap_ready),
        .Block_proc_U0_ap_start(Block_proc_U0_ap_start),
        .CO(exitcond3_i_fu_365_p2),
        .E(contrast_hls_rom_AXILiteS_s_axi_U_n_6),
        .Q({ap_CS_fsm_state4,AXIvideo2Mat_U0_n_5}),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sync_done(ap_sync_done),
        .img_src_0_cols_V_c27_full_n(img_src_0_cols_V_c27_full_n),
        .img_src_0_cols_V_c_empty_n(img_src_0_cols_V_c_empty_n),
        .img_src_0_cols_V_c_full_n(img_src_0_cols_V_c_full_n),
        .img_src_0_rows_V_c26_full_n(img_src_0_rows_V_c26_full_n),
        .img_src_0_rows_V_c_empty_n(img_src_0_rows_V_c_empty_n),
        .img_src_0_rows_V_c_full_n(img_src_0_rows_V_c_full_n),
        .internal_full_n_reg(contrast_hls_rom_AXILiteS_s_axi_U_n_10),
        .interrupt(interrupt),
        .\mOutPtr_reg[0] (contrast_hls_rom_AXILiteS_s_axi_U_n_9),
        .\mOutPtr_reg[1] (contrast_hls_rom_AXILiteS_s_axi_U_n_8),
        .out({s_axi_AXILiteS_BVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_AWREADY}),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_RDATA({\^s_axi_AXILiteS_RDATA [7],\^s_axi_AXILiteS_RDATA [3:0]}),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID({s_axi_AXILiteS_RVALID,s_axi_AXILiteS_ARREADY}),
        .s_axi_AXILiteS_WDATA({s_axi_AXILiteS_WDATA[7],s_axi_AXILiteS_WDATA[1:0]}),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB[0]),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .start_for_Duplicate_my_U0_full_n(start_for_Duplicate_my_U0_full_n),
        .start_once_reg(start_once_reg));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A img_src_0_cols_V_c27_U
       (.E(img_src_0_rows_V_c26_U_n_3),
        .\ap_CS_fsm_reg[0] (Duplicate_my_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_src_0_cols_V_c27_empty_n(img_src_0_cols_V_c27_empty_n),
        .img_src_0_cols_V_c27_full_n(img_src_0_cols_V_c27_full_n),
        .internal_empty_n4_out(internal_empty_n4_out));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A_0 img_src_0_cols_V_c_U
       (.Block_proc_U0_ap_start(Block_proc_U0_ap_start),
        .E(contrast_hls_rom_AXILiteS_s_axi_U_n_6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_src_0_cols_V_c_empty_n(img_src_0_cols_V_c_empty_n),
        .img_src_0_cols_V_c_full_n(img_src_0_cols_V_c_full_n),
        .img_src_0_rows_V_c_full_n(img_src_0_rows_V_c_full_n),
        .int_ap_start_reg(contrast_hls_rom_AXILiteS_s_axi_U_n_10),
        .internal_empty_n_reg_0(contrast_hls_rom_AXILiteS_s_axi_U_n_8));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A img_src_0_data_strea_U
       (.D(AXIvideo2Mat_U0_img_data_stream_V_din),
        .E(shiftReg_ce),
        .\SRL_SIG_reg[0][7] (img_src_0_data_strea_U_n_0),
        .\ap_CS_fsm_reg[4] (AXIvideo2Mat_U0_n_7),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_0_data_strea_dout(img_src_0_data_strea_dout),
        .img_src_0_data_strea_empty_n(img_src_0_data_strea_empty_n),
        .img_src_0_data_strea_full_n(img_src_0_data_strea_full_n),
        .\mOutPtr_reg[0]_0 (Duplicate_my_U0_n_2));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A_1 img_src_0_rows_V_c26_U
       (.E(img_src_0_rows_V_c26_U_n_3),
        .Q(Duplicate_my_U0_n_6),
        .\ap_CS_fsm_reg[0] (Duplicate_my_U0_n_4),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_src_0_cols_V_c27_empty_n(img_src_0_cols_V_c27_empty_n),
        .img_src_0_rows_V_c26_empty_n(img_src_0_rows_V_c26_empty_n),
        .img_src_0_rows_V_c26_full_n(img_src_0_rows_V_c26_full_n),
        .internal_empty_n4_out(internal_empty_n4_out),
        .internal_empty_n_reg_0(img_src_0_rows_V_c26_U_n_2),
        .internal_empty_n_reg_1(contrast_hls_rom_AXILiteS_s_axi_U_n_8),
        .internal_empty_n_reg_2(start_for_Duplicamb6_U_n_3));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A_2 img_src_0_rows_V_c_U
       (.Block_proc_U0_ap_start(Block_proc_U0_ap_start),
        .E(contrast_hls_rom_AXILiteS_s_axi_U_n_6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_src_0_cols_V_c_full_n(img_src_0_cols_V_c_full_n),
        .img_src_0_rows_V_c_empty_n(img_src_0_rows_V_c_empty_n),
        .img_src_0_rows_V_c_full_n(img_src_0_rows_V_c_full_n),
        .int_ap_start_reg(contrast_hls_rom_AXILiteS_s_axi_U_n_10),
        .internal_empty_n_reg_0(contrast_hls_rom_AXILiteS_s_axi_U_n_8));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_3 img_src_c_0_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0),
        .\SRL_SIG_reg[0]_0 (\SRL_SIG_reg[0]_2 ),
        .\SRL_SIG_reg[1][3] (img_src_c_5_data_str_U_n_8),
        .\SRL_SIG_reg[1][4] (img_src_c_5_data_str_U_n_3),
        .\SRL_SIG_reg[1][7] (img_src_c_5_data_str_U_n_4),
        .\SRL_SIG_reg[1][7]_0 (img_src_c_5_data_str_U_n_6),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector26_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector26_U0_n_0),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector26_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\diff_sum_t_fu_84_reg[3] (img_src_c_0_data_str_U_n_11),
        .\diff_sum_t_fu_84_reg[3]_0 (img_src_c_0_data_str_U_n_12),
        .\diff_sum_t_fu_84_reg[3]_1 (img_src_c_0_data_str_U_n_13),
        .\diff_sum_t_fu_84_reg[3]_2 (img_src_c_0_data_str_U_n_14),
        .\diff_sum_t_fu_84_reg[3]_3 (img_src_c_0_data_str_U_n_15),
        .\diff_sum_t_fu_84_reg[3]_4 (img_src_c_0_data_str_U_n_16),
        .\diff_sum_t_fu_84_reg[3]_5 (img_src_c_0_data_str_U_n_17),
        .\diff_sum_t_fu_84_reg[3]_6 (img_src_c_0_data_str_U_n_18),
        .\diff_sum_t_fu_84_reg[3]_7 (img_src_c_0_data_str_U_n_19),
        .\diff_sum_t_fu_84_reg[3]_8 (img_src_c_0_data_str_U_n_20),
        .\diff_sum_t_fu_84_reg[3]_9 (img_src_c_0_data_str_U_n_21),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_0_data_strea_dout(img_src_0_data_strea_dout),
        .img_src_c_0_data_str_empty_n(img_src_c_0_data_str_empty_n),
        .img_src_c_0_data_str_full_n(img_src_c_0_data_str_full_n),
        .\mOutPtr_reg[0]_0 (img_src_c_2_data_str_U_n_1),
        .\mOutPtr_reg[0]_1 (img_src_c_9_data_str_U_n_1),
        .\mOutPtr_reg[0]_2 (img_src_c_10_data_st_U_n_1),
        .\mOutPtr_reg[0]_3 (img_src_c_8_data_str_U_n_1),
        .\mOutPtr_reg[0]_4 (img_src_c_7_data_str_U_n_1),
        .\mOutPtr_reg[0]_5 (img_src_c_6_data_str_U_n_1),
        .\mOutPtr_reg[0]_6 (img_src_c_4_data_str_U_n_1),
        .\mOutPtr_reg[0]_7 (img_src_c_3_data_str_U_n_1),
        .\mOutPtr_reg[1]_0 (img_src_c_0_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_2_data_str_U_n_0),
        .\mOutPtr_reg[1]_2 (img_src_c_9_data_str_U_n_0),
        .\mOutPtr_reg[1]_3 (img_src_c_10_data_st_U_n_0),
        .\mOutPtr_reg[1]_4 (img_src_c_8_data_str_U_n_0),
        .\mOutPtr_reg[1]_5 (img_src_c_7_data_str_U_n_0),
        .\mOutPtr_reg[1]_6 (img_src_c_6_data_str_U_n_0),
        .\mOutPtr_reg[1]_7 (img_src_c_4_data_str_U_n_0),
        .\mOutPtr_reg[1]_8 (img_src_c_3_data_str_U_n_0),
        .shiftReg_ce(shiftReg_ce_0));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_4 img_src_c_10_data_st_U
       (.Q(ap_CS_fsm_pp0_stage0_15),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(img_src_c_10_data_st_U_n_4),
        .ap_enable_reg_pp0_iter1_reg(minus_vector_U0_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector_U0_n_22),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_0_data_str_full_n(img_src_c_0_data_str_full_n),
        .img_src_c_10_data_st_empty_n(img_src_c_10_data_st_empty_n),
        .img_src_c_10_data_st_full_n(img_src_c_10_data_st_full_n),
        .img_src_c_1_data_str_full_n(img_src_c_1_data_str_full_n),
        .img_src_c_9_data_str_full_n(img_src_c_9_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_10_data_st_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_10_data_st_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_5 img_src_c_1_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_3),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector27_U0_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector27_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector27_U0_n_24),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_0_data_str_full_n(img_src_c_0_data_str_full_n),
        .img_src_c_10_data_st_full_n(img_src_c_10_data_st_full_n),
        .img_src_c_1_data_str_empty_n(img_src_c_1_data_str_empty_n),
        .img_src_c_1_data_str_full_n(img_src_c_1_data_str_full_n),
        .img_src_c_9_data_str_full_n(img_src_c_9_data_str_full_n),
        .internal_full_n_reg_0(img_src_c_6_data_str_U_n_3),
        .\mOutPtr_reg[1]_0 (img_src_c_1_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_1_data_str_U_n_1),
        .\t_V_2_reg_359_reg[0] (img_src_c_1_data_str_U_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_6 img_src_c_2_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_4),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(img_src_c_2_data_str_U_n_4),
        .ap_enable_reg_pp0_iter1_reg(minus_vector28_U0_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector28_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector28_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_2_data_str_empty_n(img_src_c_2_data_str_empty_n),
        .img_src_c_2_data_str_full_n(img_src_c_2_data_str_full_n),
        .img_src_c_3_data_str_full_n(img_src_c_3_data_str_full_n),
        .img_src_c_4_data_str_full_n(img_src_c_4_data_str_full_n),
        .img_src_c_5_data_str_full_n(img_src_c_5_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_2_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_2_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_7 img_src_c_3_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_5),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector29_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector29_U0_n_0),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector29_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_3_data_str_empty_n(img_src_c_3_data_str_empty_n),
        .img_src_c_3_data_str_full_n(img_src_c_3_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_3_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_3_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_8 img_src_c_4_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_6),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector30_U0_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector30_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector30_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_4_data_str_empty_n(img_src_c_4_data_str_empty_n),
        .img_src_c_4_data_str_full_n(img_src_c_4_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_4_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_4_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_9 img_src_c_5_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_8),
        .\SRL_SIG_reg[0][4] (img_src_c_0_data_str_U_n_15),
        .\SRL_SIG_reg[0][6] (img_src_c_0_data_str_U_n_21),
        .\SRL_SIG_reg[0]_0 (\SRL_SIG_reg[0]_2 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector31_U0_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector31_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector31_U0_n_22),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\diff_sum_t_fu_84_reg[3] (img_src_c_5_data_str_U_n_3),
        .\diff_sum_t_fu_84_reg[3]_0 (img_src_c_5_data_str_U_n_4),
        .\diff_sum_t_fu_84_reg[3]_1 (img_src_c_5_data_str_U_n_5),
        .\diff_sum_t_fu_84_reg[3]_2 (img_src_c_5_data_str_U_n_6),
        .\diff_sum_t_fu_84_reg[3]_3 (img_src_c_5_data_str_U_n_7),
        .\diff_sum_t_fu_84_reg[3]_4 (img_src_c_5_data_str_U_n_8),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_5_data_str_empty_n(img_src_c_5_data_str_empty_n),
        .img_src_c_5_data_str_full_n(img_src_c_5_data_str_full_n),
        .\mOutPtr_reg[0]_0 (img_src_c_1_data_str_U_n_1),
        .\mOutPtr_reg[1]_0 (img_src_c_5_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_1_data_str_U_n_0),
        .shiftReg_ce(shiftReg_ce_0));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_10 img_src_c_6_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_10),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(img_src_c_6_data_str_U_n_3),
        .ap_enable_reg_pp0_iter1_reg(minus_vector32_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector32_U0_n_0),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector32_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_0_data_strea_empty_n(img_src_0_data_strea_empty_n),
        .img_src_c_6_data_str_empty_n(img_src_c_6_data_str_empty_n),
        .img_src_c_7_data_str_full_n(img_src_c_7_data_str_full_n),
        .img_src_c_8_data_str_full_n(img_src_c_8_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_6_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_6_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_11 img_src_c_7_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_11),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector33_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector33_U0_n_0),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector33_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_7_data_str_empty_n(img_src_c_7_data_str_empty_n),
        .img_src_c_7_data_str_full_n(img_src_c_7_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_7_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_7_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_12 img_src_c_8_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_12),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector34_U0_n_2),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector34_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector34_U0_n_22),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_8_data_str_empty_n(img_src_c_8_data_str_empty_n),
        .img_src_c_8_data_str_full_n(img_src_c_8_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_8_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_8_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_13 img_src_c_9_data_str_U
       (.Q(ap_CS_fsm_pp0_stage0_14),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(minus_vector35_U0_n_1),
        .ap_enable_reg_pp0_iter1_reg_0(minus_vector35_U0_n_0),
        .ap_enable_reg_pp0_iter1_reg_1(minus_vector35_U0_n_23),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_9_data_str_empty_n(img_src_c_9_data_str_empty_n),
        .img_src_c_9_data_str_full_n(img_src_c_9_data_str_full_n),
        .\mOutPtr_reg[1]_0 (img_src_c_9_data_str_U_n_0),
        .\mOutPtr_reg[1]_1 (img_src_c_9_data_str_U_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector26 minus_vector26_U0
       (.Q({ap_CS_fsm_pp0_stage0,minus_vector26_U0_n_3}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector26_U0_n_5),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_13),
        .ap_done_reg_reg_0(minus_vector26_U0_n_4),
        .ap_done_reg_reg_1(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_0(diff_sum_0),
        .diff_sum_0_ap_vld(diff_sum_0_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_0_data_str_empty_n(img_src_c_0_data_str_empty_n),
        .internal_empty_n_reg(minus_vector26_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector26_U0_n_1),
        .\mOutPtr_reg[0]_0 (img_src_c_0_data_str_U_n_0),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_13),
        .minus_vector26_U0_ap_start(minus_vector26_U0_ap_start),
        .q0_reg(minus_vector26_U0_n_0),
        .\t_V_reg_114_reg[1]_0 (minus_vector34_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector27 minus_vector27_U0
       (.Q({ap_CS_fsm_pp0_stage0_3,minus_vector27_U0_n_4}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector27_U0_n_6),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .ap_done_reg_0(ap_done_reg_9),
        .ap_done_reg_reg_0(minus_vector27_U0_n_0),
        .ap_done_reg_reg_1(minus_vector26_U0_n_4),
        .ap_done_reg_reg_2(minus_vector32_U0_n_4),
        .ap_done_reg_reg_3(minus_vector33_U0_n_5),
        .ap_done_reg_reg_4(minus_vector29_U0_n_5),
        .ap_done_reg_reg_5(minus_vector35_U0_n_4),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sync_done(ap_sync_done),
        .diff_sum_1(diff_sum_1),
        .diff_sum_1_ap_vld(diff_sum_1_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_1_data_str_empty_n(img_src_c_1_data_str_empty_n),
        .internal_empty_n_reg(minus_vector27_U0_n_24),
        .\mOutPtr_reg[0] (minus_vector27_U0_n_2),
        .\mOutPtr_reg[0]_0 (img_src_c_1_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_5_data_str_U_n_7),
        .minus_vector27_U0_ap_start(minus_vector27_U0_ap_start),
        .q0_reg(minus_vector27_U0_n_1),
        .\t_V_reg_114_reg[1]_0 (minus_vector28_U0_n_5),
        .\t_V_reg_114_reg[1]_1 (minus_vector31_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector28 minus_vector28_U0
       (.Q({ap_CS_fsm_pp0_stage0_4,minus_vector28_U0_n_4}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector28_U0_n_5),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .ap_done_reg_reg_0(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_2(diff_sum_2),
        .diff_sum_2_ap_vld(diff_sum_2_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_2_data_str_empty_n(img_src_c_2_data_str_empty_n),
        .internal_empty_n_reg(minus_vector28_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector28_U0_n_2),
        .\mOutPtr_reg[0]_0 (img_src_c_2_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_11),
        .minus_vector28_U0_ap_start(minus_vector28_U0_ap_start),
        .q0_reg(minus_vector28_U0_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector29 minus_vector29_U0
       (.Q({ap_CS_fsm_pp0_stage0_5,minus_vector29_U0_n_3}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector29_U0_n_4),
        .ap_clk(ap_clk),
        .ap_done_reg_reg_0(minus_vector29_U0_n_5),
        .ap_done_reg_reg_1(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_3(diff_sum_3),
        .diff_sum_3_ap_vld(diff_sum_3_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_3_data_str_empty_n(img_src_c_3_data_str_empty_n),
        .internal_empty_n_reg(minus_vector29_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector29_U0_n_1),
        .\mOutPtr_reg[0]_0 (img_src_c_3_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_20),
        .minus_vector29_U0_ap_start(minus_vector29_U0_ap_start),
        .q0_reg(minus_vector29_U0_n_0));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector30 minus_vector30_U0
       (.Q({ap_CS_fsm_pp0_stage0_6,minus_vector30_U0_n_4}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector30_U0_n_5),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_7),
        .ap_done_reg_reg_0(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_4(diff_sum_4),
        .diff_sum_4_ap_vld(diff_sum_4_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_4_data_str_empty_n(img_src_c_4_data_str_empty_n),
        .internal_empty_n_reg(minus_vector30_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector30_U0_n_2),
        .\mOutPtr_reg[0]_0 (img_src_c_4_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_19),
        .minus_vector30_U0_ap_start(minus_vector30_U0_ap_start),
        .q0_reg(minus_vector30_U0_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector31 minus_vector31_U0
       (.Q(ap_CS_fsm_pp0_stage0_8),
        .\ap_CS_fsm_reg[0]_0 (minus_vector31_U0_n_4),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_9),
        .ap_done_reg_reg_0(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_5(diff_sum_5),
        .diff_sum_5_ap_vld(diff_sum_5_ap_vld),
        .\diff_sum_t_fu_84_reg[0]_0 (minus_vector31_U0_n_22),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_5_data_str_empty_n(img_src_c_5_data_str_empty_n),
        .int_ap_idle_reg(minus_vector31_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector31_U0_n_2),
        .\mOutPtr_reg[0]_0 (img_src_c_5_data_str_U_n_0),
        .\mOutPtr_reg[1] (img_src_c_5_data_str_U_n_5),
        .minus_vector26_U0_ap_start(minus_vector26_U0_ap_start),
        .minus_vector27_U0_ap_start(minus_vector27_U0_ap_start),
        .minus_vector31_U0_ap_start(minus_vector31_U0_ap_start),
        .minus_vector34_U0_ap_start(minus_vector34_U0_ap_start),
        .q0_reg(minus_vector31_U0_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector32 minus_vector32_U0
       (.Q({ap_CS_fsm_pp0_stage0_10,minus_vector32_U0_n_3}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector32_U0_n_5),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_7),
        .ap_done_reg_reg_0(minus_vector32_U0_n_4),
        .ap_done_reg_reg_1(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_6(diff_sum_6),
        .diff_sum_6_ap_vld(diff_sum_6_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_6_data_str_empty_n(img_src_c_6_data_str_empty_n),
        .internal_empty_n_reg(minus_vector32_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector32_U0_n_1),
        .\mOutPtr_reg[0]_0 (img_src_c_6_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_18),
        .minus_vector32_U0_ap_start(minus_vector32_U0_ap_start),
        .q0_reg(minus_vector32_U0_n_0),
        .\t_V_reg_114_reg[1]_0 (minus_vector30_U0_n_5));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector33 minus_vector33_U0
       (.Q({ap_CS_fsm_pp0_stage0_11,minus_vector33_U0_n_3}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector33_U0_n_4),
        .ap_clk(ap_clk),
        .ap_done_reg_reg_0(minus_vector33_U0_n_5),
        .ap_done_reg_reg_1(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_7(diff_sum_7),
        .diff_sum_7_ap_vld(diff_sum_7_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_7_data_str_empty_n(img_src_c_7_data_str_empty_n),
        .internal_empty_n_reg(minus_vector33_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector33_U0_n_1),
        .\mOutPtr_reg[0]_0 (img_src_c_7_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_17),
        .minus_vector33_U0_ap_start(minus_vector33_U0_ap_start),
        .q0_reg(minus_vector33_U0_n_0));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector34 minus_vector34_U0
       (.Q(ap_CS_fsm_pp0_stage0_12),
        .\ap_CS_fsm_reg[0]_0 (minus_vector34_U0_n_4),
        .\ap_CS_fsm_reg[0]_1 (Duplicate_my_U0_n_6),
        .\ap_CS_fsm_reg[0]_2 (minus_vector35_U0_n_3),
        .\ap_CS_fsm_reg[0]_3 (minus_vector29_U0_n_3),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_13),
        .ap_done_reg_reg_0(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_8(diff_sum_8),
        .diff_sum_8_ap_vld(diff_sum_8_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_8_data_str_empty_n(img_src_c_8_data_str_empty_n),
        .int_ap_idle_reg(minus_vector34_U0_n_23),
        .internal_empty_n_reg(minus_vector34_U0_n_22),
        .\mOutPtr_reg[0] (minus_vector34_U0_n_2),
        .\mOutPtr_reg[0]_0 (img_src_c_8_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_16),
        .minus_vector34_U0_ap_start(minus_vector34_U0_ap_start),
        .q0_reg(minus_vector34_U0_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector35 minus_vector35_U0
       (.Q({ap_CS_fsm_pp0_stage0_14,minus_vector35_U0_n_3}),
        .\ap_CS_fsm_reg[0]_0 (minus_vector35_U0_n_5),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_16),
        .ap_done_reg_reg_0(minus_vector35_U0_n_4),
        .ap_done_reg_reg_1(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_9(diff_sum_9),
        .diff_sum_9_ap_vld(diff_sum_9_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_9_data_str_empty_n(img_src_c_9_data_str_empty_n),
        .internal_empty_n_reg(minus_vector35_U0_n_23),
        .\mOutPtr_reg[0] (minus_vector35_U0_n_1),
        .\mOutPtr_reg[0]_0 (img_src_c_9_data_str_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_12),
        .minus_vector35_U0_ap_start(minus_vector35_U0_ap_start),
        .q0_reg(minus_vector35_U0_n_0),
        .\t_V_reg_114_reg[1]_0 (minus_vector_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector minus_vector_U0
       (.Q(ap_CS_fsm_pp0_stage0_15),
        .\ap_CS_fsm_reg[0]_0 (minus_vector_U0_n_4),
        .\ap_CS_fsm_reg[0]_1 (minus_vector31_U0_n_23),
        .\ap_CS_fsm_reg[0]_2 (minus_vector27_U0_n_4),
        .\ap_CS_fsm_reg[0]_3 (AXIvideo2Mat_U0_n_5),
        .\ap_CS_fsm_reg[0]_4 (minus_vector26_U0_n_3),
        .\ap_CS_fsm_reg[0]_5 (minus_vector30_U0_n_4),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_16),
        .ap_done_reg_reg_0(minus_vector27_U0_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .diff_sum_10(diff_sum_10),
        .diff_sum_10_ap_vld(diff_sum_10_ap_vld),
        .\exitcond_i_reg_419_reg[0] (Duplicate_my_U0_n_3),
        .img_src_c_10_data_st_empty_n(img_src_c_10_data_st_empty_n),
        .int_ap_idle_reg(minus_vector_U0_n_23),
        .internal_empty_n_reg(minus_vector_U0_n_22),
        .\mOutPtr_reg[0] (minus_vector_U0_n_2),
        .\mOutPtr_reg[0]_0 (img_src_c_10_data_st_U_n_1),
        .\mOutPtr_reg[1] (img_src_c_0_data_str_U_n_14),
        .minus_vector29_U0_ap_start(minus_vector29_U0_ap_start),
        .minus_vector30_U0_ap_start(minus_vector30_U0_ap_start),
        .minus_vector31_U0_ap_start(minus_vector31_U0_ap_start),
        .minus_vector33_U0_ap_start(minus_vector33_U0_ap_start),
        .minus_vector_U0_ap_start(minus_vector_U0_ap_start),
        .q0_reg(minus_vector_U0_n_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_Duplicamb6 start_for_Duplicamb6_U
       (.Block_proc_U0_ap_start(Block_proc_U0_ap_start),
        .CO(exitcond2_i_fu_378_p2),
        .Duplicate_my_U0_ap_start(Duplicate_my_U0_ap_start),
        .Q(minus_vector28_U0_n_4),
        .\ap_CS_fsm_reg[0] (minus_vector_U0_n_23),
        .\ap_CS_fsm_reg[1] (Duplicate_my_U0_n_10),
        .\ap_CS_fsm_reg[1]_0 (ap_CS_fsm_state2),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_idle_reg(start_for_Duplicamb6_U_n_3),
        .int_ap_start_reg(contrast_hls_rom_AXILiteS_s_axi_U_n_9),
        .internal_empty_n_reg_0(Duplicate_my_U0_n_9),
        .internal_empty_n_reg_1(start_for_minus_vwdI_U_n_2),
        .internal_full_n_reg_0(start_for_minus_vsc4_U_n_1),
        .internal_full_n_reg_1(start_for_minus_vudo_U_n_1),
        .internal_full_n_reg_2(start_for_minus_vxdS_U_n_1),
        .minus_vector28_U0_ap_start(minus_vector28_U0_ap_start),
        .start_for_Duplicate_my_U0_full_n(start_for_Duplicate_my_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_0(start_once_reg_1));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vncg start_for_minus_vncg_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector26_U0_ap_start(minus_vector26_U0_ap_start),
        .start_for_minus_vector26_U0_full_n(start_for_minus_vector26_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector26_U0_n_5));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vocq start_for_minus_vocq_U
       (.\ap_CS_fsm_reg[1] (minus_vector27_U0_n_6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector27_U0_ap_start(minus_vector27_U0_ap_start),
        .start_for_minus_vector27_U0_full_n(start_for_minus_vector27_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vpcA start_for_minus_vpcA_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector28_U0_ap_start(minus_vector28_U0_ap_start),
        .start_for_minus_vector28_U0_full_n(start_for_minus_vector28_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector28_U0_n_5));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vqcK start_for_minus_vqcK_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector29_U0_ap_start(minus_vector29_U0_ap_start),
        .start_for_minus_vector29_U0_full_n(start_for_minus_vector29_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector29_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vrcU start_for_minus_vrcU_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector30_U0_ap_start(minus_vector30_U0_ap_start),
        .start_for_minus_vector30_U0_full_n(start_for_minus_vector30_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector30_U0_n_5));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vsc4 start_for_minus_vsc4_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_idle_reg(start_for_minus_vsc4_U_n_1),
        .minus_vector31_U0_ap_start(minus_vector31_U0_ap_start),
        .start_for_minus_vector28_U0_full_n(start_for_minus_vector28_U0_full_n),
        .start_for_minus_vector34_U0_full_n(start_for_minus_vector34_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector31_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vtde start_for_minus_vtde_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector32_U0_ap_start(minus_vector32_U0_ap_start),
        .start_for_minus_vector32_U0_full_n(start_for_minus_vector32_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector32_U0_n_5));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vudo start_for_minus_vudo_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_idle_reg(start_for_minus_vudo_U_n_1),
        .minus_vector33_U0_ap_start(minus_vector33_U0_ap_start),
        .start_for_minus_vector27_U0_full_n(start_for_minus_vector27_U0_full_n),
        .start_for_minus_vector32_U0_full_n(start_for_minus_vector32_U0_full_n),
        .start_for_minus_vector35_U0_full_n(start_for_minus_vector35_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector33_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vvdy start_for_minus_vvdy_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .minus_vector34_U0_ap_start(minus_vector34_U0_ap_start),
        .start_for_minus_vector34_U0_full_n(start_for_minus_vector34_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector34_U0_n_4));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vwdI start_for_minus_vwdI_U
       (.Q(minus_vector32_U0_n_3),
        .\ap_CS_fsm_reg[0] (minus_vector33_U0_n_3),
        .\ap_CS_fsm_reg[0]_0 (minus_vector34_U0_n_23),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_idle_reg(start_for_minus_vwdI_U_n_2),
        .minus_vector32_U0_ap_start(minus_vector32_U0_ap_start),
        .minus_vector35_U0_ap_start(minus_vector35_U0_ap_start),
        .start_for_minus_vector35_U0_full_n(start_for_minus_vector35_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector35_U0_n_5));
  m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vxdS start_for_minus_vxdS_U
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_idle_reg(start_for_minus_vxdS_U_n_1),
        .minus_vector_U0_ap_start(minus_vector_U0_ap_start),
        .start_for_minus_vector26_U0_full_n(start_for_minus_vector26_U0_full_n),
        .start_for_minus_vector29_U0_full_n(start_for_minus_vector29_U0_full_n),
        .start_for_minus_vector30_U0_full_n(start_for_minus_vector30_U0_full_n),
        .start_once_reg_reg(Duplicate_my_U0_n_8),
        .\t_V_reg_114_reg[1] (minus_vector_U0_n_4));
endmodule

(* ORIG_REF_NAME = "contrast_hls_rom_AXILiteS_s_axi" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_contrast_hls_rom_AXILiteS_s_axi
   (out,
    s_axi_AXILiteS_RVALID,
    interrupt,
    E,
    Block_proc_U0_ap_start,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    internal_full_n_reg,
    s_axi_AXILiteS_RDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_idle,
    AXIvideo2Mat_U0_ap_ready,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARADDR,
    img_src_0_cols_V_c_full_n,
    img_src_0_rows_V_c_full_n,
    img_src_0_cols_V_c_empty_n,
    img_src_0_cols_V_c27_full_n,
    img_src_0_rows_V_c_empty_n,
    img_src_0_rows_V_c26_full_n,
    Q,
    start_for_Duplicate_my_U0_full_n,
    start_once_reg,
    ap_sync_done,
    s_axi_AXILiteS_AWADDR,
    CO);
  output [2:0]out;
  output [1:0]s_axi_AXILiteS_RVALID;
  output interrupt;
  output [0:0]E;
  output Block_proc_U0_ap_start;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[0] ;
  output internal_full_n_reg;
  output [4:0]s_axi_AXILiteS_RDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_idle;
  input AXIvideo2Mat_U0_ap_ready;
  input s_axi_AXILiteS_ARVALID;
  input s_axi_AXILiteS_RREADY;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_WVALID;
  input s_axi_AXILiteS_BREADY;
  input [2:0]s_axi_AXILiteS_WDATA;
  input [0:0]s_axi_AXILiteS_WSTRB;
  input [3:0]s_axi_AXILiteS_ARADDR;
  input img_src_0_cols_V_c_full_n;
  input img_src_0_rows_V_c_full_n;
  input img_src_0_cols_V_c_empty_n;
  input img_src_0_cols_V_c27_full_n;
  input img_src_0_rows_V_c_empty_n;
  input img_src_0_rows_V_c26_full_n;
  input [1:0]Q;
  input start_for_Duplicate_my_U0_full_n;
  input start_once_reg;
  input ap_sync_done;
  input [3:0]s_axi_AXILiteS_AWADDR;
  input [0:0]CO;

  wire AXIvideo2Mat_U0_ap_ready;
  wire Block_proc_U0_ap_start;
  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_rstate_reg_n_0_[0] ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_wstate_reg_n_0_[0] ;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n_inv;
  wire ap_sync_done;
  wire ar_hs;
  wire [7:7]data0;
  wire img_src_0_cols_V_c27_full_n;
  wire img_src_0_cols_V_c_empty_n;
  wire img_src_0_cols_V_c_full_n;
  wire img_src_0_rows_V_c26_full_n;
  wire img_src_0_rows_V_c_empty_n;
  wire img_src_0_rows_V_c_full_n;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire internal_full_n_reg;
  wire interrupt;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire p_0_in__0;
  wire p_1_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire [3:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [3:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [4:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  (* RTL_KEEP = "yes" *) wire [1:0]s_axi_AXILiteS_RVALID;
  wire [2:0]s_axi_AXILiteS_WDATA;
  wire [0:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire start_for_Duplicate_my_U0_full_n;
  wire start_once_reg;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_RREADY),
        .I1(s_axi_AXILiteS_RVALID[1]),
        .I2(s_axi_AXILiteS_RVALID[0]),
        .I3(s_axi_AXILiteS_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_RVALID[0]),
        .I1(s_axi_AXILiteS_ARVALID),
        .I2(s_axi_AXILiteS_RREADY),
        .I3(s_axi_AXILiteS_RVALID[1]),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_rstate_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RVALID[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RVALID[1]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hAE0CAE3F)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_AXILiteS_BREADY),
        .I1(out[0]),
        .I2(s_axi_AXILiteS_AWVALID),
        .I3(out[2]),
        .I4(out[1]),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(out[0]),
        .I2(s_axi_AXILiteS_WVALID),
        .I3(out[1]),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(out[1]),
        .I1(s_axi_AXILiteS_WVALID),
        .I2(s_axi_AXILiteS_BREADY),
        .I3(out[2]),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_wstate_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(out[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(out[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(out[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\mOutPtr_reg[0] ),
        .I1(img_src_0_cols_V_c_empty_n),
        .I2(img_src_0_cols_V_c27_full_n),
        .I3(img_src_0_rows_V_c_empty_n),
        .I4(img_src_0_rows_V_c26_full_n),
        .I5(Q[0]),
        .O(\mOutPtr_reg[1] ));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    int_ap_done_i_1
       (.I0(int_ap_done_i_2_n_0),
        .I1(s_axi_AXILiteS_ARVALID),
        .I2(s_axi_AXILiteS_RVALID[0]),
        .I3(ap_sync_done),
        .I4(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_done_i_2
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[2]),
        .O(int_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(ap_rst_n_inv));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(ap_rst_n_inv));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXIvideo2Mat_U0_ap_ready),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    int_ap_start_i_1
       (.I0(data0),
        .I1(Q[1]),
        .I2(CO),
        .I3(int_ap_start3_out),
        .I4(Block_proc_U0_ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    int_ap_start_i_2
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_AXILiteS_WSTRB),
        .I3(int_auto_restart_i_2_n_0),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(Block_proc_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    int_auto_restart_i_1
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(s_axi_AXILiteS_WSTRB),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(data0),
        .O(int_auto_restart_i_1_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(s_axi_AXILiteS_WVALID),
        .I4(out[1]),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(data0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_AXILiteS_WSTRB),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in__0),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(s_axi_AXILiteS_WVALID),
        .I3(out[1]),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in__0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(int_isr6_out),
        .I2(ap_sync_done),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT6 #(
    .INIT(64'hF7777777F8888888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(int_isr6_out),
        .I2(CO),
        .I3(Q[1]),
        .I4(p_0_in__0),
        .I5(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__22
       (.I0(Block_proc_U0_ap_start),
        .I1(img_src_0_rows_V_c_full_n),
        .I2(img_src_0_cols_V_c_full_n),
        .O(internal_full_n_reg));
  LUT3 #(
    .INIT(8'hA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_0),
        .I1(p_1_in),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(interrupt));
  LUT3 #(
    .INIT(8'hA8)) 
    \mOutPtr[0]_i_2 
       (.I0(Block_proc_U0_ap_start),
        .I1(start_for_Duplicate_my_U0_full_n),
        .I2(start_once_reg),
        .O(\mOutPtr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mOutPtr[1]_i_1__14 
       (.I0(img_src_0_cols_V_c_full_n),
        .I1(img_src_0_rows_V_c_full_n),
        .I2(Block_proc_U0_ap_start),
        .I3(\mOutPtr_reg[1] ),
        .O(E));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[1]),
        .I2(s_axi_AXILiteS_ARADDR[0]),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_2 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(int_gie_reg_n_0),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(Block_proc_U0_ap_start),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \rdata[1]_i_1 
       (.I0(int_ap_done),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(p_0_in__0),
        .I3(s_axi_AXILiteS_ARADDR[2]),
        .I4(p_1_in),
        .I5(\rdata[1]_i_2_n_0 ),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[2]_i_1 
       (.I0(int_ap_idle),
        .I1(s_axi_AXILiteS_ARADDR[2]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .O(rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[3]_i_1 
       (.I0(int_ap_ready),
        .I1(s_axi_AXILiteS_ARADDR[2]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .O(rdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(s_axi_AXILiteS_RVALID[0]),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[7]_i_2 
       (.I0(data0),
        .I1(s_axi_AXILiteS_ARADDR[2]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[0]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .O(rdata[7]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(out[0]),
        .I1(s_axi_AXILiteS_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w6_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A
   (img_src_0_cols_V_c27_full_n,
    img_src_0_cols_V_c27_empty_n,
    ap_clk,
    \ap_CS_fsm_reg[0] ,
    ap_rst_n,
    internal_empty_n4_out,
    ap_rst_n_inv,
    E);
  output img_src_0_cols_V_c27_full_n;
  output img_src_0_cols_V_c27_empty_n;
  input ap_clk;
  input \ap_CS_fsm_reg[0] ;
  input ap_rst_n;
  input internal_empty_n4_out;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_src_0_cols_V_c27_empty_n;
  wire img_src_0_cols_V_c27_full_n;
  wire internal_empty_n4_out;
  wire internal_empty_n_i_1__11_n_0;
  wire internal_full_n_i_1__12_n_0;
  wire \mOutPtr[0]_i_1__14_n_0 ;
  wire \mOutPtr[1]_i_1__11_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFD00FD00FD000000)) 
    internal_empty_n_i_1__11
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(internal_empty_n4_out),
        .I5(img_src_0_cols_V_c27_empty_n),
        .O(internal_empty_n_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__11_n_0),
        .Q(img_src_0_cols_V_c27_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD00FFFF)) 
    internal_full_n_i_1__12
       (.I0(internal_empty_n4_out),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(img_src_0_cols_V_c27_full_n),
        .I4(ap_rst_n),
        .I5(\ap_CS_fsm_reg[0] ),
        .O(internal_full_n_i_1__12_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__12_n_0),
        .Q(img_src_0_cols_V_c27_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__14 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[1]_i_1__11 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__11_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__14_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__11_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w6_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A_0
   (img_src_0_cols_V_c_full_n,
    img_src_0_cols_V_c_empty_n,
    ap_clk,
    ap_rst_n,
    internal_empty_n_reg_0,
    int_ap_start_reg,
    Block_proc_U0_ap_start,
    img_src_0_rows_V_c_full_n,
    ap_rst_n_inv,
    E);
  output img_src_0_cols_V_c_full_n;
  output img_src_0_cols_V_c_empty_n;
  input ap_clk;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input int_ap_start_reg;
  input Block_proc_U0_ap_start;
  input img_src_0_rows_V_c_full_n;
  input ap_rst_n_inv;
  input [0:0]E;

  wire Block_proc_U0_ap_start;
  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_src_0_cols_V_c_empty_n;
  wire img_src_0_cols_V_c_full_n;
  wire img_src_0_rows_V_c_full_n;
  wire int_ap_start_reg;
  wire internal_empty_n_i_1__13_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__14_n_0;
  wire \mOutPtr[0]_i_1__12_n_0 ;
  wire \mOutPtr[1]_i_1__13_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hF0F0E0F000F00000)) 
    internal_empty_n_i_1__13
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(ap_rst_n),
        .I3(internal_empty_n_reg_0),
        .I4(int_ap_start_reg),
        .I5(img_src_0_cols_V_c_empty_n),
        .O(internal_empty_n_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__13_n_0),
        .Q(img_src_0_cols_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__14
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(img_src_0_cols_V_c_full_n),
        .I3(ap_rst_n),
        .I4(internal_empty_n_reg_0),
        .I5(int_ap_start_reg),
        .O(internal_full_n_i_1__14_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__14_n_0),
        .Q(img_src_0_cols_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__12 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__12_n_0 ));
  LUT6 #(
    .INIT(64'h7F0080FF80FF7F00)) 
    \mOutPtr[1]_i_1__13 
       (.I0(Block_proc_U0_ap_start),
        .I1(img_src_0_rows_V_c_full_n),
        .I2(img_src_0_cols_V_c_full_n),
        .I3(internal_empty_n_reg_0),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__13_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__12_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__13_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w6_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A_1
   (img_src_0_rows_V_c26_full_n,
    img_src_0_rows_V_c26_empty_n,
    internal_empty_n_reg_0,
    E,
    ap_clk,
    ap_rst_n,
    internal_empty_n_reg_1,
    internal_empty_n4_out,
    \ap_CS_fsm_reg[0] ,
    img_src_0_cols_V_c27_empty_n,
    internal_empty_n_reg_2,
    Q,
    ap_rst_n_inv);
  output img_src_0_rows_V_c26_full_n;
  output img_src_0_rows_V_c26_empty_n;
  output internal_empty_n_reg_0;
  output [0:0]E;
  input ap_clk;
  input ap_rst_n;
  input internal_empty_n_reg_1;
  input internal_empty_n4_out;
  input \ap_CS_fsm_reg[0] ;
  input img_src_0_cols_V_c27_empty_n;
  input internal_empty_n_reg_2;
  input [0:0]Q;
  input ap_rst_n_inv;

  wire [0:0]E;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_src_0_cols_V_c27_empty_n;
  wire img_src_0_rows_V_c26_empty_n;
  wire img_src_0_rows_V_c26_full_n;
  wire internal_empty_n4_out;
  wire internal_empty_n_i_1__12_n_0;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire internal_full_n_i_1__11_n_0;
  wire \mOutPtr[0]_i_1__13_n_0 ;
  wire \mOutPtr[1]_i_2__0_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT4 #(
    .INIT(16'hF7FF)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(img_src_0_rows_V_c26_empty_n),
        .I1(img_src_0_cols_V_c27_empty_n),
        .I2(internal_empty_n_reg_2),
        .I3(Q),
        .O(internal_empty_n_reg_0));
  LUT6 #(
    .INIT(64'hF0F0F0E0F0000000)) 
    internal_empty_n_i_1__12
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(ap_rst_n),
        .I3(internal_empty_n_reg_1),
        .I4(internal_empty_n_reg_0),
        .I5(img_src_0_rows_V_c26_empty_n),
        .O(internal_empty_n_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__12_n_0),
        .Q(img_src_0_rows_V_c26_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD00FFFF)) 
    internal_full_n_i_1__11
       (.I0(internal_empty_n4_out),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(img_src_0_rows_V_c26_full_n),
        .I4(ap_rst_n),
        .I5(\ap_CS_fsm_reg[0] ),
        .O(internal_full_n_i_1__11_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__11_n_0),
        .Q(img_src_0_rows_V_c26_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__13 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__13_n_0 ));
  LUT3 #(
    .INIT(8'hC2)) 
    \mOutPtr[1]_i_1__12 
       (.I0(img_src_0_rows_V_c26_empty_n),
        .I1(internal_empty_n_reg_1),
        .I2(internal_empty_n_reg_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[1]_i_2__0 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__13_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w6_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w6_d2_A_2
   (img_src_0_rows_V_c_full_n,
    img_src_0_rows_V_c_empty_n,
    ap_clk,
    ap_rst_n,
    internal_empty_n_reg_0,
    int_ap_start_reg,
    Block_proc_U0_ap_start,
    img_src_0_cols_V_c_full_n,
    ap_rst_n_inv,
    E);
  output img_src_0_rows_V_c_full_n;
  output img_src_0_rows_V_c_empty_n;
  input ap_clk;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input int_ap_start_reg;
  input Block_proc_U0_ap_start;
  input img_src_0_cols_V_c_full_n;
  input ap_rst_n_inv;
  input [0:0]E;

  wire Block_proc_U0_ap_start;
  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_src_0_cols_V_c_full_n;
  wire img_src_0_rows_V_c_empty_n;
  wire img_src_0_rows_V_c_full_n;
  wire int_ap_start_reg;
  wire internal_empty_n_i_1__14_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__13_n_0;
  wire \mOutPtr[0]_i_1__11_n_0 ;
  wire \mOutPtr[1]_i_2__1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hF0F0E0F000F00000)) 
    internal_empty_n_i_1__14
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(ap_rst_n),
        .I3(internal_empty_n_reg_0),
        .I4(int_ap_start_reg),
        .I5(img_src_0_rows_V_c_empty_n),
        .O(internal_empty_n_i_1__14_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__14_n_0),
        .Q(img_src_0_rows_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__13
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(img_src_0_rows_V_c_full_n),
        .I3(ap_rst_n),
        .I4(internal_empty_n_reg_0),
        .I5(int_ap_start_reg),
        .O(internal_full_n_i_1__13_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__13_n_0),
        .Q(img_src_0_rows_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__11 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'h7F0080FF80FF7F00)) 
    \mOutPtr[1]_i_2__1 
       (.I0(Block_proc_U0_ap_start),
        .I1(img_src_0_rows_V_c_full_n),
        .I2(img_src_0_cols_V_c_full_n),
        .I3(internal_empty_n_reg_0),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__11_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A
   (\SRL_SIG_reg[0][7] ,
    img_src_0_data_strea_full_n,
    img_src_0_data_strea_empty_n,
    img_src_0_data_strea_dout,
    ap_rst_n_inv,
    ap_clk,
    \mOutPtr_reg[0]_0 ,
    \ap_CS_fsm_reg[4] ,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    E,
    D);
  output \SRL_SIG_reg[0][7] ;
  output img_src_0_data_strea_full_n;
  output img_src_0_data_strea_empty_n;
  output [7:0]img_src_0_data_strea_dout;
  input ap_rst_n_inv;
  input ap_clk;
  input \mOutPtr_reg[0]_0 ;
  input \ap_CS_fsm_reg[4] ;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire \SRL_SIG_reg[0][7] ;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire [7:0]img_src_0_data_strea_dout;
  wire img_src_0_data_strea_empty_n;
  wire img_src_0_data_strea_full_n;
  wire internal_empty_n_i_1__15_n_0;
  wire internal_full_n_i_1__15_n_0;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg_n_0_[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_shiftReg_15 U_fifo_w8_d2_A_ram
       (.D(D),
        .E(E),
        .ap_clk(ap_clk),
        .img_src_0_data_strea_dout(img_src_0_data_strea_dout),
        .\mOutPtr_reg[0] (\SRL_SIG_reg[0][7] ),
        .\mOutPtr_reg[1] (\mOutPtr_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hF0F0E0F000F00000)) 
    internal_empty_n_i_1__15
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\SRL_SIG_reg[0][7] ),
        .I2(ap_rst_n),
        .I3(\ap_CS_fsm_reg[4] ),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(img_src_0_data_strea_empty_n),
        .O(internal_empty_n_i_1__15_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__15_n_0),
        .Q(img_src_0_data_strea_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__15
       (.I0(img_src_0_data_strea_full_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\SRL_SIG_reg[0][7] ),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(\ap_CS_fsm_reg[4] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__15_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__15_n_0),
        .Q(img_src_0_data_strea_full_n),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hDB24)) 
    \mOutPtr[1]_i_1 
       (.I0(\SRL_SIG_reg[0][7] ),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(\exitcond_i_reg_419_reg[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr_reg[0]_0 ),
        .Q(\SRL_SIG_reg[0][7] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_10
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_6_data_str_empty_n,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    img_src_c_7_data_str_full_n,
    img_src_0_data_strea_empty_n,
    img_src_c_8_data_str_full_n);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_6_data_str_empty_n;
  output ap_enable_reg_pp0_iter0_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input img_src_c_7_data_str_full_n;
  input img_src_0_data_strea_empty_n;
  input img_src_c_8_data_str_full_n;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_0_data_strea_empty_n;
  wire img_src_c_6_data_str_empty_n;
  wire img_src_c_6_data_str_full_n;
  wire img_src_c_7_data_str_full_n;
  wire img_src_c_8_data_str_full_n;
  wire internal_empty_n_i_1__22_n_0;
  wire internal_full_n_i_1__22_n_0;
  wire \mOutPtr[1]_i_1__6_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT4 #(
    .INIT(16'h7FFF)) 
    ap_enable_reg_pp0_iter0_i_4
       (.I0(img_src_c_6_data_str_full_n),
        .I1(img_src_c_7_data_str_full_n),
        .I2(img_src_0_data_strea_empty_n),
        .I3(img_src_c_8_data_str_full_n),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__22
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_6_data_str_empty_n),
        .O(internal_empty_n_i_1__22_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__22_n_0),
        .Q(img_src_c_6_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__22
       (.I0(img_src_c_6_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__22_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__22_n_0),
        .Q(img_src_c_6_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__6 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_6_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__6_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__6_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_11
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_7_data_str_full_n,
    img_src_c_7_data_str_empty_n,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_7_data_str_full_n;
  output img_src_c_7_data_str_empty_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_7_data_str_empty_n;
  wire img_src_c_7_data_str_full_n;
  wire internal_empty_n_i_1__23_n_0;
  wire internal_full_n_i_1__23_n_0;
  wire \mOutPtr[1]_i_1__7_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__23
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_7_data_str_empty_n),
        .O(internal_empty_n_i_1__23_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__23_n_0),
        .Q(img_src_c_7_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__23
       (.I0(img_src_c_7_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__23_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__23_n_0),
        .Q(img_src_c_7_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__7 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__7_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__7_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_12
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_8_data_str_full_n,
    img_src_c_8_data_str_empty_n,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_8_data_str_full_n;
  output img_src_c_8_data_str_empty_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_8_data_str_empty_n;
  wire img_src_c_8_data_str_full_n;
  wire internal_empty_n_i_1__24_n_0;
  wire internal_full_n_i_1__24_n_0;
  wire \mOutPtr[1]_i_1__8_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__24
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_8_data_str_empty_n),
        .O(internal_empty_n_i_1__24_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__24_n_0),
        .Q(img_src_c_8_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__24
       (.I0(img_src_c_8_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__24_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__24_n_0),
        .Q(img_src_c_8_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__8 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__8_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__8_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_13
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_9_data_str_full_n,
    img_src_c_9_data_str_empty_n,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_9_data_str_full_n;
  output img_src_c_9_data_str_empty_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_9_data_str_empty_n;
  wire img_src_c_9_data_str_full_n;
  wire internal_empty_n_i_1__25_n_0;
  wire internal_full_n_i_1__25_n_0;
  wire \mOutPtr[1]_i_1__9_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__25
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_9_data_str_empty_n),
        .O(internal_empty_n_i_1__25_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__25_n_0),
        .Q(img_src_c_9_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__25
       (.I0(img_src_c_9_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__25_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__25_n_0),
        .Q(img_src_c_9_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__9 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__9_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_3
   (\mOutPtr_reg[1]_0 ,
    \SRL_SIG_reg[0]_0 ,
    img_src_c_0_data_str_full_n,
    img_src_c_0_data_str_empty_n,
    \diff_sum_t_fu_84_reg[3] ,
    \diff_sum_t_fu_84_reg[3]_0 ,
    \diff_sum_t_fu_84_reg[3]_1 ,
    \diff_sum_t_fu_84_reg[3]_2 ,
    \diff_sum_t_fu_84_reg[3]_3 ,
    \diff_sum_t_fu_84_reg[3]_4 ,
    \diff_sum_t_fu_84_reg[3]_5 ,
    \diff_sum_t_fu_84_reg[3]_6 ,
    \diff_sum_t_fu_84_reg[3]_7 ,
    \diff_sum_t_fu_84_reg[3]_8 ,
    \diff_sum_t_fu_84_reg[3]_9 ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    shiftReg_ce,
    img_src_0_data_strea_dout,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    \mOutPtr_reg[1]_1 ,
    \mOutPtr_reg[0]_0 ,
    \SRL_SIG_reg[1][4] ,
    \SRL_SIG_reg[1][7] ,
    \mOutPtr_reg[1]_2 ,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[1]_3 ,
    \mOutPtr_reg[0]_2 ,
    \SRL_SIG_reg[1][7]_0 ,
    \SRL_SIG_reg[1][3] ,
    \mOutPtr_reg[1]_4 ,
    \mOutPtr_reg[0]_3 ,
    \mOutPtr_reg[1]_5 ,
    \mOutPtr_reg[0]_4 ,
    \mOutPtr_reg[1]_6 ,
    \mOutPtr_reg[0]_5 ,
    \mOutPtr_reg[1]_7 ,
    \mOutPtr_reg[0]_6 ,
    \mOutPtr_reg[1]_8 ,
    \mOutPtr_reg[0]_7 );
  output \mOutPtr_reg[1]_0 ;
  output [7:0]\SRL_SIG_reg[0]_0 ;
  output img_src_c_0_data_str_full_n;
  output img_src_c_0_data_str_empty_n;
  output \diff_sum_t_fu_84_reg[3] ;
  output \diff_sum_t_fu_84_reg[3]_0 ;
  output \diff_sum_t_fu_84_reg[3]_1 ;
  output \diff_sum_t_fu_84_reg[3]_2 ;
  output \diff_sum_t_fu_84_reg[3]_3 ;
  output \diff_sum_t_fu_84_reg[3]_4 ;
  output \diff_sum_t_fu_84_reg[3]_5 ;
  output \diff_sum_t_fu_84_reg[3]_6 ;
  output \diff_sum_t_fu_84_reg[3]_7 ;
  output \diff_sum_t_fu_84_reg[3]_8 ;
  output \diff_sum_t_fu_84_reg[3]_9 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input shiftReg_ce;
  input [7:0]img_src_0_data_strea_dout;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input \mOutPtr_reg[1]_1 ;
  input \mOutPtr_reg[0]_0 ;
  input \SRL_SIG_reg[1][4] ;
  input \SRL_SIG_reg[1][7] ;
  input \mOutPtr_reg[1]_2 ;
  input \mOutPtr_reg[0]_1 ;
  input \mOutPtr_reg[1]_3 ;
  input \mOutPtr_reg[0]_2 ;
  input \SRL_SIG_reg[1][7]_0 ;
  input \SRL_SIG_reg[1][3] ;
  input \mOutPtr_reg[1]_4 ;
  input \mOutPtr_reg[0]_3 ;
  input \mOutPtr_reg[1]_5 ;
  input \mOutPtr_reg[0]_4 ;
  input \mOutPtr_reg[1]_6 ;
  input \mOutPtr_reg[0]_5 ;
  input \mOutPtr_reg[1]_7 ;
  input \mOutPtr_reg[0]_6 ;
  input \mOutPtr_reg[1]_8 ;
  input \mOutPtr_reg[0]_7 ;

  wire [0:0]Q;
  wire [7:0]\SRL_SIG_reg[0]_0 ;
  wire \SRL_SIG_reg[1][3] ;
  wire \SRL_SIG_reg[1][4] ;
  wire \SRL_SIG_reg[1][7] ;
  wire \SRL_SIG_reg[1][7]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \diff_sum_t_fu_84_reg[3] ;
  wire \diff_sum_t_fu_84_reg[3]_0 ;
  wire \diff_sum_t_fu_84_reg[3]_1 ;
  wire \diff_sum_t_fu_84_reg[3]_2 ;
  wire \diff_sum_t_fu_84_reg[3]_3 ;
  wire \diff_sum_t_fu_84_reg[3]_4 ;
  wire \diff_sum_t_fu_84_reg[3]_5 ;
  wire \diff_sum_t_fu_84_reg[3]_6 ;
  wire \diff_sum_t_fu_84_reg[3]_7 ;
  wire \diff_sum_t_fu_84_reg[3]_8 ;
  wire \diff_sum_t_fu_84_reg[3]_9 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire [7:0]img_src_0_data_strea_dout;
  wire img_src_c_0_data_str_empty_n;
  wire img_src_c_0_data_str_full_n;
  wire internal_empty_n_i_1__16_n_0;
  wire internal_full_n_i_1__16_n_0;
  wire \mOutPtr[1]_i_1__0_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[0]_2 ;
  wire \mOutPtr_reg[0]_3 ;
  wire \mOutPtr_reg[0]_4 ;
  wire \mOutPtr_reg[0]_5 ;
  wire \mOutPtr_reg[0]_6 ;
  wire \mOutPtr_reg[0]_7 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg[1]_2 ;
  wire \mOutPtr_reg[1]_3 ;
  wire \mOutPtr_reg[1]_4 ;
  wire \mOutPtr_reg[1]_5 ;
  wire \mOutPtr_reg[1]_6 ;
  wire \mOutPtr_reg[1]_7 ;
  wire \mOutPtr_reg[1]_8 ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire shiftReg_ce;

  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_shiftReg_14 U_fifo_w8_d2_A_ram
       (.\SRL_SIG_reg[0]_0 ({\SRL_SIG_reg[0]_0 [7],\SRL_SIG_reg[0]_0 [5:4],\SRL_SIG_reg[0]_0 [0]}),
        .\SRL_SIG_reg[1][1] (\SRL_SIG_reg[0]_0 [1]),
        .\SRL_SIG_reg[1][2] (\SRL_SIG_reg[0]_0 [2]),
        .\SRL_SIG_reg[1][3] (\SRL_SIG_reg[0]_0 [3]),
        .\SRL_SIG_reg[1][3]_0 (\SRL_SIG_reg[1][3] ),
        .\SRL_SIG_reg[1][4] (\SRL_SIG_reg[1][4] ),
        .\SRL_SIG_reg[1][6] (\SRL_SIG_reg[0]_0 [6]),
        .\SRL_SIG_reg[1][7] (\SRL_SIG_reg[1][7] ),
        .\SRL_SIG_reg[1][7]_0 (\SRL_SIG_reg[1][7]_0 ),
        .ap_clk(ap_clk),
        .\diff_sum_t_fu_84_reg[3] (\diff_sum_t_fu_84_reg[3] ),
        .\diff_sum_t_fu_84_reg[3]_0 (\diff_sum_t_fu_84_reg[3]_0 ),
        .\diff_sum_t_fu_84_reg[3]_1 (\diff_sum_t_fu_84_reg[3]_1 ),
        .\diff_sum_t_fu_84_reg[3]_2 (\diff_sum_t_fu_84_reg[3]_2 ),
        .\diff_sum_t_fu_84_reg[3]_3 (\diff_sum_t_fu_84_reg[3]_3 ),
        .\diff_sum_t_fu_84_reg[3]_4 (\diff_sum_t_fu_84_reg[3]_4 ),
        .\diff_sum_t_fu_84_reg[3]_5 (\diff_sum_t_fu_84_reg[3]_5 ),
        .\diff_sum_t_fu_84_reg[3]_6 (\diff_sum_t_fu_84_reg[3]_6 ),
        .\diff_sum_t_fu_84_reg[3]_7 (\diff_sum_t_fu_84_reg[3]_7 ),
        .\diff_sum_t_fu_84_reg[3]_8 (\diff_sum_t_fu_84_reg[3]_8 ),
        .\diff_sum_t_fu_84_reg[3]_9 (\diff_sum_t_fu_84_reg[3]_9 ),
        .img_src_0_data_strea_dout(img_src_0_data_strea_dout),
        .\mOutPtr_reg[0] (\mOutPtr_reg[0]_0 ),
        .\mOutPtr_reg[0]_0 (\mOutPtr_reg[0]_1 ),
        .\mOutPtr_reg[0]_1 (\mOutPtr_reg[1]_0 ),
        .\mOutPtr_reg[0]_2 (\mOutPtr_reg[0]_2 ),
        .\mOutPtr_reg[0]_3 (\mOutPtr_reg[0]_3 ),
        .\mOutPtr_reg[0]_4 (\mOutPtr_reg[0]_4 ),
        .\mOutPtr_reg[0]_5 (\mOutPtr_reg[0]_5 ),
        .\mOutPtr_reg[0]_6 (\mOutPtr_reg[0]_6 ),
        .\mOutPtr_reg[0]_7 (\mOutPtr_reg[0]_7 ),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1]_1 ),
        .\mOutPtr_reg[1]_0 (\mOutPtr_reg[1]_2 ),
        .\mOutPtr_reg[1]_1 (\mOutPtr_reg_n_0_[1] ),
        .\mOutPtr_reg[1]_2 (\mOutPtr_reg[1]_3 ),
        .\mOutPtr_reg[1]_3 (\mOutPtr_reg[1]_4 ),
        .\mOutPtr_reg[1]_4 (\mOutPtr_reg[1]_5 ),
        .\mOutPtr_reg[1]_5 (\mOutPtr_reg[1]_6 ),
        .\mOutPtr_reg[1]_6 (\mOutPtr_reg[1]_7 ),
        .\mOutPtr_reg[1]_7 (\mOutPtr_reg[1]_8 ),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__16
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_0_data_str_empty_n),
        .O(internal_empty_n_i_1__16_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__16_n_0),
        .Q(img_src_c_0_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__16
       (.I0(img_src_c_0_data_str_full_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__16_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__16_n_0),
        .Q(img_src_c_0_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(Q),
        .I2(img_src_c_0_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_4
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_10_data_st_full_n,
    img_src_c_10_data_st_empty_n,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    img_src_c_9_data_str_full_n,
    img_src_c_0_data_str_full_n,
    img_src_c_1_data_str_full_n);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_10_data_st_full_n;
  output img_src_c_10_data_st_empty_n;
  output ap_enable_reg_pp0_iter0_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input img_src_c_9_data_str_full_n;
  input img_src_c_0_data_str_full_n;
  input img_src_c_1_data_str_full_n;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_0_data_str_full_n;
  wire img_src_c_10_data_st_empty_n;
  wire img_src_c_10_data_st_full_n;
  wire img_src_c_1_data_str_full_n;
  wire img_src_c_9_data_str_full_n;
  wire internal_empty_n_i_1__26_n_0;
  wire internal_full_n_i_1__26_n_0;
  wire \mOutPtr[1]_i_1__10_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT4 #(
    .INIT(16'h7FFF)) 
    ap_enable_reg_pp0_iter0_i_5
       (.I0(img_src_c_10_data_st_full_n),
        .I1(img_src_c_9_data_str_full_n),
        .I2(img_src_c_0_data_str_full_n),
        .I3(img_src_c_1_data_str_full_n),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__26
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_10_data_st_empty_n),
        .O(internal_empty_n_i_1__26_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__26_n_0),
        .Q(img_src_c_10_data_st_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__26
       (.I0(img_src_c_10_data_st_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__26_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__26_n_0),
        .Q(img_src_c_10_data_st_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__10 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__10_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__10_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_5
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_1_data_str_full_n,
    img_src_c_1_data_str_empty_n,
    \t_V_2_reg_359_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    img_src_c_0_data_str_full_n,
    img_src_c_9_data_str_full_n,
    img_src_c_10_data_st_full_n,
    internal_full_n_reg_0);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_1_data_str_full_n;
  output img_src_c_1_data_str_empty_n;
  output \t_V_2_reg_359_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input img_src_c_0_data_str_full_n;
  input img_src_c_9_data_str_full_n;
  input img_src_c_10_data_st_full_n;
  input internal_full_n_reg_0;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_0_data_str_full_n;
  wire img_src_c_10_data_st_full_n;
  wire img_src_c_1_data_str_empty_n;
  wire img_src_c_1_data_str_full_n;
  wire img_src_c_9_data_str_full_n;
  wire internal_empty_n_i_1__17_n_0;
  wire internal_full_n_i_1__17_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[1]_i_1__1_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;
  wire \t_V_2_reg_359_reg[0] ;

  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(img_src_c_1_data_str_full_n),
        .I1(img_src_c_0_data_str_full_n),
        .I2(img_src_c_9_data_str_full_n),
        .I3(img_src_c_10_data_st_full_n),
        .I4(internal_full_n_reg_0),
        .O(\t_V_2_reg_359_reg[0] ));
  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__17
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_1_data_str_empty_n),
        .O(internal_empty_n_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__17_n_0),
        .Q(img_src_c_1_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__17
       (.I0(img_src_c_1_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__17_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__17_n_0),
        .Q(img_src_c_1_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__1 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_6
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_2_data_str_full_n,
    img_src_c_2_data_str_empty_n,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    img_src_c_3_data_str_full_n,
    img_src_c_4_data_str_full_n,
    img_src_c_5_data_str_full_n);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_2_data_str_full_n;
  output img_src_c_2_data_str_empty_n;
  output ap_enable_reg_pp0_iter0_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input img_src_c_3_data_str_full_n;
  input img_src_c_4_data_str_full_n;
  input img_src_c_5_data_str_full_n;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_2_data_str_empty_n;
  wire img_src_c_2_data_str_full_n;
  wire img_src_c_3_data_str_full_n;
  wire img_src_c_4_data_str_full_n;
  wire img_src_c_5_data_str_full_n;
  wire internal_empty_n_i_1__18_n_0;
  wire internal_full_n_i_1__18_n_0;
  wire \mOutPtr[1]_i_1__2_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT4 #(
    .INIT(16'h8000)) 
    ap_enable_reg_pp0_iter0_i_3
       (.I0(img_src_c_2_data_str_full_n),
        .I1(img_src_c_3_data_str_full_n),
        .I2(img_src_c_4_data_str_full_n),
        .I3(img_src_c_5_data_str_full_n),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__18
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_2_data_str_empty_n),
        .O(internal_empty_n_i_1__18_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__18_n_0),
        .Q(img_src_c_2_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__18
       (.I0(img_src_c_2_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__18_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__18_n_0),
        .Q(img_src_c_2_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__2 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_7
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_3_data_str_full_n,
    img_src_c_3_data_str_empty_n,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_3_data_str_full_n;
  output img_src_c_3_data_str_empty_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_3_data_str_empty_n;
  wire img_src_c_3_data_str_full_n;
  wire internal_empty_n_i_1__19_n_0;
  wire internal_full_n_i_1__19_n_0;
  wire \mOutPtr[1]_i_1__3_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__19
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_3_data_str_empty_n),
        .O(internal_empty_n_i_1__19_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__19_n_0),
        .Q(img_src_c_3_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__19
       (.I0(img_src_c_3_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__19_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__19_n_0),
        .Q(img_src_c_3_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__3 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_3_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__3_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_8
   (\mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    img_src_c_4_data_str_full_n,
    img_src_c_4_data_str_empty_n,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1);
  output \mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output img_src_c_4_data_str_full_n;
  output img_src_c_4_data_str_empty_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;

  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_4_data_str_empty_n;
  wire img_src_c_4_data_str_full_n;
  wire internal_empty_n_i_1__20_n_0;
  wire internal_full_n_i_1__20_n_0;
  wire \mOutPtr[1]_i_1__4_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__20
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(\mOutPtr_reg[1]_1 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_4_data_str_empty_n),
        .O(internal_empty_n_i_1__20_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__20_n_0),
        .Q(img_src_c_4_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__20
       (.I0(img_src_c_4_data_str_full_n),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__20_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__20_n_0),
        .Q(img_src_c_4_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__4 
       (.I0(\mOutPtr_reg[1]_1 ),
        .I1(Q),
        .I2(img_src_c_4_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(\mOutPtr[1]_i_1__4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_1 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__4_n_0 ),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_9
   (\mOutPtr_reg[1]_0 ,
    img_src_c_5_data_str_full_n,
    img_src_c_5_data_str_empty_n,
    \diff_sum_t_fu_84_reg[3] ,
    \diff_sum_t_fu_84_reg[3]_0 ,
    \diff_sum_t_fu_84_reg[3]_1 ,
    \diff_sum_t_fu_84_reg[3]_2 ,
    \diff_sum_t_fu_84_reg[3]_3 ,
    \diff_sum_t_fu_84_reg[3]_4 ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg,
    shiftReg_ce,
    \SRL_SIG_reg[0]_0 ,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg_1,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][6] ,
    \mOutPtr_reg[1]_1 ,
    \mOutPtr_reg[0]_0 );
  output \mOutPtr_reg[1]_0 ;
  output img_src_c_5_data_str_full_n;
  output img_src_c_5_data_str_empty_n;
  output \diff_sum_t_fu_84_reg[3] ;
  output \diff_sum_t_fu_84_reg[3]_0 ;
  output \diff_sum_t_fu_84_reg[3]_1 ;
  output \diff_sum_t_fu_84_reg[3]_2 ;
  output \diff_sum_t_fu_84_reg[3]_3 ;
  output \diff_sum_t_fu_84_reg[3]_4 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg;
  input shiftReg_ce;
  input [7:0]\SRL_SIG_reg[0]_0 ;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg_1;
  input \SRL_SIG_reg[0][4] ;
  input \SRL_SIG_reg[0][6] ;
  input \mOutPtr_reg[1]_1 ;
  input \mOutPtr_reg[0]_0 ;

  wire [0:0]Q;
  wire \SRL_SIG_reg[0][4] ;
  wire \SRL_SIG_reg[0][6] ;
  wire [7:0]\SRL_SIG_reg[0]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \diff_sum_t_fu_84_reg[3] ;
  wire \diff_sum_t_fu_84_reg[3]_0 ;
  wire \diff_sum_t_fu_84_reg[3]_1 ;
  wire \diff_sum_t_fu_84_reg[3]_2 ;
  wire \diff_sum_t_fu_84_reg[3]_3 ;
  wire \diff_sum_t_fu_84_reg[3]_4 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire img_src_c_5_data_str_empty_n;
  wire img_src_c_5_data_str_full_n;
  wire internal_empty_n_i_1__21_n_0;
  wire internal_full_n_i_1__21_n_0;
  wire \mOutPtr[1]_i_1__5_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire shiftReg_ce;

  m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_shiftReg U_fifo_w8_d2_A_ram
       (.\SRL_SIG_reg[0][4] (\SRL_SIG_reg[0][4] ),
        .\SRL_SIG_reg[0][6] (\SRL_SIG_reg[0][6] ),
        .\SRL_SIG_reg[0]_0 (\SRL_SIG_reg[0]_0 ),
        .ap_clk(ap_clk),
        .\diff_sum_t_fu_84_reg[3] (\diff_sum_t_fu_84_reg[3] ),
        .\diff_sum_t_fu_84_reg[3]_0 (\diff_sum_t_fu_84_reg[3]_0 ),
        .\diff_sum_t_fu_84_reg[3]_1 (\diff_sum_t_fu_84_reg[3]_1 ),
        .\diff_sum_t_fu_84_reg[3]_2 (\diff_sum_t_fu_84_reg[3]_2 ),
        .\diff_sum_t_fu_84_reg[3]_3 (\diff_sum_t_fu_84_reg[3]_3 ),
        .\diff_sum_t_fu_84_reg[3]_4 (\diff_sum_t_fu_84_reg[3]_4 ),
        .\mOutPtr_reg[0] (\mOutPtr_reg[1]_0 ),
        .\mOutPtr_reg[0]_0 (\mOutPtr_reg[0]_0 ),
        .\mOutPtr_reg[1] (\mOutPtr_reg_n_0_[1] ),
        .\mOutPtr_reg[1]_0 (\mOutPtr_reg[1]_1 ),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hE0F0F0F0000000F0)) 
    internal_empty_n_i_1__21
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(ap_rst_n),
        .I3(\exitcond_i_reg_419_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_1),
        .I5(img_src_c_5_data_str_empty_n),
        .O(internal_empty_n_i_1__21_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__21_n_0),
        .Q(img_src_c_5_data_str_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAAAAA8FFFFFFFF)) 
    internal_full_n_i_1__21
       (.I0(img_src_c_5_data_str_full_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(ap_enable_reg_pp0_iter1_reg_1),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__21_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__21_n_0),
        .Q(img_src_c_5_data_str_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFD55540002AAA)) 
    \mOutPtr[1]_i_1__5 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(Q),
        .I2(img_src_c_5_data_str_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(\exitcond_i_reg_419_reg[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg),
        .Q(\mOutPtr_reg[1]_0 ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__5_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_shiftReg
   (\diff_sum_t_fu_84_reg[3] ,
    \diff_sum_t_fu_84_reg[3]_0 ,
    \diff_sum_t_fu_84_reg[3]_1 ,
    \diff_sum_t_fu_84_reg[3]_2 ,
    \diff_sum_t_fu_84_reg[3]_3 ,
    \diff_sum_t_fu_84_reg[3]_4 ,
    shiftReg_ce,
    \SRL_SIG_reg[0]_0 ,
    ap_clk,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][6] ,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[0]_0 );
  output \diff_sum_t_fu_84_reg[3] ;
  output \diff_sum_t_fu_84_reg[3]_0 ;
  output \diff_sum_t_fu_84_reg[3]_1 ;
  output \diff_sum_t_fu_84_reg[3]_2 ;
  output \diff_sum_t_fu_84_reg[3]_3 ;
  output \diff_sum_t_fu_84_reg[3]_4 ;
  input shiftReg_ce;
  input [7:0]\SRL_SIG_reg[0]_0 ;
  input ap_clk;
  input \mOutPtr_reg[1] ;
  input \mOutPtr_reg[0] ;
  input \SRL_SIG_reg[0][4] ;
  input \SRL_SIG_reg[0][6] ;
  input \mOutPtr_reg[1]_0 ;
  input \mOutPtr_reg[0]_0 ;

  wire \SRL_SIG_reg[0][4] ;
  wire \SRL_SIG_reg[0][6] ;
  wire [7:0]\SRL_SIG_reg[0]_0 ;
  wire [7:0]\SRL_SIG_reg[1]_0 ;
  wire ap_clk;
  wire \diff_sum_1[3]_INST_0_i_5_n_0 ;
  wire \diff_sum_t_fu_84_reg[3] ;
  wire \diff_sum_t_fu_84_reg[3]_0 ;
  wire \diff_sum_t_fu_84_reg[3]_1 ;
  wire \diff_sum_t_fu_84_reg[3]_2 ;
  wire \diff_sum_t_fu_84_reg[3]_3 ;
  wire \diff_sum_t_fu_84_reg[3]_4 ;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \diff_sum_0[3]_INST_0_i_6 
       (.I0(\SRL_SIG_reg[1]_0 [4]),
        .I1(\SRL_SIG_reg[1]_0 [3]),
        .I2(\SRL_SIG_reg[1]_0 [6]),
        .I3(\SRL_SIG_reg[1]_0 [1]),
        .O(\diff_sum_t_fu_84_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \diff_sum_0[3]_INST_0_i_7 
       (.I0(\SRL_SIG_reg[1]_0 [7]),
        .I1(\SRL_SIG_reg[1]_0 [5]),
        .I2(\SRL_SIG_reg[1]_0 [2]),
        .I3(\SRL_SIG_reg[1]_0 [0]),
        .O(\diff_sum_t_fu_84_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFDFF0D00FDFFFDFF)) 
    \diff_sum_1[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_2 ),
        .I1(\diff_sum_1[3]_INST_0_i_5_n_0 ),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\mOutPtr_reg[0]_0 ),
        .I4(\SRL_SIG_reg[0][4] ),
        .I5(\SRL_SIG_reg[0][6] ),
        .O(\diff_sum_t_fu_84_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \diff_sum_1[3]_INST_0_i_4 
       (.I0(\SRL_SIG_reg[1]_0 [7]),
        .I1(\SRL_SIG_reg[1]_0 [2]),
        .I2(\SRL_SIG_reg[1]_0 [6]),
        .I3(\SRL_SIG_reg[1]_0 [0]),
        .O(\diff_sum_t_fu_84_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_sum_1[3]_INST_0_i_5 
       (.I0(\SRL_SIG_reg[1]_0 [4]),
        .I1(\SRL_SIG_reg[1]_0 [1]),
        .I2(\SRL_SIG_reg[1]_0 [5]),
        .I3(\SRL_SIG_reg[1]_0 [3]),
        .O(\diff_sum_1[3]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \diff_sum_3[3]_INST_0_i_5 
       (.I0(\SRL_SIG_reg[1]_0 [3]),
        .I1(\SRL_SIG_reg[1]_0 [5]),
        .I2(\SRL_SIG_reg[1]_0 [1]),
        .I3(\SRL_SIG_reg[1]_0 [4]),
        .O(\diff_sum_t_fu_84_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hFDFF0D00FDFFFDFF)) 
    \diff_sum_5[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_2 ),
        .I1(\diff_sum_1[3]_INST_0_i_5_n_0 ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\mOutPtr_reg[0] ),
        .I4(\SRL_SIG_reg[0][4] ),
        .I5(\SRL_SIG_reg[0][6] ),
        .O(\diff_sum_t_fu_84_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_shiftReg_14
   (\SRL_SIG_reg[1][2] ,
    \SRL_SIG_reg[1][6] ,
    \SRL_SIG_reg[1][1] ,
    \SRL_SIG_reg[1][3] ,
    \SRL_SIG_reg[0]_0 ,
    \diff_sum_t_fu_84_reg[3] ,
    \diff_sum_t_fu_84_reg[3]_0 ,
    \diff_sum_t_fu_84_reg[3]_1 ,
    \diff_sum_t_fu_84_reg[3]_2 ,
    \diff_sum_t_fu_84_reg[3]_3 ,
    \diff_sum_t_fu_84_reg[3]_4 ,
    \diff_sum_t_fu_84_reg[3]_5 ,
    \diff_sum_t_fu_84_reg[3]_6 ,
    \diff_sum_t_fu_84_reg[3]_7 ,
    \diff_sum_t_fu_84_reg[3]_8 ,
    \diff_sum_t_fu_84_reg[3]_9 ,
    shiftReg_ce,
    img_src_0_data_strea_dout,
    ap_clk,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    \SRL_SIG_reg[1][4] ,
    \SRL_SIG_reg[1][7] ,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[0]_0 ,
    \mOutPtr_reg[1]_1 ,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[1]_2 ,
    \mOutPtr_reg[0]_2 ,
    \SRL_SIG_reg[1][7]_0 ,
    \SRL_SIG_reg[1][3]_0 ,
    \mOutPtr_reg[1]_3 ,
    \mOutPtr_reg[0]_3 ,
    \mOutPtr_reg[1]_4 ,
    \mOutPtr_reg[0]_4 ,
    \mOutPtr_reg[1]_5 ,
    \mOutPtr_reg[0]_5 ,
    \mOutPtr_reg[1]_6 ,
    \mOutPtr_reg[0]_6 ,
    \mOutPtr_reg[1]_7 ,
    \mOutPtr_reg[0]_7 );
  output \SRL_SIG_reg[1][2] ;
  output \SRL_SIG_reg[1][6] ;
  output \SRL_SIG_reg[1][1] ;
  output \SRL_SIG_reg[1][3] ;
  output [3:0]\SRL_SIG_reg[0]_0 ;
  output \diff_sum_t_fu_84_reg[3] ;
  output \diff_sum_t_fu_84_reg[3]_0 ;
  output \diff_sum_t_fu_84_reg[3]_1 ;
  output \diff_sum_t_fu_84_reg[3]_2 ;
  output \diff_sum_t_fu_84_reg[3]_3 ;
  output \diff_sum_t_fu_84_reg[3]_4 ;
  output \diff_sum_t_fu_84_reg[3]_5 ;
  output \diff_sum_t_fu_84_reg[3]_6 ;
  output \diff_sum_t_fu_84_reg[3]_7 ;
  output \diff_sum_t_fu_84_reg[3]_8 ;
  output \diff_sum_t_fu_84_reg[3]_9 ;
  input shiftReg_ce;
  input [7:0]img_src_0_data_strea_dout;
  input ap_clk;
  input \mOutPtr_reg[1] ;
  input \mOutPtr_reg[0] ;
  input \SRL_SIG_reg[1][4] ;
  input \SRL_SIG_reg[1][7] ;
  input \mOutPtr_reg[1]_0 ;
  input \mOutPtr_reg[0]_0 ;
  input \mOutPtr_reg[1]_1 ;
  input \mOutPtr_reg[0]_1 ;
  input \mOutPtr_reg[1]_2 ;
  input \mOutPtr_reg[0]_2 ;
  input \SRL_SIG_reg[1][7]_0 ;
  input \SRL_SIG_reg[1][3]_0 ;
  input \mOutPtr_reg[1]_3 ;
  input \mOutPtr_reg[0]_3 ;
  input \mOutPtr_reg[1]_4 ;
  input \mOutPtr_reg[0]_4 ;
  input \mOutPtr_reg[1]_5 ;
  input \mOutPtr_reg[0]_5 ;
  input \mOutPtr_reg[1]_6 ;
  input \mOutPtr_reg[0]_6 ;
  input \mOutPtr_reg[1]_7 ;
  input \mOutPtr_reg[0]_7 ;

  wire [3:0]\SRL_SIG_reg[0]_0 ;
  wire \SRL_SIG_reg[1][1] ;
  wire \SRL_SIG_reg[1][2] ;
  wire \SRL_SIG_reg[1][3] ;
  wire \SRL_SIG_reg[1][3]_0 ;
  wire \SRL_SIG_reg[1][4] ;
  wire \SRL_SIG_reg[1][6] ;
  wire \SRL_SIG_reg[1][7] ;
  wire \SRL_SIG_reg[1][7]_0 ;
  wire ap_clk;
  wire \diff_sum_0[3]_INST_0_i_4_n_0 ;
  wire \diff_sum_0[3]_INST_0_i_5_n_0 ;
  wire \diff_sum_3[3]_INST_0_i_4_n_0 ;
  wire \diff_sum_t_fu_84_reg[3] ;
  wire \diff_sum_t_fu_84_reg[3]_0 ;
  wire \diff_sum_t_fu_84_reg[3]_1 ;
  wire \diff_sum_t_fu_84_reg[3]_2 ;
  wire \diff_sum_t_fu_84_reg[3]_3 ;
  wire \diff_sum_t_fu_84_reg[3]_4 ;
  wire \diff_sum_t_fu_84_reg[3]_5 ;
  wire \diff_sum_t_fu_84_reg[3]_6 ;
  wire \diff_sum_t_fu_84_reg[3]_7 ;
  wire \diff_sum_t_fu_84_reg[3]_8 ;
  wire \diff_sum_t_fu_84_reg[3]_9 ;
  wire [7:0]img_src_0_data_strea_dout;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire \mOutPtr_reg[0]_2 ;
  wire \mOutPtr_reg[0]_3 ;
  wire \mOutPtr_reg[0]_4 ;
  wire \mOutPtr_reg[0]_5 ;
  wire \mOutPtr_reg[0]_6 ;
  wire \mOutPtr_reg[0]_7 ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg[1]_2 ;
  wire \mOutPtr_reg[1]_3 ;
  wire \mOutPtr_reg[1]_4 ;
  wire \mOutPtr_reg[1]_5 ;
  wire \mOutPtr_reg[1]_6 ;
  wire \mOutPtr_reg[1]_7 ;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[1]),
        .Q(\SRL_SIG_reg[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[2]),
        .Q(\SRL_SIG_reg[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[3]),
        .Q(\SRL_SIG_reg[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[4]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[5]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[6]),
        .Q(\SRL_SIG_reg[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(img_src_0_data_strea_dout[7]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_0[3]_INST_0_i_3 
       (.I0(\diff_sum_0[3]_INST_0_i_4_n_0 ),
        .I1(\diff_sum_0[3]_INST_0_i_5_n_0 ),
        .I2(\mOutPtr_reg[1]_1 ),
        .I3(\mOutPtr_reg[0]_1 ),
        .I4(\SRL_SIG_reg[1][4] ),
        .I5(\SRL_SIG_reg[1][7] ),
        .O(\diff_sum_t_fu_84_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_sum_0[3]_INST_0_i_4 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(\SRL_SIG_reg[0]_0 [1]),
        .I2(\SRL_SIG_reg[1][6] ),
        .I3(\SRL_SIG_reg[1][1] ),
        .O(\diff_sum_0[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_sum_0[3]_INST_0_i_5 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(\SRL_SIG_reg[0]_0 [0]),
        .I2(\SRL_SIG_reg[1][3] ),
        .I3(\SRL_SIG_reg[1][2] ),
        .O(\diff_sum_0[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_10[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_3 ),
        .I1(\diff_sum_3[3]_INST_0_i_4_n_0 ),
        .I2(\mOutPtr_reg[1]_2 ),
        .I3(\mOutPtr_reg[0]_2 ),
        .I4(\SRL_SIG_reg[1][7]_0 ),
        .I5(\SRL_SIG_reg[1][3]_0 ),
        .O(\diff_sum_t_fu_84_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_sum_1[3]_INST_0_i_6 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(\SRL_SIG_reg[0]_0 [0]),
        .I2(\SRL_SIG_reg[0]_0 [3]),
        .I3(\SRL_SIG_reg[0]_0 [2]),
        .O(\diff_sum_t_fu_84_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \diff_sum_1[3]_INST_0_i_7 
       (.I0(\SRL_SIG_reg[1][6] ),
        .I1(\SRL_SIG_reg[1][2] ),
        .I2(\SRL_SIG_reg[1][3] ),
        .I3(\SRL_SIG_reg[1][1] ),
        .O(\diff_sum_t_fu_84_reg[3]_9 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_2[3]_INST_0_i_3 
       (.I0(\diff_sum_0[3]_INST_0_i_4_n_0 ),
        .I1(\diff_sum_0[3]_INST_0_i_5_n_0 ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\mOutPtr_reg[0] ),
        .I4(\SRL_SIG_reg[1][4] ),
        .I5(\SRL_SIG_reg[1][7] ),
        .O(\diff_sum_t_fu_84_reg[3] ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_3[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_3 ),
        .I1(\diff_sum_3[3]_INST_0_i_4_n_0 ),
        .I2(\mOutPtr_reg[1]_7 ),
        .I3(\mOutPtr_reg[0]_7 ),
        .I4(\SRL_SIG_reg[1][7]_0 ),
        .I5(\SRL_SIG_reg[1][3]_0 ),
        .O(\diff_sum_t_fu_84_reg[3]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \diff_sum_3[3]_INST_0_i_4 
       (.I0(\SRL_SIG_reg[1][1] ),
        .I1(\SRL_SIG_reg[1][3] ),
        .I2(\SRL_SIG_reg[1][2] ),
        .I3(\SRL_SIG_reg[1][6] ),
        .O(\diff_sum_3[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_4[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_3 ),
        .I1(\diff_sum_3[3]_INST_0_i_4_n_0 ),
        .I2(\mOutPtr_reg[1]_6 ),
        .I3(\mOutPtr_reg[0]_6 ),
        .I4(\SRL_SIG_reg[1][7]_0 ),
        .I5(\SRL_SIG_reg[1][3]_0 ),
        .O(\diff_sum_t_fu_84_reg[3]_7 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_6[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_3 ),
        .I1(\diff_sum_3[3]_INST_0_i_4_n_0 ),
        .I2(\mOutPtr_reg[1]_5 ),
        .I3(\mOutPtr_reg[0]_5 ),
        .I4(\SRL_SIG_reg[1][7]_0 ),
        .I5(\SRL_SIG_reg[1][3]_0 ),
        .O(\diff_sum_t_fu_84_reg[3]_6 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_7[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_3 ),
        .I1(\diff_sum_3[3]_INST_0_i_4_n_0 ),
        .I2(\mOutPtr_reg[1]_4 ),
        .I3(\mOutPtr_reg[0]_4 ),
        .I4(\SRL_SIG_reg[1][7]_0 ),
        .I5(\SRL_SIG_reg[1][3]_0 ),
        .O(\diff_sum_t_fu_84_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_8[3]_INST_0_i_3 
       (.I0(\diff_sum_t_fu_84_reg[3]_3 ),
        .I1(\diff_sum_3[3]_INST_0_i_4_n_0 ),
        .I2(\mOutPtr_reg[1]_3 ),
        .I3(\mOutPtr_reg[0]_3 ),
        .I4(\SRL_SIG_reg[1][7]_0 ),
        .I5(\SRL_SIG_reg[1][3]_0 ),
        .O(\diff_sum_t_fu_84_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hE0EEEFEEEFEEEFEE)) 
    \diff_sum_9[3]_INST_0_i_3 
       (.I0(\diff_sum_0[3]_INST_0_i_4_n_0 ),
        .I1(\diff_sum_0[3]_INST_0_i_5_n_0 ),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\mOutPtr_reg[0]_0 ),
        .I4(\SRL_SIG_reg[1][4] ),
        .I5(\SRL_SIG_reg[1][7] ),
        .O(\diff_sum_t_fu_84_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_fifo_w8_d2_A_shiftReg_15
   (img_src_0_data_strea_dout,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    E,
    D,
    ap_clk);
  output [7:0]img_src_0_data_strea_dout;
  input \mOutPtr_reg[1] ;
  input \mOutPtr_reg[0] ;
  input [0:0]E;
  input [7:0]D;
  input ap_clk;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]\SRL_SIG_reg[0]_0 ;
  wire [7:0]\SRL_SIG_reg[1]_1 ;
  wire ap_clk;
  wire [7:0]img_src_0_data_strea_dout;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][0]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [0]),
        .O(img_src_0_data_strea_dout[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][1]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [1]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [1]),
        .O(img_src_0_data_strea_dout[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][2]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [2]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [2]),
        .O(img_src_0_data_strea_dout[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][3]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [3]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [3]),
        .O(img_src_0_data_strea_dout[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][4]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [4]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [4]),
        .O(img_src_0_data_strea_dout[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][5]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [5]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [5]),
        .O(img_src_0_data_strea_dout[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][6]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [6]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [6]),
        .O(img_src_0_data_strea_dout[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][7]_i_1__0 
       (.I0(\SRL_SIG_reg[0]_0 [7]),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[0] ),
        .I3(\SRL_SIG_reg[1]_1 [7]),
        .O(img_src_0_data_strea_dout[7]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(\SRL_SIG_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(\SRL_SIG_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(\SRL_SIG_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(\SRL_SIG_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(E),
        .D(D[4]),
        .Q(\SRL_SIG_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(E),
        .D(D[5]),
        .Q(\SRL_SIG_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(E),
        .D(D[6]),
        .Q(\SRL_SIG_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(E),
        .D(D[7]),
        .Q(\SRL_SIG_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [0]),
        .Q(\SRL_SIG_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [1]),
        .Q(\SRL_SIG_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [2]),
        .Q(\SRL_SIG_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [3]),
        .Q(\SRL_SIG_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [4]),
        .Q(\SRL_SIG_reg[1]_1 [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [5]),
        .Q(\SRL_SIG_reg[1]_1 [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [6]),
        .Q(\SRL_SIG_reg[1]_1 [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0]_0 [7]),
        .Q(\SRL_SIG_reg[1]_1 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector
   (ap_done_reg,
    q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_10,
    diff_sum_10_ap_vld,
    internal_empty_n_reg,
    int_ap_idle_reg,
    ap_clk,
    ap_done_reg_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_10_data_st_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector_U0_ap_start,
    \ap_CS_fsm_reg[0]_1 ,
    \ap_CS_fsm_reg[0]_2 ,
    \ap_CS_fsm_reg[0]_3 ,
    \ap_CS_fsm_reg[0]_4 ,
    minus_vector31_U0_ap_start,
    minus_vector33_U0_ap_start,
    \ap_CS_fsm_reg[0]_5 ,
    minus_vector29_U0_ap_start,
    minus_vector30_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output ap_done_reg;
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [0:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_10;
  output diff_sum_10_ap_vld;
  output internal_empty_n_reg;
  output int_ap_idle_reg;
  input ap_clk;
  input ap_done_reg_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_10_data_st_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector_U0_ap_start;
  input \ap_CS_fsm_reg[0]_1 ;
  input [0:0]\ap_CS_fsm_reg[0]_2 ;
  input [0:0]\ap_CS_fsm_reg[0]_3 ;
  input [0:0]\ap_CS_fsm_reg[0]_4 ;
  input minus_vector31_U0_ap_start;
  input minus_vector33_U0_ap_start;
  input [0:0]\ap_CS_fsm_reg[0]_5 ;
  input minus_vector29_U0_ap_start;
  input minus_vector30_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [0:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[0]_1 ;
  wire [0:0]\ap_CS_fsm_reg[0]_2 ;
  wire [0:0]\ap_CS_fsm_reg[0]_3 ;
  wire [0:0]\ap_CS_fsm_reg[0]_4 ;
  wire [0:0]\ap_CS_fsm_reg[0]_5 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1__2_n_0;
  wire ap_done_reg_reg_0;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__3_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__10_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_10;
  wire diff_sum_10_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__9_n_0 ;
  wire \diff_sum_preg[10]_i_1__9_n_0 ;
  wire \diff_sum_preg[11]_i_1__9_n_0 ;
  wire \diff_sum_preg[12]_i_1__9_n_0 ;
  wire \diff_sum_preg[13]_i_1__9_n_0 ;
  wire \diff_sum_preg[14]_i_1__9_n_0 ;
  wire \diff_sum_preg[15]_i_1__9_n_0 ;
  wire \diff_sum_preg[1]_i_1__9_n_0 ;
  wire \diff_sum_preg[2]_i_1__9_n_0 ;
  wire \diff_sum_preg[3]_i_1__9_n_0 ;
  wire \diff_sum_preg[4]_i_1__9_n_0 ;
  wire \diff_sum_preg[5]_i_1__9_n_0 ;
  wire \diff_sum_preg[6]_i_1__9_n_0 ;
  wire \diff_sum_preg[7]_i_1__9_n_0 ;
  wire \diff_sum_preg[8]_i_1__9_n_0 ;
  wire \diff_sum_preg[9]_i_1__9_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__9_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__9_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__9_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__9_n_0 ;
  wire \i_V_reg_292[2]_i_1__9_n_0 ;
  wire img_src_c_10_data_st_empty_n;
  wire int_ap_idle_i_4_n_0;
  wire int_ap_idle_reg;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector29_U0_ap_start;
  wire minus_vector30_U0_ap_start;
  wire minus_vector31_U0_ap_start;
  wire minus_vector33_U0_ap_start;
  wire minus_vector_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__9_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__9_n_0 ;
  wire \r_V_reg_302[9]_i_1__3_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire t_V_1_reg_1260;
  wire \t_V_1_reg_126[0]_i_1__9_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1__3_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__9_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__2_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__9_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__2_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__3 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector_U0_ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__3 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__11 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector_U0_ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__3 
       (.I0(\r_V_reg_302[9]_i_1__3_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_10_data_st_empty_n),
        .I5(Q),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \ap_CS_fsm[3]_i_1__10 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__10 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__2
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__2_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_0));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__3
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__3_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__3_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00400040CC4C0040)) 
    ap_enable_reg_pp0_iter1_i_1__10
       (.I0(\r_V_reg_302[9]_i_1__3_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_10_data_st_empty_n),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__10_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair335" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_10[0]));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_10[10]));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_10[11]));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_10[12]));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_10[13]));
  (* SOFT_HLUTNM = "soft_lutpair333" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_10[14]));
  (* SOFT_HLUTNM = "soft_lutpair334" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_10[15]));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_10[1]));
  (* SOFT_HLUTNM = "soft_lutpair338" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_10[2]));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_10[3]));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_10[4]));
  (* SOFT_HLUTNM = "soft_lutpair339" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_10[5]));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_10[6]));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_10[7]));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_10[8]));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_10[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_10_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_10[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_10_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(q0_reg),
        .O(diff_sum_10_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair335" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair333" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair334" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair338" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair339" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__9 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[0]_i_1__9_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[10]_i_1__9_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[11]_i_1__9_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[12]_i_1__9_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[13]_i_1__9_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[14]_i_1__9_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[15]_i_1__9_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[1]_i_1__9_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[2]_i_1__9_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[3]_i_1__9_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[4]_i_1__9_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[5]_i_1__9_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[6]_i_1__9_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[7]_i_1__9_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[8]_i_1__9_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_10_ap_vld),
        .D(\diff_sum_preg[9]_i_1__9_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__9 
       (.I0(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_10_data_st_empty_n),
        .I4(Q),
        .O(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__9 
       (.I0(ap_done_reg),
        .I1(minus_vector_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__9 
       (.I0(Q),
        .I1(img_src_c_10_data_st_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[0]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[10]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[11]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[12]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[13]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[14]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[15]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[1]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[2]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[3]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[4]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[5]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[6]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[7]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[8]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__9_n_0 ),
        .D(\diff_sum_preg[9]_i_1__9_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__9 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__9_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__9_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair342" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair342" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair340" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__9_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__9_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    int_ap_idle_i_2
       (.I0(int_ap_idle_i_4_n_0),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(\ap_CS_fsm_reg[0]_2 ),
        .I3(\ap_CS_fsm_reg[0]_3 ),
        .I4(\ap_CS_fsm_reg[0]_4 ),
        .I5(minus_vector31_U0_ap_start),
        .O(int_ap_idle_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    int_ap_idle_i_4
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(minus_vector33_U0_ap_start),
        .I2(minus_vector_U0_ap_start),
        .I3(\ap_CS_fsm_reg[0]_5 ),
        .I4(minus_vector29_U0_ap_start),
        .I5(minus_vector30_U0_ap_start),
        .O(int_ap_idle_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__21
       (.I0(q0_reg),
        .I1(img_src_c_10_data_st_empty_n),
        .I2(Q),
        .O(internal_empty_n_reg));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__10 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(Q),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector_masklbW mask_10_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_10_data_st_empty_n(img_src_c_10_data_st_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__9 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(Q),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__9 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__9_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair337" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair337" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__3 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2__9 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(\r_V_reg_302[7]_i_1__9_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__3_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair341" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__9 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair341" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__9 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair336" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__9 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair336" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__9 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAA08AAAAAAAAAA)) 
    \t_V_1_reg_126[4]_i_1__3 
       (.I0(\r_V_reg_302[9]_i_1__3_n_0 ),
        .I1(q0_reg),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(Q),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h20002020)) 
    \t_V_1_reg_126[4]_i_2__4 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q),
        .I3(img_src_c_10_data_st_empty_n),
        .I4(q0_reg),
        .O(t_V_1_reg_1260));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__9 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(\t_V_1_reg_126[0]_i_1__9_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__9 
       (.I0(ap_done_reg),
        .I1(minus_vector_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__3 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__9_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__3_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair340" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__9 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__9_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__3_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__2 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__9_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__2_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__9 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(t_V_1_reg_126_reg__0[3]),
        .O(\tmp_s_reg_316[0]_i_2__9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__2 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__2_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__2_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector26" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector26
   (q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    ap_done_reg_reg_0,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_0,
    diff_sum_0_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_1,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_0_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    ap_done_reg,
    \t_V_reg_114_reg[1]_0 ,
    minus_vector26_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output ap_done_reg_reg_0;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_0;
  output diff_sum_0_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_1;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_0_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input ap_done_reg;
  input \t_V_reg_114_reg[1]_0 ;
  input minus_vector26_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_0;
  wire ap_done_reg_i_2_n_0;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__2_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_0;
  wire diff_sum_0_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1_n_0 ;
  wire \diff_sum_preg[10]_i_1_n_0 ;
  wire \diff_sum_preg[11]_i_1_n_0 ;
  wire \diff_sum_preg[12]_i_1_n_0 ;
  wire \diff_sum_preg[13]_i_1_n_0 ;
  wire \diff_sum_preg[14]_i_1_n_0 ;
  wire \diff_sum_preg[15]_i_1_n_0 ;
  wire \diff_sum_preg[1]_i_1_n_0 ;
  wire \diff_sum_preg[2]_i_1_n_0 ;
  wire \diff_sum_preg[3]_i_1_n_0 ;
  wire \diff_sum_preg[4]_i_1_n_0 ;
  wire \diff_sum_preg[5]_i_1_n_0 ;
  wire \diff_sum_preg[6]_i_1_n_0 ;
  wire \diff_sum_preg[7]_i_1_n_0 ;
  wire \diff_sum_preg[8]_i_1_n_0 ;
  wire \diff_sum_preg[9]_i_1_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__8_n_0 ;
  wire \i_V_reg_292[2]_i_1_n_0 ;
  wire img_src_c_0_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector26_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1_n_0 ;
  wire \r_V_reg_302[9]_i_1__2_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire \t_V_1_reg_126[0]_i_1_n_0 ;
  wire \t_V_1_reg_126[4]_i_2__5_n_0 ;
  wire [1:1]t_V_1_reg_126_reg__0;
  wire [4:2]t_V_1_reg_126_reg__0__0;
  wire t_V_reg_114;
  wire \t_V_reg_114_reg[1]_0 ;
  wire \tmp_6_reg_297[0]_i_1__2_n_0 ;
  wire \tmp_6_reg_297[0]_i_2_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__1_n_0 ;
  wire \tmp_s_reg_316[0]_i_2_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__1_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__2 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg_0),
        .I2(minus_vector26_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__2 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg_0),
        .I2(minus_vector26_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__2 
       (.I0(\r_V_reg_302[9]_i_1__2_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_0_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q[1]),
        .I3(img_src_c_0_data_str_empty_n),
        .I4(q0_reg),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__0 
       (.I0(t_V_1_reg_126_reg__0__0[4]),
        .I1(t_V_1_reg_126_reg__0__0[3]),
        .I2(t_V_1_reg_126_reg__0__0[2]),
        .I3(t_V_1_reg_126_reg__0),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_2
       (.I0(ap_done_reg_0),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_2_n_0),
        .Q(ap_done_reg_0),
        .R(ap_done_reg_reg_1));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__2
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__2_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__2_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040CC4C00400040)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(\r_V_reg_302[9]_i_1__2_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_0_data_str_empty_n),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_0[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_0_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_0[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_0_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_0_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_0_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[0]_i_1_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[10]_i_1_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[11]_i_1_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[12]_i_1_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[13]_i_1_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[14]_i_1_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[15]_i_1_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[1]_i_1_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[2]_i_1_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[3]_i_1_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[4]_i_1_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[5]_i_1_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[6]_i_1_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[7]_i_1_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[8]_i_1_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_0_ap_vld),
        .D(\diff_sum_preg[9]_i_1_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1 
       (.I0(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_0_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2 
       (.I0(ap_done_reg_0),
        .I1(minus_vector26_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3 
       (.I0(Q[1]),
        .I1(img_src_c_0_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[0]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[10]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[11]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[12]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[13]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[14]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[15]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[1]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[2]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[3]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[4]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[5]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[6]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[7]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[8]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2_n_0 ),
        .D(\diff_sum_preg[9]_i_1_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_0_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__8_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \int_isr[0]_i_5 
       (.I0(ap_done_reg_0),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(ap_done_reg),
        .I3(\t_V_reg_114_reg[1]_0 ),
        .O(ap_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__12
       (.I0(q0_reg),
        .I1(img_src_c_0_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_0_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector26_mabkb mask_0_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg__0,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_0_data_str_empty_n(img_src_c_0_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_0_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2 
       (.I0(t_V_1_reg_126_reg__0__0[2]),
        .I1(t_V_1_reg_126_reg__0),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0__0[3]),
        .I5(t_V_1_reg_126_reg__0__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__2 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(\r_V_reg_302[7]_i_1_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__2_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1 
       (.I0(t_V_1_reg_126_reg__0),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1 
       (.I0(t_V_1_reg_126_reg__0__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg__0),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1 
       (.I0(t_V_1_reg_126_reg__0__0[3]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .I2(t_V_1_reg_126_reg__0),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA22A2AAAA)) 
    \t_V_1_reg_126[4]_i_1__2 
       (.I0(\r_V_reg_302[9]_i_1__2_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(q0_reg),
        .I3(img_src_c_0_data_str_empty_n),
        .I4(Q[1]),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h40440000)) 
    \t_V_1_reg_126[4]_i_2__5 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_0_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\t_V_1_reg_126[4]_i_2__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3 
       (.I0(t_V_1_reg_126_reg__0__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg__0),
        .I3(t_V_1_reg_126_reg__0__0[2]),
        .I4(t_V_1_reg_126_reg__0__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__5_n_0 ),
        .D(\t_V_1_reg_126[0]_i_1_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__5_n_0 ),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg__0),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__5_n_0 ),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__5_n_0 ),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__5_n_0 ),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1 
       (.I0(ap_done_reg_0),
        .I1(minus_vector26_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__2 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__2_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__2_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__1_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[9]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(t_V_1_reg_126_reg__0__0[2]),
        .O(\tmp_s_reg_316[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__1 
       (.I0(t_V_1_reg_126_reg__0__0[3]),
        .I1(t_V_1_reg_126_reg__0__0[4]),
        .I2(t_V_1_reg_126_reg__0),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__1_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__1_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector26_mabkb" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector26_mabkb
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_0_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_0_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_0_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector26_mabkb_rom minus_vector26_mabkb_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_0_data_str_empty_n(img_src_c_0_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector26_mabkb_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector26_mabkb_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_0_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_0_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_0[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_0[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_0[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_0[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_0[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_0[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_0[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_0[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_0[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_0[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_0[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_0[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_0[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_0[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_0[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_0[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_0_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_0_q0;
  wire q0_reg_i_1__5_n_0;
  wire q0_reg_i_2_n_1;
  wire q0_reg_i_2_n_2;
  wire q0_reg_i_2_n_3;
  wire q0_reg_i_3_n_0;
  wire q0_reg_i_3_n_1;
  wire q0_reg_i_3_n_2;
  wire q0_reg_i_3_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_0[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3_O_UNCONNECTED;

  CARRY4 \diff_sum_0[11]_INST_0_i_1 
       (.CI(\diff_sum_0[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_0[11]_INST_0_i_1_n_0 ,\diff_sum_0[11]_INST_0_i_1_n_1 ,\diff_sum_0[11]_INST_0_i_1_n_2 ,\diff_sum_0[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_0[15]_INST_0_i_1 
       (.CI(\diff_sum_0[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_0[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_0[15]_INST_0_i_1_n_1 ,\diff_sum_0[15]_INST_0_i_1_n_2 ,\diff_sum_0[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_0[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_0[3]_INST_0_i_1_n_0 ,\diff_sum_0[3]_INST_0_i_1_n_1 ,\diff_sum_0[3]_INST_0_i_1_n_2 ,\diff_sum_0[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_0[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_0[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_0_q0),
        .O(\diff_sum_0[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_0[7]_INST_0_i_1 
       (.CI(\diff_sum_0[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_0[7]_INST_0_i_1_n_0 ,\diff_sum_0[7]_INST_0_i_1_n_1 ,\diff_sum_0[7]_INST_0_i_1_n_2 ,\diff_sum_0[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000100000000),
    .INIT_03(256'h0001000100010001000100000000000000000000000000000000000000000001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_06(256'h0000000000000001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0000000000000000000000000000000000010001000100010001000100010000),
    .INIT_08(256'h0001000100010001000000010001000100010001000100010001000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_0A(256'h0000000000010001000100010001000100000001000100010001000100010001),
    .INIT_0B(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_0D(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_0F(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_11(256'h0000000000010001000100010001000100010001000100010001000100000000),
    .INIT_12(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_14(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_16(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_18(256'h0000000000010001000100010001000100010001000100010001000100000000),
    .INIT_19(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_1B(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_1D(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_1F(256'h0000000000010001000100010001000100010001000100010001000100000000),
    .INIT_20(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_22(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_24(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_26(256'h0000000100010001000100010001000100010001000100010001000100000000),
    .INIT_27(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000100010001000100010001000100010000000100010001),
    .INIT_29(256'h0000000100010001000100010001000100010000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000100010001000100010001000100010001000100010000),
    .INIT_2B(256'h0001000000000000000000000001000100010001000100010001000100010001),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2D(256'h0001000100010000000000000000000000000000000000000001000100010001),
    .INIT_2E(256'h0000000000010001000100010001000100010001000100010001000100010001),
    .INIT_2F(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_0_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(q0_reg_i_1__5_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hD000)) 
    q0_reg_i_1__5
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(img_src_c_0_data_str_empty_n),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(q0_reg_i_1__5_n_0));
  CARRY4 q0_reg_i_2
       (.CI(q0_reg_i_3_n_0),
        .CO({NLW_q0_reg_i_2_CO_UNCONNECTED[3],q0_reg_i_2_n_1,q0_reg_i_2_n_2,q0_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3
       (.CI(1'b0),
        .CO({q0_reg_i_3_n_0,q0_reg_i_3_n_1,q0_reg_i_3_n_2,q0_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector27" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector27
   (ap_done_reg_reg_0,
    q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    ap_sync_done,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_1,
    diff_sum_1_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_1_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    ap_done_reg_reg_1,
    ap_done_reg_reg_2,
    ap_done_reg_reg_3,
    ap_done_reg_reg_4,
    ap_done_reg_reg_5,
    \t_V_reg_114_reg[1]_0 ,
    ap_done_reg,
    \t_V_reg_114_reg[1]_1 ,
    ap_done_reg_0,
    minus_vector27_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output ap_done_reg_reg_0;
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output ap_sync_done;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_1;
  output diff_sum_1_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_1_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input ap_done_reg_reg_1;
  input ap_done_reg_reg_2;
  input ap_done_reg_reg_3;
  input ap_done_reg_reg_4;
  input ap_done_reg_reg_5;
  input \t_V_reg_114_reg[1]_0 ;
  input ap_done_reg;
  input \t_V_reg_114_reg[1]_1 ;
  input ap_done_reg_0;
  input minus_vector27_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_0;
  wire ap_done_reg_1;
  wire ap_done_reg_i_1__8_n_0;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_done_reg_reg_2;
  wire ap_done_reg_reg_3;
  wire ap_done_reg_reg_4;
  wire ap_done_reg_reg_5;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__9_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sync_done;
  wire [15:0]diff_sum_1;
  wire diff_sum_1_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__0_n_0 ;
  wire \diff_sum_preg[10]_i_1__0_n_0 ;
  wire \diff_sum_preg[11]_i_1__0_n_0 ;
  wire \diff_sum_preg[12]_i_1__0_n_0 ;
  wire \diff_sum_preg[13]_i_1__0_n_0 ;
  wire \diff_sum_preg[14]_i_1__0_n_0 ;
  wire \diff_sum_preg[15]_i_1__0_n_0 ;
  wire \diff_sum_preg[1]_i_1__0_n_0 ;
  wire \diff_sum_preg[2]_i_1__0_n_0 ;
  wire \diff_sum_preg[3]_i_1__0_n_0 ;
  wire \diff_sum_preg[4]_i_1__0_n_0 ;
  wire \diff_sum_preg[5]_i_1__0_n_0 ;
  wire \diff_sum_preg[6]_i_1__0_n_0 ;
  wire \diff_sum_preg[7]_i_1__0_n_0 ;
  wire \diff_sum_preg[8]_i_1__0_n_0 ;
  wire \diff_sum_preg[9]_i_1__0_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__0_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__0_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__0_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__7_n_0 ;
  wire \i_V_reg_292[2]_i_1__0_n_0 ;
  wire img_src_c_1_data_str_empty_n;
  wire \int_isr[0]_i_4_n_0 ;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector27_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__0_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__0_n_0 ;
  wire \r_V_reg_302[9]_i_1__9_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire t_V_1_reg_1260;
  wire \t_V_1_reg_126[0]_i_1__0_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0__0;
  wire t_V_reg_114;
  wire \t_V_reg_114_reg[1]_0 ;
  wire \t_V_reg_114_reg[1]_1 ;
  wire \tmp_6_reg_297[0]_i_1__9_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__0_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__7_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__0_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__6_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hEFAA)) 
    \ap_CS_fsm[0]_i_1__9 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg_1),
        .I2(minus_vector27_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \ap_CS_fsm[0]_i_2__9 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__2 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg_1),
        .I2(minus_vector27_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__9 
       (.I0(\r_V_reg_302[9]_i_1__9_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_1_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__1 
       (.I0(t_V_1_reg_126_reg__0__0[4]),
        .I1(t_V_1_reg_126_reg__0__0[3]),
        .I2(t_V_1_reg_126_reg__0__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hE)) 
    ap_done_reg_i_1__8
       (.I0(ap_done_reg_1),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__8_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__9
       (.I0(ap_sync_done),
        .I1(ap_rst_n),
        .O(ap_done_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__8_n_0),
        .Q(ap_done_reg_1),
        .R(ap_done_reg_reg_0));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__9
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__9_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__9_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00400040CC4C0040)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(\r_V_reg_302[9]_i_1__9_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_1_data_str_empty_n),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__1_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_1[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_1_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_1[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_1_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_1_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[0]_i_1__0_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[10]_i_1__0_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[11]_i_1__0_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[12]_i_1__0_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[13]_i_1__0_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[14]_i_1__0_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[15]_i_1__0_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[1]_i_1__0_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[2]_i_1__0_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[3]_i_1__0_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[4]_i_1__0_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[5]_i_1__0_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[6]_i_1__0_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[7]_i_1__0_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[8]_i_1__0_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_1_ap_vld),
        .D(\diff_sum_preg[9]_i_1__0_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__0 
       (.I0(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_1_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__0 
       (.I0(ap_done_reg_1),
        .I1(minus_vector27_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__0 
       (.I0(Q[1]),
        .I1(img_src_c_1_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[0]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[10]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[11]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[12]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[13]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[14]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[15]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[1]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[2]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[3]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[4]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[5]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[6]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[7]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[8]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__0_n_0 ),
        .D(\diff_sum_preg[9]_i_1__0_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__0 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__0_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__0_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__7_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__0_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \int_isr[0]_i_3 
       (.I0(\int_isr[0]_i_4_n_0 ),
        .I1(ap_done_reg_reg_1),
        .I2(ap_done_reg_reg_2),
        .I3(ap_done_reg_reg_3),
        .I4(ap_done_reg_reg_4),
        .I5(ap_done_reg_reg_5),
        .O(ap_sync_done));
  LUT6 #(
    .INIT(64'hEE0EEE0E0000EE0E)) 
    \int_isr[0]_i_4 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg_1),
        .I2(\t_V_reg_114_reg[1]_0 ),
        .I3(ap_done_reg),
        .I4(\t_V_reg_114_reg[1]_1 ),
        .I5(ap_done_reg_0),
        .O(\int_isr[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__13
       (.I0(q0_reg),
        .I1(img_src_c_1_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector27_macud mask_1_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_1_data_str_empty_n(img_src_c_1_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__0 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__0 
       (.I0(t_V_1_reg_126_reg__0__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0__0[3]),
        .I5(t_V_1_reg_126_reg__0__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__0_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__9 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hF0E0F0A0)) 
    \r_V_reg_302[9]_i_2__0 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(\r_V_reg_302[7]_i_1__0_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__9_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__0 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__0 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__0 
       (.I0(t_V_1_reg_126_reg__0__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__0 
       (.I0(t_V_1_reg_126_reg__0__0[3]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAA08AAAAAAAAAA)) 
    \t_V_1_reg_126[4]_i_1__8 
       (.I0(\r_V_reg_302[9]_i_1__9_n_0 ),
        .I1(q0_reg),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h20002020)) 
    \t_V_1_reg_126[4]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q[1]),
        .I3(img_src_c_1_data_str_empty_n),
        .I4(q0_reg),
        .O(t_V_1_reg_1260));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__0 
       (.I0(t_V_1_reg_126_reg__0__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0__0[2]),
        .I4(t_V_1_reg_126_reg__0__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(\t_V_1_reg_126[0]_i_1__0_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__0 
       (.I0(ap_done_reg_1),
        .I1(minus_vector27_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__9 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__0_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__9_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__0 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__0_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__9_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__7 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__0_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__6_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__0 
       (.I0(t_V_1_reg_126_reg__0__0[4]),
        .I1(t_V_1_reg_126_reg__0__0[2]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(t_V_1_reg_126_reg__0__0[3]),
        .O(\tmp_s_reg_316[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__6 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__6_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__7_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector27_macud" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector27_macud
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_1_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_1_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_1_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector27_macud_rom minus_vector27_macud_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_1_data_str_empty_n(img_src_c_1_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector27_macud_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector27_macud_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_1_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_1_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_1[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_1[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_1[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_1[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_1[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_1[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_1[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_1[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_1[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_1[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_1[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_1[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_1[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_1[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_1[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_1[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_1_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_1_ce0;
  wire mask_1_q0;
  wire q0_reg_i_2__0_n_1;
  wire q0_reg_i_2__0_n_2;
  wire q0_reg_i_2__0_n_3;
  wire q0_reg_i_3__0_n_0;
  wire q0_reg_i_3__0_n_1;
  wire q0_reg_i_3__0_n_2;
  wire q0_reg_i_3__0_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_1[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__0_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__0_O_UNCONNECTED;

  CARRY4 \diff_sum_1[11]_INST_0_i_1 
       (.CI(\diff_sum_1[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_1[11]_INST_0_i_1_n_0 ,\diff_sum_1[11]_INST_0_i_1_n_1 ,\diff_sum_1[11]_INST_0_i_1_n_2 ,\diff_sum_1[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_1[15]_INST_0_i_1 
       (.CI(\diff_sum_1[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_1[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_1[15]_INST_0_i_1_n_1 ,\diff_sum_1[15]_INST_0_i_1_n_2 ,\diff_sum_1[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_1[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_1[3]_INST_0_i_1_n_0 ,\diff_sum_1[3]_INST_0_i_1_n_1 ,\diff_sum_1[3]_INST_0_i_1_n_2 ,\diff_sum_1[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_1[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_1[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_1_q0),
        .O(\diff_sum_1[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_1[7]_INST_0_i_1 
       (.CI(\diff_sum_1[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_1[7]_INST_0_i_1_n_0 ,\diff_sum_1[7]_INST_0_i_1_n_1 ,\diff_sum_1[7]_INST_0_i_1_n_2 ,\diff_sum_1[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_01(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_03(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_06(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_08(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_09(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0A(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0B(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0D(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0E(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0F(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_10(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_11(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_12(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_13(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_14(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_15(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_16(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_18(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_19(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1A(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1B(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1D(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1E(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1F(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_20(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_21(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_22(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_23(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_24(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_25(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_26(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_27(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_28(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_29(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2A(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2B(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2D(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2E(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2F(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_30(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_1_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mask_1_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hA200)) 
    q0_reg_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_src_c_1_data_str_empty_n),
        .I3(\ap_CS_fsm_reg[2] ),
        .O(mask_1_ce0));
  CARRY4 q0_reg_i_2__0
       (.CI(q0_reg_i_3__0_n_0),
        .CO({NLW_q0_reg_i_2__0_CO_UNCONNECTED[3],q0_reg_i_2__0_n_1,q0_reg_i_2__0_n_2,q0_reg_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__0
       (.CI(1'b0),
        .CO({q0_reg_i_3__0_n_0,q0_reg_i_3__0_n_1,q0_reg_i_3__0_n_2,q0_reg_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__0_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector28" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector28
   (ap_done_reg,
    q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_2,
    diff_sum_2_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_2_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector28_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output ap_done_reg;
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_2;
  output diff_sum_2_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_2_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector28_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1__6_n_0;
  wire ap_done_reg_reg_0;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__7_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__2_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_2;
  wire diff_sum_2_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__1_n_0 ;
  wire \diff_sum_preg[10]_i_1__1_n_0 ;
  wire \diff_sum_preg[11]_i_1__1_n_0 ;
  wire \diff_sum_preg[12]_i_1__1_n_0 ;
  wire \diff_sum_preg[13]_i_1__1_n_0 ;
  wire \diff_sum_preg[14]_i_1__1_n_0 ;
  wire \diff_sum_preg[15]_i_1__1_n_0 ;
  wire \diff_sum_preg[1]_i_1__1_n_0 ;
  wire \diff_sum_preg[2]_i_1__1_n_0 ;
  wire \diff_sum_preg[3]_i_1__1_n_0 ;
  wire \diff_sum_preg[4]_i_1__1_n_0 ;
  wire \diff_sum_preg[5]_i_1__1_n_0 ;
  wire \diff_sum_preg[6]_i_1__1_n_0 ;
  wire \diff_sum_preg[7]_i_1__1_n_0 ;
  wire \diff_sum_preg[8]_i_1__1_n_0 ;
  wire \diff_sum_preg[9]_i_1__1_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__1_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__1_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__1_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__6_n_0 ;
  wire \i_V_reg_292[2]_i_1__1_n_0 ;
  wire img_src_c_2_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector28_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__1_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__1_n_0 ;
  wire \r_V_reg_302[8]_i_1__7_n_0 ;
  wire \r_V_reg_302[9]_i_1__7_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire t_V_1_reg_1260;
  wire \t_V_1_reg_126[0]_i_1__1_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1__7_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__1_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__5_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__1_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__5_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__7 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector28_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__7 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__3 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector28_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__7 
       (.I0(\r_V_reg_302[9]_i_1__7_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_2_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \ap_CS_fsm[3]_i_1__2 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__2 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__6
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__6_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_0));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__7
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__7_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__7_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00400040CC4C0040)) 
    ap_enable_reg_pp0_iter1_i_1__2
       (.I0(\r_V_reg_302[9]_i_1__7_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_2_data_str_empty_n),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__2_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_2[10]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_2[11]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_2[12]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_2[13]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_2[14]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_2[15]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_2[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_2_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_2[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_2_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_2_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__1 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[0]_i_1__1_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[10]_i_1__1_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[11]_i_1__1_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[12]_i_1__1_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[13]_i_1__1_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[14]_i_1__1_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[15]_i_1__1_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[1]_i_1__1_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[2]_i_1__1_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[3]_i_1__1_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[4]_i_1__1_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[5]_i_1__1_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[6]_i_1__1_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[7]_i_1__1_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[8]_i_1__1_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_2_ap_vld),
        .D(\diff_sum_preg[9]_i_1__1_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__1 
       (.I0(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_2_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__1 
       (.I0(ap_done_reg),
        .I1(minus_vector28_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__1 
       (.I0(Q[1]),
        .I1(img_src_c_2_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[0]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[10]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[11]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[12]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[13]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[14]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[15]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[1]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[2]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[3]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[4]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[5]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[6]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[7]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[8]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__1_n_0 ),
        .D(\diff_sum_preg[9]_i_1__1_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__1_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__1_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__6_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__1_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__14
       (.I0(q0_reg),
        .I1(img_src_c_2_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__2 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector28_madEe mask_2_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_2_data_str_empty_n(img_src_c_2_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__1 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__1 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__1_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(\r_V_reg_302[8]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__7 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hF0F0E0C0)) 
    \r_V_reg_302[9]_i_2__1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(\r_V_reg_302[7]_i_1__1_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(\r_V_reg_302[8]_i_1__7_n_0 ),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__7_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__1 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__1 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__1 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__1 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAA08AAAAAAAAAA)) 
    \t_V_1_reg_126[4]_i_1__7 
       (.I0(\r_V_reg_302[9]_i_1__7_n_0 ),
        .I1(q0_reg),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h20002020)) 
    \t_V_1_reg_126[4]_i_2__0 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q[1]),
        .I3(img_src_c_2_data_str_empty_n),
        .I4(q0_reg),
        .O(t_V_1_reg_1260));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__1 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(\t_V_1_reg_126[0]_i_1__1_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__1 
       (.I0(ap_done_reg),
        .I1(minus_vector28_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__7 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__1_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__7_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__1_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__7_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__5 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__1_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__5_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__1 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(t_V_1_reg_126_reg__0[3]),
        .O(\tmp_s_reg_316[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__5 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__5_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__5_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector28_madEe" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector28_madEe
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_2_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_2_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_2_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector28_madEe_rom minus_vector28_madEe_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_2_data_str_empty_n(img_src_c_2_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector28_madEe_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector28_madEe_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_2_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_2_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_2[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_2[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_2[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_2[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_2[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_2[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_2[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_2[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_2[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_2[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_2[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_2[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_2[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_2[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_2[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_2[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_2_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_2_ce0;
  wire mask_2_q0;
  wire q0_reg_i_2__1_n_1;
  wire q0_reg_i_2__1_n_2;
  wire q0_reg_i_2__1_n_3;
  wire q0_reg_i_3__1_n_0;
  wire q0_reg_i_3__1_n_1;
  wire q0_reg_i_3__1_n_2;
  wire q0_reg_i_3__1_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_2[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__1_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__1_O_UNCONNECTED;

  CARRY4 \diff_sum_2[11]_INST_0_i_1 
       (.CI(\diff_sum_2[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_2[11]_INST_0_i_1_n_0 ,\diff_sum_2[11]_INST_0_i_1_n_1 ,\diff_sum_2[11]_INST_0_i_1_n_2 ,\diff_sum_2[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_2[15]_INST_0_i_1 
       (.CI(\diff_sum_2[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_2[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_2[15]_INST_0_i_1_n_1 ,\diff_sum_2[15]_INST_0_i_1_n_2 ,\diff_sum_2[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_2[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_2[3]_INST_0_i_1_n_0 ,\diff_sum_2[3]_INST_0_i_1_n_1 ,\diff_sum_2[3]_INST_0_i_1_n_2 ,\diff_sum_2[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_2[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_2[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_2_q0),
        .O(\diff_sum_2[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_2[7]_INST_0_i_1 
       (.CI(\diff_sum_2[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_2[7]_INST_0_i_1_n_0 ,\diff_sum_2[7]_INST_0_i_1_n_1 ,\diff_sum_2[7]_INST_0_i_1_n_2 ,\diff_sum_2[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000100000000),
    .INIT_03(256'h0001000100010001000100000000000000000000000000000000000000000001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000100000000000000000000),
    .INIT_06(256'h0000000000000001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0001000000000000000100010001000100010001000100010001000100010001),
    .INIT_08(256'h0001000100010001000000000001000100010001000100010001000100010001),
    .INIT_09(256'h0001000000000000000000000000000000000000000000010001000100010001),
    .INIT_0A(256'h0001000100010001000100010001000100000001000100010001000100010001),
    .INIT_0B(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000100000000000000000001000100010001),
    .INIT_0D(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000100010001000100010001000100010001000100000000),
    .INIT_10(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_12(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_14(256'h0000000000010001000100010001000100010001000100010001000000000000),
    .INIT_15(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000100010001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_19(256'h0000000000010001000100010001000100010001000100010001000000000000),
    .INIT_1A(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_1C(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_1E(256'h0000000000000001000100010001000100010001000100010001000100000000),
    .INIT_1F(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_21(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_23(256'h0000000000000001000100010001000100010001000100010001000100000000),
    .INIT_24(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_26(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_28(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_29(256'h0000000000010001000100010001000100010001000100010001000100010001),
    .INIT_2A(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2B(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2D(256'h0001000100010001000100010001000000010001000100010001000100010001),
    .INIT_2E(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_2_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mask_2_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hA200)) 
    q0_reg_i_1__0
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_src_c_2_data_str_empty_n),
        .I3(\ap_CS_fsm_reg[2] ),
        .O(mask_2_ce0));
  CARRY4 q0_reg_i_2__1
       (.CI(q0_reg_i_3__1_n_0),
        .CO({NLW_q0_reg_i_2__1_CO_UNCONNECTED[3],q0_reg_i_2__1_n_1,q0_reg_i_2__1_n_2,q0_reg_i_2__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__1
       (.CI(1'b0),
        .CO({q0_reg_i_3__1_n_0,q0_reg_i_3__1_n_1,q0_reg_i_3__1_n_2,q0_reg_i_3__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__1_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector29" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector29
   (q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    ap_done_reg_reg_0,
    diff_sum_3,
    diff_sum_3_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_1,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_3_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector29_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output ap_done_reg_reg_0;
  output [15:0]diff_sum_3;
  output diff_sum_3_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_1;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_3_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector29_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1__5_n_0;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__6_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__3_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_3;
  wire diff_sum_3_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__2_n_0 ;
  wire \diff_sum_preg[10]_i_1__2_n_0 ;
  wire \diff_sum_preg[11]_i_1__2_n_0 ;
  wire \diff_sum_preg[12]_i_1__2_n_0 ;
  wire \diff_sum_preg[13]_i_1__2_n_0 ;
  wire \diff_sum_preg[14]_i_1__2_n_0 ;
  wire \diff_sum_preg[15]_i_1__2_n_0 ;
  wire \diff_sum_preg[1]_i_1__2_n_0 ;
  wire \diff_sum_preg[2]_i_1__2_n_0 ;
  wire \diff_sum_preg[3]_i_1__2_n_0 ;
  wire \diff_sum_preg[4]_i_1__2_n_0 ;
  wire \diff_sum_preg[5]_i_1__2_n_0 ;
  wire \diff_sum_preg[6]_i_1__2_n_0 ;
  wire \diff_sum_preg[7]_i_1__2_n_0 ;
  wire \diff_sum_preg[8]_i_1__2_n_0 ;
  wire \diff_sum_preg[9]_i_1__2_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__2_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__2_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__2_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__5_n_0 ;
  wire \i_V_reg_292[2]_i_1__2_n_0 ;
  wire img_src_c_3_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector29_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__2_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__2_n_0 ;
  wire \r_V_reg_302[8]_i_1__8_n_0 ;
  wire \r_V_reg_302[9]_i_1__6_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire \t_V_1_reg_126[0]_i_1__2_n_0 ;
  wire \t_V_1_reg_126[4]_i_2__6_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1__6_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__2_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__4_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__2_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__4_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__6 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector29_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__6 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__4 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector29_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__6 
       (.I0(\r_V_reg_302[9]_i_1__6_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_3_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \ap_CS_fsm[3]_i_1__3 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q[1]),
        .I3(img_src_c_3_data_str_empty_n),
        .I4(q0_reg),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__3 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__5
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__5_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_1));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__6
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__6_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__6_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040CC4C00400040)) 
    ap_enable_reg_pp0_iter1_i_1__3
       (.I0(\r_V_reg_302[9]_i_1__6_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_3_data_str_empty_n),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__3_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_3[10]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_3[11]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_3[12]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_3[13]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_3[14]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_3[15]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_3[1]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_3[2]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_3[4]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_3[5]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_3[8]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_3[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_3_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_3[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_3_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_3_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_3_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__2 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[0]_i_1__2_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[10]_i_1__2_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[11]_i_1__2_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[12]_i_1__2_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[13]_i_1__2_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[14]_i_1__2_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[15]_i_1__2_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[1]_i_1__2_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[2]_i_1__2_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[3]_i_1__2_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[4]_i_1__2_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[5]_i_1__2_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[6]_i_1__2_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[7]_i_1__2_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[8]_i_1__2_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_3_ap_vld),
        .D(\diff_sum_preg[9]_i_1__2_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__2 
       (.I0(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_3_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__2 
       (.I0(ap_done_reg),
        .I1(minus_vector29_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__2 
       (.I0(Q[1]),
        .I1(img_src_c_3_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[0]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[10]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[11]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[12]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[13]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[14]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[15]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[1]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[2]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[3]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[4]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[5]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[6]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[7]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[8]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__2_n_0 ),
        .D(\diff_sum_preg[9]_i_1__2_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__2 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_3_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__2_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__2_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__5_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__2_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_isr[0]_i_8 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .O(ap_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__15
       (.I0(q0_reg),
        .I1(img_src_c_3_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__3 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_3_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector29_maeOg mask_3_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_3_data_str_empty_n(img_src_c_3_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__2 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_3_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__2 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__2_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(\r_V_reg_302[8]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__6 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hF0F0E0C0)) 
    \r_V_reg_302[9]_i_2__2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(\r_V_reg_302[7]_i_1__2_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(\r_V_reg_302[8]_i_1__8_n_0 ),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__6_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__2 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__2 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__2 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__2 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA22A2AAAA)) 
    \t_V_1_reg_126[4]_i_1__6 
       (.I0(\r_V_reg_302[9]_i_1__6_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(q0_reg),
        .I3(img_src_c_3_data_str_empty_n),
        .I4(Q[1]),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h40440000)) 
    \t_V_1_reg_126[4]_i_2__6 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_3_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\t_V_1_reg_126[4]_i_2__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__2 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__6_n_0 ),
        .D(\t_V_1_reg_126[0]_i_1__2_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__6_n_0 ),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__6_n_0 ),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__6_n_0 ),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__6_n_0 ),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__2 
       (.I0(ap_done_reg),
        .I1(minus_vector29_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__6 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__2_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__6_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__2_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__6_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__4 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__2_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__4_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__2 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(t_V_1_reg_126_reg__0[3]),
        .O(\tmp_s_reg_316[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__4 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__4_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__4_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector29_maeOg" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector29_maeOg
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_3_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_3_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_3_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector29_maeOg_rom minus_vector29_maeOg_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_3_data_str_empty_n(img_src_c_3_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector29_maeOg_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector29_maeOg_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_3_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_3_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_3[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_3[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_3[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_3[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_3[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_3[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_3[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_3[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_3[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_3[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_3[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_3[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_3[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_3[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_3[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_3[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_3_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_3_q0;
  wire q0_reg_i_1__6_n_0;
  wire q0_reg_i_2__2_n_1;
  wire q0_reg_i_2__2_n_2;
  wire q0_reg_i_2__2_n_3;
  wire q0_reg_i_3__2_n_0;
  wire q0_reg_i_3__2_n_1;
  wire q0_reg_i_3__2_n_2;
  wire q0_reg_i_3__2_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_3[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__2_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__2_O_UNCONNECTED;

  CARRY4 \diff_sum_3[11]_INST_0_i_1 
       (.CI(\diff_sum_3[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_3[11]_INST_0_i_1_n_0 ,\diff_sum_3[11]_INST_0_i_1_n_1 ,\diff_sum_3[11]_INST_0_i_1_n_2 ,\diff_sum_3[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_3[15]_INST_0_i_1 
       (.CI(\diff_sum_3[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_3[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_3[15]_INST_0_i_1_n_1 ,\diff_sum_3[15]_INST_0_i_1_n_2 ,\diff_sum_3[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_3[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_3[3]_INST_0_i_1_n_0 ,\diff_sum_3[3]_INST_0_i_1_n_1 ,\diff_sum_3[3]_INST_0_i_1_n_2 ,\diff_sum_3[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_3[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_3[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_3_q0),
        .O(\diff_sum_3[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_3[7]_INST_0_i_1 
       (.CI(\diff_sum_3[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_3[7]_INST_0_i_1_n_0 ,\diff_sum_3[7]_INST_0_i_1_n_1 ,\diff_sum_3[7]_INST_0_i_1_n_2 ,\diff_sum_3[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_03(256'h0001000100010001000100010001000100000000000000010001000100010001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000100010000000100010001),
    .INIT_06(256'h0000000100010001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0001000100010001000100010001000100010001000100010001000000000000),
    .INIT_08(256'h0000000000000000000000010001000100010001000100010001000100010001),
    .INIT_09(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_0B(256'h0001000100010001000100010001000100010001000100000000000000000000),
    .INIT_0C(256'h0001000100000000000000000000000000000000000000000000000000000001),
    .INIT_0D(256'h0000000000000000000000010001000100010001000100010001000100010001),
    .INIT_0E(256'h0001000100010001000100010001000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_10(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_11(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000100010001000100010001000100010001000100010001),
    .INIT_13(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_15(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100010001000100000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_19(256'h0001000100010001000100010001000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_1B(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000100010001000100010001000100010001000100000000),
    .INIT_1E(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_20(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_22(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_24(256'h0001000100010001000000010001000100010001000100010001000100000000),
    .INIT_25(256'h0001000100010000000000000000000000000000000000000001000100010001),
    .INIT_26(256'h0001000100010001000100010001000100000000000100010001000100010001),
    .INIT_27(256'h0001000100010001000100010001000100010001000100000001000100010001),
    .INIT_28(256'h0001000100010001000100010001000100010001000100000000000000010001),
    .INIT_29(256'h0000000000000001000100010001000100010001000100010001000100010001),
    .INIT_2A(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100010000),
    .INIT_2D(256'h0001000000000000000000000000000000000000000000000000000000010001),
    .INIT_2E(256'h0000000000000000000000000001000100010001000000000000000000010001),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_3_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(q0_reg_i_1__6_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hD000)) 
    q0_reg_i_1__6
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(img_src_c_3_data_str_empty_n),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(q0_reg_i_1__6_n_0));
  CARRY4 q0_reg_i_2__2
       (.CI(q0_reg_i_3__2_n_0),
        .CO({NLW_q0_reg_i_2__2_CO_UNCONNECTED[3],q0_reg_i_2__2_n_1,q0_reg_i_2__2_n_2,q0_reg_i_2__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__2
       (.CI(1'b0),
        .CO({q0_reg_i_3__2_n_0,q0_reg_i_3__2_n_1,q0_reg_i_3__2_n_2,q0_reg_i_3__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__2_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector30" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector30
   (ap_done_reg,
    q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_4,
    diff_sum_4_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_4_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector30_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output ap_done_reg;
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_4;
  output diff_sum_4_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_4_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector30_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1_n_0;
  wire ap_done_reg_reg_0;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__4_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_4;
  wire diff_sum_4_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__3_n_0 ;
  wire \diff_sum_preg[10]_i_1__3_n_0 ;
  wire \diff_sum_preg[11]_i_1__3_n_0 ;
  wire \diff_sum_preg[12]_i_1__3_n_0 ;
  wire \diff_sum_preg[13]_i_1__3_n_0 ;
  wire \diff_sum_preg[14]_i_1__3_n_0 ;
  wire \diff_sum_preg[15]_i_1__3_n_0 ;
  wire \diff_sum_preg[1]_i_1__3_n_0 ;
  wire \diff_sum_preg[2]_i_1__3_n_0 ;
  wire \diff_sum_preg[3]_i_1__3_n_0 ;
  wire \diff_sum_preg[4]_i_1__3_n_0 ;
  wire \diff_sum_preg[5]_i_1__3_n_0 ;
  wire \diff_sum_preg[6]_i_1__3_n_0 ;
  wire \diff_sum_preg[7]_i_1__3_n_0 ;
  wire \diff_sum_preg[8]_i_1__3_n_0 ;
  wire \diff_sum_preg[9]_i_1__3_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__3_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__3_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__3_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__4_n_0 ;
  wire \i_V_reg_292[2]_i_1__3_n_0 ;
  wire img_src_c_4_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector30_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__3_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__3_n_0 ;
  wire \r_V_reg_302[9]_i_1_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire \t_V_1_reg_126[0]_i_1__3_n_0 ;
  wire \t_V_1_reg_126[4]_i_2__7_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__3_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__8_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__3_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__7_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector30_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__5 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector30_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\r_V_reg_302[9]_i_1_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_4_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \ap_CS_fsm[3]_i_1__4 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q[1]),
        .I3(img_src_c_4_data_str_empty_n),
        .I4(q0_reg),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__4 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_0));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040CC4C00400040)) 
    ap_enable_reg_pp0_iter1_i_1__4
       (.I0(\r_V_reg_302[9]_i_1_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_4_data_str_empty_n),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__4_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_4[0]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_4[10]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_4[11]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_4[12]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_4[13]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_4[14]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_4[15]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_4[1]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_4[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_4[3]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_4[4]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_4[5]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_4[6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_4[7]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_4[8]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_4[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_4_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_4[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_4_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_4_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_4_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__3 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[0]_i_1__3_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[10]_i_1__3_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[11]_i_1__3_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[12]_i_1__3_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[13]_i_1__3_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[14]_i_1__3_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[15]_i_1__3_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[1]_i_1__3_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[2]_i_1__3_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[3]_i_1__3_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[4]_i_1__3_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[5]_i_1__3_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[6]_i_1__3_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[7]_i_1__3_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[8]_i_1__3_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_4_ap_vld),
        .D(\diff_sum_preg[9]_i_1__3_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__3 
       (.I0(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_4_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__3 
       (.I0(ap_done_reg),
        .I1(minus_vector30_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__3 
       (.I0(Q[1]),
        .I1(img_src_c_4_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[0]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[10]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[11]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[12]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[13]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[14]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[15]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[1]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[2]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[3]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[4]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[5]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[6]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[7]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[8]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__3_n_0 ),
        .D(\diff_sum_preg[9]_i_1__3_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__3 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_4_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__3_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__3_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__4_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__3_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__16
       (.I0(q0_reg),
        .I1(img_src_c_4_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__4 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_4_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector30_mafYi mask_4_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_4_data_str_empty_n(img_src_c_4_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__3 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_4_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__3 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__3_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2__3 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(\r_V_reg_302[7]_i_1__3_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__3 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__3 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__3 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__3 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA22A2AAAA)) 
    \t_V_1_reg_126[4]_i_1 
       (.I0(\r_V_reg_302[9]_i_1_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(q0_reg),
        .I3(img_src_c_4_data_str_empty_n),
        .I4(Q[1]),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h40440000)) 
    \t_V_1_reg_126[4]_i_2__7 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_4_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\t_V_1_reg_126[4]_i_2__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__3 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__7_n_0 ),
        .D(\t_V_1_reg_126[0]_i_1__3_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__7_n_0 ),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__7_n_0 ),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__7_n_0 ),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__7_n_0 ),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__3 
       (.I0(ap_done_reg),
        .I1(minus_vector30_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__3_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__3 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__3_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__8 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__3_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__7_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__3 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(t_V_1_reg_126_reg__0[2]),
        .O(\tmp_s_reg_316[0]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__7 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(sum_cast_fu_223_p1[0]),
        .I5(t_V_1_reg_126_reg),
        .O(\tmp_s_reg_316[0]_i_3__7_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__8_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector30_mafYi" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector30_mafYi
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_4_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_4_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_4_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector30_mafYi_rom minus_vector30_mafYi_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_4_data_str_empty_n(img_src_c_4_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector30_mafYi_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector30_mafYi_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_4_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_4_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_4[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_4[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_4[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_4[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_4[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_4[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_4[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_4[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_4[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_4[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_4[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_4[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_4[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_4[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_4[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_4[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_4_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_4_q0;
  wire q0_reg_i_1__7_n_0;
  wire q0_reg_i_2__3_n_1;
  wire q0_reg_i_2__3_n_2;
  wire q0_reg_i_2__3_n_3;
  wire q0_reg_i_3__3_n_0;
  wire q0_reg_i_3__3_n_1;
  wire q0_reg_i_3__3_n_2;
  wire q0_reg_i_3__3_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_4[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__3_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__3_O_UNCONNECTED;

  CARRY4 \diff_sum_4[11]_INST_0_i_1 
       (.CI(\diff_sum_4[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_4[11]_INST_0_i_1_n_0 ,\diff_sum_4[11]_INST_0_i_1_n_1 ,\diff_sum_4[11]_INST_0_i_1_n_2 ,\diff_sum_4[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_4[15]_INST_0_i_1 
       (.CI(\diff_sum_4[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_4[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_4[15]_INST_0_i_1_n_1 ,\diff_sum_4[15]_INST_0_i_1_n_2 ,\diff_sum_4[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_4[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_4[3]_INST_0_i_1_n_0 ,\diff_sum_4[3]_INST_0_i_1_n_1 ,\diff_sum_4[3]_INST_0_i_1_n_2 ,\diff_sum_4[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_4[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_4[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_4_q0),
        .O(\diff_sum_4[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_4[7]_INST_0_i_1 
       (.CI(\diff_sum_4[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_4[7]_INST_0_i_1_n_0 ,\diff_sum_4[7]_INST_0_i_1_n_1 ,\diff_sum_4[7]_INST_0_i_1_n_2 ,\diff_sum_4[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000100010001000100010001000100000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_04(256'h0001000100010001000100010001000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_06(256'h0000000000000001000100010001000100010001000100010000000000000000),
    .INIT_07(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000100010001000100010001000100010001),
    .INIT_09(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_0B(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_0C(256'h0001000000000000000000000000000000000000000000000000000000000001),
    .INIT_0D(256'h0000000000000001000100010001000100010001000100010001000100010001),
    .INIT_0E(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_10(256'h0001000100010001000100010001000100010001000100000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_12(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_13(256'h0001000100010001000100000000000000000000000000000000000000010001),
    .INIT_14(256'h0000000000000001000100010001000100010001000000010001000100010001),
    .INIT_15(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000100010001000100010001000100000000),
    .INIT_17(256'h0001000100000000000000010001000100010001000100010001000100010000),
    .INIT_18(256'h0001000100010001000100000000000000000000000100010001000100010001),
    .INIT_19(256'h0001000100010001000100010000000000000000000000010001000100010001),
    .INIT_1A(256'h0001000100010001000100010001000100010001000000000000000000000001),
    .INIT_1B(256'h0000000000000001000100010001000100010001000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000010001000100010001000100010001000100000000),
    .INIT_1D(256'h0001000100010001000000000000000100010001000100010001000100010000),
    .INIT_1E(256'h0001000100010000000000000000000000000000000100010001000100010001),
    .INIT_1F(256'h0001000100010001000100010001000100000000000000010001000100010001),
    .INIT_20(256'h0001000100010001000100010001000100000000000000000000000000000001),
    .INIT_21(256'h0001000100010001000100010001000100010001000100010000000000010001),
    .INIT_22(256'h0000000100010001000100010001000100010001000100010001000100010001),
    .INIT_23(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_24(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_25(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_26(256'h0001000100010001000100010001000000010001000100010001000100010001),
    .INIT_27(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_29(256'h0000000000000001000100010001000100010001000100010000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000100010001000100010001000100010000),
    .INIT_2C(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_2E(256'h0001000100010001000100010001000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_4_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(q0_reg_i_1__7_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hD000)) 
    q0_reg_i_1__7
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(img_src_c_4_data_str_empty_n),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(q0_reg_i_1__7_n_0));
  CARRY4 q0_reg_i_2__3
       (.CI(q0_reg_i_3__3_n_0),
        .CO({NLW_q0_reg_i_2__3_CO_UNCONNECTED[3],q0_reg_i_2__3_n_1,q0_reg_i_2__3_n_2,q0_reg_i_2__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__3
       (.CI(1'b0),
        .CO({q0_reg_i_3__3_n_0,q0_reg_i_3__3_n_1,q0_reg_i_3__3_n_2,q0_reg_i_3__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__3_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector31" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector31
   (ap_done_reg,
    q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_5,
    diff_sum_5_ap_vld,
    \diff_sum_t_fu_84_reg[0]_0 ,
    int_ap_idle_reg,
    ap_clk,
    ap_done_reg_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_5_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector31_U0_ap_start,
    minus_vector27_U0_ap_start,
    minus_vector34_U0_ap_start,
    minus_vector26_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output ap_done_reg;
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [0:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_5;
  output diff_sum_5_ap_vld;
  output \diff_sum_t_fu_84_reg[0]_0 ;
  output int_ap_idle_reg;
  input ap_clk;
  input ap_done_reg_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_5_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector31_U0_ap_start;
  input minus_vector27_U0_ap_start;
  input minus_vector34_U0_ap_start;
  input minus_vector26_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [0:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1__7_n_0;
  wire ap_done_reg_reg_0;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__8_n_0;
  wire ap_enable_reg_pp0_iter0_i_2__0_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__5_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_5;
  wire diff_sum_5_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__4_n_0 ;
  wire \diff_sum_preg[10]_i_1__4_n_0 ;
  wire \diff_sum_preg[11]_i_1__4_n_0 ;
  wire \diff_sum_preg[12]_i_1__4_n_0 ;
  wire \diff_sum_preg[13]_i_1__4_n_0 ;
  wire \diff_sum_preg[14]_i_1__4_n_0 ;
  wire \diff_sum_preg[15]_i_1__4_n_0 ;
  wire \diff_sum_preg[1]_i_1__4_n_0 ;
  wire \diff_sum_preg[2]_i_1__4_n_0 ;
  wire \diff_sum_preg[3]_i_1__4_n_0 ;
  wire \diff_sum_preg[4]_i_1__4_n_0 ;
  wire \diff_sum_preg[5]_i_1__4_n_0 ;
  wire \diff_sum_preg[6]_i_1__4_n_0 ;
  wire \diff_sum_preg[7]_i_1__4_n_0 ;
  wire \diff_sum_preg[8]_i_1__4_n_0 ;
  wire \diff_sum_preg[9]_i_1__4_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__4_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__4_n_0 ;
  wire \diff_sum_t_fu_84_reg[0]_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__4_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__3_n_0 ;
  wire \i_V_reg_292[2]_i_1__4_n_0 ;
  wire img_src_c_5_data_str_empty_n;
  wire int_ap_idle_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector26_U0_ap_start;
  wire minus_vector27_U0_ap_start;
  wire minus_vector31_U0_ap_start;
  wire minus_vector34_U0_ap_start;
  wire or_cond_reg_326;
  wire or_cond_reg_3260;
  wire \or_cond_reg_326[0]_i_1__4_n_0 ;
  wire \or_cond_reg_326[0]_i_2__4_n_0 ;
  wire \or_cond_reg_326[0]_i_3_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__4_n_0 ;
  wire \r_V_reg_302[9]_i_1__8_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire \t_V_1_reg_126[0]_i_1__4_n_0 ;
  wire \t_V_1_reg_126[4]_i_2__8_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1__8_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__4_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__6_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__8_n_0 ;
  wire \tmp_s_reg_316[0]_i_4_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__8 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector31_U0_ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__8 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__6 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector31_U0_ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__8 
       (.I0(\r_V_reg_302[9]_i_1__8_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_5_data_str_empty_n),
        .I5(Q),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \ap_CS_fsm[3]_i_1__5 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q),
        .I3(img_src_c_5_data_str_empty_n),
        .I4(q0_reg),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__5 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__7
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__7_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_0));
  LUT5 #(
    .INIT(32'hA800A8A8)) 
    ap_enable_reg_pp0_iter0_i_1__8
       (.I0(ap_rst_n),
        .I1(\r_V_reg_302[9]_i_1__8_n_0 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter0_i_2__0_n_0),
        .I4(Q),
        .O(ap_enable_reg_pp0_iter0_i_1__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    ap_enable_reg_pp0_iter0_i_2__0
       (.I0(img_src_c_5_data_str_empty_n),
        .I1(q0_reg),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter0_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__8_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040CC4C00400040)) 
    ap_enable_reg_pp0_iter1_i_1__5
       (.I0(\r_V_reg_302[9]_i_1__8_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_5_data_str_empty_n),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__5_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_5[0]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_5[10]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_5[11]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_5[12]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_5[13]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_5[14]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_5[15]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_5[1]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_5[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_5[3]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_5[4]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_5[5]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_5[6]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_5[7]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_5[8]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_5[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_5_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_5[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_5_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q),
        .I2(img_src_c_5_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_5_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__4 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[0]_i_1__4_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[10]_i_1__4_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[11]_i_1__4_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[12]_i_1__4_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[13]_i_1__4_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[14]_i_1__4_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[15]_i_1__4_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[1]_i_1__4_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[2]_i_1__4_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[3]_i_1__4_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[4]_i_1__4_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[5]_i_1__4_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[6]_i_1__4_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[7]_i_1__4_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[8]_i_1__4_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_5_ap_vld),
        .D(\diff_sum_preg[9]_i_1__4_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__4 
       (.I0(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_5_data_str_empty_n),
        .I4(Q),
        .O(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \diff_sum_t_fu_84[15]_i_2__4 
       (.I0(ap_done_reg),
        .I1(minus_vector31_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(exitcond_reg_307),
        .I4(\diff_sum_t_fu_84_reg[0]_0 ),
        .O(\diff_sum_t_fu_84[15]_i_2__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \diff_sum_t_fu_84[15]_i_3__4 
       (.I0(q0_reg),
        .I1(img_src_c_5_data_str_empty_n),
        .I2(Q),
        .O(\diff_sum_t_fu_84_reg[0]_0 ));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[0]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[10]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[11]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[12]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[13]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[14]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[15]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[1]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[2]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[3]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[4]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[5]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[6]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[7]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[8]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__4_n_0 ),
        .D(\diff_sum_preg[9]_i_1__4_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__4 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_5_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__4_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__4_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__3_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__4_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    int_ap_idle_i_5
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(minus_vector27_U0_ap_start),
        .I2(minus_vector34_U0_ap_start),
        .I3(minus_vector26_U0_ap_start),
        .O(int_ap_idle_reg));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__5 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_5_data_str_empty_n),
        .I3(Q),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector31_mag8j mask_5_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_5_data_str_empty_n(img_src_c_5_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \or_cond_reg_326[0]_i_1__4 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(\or_cond_reg_326[0]_i_2__4_n_0 ),
        .I2(\tmp_6_reg_297_reg_n_0_[0] ),
        .I3(\or_cond_reg_326[0]_i_3_n_0 ),
        .I4(or_cond_reg_3260),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \or_cond_reg_326[0]_i_2__4 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(\or_cond_reg_326[0]_i_2__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \or_cond_reg_326[0]_i_3 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(\or_cond_reg_326[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \or_cond_reg_326[0]_i_4 
       (.I0(p_8_in),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_reg_3260));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__4_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__8 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2__4 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(\r_V_reg_302[7]_i_1__4_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__8_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__4 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__4 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__4 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__4 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hBFBBFFFF00000000)) 
    \t_V_1_reg_126[4]_i_1__9 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_5_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(\r_V_reg_302[9]_i_1__8_n_0 ),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h40440000)) 
    \t_V_1_reg_126[4]_i_2__8 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_5_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\t_V_1_reg_126[4]_i_2__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__4 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__8_n_0 ),
        .D(\t_V_1_reg_126[0]_i_1__4_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__8_n_0 ),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__8_n_0 ),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__8_n_0 ),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__8_n_0 ),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__4 
       (.I0(ap_done_reg),
        .I1(minus_vector31_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__8 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__4_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__8_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__4 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__4_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__8_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__6 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_3__8_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_4_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \tmp_s_reg_316[0]_i_2__4 
       (.I0(Q),
        .I1(img_src_c_5_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_3__8 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(t_V_1_reg_126_reg__0[3]),
        .O(\tmp_s_reg_316[0]_i_3__8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_4 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(p_shl_cast_fu_168_p1[9]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(sum_cast_fu_223_p1[0]),
        .I5(t_V_1_reg_126_reg),
        .O(\tmp_s_reg_316[0]_i_4_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__6_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector31_mag8j" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector31_mag8j
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_5_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_5_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_5_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector31_mag8j_rom minus_vector31_mag8j_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_5_data_str_empty_n(img_src_c_5_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector31_mag8j_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector31_mag8j_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_5_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_5_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_5[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_5[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_5[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_5[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_5[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_5[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_5[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_5[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_5[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_5[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_5[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_5[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_5[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_5[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_5[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_5[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_5_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_5_q0;
  wire q0_reg_i_1__8_n_0;
  wire q0_reg_i_2__4_n_1;
  wire q0_reg_i_2__4_n_2;
  wire q0_reg_i_2__4_n_3;
  wire q0_reg_i_3__4_n_0;
  wire q0_reg_i_3__4_n_1;
  wire q0_reg_i_3__4_n_2;
  wire q0_reg_i_3__4_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_5[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__4_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__4_O_UNCONNECTED;

  CARRY4 \diff_sum_5[11]_INST_0_i_1 
       (.CI(\diff_sum_5[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_5[11]_INST_0_i_1_n_0 ,\diff_sum_5[11]_INST_0_i_1_n_1 ,\diff_sum_5[11]_INST_0_i_1_n_2 ,\diff_sum_5[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_5[15]_INST_0_i_1 
       (.CI(\diff_sum_5[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_5[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_5[15]_INST_0_i_1_n_1 ,\diff_sum_5[15]_INST_0_i_1_n_2 ,\diff_sum_5[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_5[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_5[3]_INST_0_i_1_n_0 ,\diff_sum_5[3]_INST_0_i_1_n_1 ,\diff_sum_5[3]_INST_0_i_1_n_2 ,\diff_sum_5[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_5[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_5[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_5_q0),
        .O(\diff_sum_5[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_5[7]_INST_0_i_1 
       (.CI(\diff_sum_5[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_5[7]_INST_0_i_1_n_0 ,\diff_sum_5[7]_INST_0_i_1_n_1 ,\diff_sum_5[7]_INST_0_i_1_n_2 ,\diff_sum_5[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000100000000000100010001),
    .INIT_06(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0001000100010001000100010001000100010001000100010001000100010000),
    .INIT_08(256'h0001000100010000000100010001000100010001000100010001000100010001),
    .INIT_09(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_0A(256'h0001000100010001000100010001000000010001000100010001000100010001),
    .INIT_0B(256'h0001000100000000000000000000000000000000000000000000000100010001),
    .INIT_0C(256'h0000000000010001000100010001000100010001000100000000000100010001),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_0F(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_11(256'h0001000100010001000100010001000100000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000100010001000100010001000100010001000100010001),
    .INIT_13(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_14(256'h0000000000000000000000010001000100010001000100010001000100010001),
    .INIT_15(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_16(256'h0001000100010000000000000000000100010001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_18(256'h0001000100010001000100010000000000000001000100010001000100010001),
    .INIT_19(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1A(256'h0000000100010001000000010000000000000000000000000001000100010001),
    .INIT_1B(256'h0001000100010001000100010001000100010000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000100010001000100010001000100010000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_20(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000100010001000100010001000100010001),
    .INIT_22(256'h0001000100010001000100010001000100010000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_24(256'h0001000100010001000100010001000100010001000100010001000000000000),
    .INIT_25(256'h0001000100000000000000000000000000000000000000010001000100010001),
    .INIT_26(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_27(256'h0001000100010001000100010001000100010000000000000000000000010001),
    .INIT_28(256'h0001000100010001000100010001000100010001000100000001000100010001),
    .INIT_29(256'h0000000000010001000100010001000100010001000100010001000100010001),
    .INIT_2A(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000100010001000100010001000100010001),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100000000),
    .INIT_2D(256'h0001000000000000000000000000000000000000000000000000000100010001),
    .INIT_2E(256'h0000000000000000000100010001000100010001000100010001000100010001),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_5_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(q0_reg_i_1__8_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hD000)) 
    q0_reg_i_1__8
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(img_src_c_5_data_str_empty_n),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(q0_reg_i_1__8_n_0));
  CARRY4 q0_reg_i_2__4
       (.CI(q0_reg_i_3__4_n_0),
        .CO({NLW_q0_reg_i_2__4_CO_UNCONNECTED[3],q0_reg_i_2__4_n_1,q0_reg_i_2__4_n_2,q0_reg_i_2__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__4
       (.CI(1'b0),
        .CO({q0_reg_i_3__4_n_0,q0_reg_i_3__4_n_1,q0_reg_i_3__4_n_2,q0_reg_i_3__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__4_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector32" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector32
   (q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    ap_done_reg_reg_0,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_6,
    diff_sum_6_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_1,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_6_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    ap_done_reg,
    \t_V_reg_114_reg[1]_0 ,
    minus_vector32_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output ap_done_reg_reg_0;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_6;
  output diff_sum_6_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_1;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_6_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input ap_done_reg;
  input \t_V_reg_114_reg[1]_0 ;
  input minus_vector32_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_0;
  wire ap_done_reg_i_1__0_n_0;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__0_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__6_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_6;
  wire diff_sum_6_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__5_n_0 ;
  wire \diff_sum_preg[10]_i_1__5_n_0 ;
  wire \diff_sum_preg[11]_i_1__5_n_0 ;
  wire \diff_sum_preg[12]_i_1__5_n_0 ;
  wire \diff_sum_preg[13]_i_1__5_n_0 ;
  wire \diff_sum_preg[14]_i_1__5_n_0 ;
  wire \diff_sum_preg[15]_i_1__5_n_0 ;
  wire \diff_sum_preg[1]_i_1__5_n_0 ;
  wire \diff_sum_preg[2]_i_1__5_n_0 ;
  wire \diff_sum_preg[3]_i_1__5_n_0 ;
  wire \diff_sum_preg[4]_i_1__5_n_0 ;
  wire \diff_sum_preg[5]_i_1__5_n_0 ;
  wire \diff_sum_preg[6]_i_1__5_n_0 ;
  wire \diff_sum_preg[7]_i_1__5_n_0 ;
  wire \diff_sum_preg[8]_i_1__5_n_0 ;
  wire \diff_sum_preg[9]_i_1__5_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__5_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__5_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__5_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__2_n_0 ;
  wire \i_V_reg_292[2]_i_1__5_n_0 ;
  wire img_src_c_6_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector32_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__5_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__5_n_0 ;
  wire \r_V_reg_302[9]_i_1__0_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire \t_V_1_reg_126[0]_i_1__5_n_0 ;
  wire \t_V_1_reg_126[4]_i_2__9_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \t_V_reg_114_reg[1]_0 ;
  wire \tmp_6_reg_297[0]_i_1__0_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__5_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__5_n_0 ;
  wire \tmp_s_reg_316[0]_i_3_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg_0),
        .I2(minus_vector32_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__0 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__7 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg_0),
        .I2(minus_vector32_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(\r_V_reg_302[9]_i_1__0_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_6_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \ap_CS_fsm[3]_i_1__6 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q[1]),
        .I3(img_src_c_6_data_str_empty_n),
        .I4(q0_reg),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__6 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__0
       (.I0(ap_done_reg_0),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__0_n_0),
        .Q(ap_done_reg_0),
        .R(ap_done_reg_reg_1));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__0_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__0_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040CC4C00400040)) 
    ap_enable_reg_pp0_iter1_i_1__6
       (.I0(\r_V_reg_302[9]_i_1__0_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_6_data_str_empty_n),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__6_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_6[0]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_6[10]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_6[11]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_6[12]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_6[13]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_6[14]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_6[15]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_6[1]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_6[2]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_6[3]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_6[4]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_6[5]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_6[6]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_6[7]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_6[8]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_6[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_6_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_6[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_6_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_6_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_6_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__5 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[0]_i_1__5_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[10]_i_1__5_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[11]_i_1__5_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[12]_i_1__5_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[13]_i_1__5_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[14]_i_1__5_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[15]_i_1__5_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[1]_i_1__5_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[2]_i_1__5_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[3]_i_1__5_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[4]_i_1__5_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[5]_i_1__5_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[6]_i_1__5_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[7]_i_1__5_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[8]_i_1__5_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_6_ap_vld),
        .D(\diff_sum_preg[9]_i_1__5_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__5 
       (.I0(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_6_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__5 
       (.I0(ap_done_reg_0),
        .I1(minus_vector32_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__5 
       (.I0(Q[1]),
        .I1(img_src_c_6_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[0]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[10]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[11]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[12]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[13]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[14]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[15]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[1]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[2]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[3]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[4]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[5]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[6]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[7]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[8]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__5_n_0 ),
        .D(\diff_sum_preg[9]_i_1__5_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__5 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_6_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__5_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__5_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__2 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__2_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__5_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \int_isr[0]_i_6 
       (.I0(ap_done_reg_0),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(ap_done_reg),
        .I3(\t_V_reg_114_reg[1]_0 ),
        .O(ap_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__17
       (.I0(q0_reg),
        .I1(img_src_c_6_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__6 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_6_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector32_mahbi mask_6_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_6_data_str_empty_n(img_src_c_6_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__5 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_6_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__5 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__5_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__3 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__0 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2__5 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(\r_V_reg_302[7]_i_1__5_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__0_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__5 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__5 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__5 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__5 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA22A2AAAA)) 
    \t_V_1_reg_126[4]_i_1__0 
       (.I0(\r_V_reg_302[9]_i_1__0_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(q0_reg),
        .I3(img_src_c_6_data_str_empty_n),
        .I4(Q[1]),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h40440000)) 
    \t_V_1_reg_126[4]_i_2__9 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_6_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\t_V_1_reg_126[4]_i_2__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__5 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__9_n_0 ),
        .D(\t_V_1_reg_126[0]_i_1__5_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__9_n_0 ),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__9_n_0 ),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__9_n_0 ),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(\t_V_1_reg_126[4]_i_2__9_n_0 ),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__5 
       (.I0(ap_done_reg_0),
        .I1(minus_vector32_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__0 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__5_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__0_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__5 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__5_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__0_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__5_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__5 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(t_V_1_reg_126_reg__0[4]),
        .O(\tmp_s_reg_316[0]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(p_shl_cast_fu_168_p1[9]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(sum_cast_fu_223_p1[0]),
        .I5(t_V_1_reg_126_reg),
        .O(\tmp_s_reg_316[0]_i_3_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector32_mahbi" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector32_mahbi
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_6_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_6_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_6_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector32_mahbi_rom minus_vector32_mahbi_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_6_data_str_empty_n(img_src_c_6_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector32_mahbi_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector32_mahbi_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_6_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    ap_enable_reg_pp0_iter0);
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_6_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input ap_enable_reg_pp0_iter0;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_6[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_6[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_6[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_6[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_6[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_6[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_6[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_6[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_6[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_6[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_6[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_6[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_6[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_6[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_6[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_6[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_6_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_6_q0;
  wire q0_reg_i_1__9_n_0;
  wire q0_reg_i_2__5_n_1;
  wire q0_reg_i_2__5_n_2;
  wire q0_reg_i_2__5_n_3;
  wire q0_reg_i_3__5_n_0;
  wire q0_reg_i_3__5_n_1;
  wire q0_reg_i_3__5_n_2;
  wire q0_reg_i_3__5_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_6[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__5_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__5_O_UNCONNECTED;

  CARRY4 \diff_sum_6[11]_INST_0_i_1 
       (.CI(\diff_sum_6[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_6[11]_INST_0_i_1_n_0 ,\diff_sum_6[11]_INST_0_i_1_n_1 ,\diff_sum_6[11]_INST_0_i_1_n_2 ,\diff_sum_6[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_6[15]_INST_0_i_1 
       (.CI(\diff_sum_6[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_6[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_6[15]_INST_0_i_1_n_1 ,\diff_sum_6[15]_INST_0_i_1_n_2 ,\diff_sum_6[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_6[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_6[3]_INST_0_i_1_n_0 ,\diff_sum_6[3]_INST_0_i_1_n_1 ,\diff_sum_6[3]_INST_0_i_1_n_2 ,\diff_sum_6[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_6[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_6[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_6_q0),
        .O(\diff_sum_6[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_6[7]_INST_0_i_1 
       (.CI(\diff_sum_6[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_6[7]_INST_0_i_1_n_0 ,\diff_sum_6[7]_INST_0_i_1_n_1 ,\diff_sum_6[7]_INST_0_i_1_n_2 ,\diff_sum_6[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000100010000),
    .INIT_02(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_04(256'h0000000000010001000100010001000100010001000100000000000000000000),
    .INIT_05(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_07(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_09(256'h0000000000000001000100010001000100010001000100010000000000000000),
    .INIT_0A(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_0C(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_0E(256'h0000000000000000000100010001000100010001000100000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_11(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_13(256'h0000000000000001000100010001000100010001000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000100010001000100010001000100000000),
    .INIT_16(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_18(256'h0001000100010001000100010001000000000000000000000000000000000001),
    .INIT_19(256'h0000000100010001000100010001000100010001000100010001000100010001),
    .INIT_1A(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_1B(256'h0000000000000001000100010001000100010001000100010001000100010001),
    .INIT_1C(256'h0000000000000000000000000000000100010001000100010001000100010001),
    .INIT_1D(256'h0001000100010001000000000001000100010001000100010001000100000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_1F(256'h0000000000010001000100010001000100000001000100010001000100010001),
    .INIT_20(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000001000100010001000100010000000100010001),
    .INIT_22(256'h0001000100010001000100010001000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_24(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_26(256'h0000000100010001000100010001000100010001000100010001000100010000),
    .INIT_27(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000100010001000100010001000100000000000100010001),
    .INIT_29(256'h0000000100010001000100010001000100010000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000010001000100010001000100010001000100000000),
    .INIT_2B(256'h0001000000000000000000000001000100010001000100010001000100010000),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2D(256'h0001000100010000000000000000000000000000000000010001000100010001),
    .INIT_2E(256'h0000000100010001000100010001000100010001000100010001000100010001),
    .INIT_2F(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_6_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(q0_reg_i_1__9_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hD000)) 
    q0_reg_i_1__9
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(img_src_c_6_data_str_empty_n),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(q0_reg_i_1__9_n_0));
  CARRY4 q0_reg_i_2__5
       (.CI(q0_reg_i_3__5_n_0),
        .CO({NLW_q0_reg_i_2__5_CO_UNCONNECTED[3],q0_reg_i_2__5_n_1,q0_reg_i_2__5_n_2,q0_reg_i_2__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__5
       (.CI(1'b0),
        .CO({q0_reg_i_3__5_n_0,q0_reg_i_3__5_n_1,q0_reg_i_3__5_n_2,q0_reg_i_3__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__5_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector33" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector33
   (q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    ap_done_reg_reg_0,
    diff_sum_7,
    diff_sum_7_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_1,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_7_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector33_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output ap_done_reg_reg_0;
  output [15:0]diff_sum_7;
  output diff_sum_7_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_1;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_7_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector33_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1__4_n_0;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__5_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__7_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_7;
  wire diff_sum_7_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__6_n_0 ;
  wire \diff_sum_preg[10]_i_1__6_n_0 ;
  wire \diff_sum_preg[11]_i_1__6_n_0 ;
  wire \diff_sum_preg[12]_i_1__6_n_0 ;
  wire \diff_sum_preg[13]_i_1__6_n_0 ;
  wire \diff_sum_preg[14]_i_1__6_n_0 ;
  wire \diff_sum_preg[15]_i_1__6_n_0 ;
  wire \diff_sum_preg[1]_i_1__6_n_0 ;
  wire \diff_sum_preg[2]_i_1__6_n_0 ;
  wire \diff_sum_preg[3]_i_1__6_n_0 ;
  wire \diff_sum_preg[4]_i_1__6_n_0 ;
  wire \diff_sum_preg[5]_i_1__6_n_0 ;
  wire \diff_sum_preg[6]_i_1__6_n_0 ;
  wire \diff_sum_preg[7]_i_1__6_n_0 ;
  wire \diff_sum_preg[8]_i_1__6_n_0 ;
  wire \diff_sum_preg[9]_i_1__6_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__6_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__6_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__6_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__1_n_0 ;
  wire \i_V_reg_292[2]_i_1__6_n_0 ;
  wire img_src_c_7_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector33_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__6_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__6_n_0 ;
  wire \r_V_reg_302[8]_i_1__9_n_0 ;
  wire \r_V_reg_302[9]_i_1__5_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire t_V_1_reg_1260;
  wire \t_V_1_reg_126[0]_i_1__6_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1__5_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__6_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__3_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__6_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__3_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__5 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector33_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__5 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__8 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector33_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__5 
       (.I0(\r_V_reg_302[9]_i_1__5_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_7_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \ap_CS_fsm[3]_i_1__7 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__7 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__4
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__4_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_1));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__5
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__5_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__5_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00400040CC4C0040)) 
    ap_enable_reg_pp0_iter1_i_1__7
       (.I0(\r_V_reg_302[9]_i_1__5_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_7_data_str_empty_n),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__7_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_7[0]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_7[10]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_7[11]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_7[12]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_7[13]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_7[14]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_7[15]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_7[1]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_7[2]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_7[3]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_7[4]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_7[5]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_7[6]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_7[7]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_7[8]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_7[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_7_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_7[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_7_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_7_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__6 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[0]_i_1__6_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[10]_i_1__6_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[11]_i_1__6_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[12]_i_1__6_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[13]_i_1__6_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[14]_i_1__6_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[15]_i_1__6_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[1]_i_1__6_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[2]_i_1__6_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[3]_i_1__6_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[4]_i_1__6_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[5]_i_1__6_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[6]_i_1__6_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[7]_i_1__6_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[8]_i_1__6_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_7_ap_vld),
        .D(\diff_sum_preg[9]_i_1__6_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__6 
       (.I0(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_7_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__6 
       (.I0(ap_done_reg),
        .I1(minus_vector33_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__6 
       (.I0(Q[1]),
        .I1(img_src_c_7_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[0]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[10]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[11]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[12]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[13]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[14]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[15]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[1]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[2]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[3]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[4]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[5]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[6]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[7]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[8]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__6_n_0 ),
        .D(\diff_sum_preg[9]_i_1__6_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__6 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__6_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__6_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__1_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__6_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_isr[0]_i_7 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .O(ap_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__18
       (.I0(q0_reg),
        .I1(img_src_c_7_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__7 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector33_maibs mask_7_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_7_data_str_empty_n(img_src_c_7_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__6 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__6 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__6_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__6 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__9 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(\r_V_reg_302[8]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__5 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT5 #(
    .INIT(32'hF0F0E0C0)) 
    \r_V_reg_302[9]_i_2__6 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(\r_V_reg_302[7]_i_1__6_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(\r_V_reg_302[8]_i_1__9_n_0 ),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__5_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__6 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__6 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__6 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__6 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAA08AAAAAAAAAA)) 
    \t_V_1_reg_126[4]_i_1__5 
       (.I0(\r_V_reg_302[9]_i_1__5_n_0 ),
        .I1(q0_reg),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h20002020)) 
    \t_V_1_reg_126[4]_i_2__1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q[1]),
        .I3(img_src_c_7_data_str_empty_n),
        .I4(q0_reg),
        .O(t_V_1_reg_1260));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__6 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(\t_V_1_reg_126[0]_i_1__6_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__6 
       (.I0(ap_done_reg),
        .I1(minus_vector33_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__5 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__6_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__5_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__6 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__6_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__5_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__3 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__6_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__3_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__6 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(t_V_1_reg_126_reg__0[3]),
        .O(\tmp_s_reg_316[0]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__3 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__3_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__3_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector33_maibs" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector33_maibs
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_7_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_7_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_7_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector33_maibs_rom minus_vector33_maibs_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_7_data_str_empty_n(img_src_c_7_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector33_maibs_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector33_maibs_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_7_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_7_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_7[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_7[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_7[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_7[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_7[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_7[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_7[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_7[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_7[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_7[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_7[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_7[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_7[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_7[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_7[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_7[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_7_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_7_ce0;
  wire mask_7_q0;
  wire q0_reg_i_2__6_n_1;
  wire q0_reg_i_2__6_n_2;
  wire q0_reg_i_2__6_n_3;
  wire q0_reg_i_3__6_n_0;
  wire q0_reg_i_3__6_n_1;
  wire q0_reg_i_3__6_n_2;
  wire q0_reg_i_3__6_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_7[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__6_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__6_O_UNCONNECTED;

  CARRY4 \diff_sum_7[11]_INST_0_i_1 
       (.CI(\diff_sum_7[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_7[11]_INST_0_i_1_n_0 ,\diff_sum_7[11]_INST_0_i_1_n_1 ,\diff_sum_7[11]_INST_0_i_1_n_2 ,\diff_sum_7[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_7[15]_INST_0_i_1 
       (.CI(\diff_sum_7[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_7[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_7[15]_INST_0_i_1_n_1 ,\diff_sum_7[15]_INST_0_i_1_n_2 ,\diff_sum_7[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_7[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_7[3]_INST_0_i_1_n_0 ,\diff_sum_7[3]_INST_0_i_1_n_1 ,\diff_sum_7[3]_INST_0_i_1_n_2 ,\diff_sum_7[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_7[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_7[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_7_q0),
        .O(\diff_sum_7[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_7[7]_INST_0_i_1 
       (.CI(\diff_sum_7[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_7[7]_INST_0_i_1_n_0 ,\diff_sum_7[7]_INST_0_i_1_n_1 ,\diff_sum_7[7]_INST_0_i_1_n_2 ,\diff_sum_7[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_01(256'h0001000100010001000000010001000100010001000100010001000100010001),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_03(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000100000001000100010001),
    .INIT_06(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000010001000100010001000100010000000000000000),
    .INIT_09(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_0B(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_0D(256'h0000000000000001000100010001000100010001000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000010001000100010001000100010000),
    .INIT_10(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_12(256'h0000000000010001000100010001000100000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000001000100010001000100010001000000000000),
    .INIT_15(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_17(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_19(256'h0000000000000000000100010001000100010001000100000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000010001000100010001000100010000),
    .INIT_1C(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_1E(256'h0000000100010001000100010001000100000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000010001000100010001000100010000000000000000),
    .INIT_21(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_23(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_25(256'h0000000000010001000100010001000100010000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000001000100010001000100010001000000000000),
    .INIT_28(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_2A(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_2C(256'h0000000000010001000100010001000100010000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000001000100010001000100010001000000000000),
    .INIT_2F(256'h0001000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_7_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mask_7_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hA200)) 
    q0_reg_i_1__1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_src_c_7_data_str_empty_n),
        .I3(\ap_CS_fsm_reg[2] ),
        .O(mask_7_ce0));
  CARRY4 q0_reg_i_2__6
       (.CI(q0_reg_i_3__6_n_0),
        .CO({NLW_q0_reg_i_2__6_CO_UNCONNECTED[3],q0_reg_i_2__6_n_1,q0_reg_i_2__6_n_2,q0_reg_i_2__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__6
       (.CI(1'b0),
        .CO({q0_reg_i_3__6_n_0,q0_reg_i_3__6_n_1,q0_reg_i_3__6_n_2,q0_reg_i_3__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__6_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector34" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector34
   (ap_done_reg,
    q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_8,
    diff_sum_8_ap_vld,
    internal_empty_n_reg,
    int_ap_idle_reg,
    ap_clk,
    ap_done_reg_reg_0,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_8_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    minus_vector34_U0_ap_start,
    \ap_CS_fsm_reg[0]_1 ,
    \ap_CS_fsm_reg[0]_2 ,
    \ap_CS_fsm_reg[0]_3 ,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output ap_done_reg;
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [0:0]Q;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_8;
  output diff_sum_8_ap_vld;
  output internal_empty_n_reg;
  output int_ap_idle_reg;
  input ap_clk;
  input ap_done_reg_reg_0;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_8_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input minus_vector34_U0_ap_start;
  input [0:0]\ap_CS_fsm_reg[0]_1 ;
  input [0:0]\ap_CS_fsm_reg[0]_2 ;
  input [0:0]\ap_CS_fsm_reg[0]_3 ;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [0:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire [0:0]\ap_CS_fsm_reg[0]_1 ;
  wire [0:0]\ap_CS_fsm_reg[0]_2 ;
  wire [0:0]\ap_CS_fsm_reg[0]_3 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_i_1__1_n_0;
  wire ap_done_reg_reg_0;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__1_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__8_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_8;
  wire diff_sum_8_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__7_n_0 ;
  wire \diff_sum_preg[10]_i_1__7_n_0 ;
  wire \diff_sum_preg[11]_i_1__7_n_0 ;
  wire \diff_sum_preg[12]_i_1__7_n_0 ;
  wire \diff_sum_preg[13]_i_1__7_n_0 ;
  wire \diff_sum_preg[14]_i_1__7_n_0 ;
  wire \diff_sum_preg[15]_i_1__7_n_0 ;
  wire \diff_sum_preg[1]_i_1__7_n_0 ;
  wire \diff_sum_preg[2]_i_1__7_n_0 ;
  wire \diff_sum_preg[3]_i_1__7_n_0 ;
  wire \diff_sum_preg[4]_i_1__7_n_0 ;
  wire \diff_sum_preg[5]_i_1__7_n_0 ;
  wire \diff_sum_preg[6]_i_1__7_n_0 ;
  wire \diff_sum_preg[7]_i_1__7_n_0 ;
  wire \diff_sum_preg[8]_i_1__7_n_0 ;
  wire \diff_sum_preg[9]_i_1__7_n_0 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__7_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__7_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__7_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1__0_n_0 ;
  wire \i_V_reg_292[2]_i_1__7_n_0 ;
  wire img_src_c_8_data_str_empty_n;
  wire int_ap_idle_reg;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector34_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__7_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__7_n_0 ;
  wire \r_V_reg_302[9]_i_1__1_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire t_V_1_reg_1260;
  wire \t_V_1_reg_126[0]_i_1__7_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \tmp_6_reg_297[0]_i_1__1_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__7_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__0_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__7_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__0_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg),
        .I2(minus_vector34_U0_ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__1 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__9 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg),
        .I2(minus_vector34_U0_ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(\r_V_reg_302[9]_i_1__1_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_8_data_str_empty_n),
        .I5(Q),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \ap_CS_fsm[3]_i_1__8 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__8 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__1
       (.I0(ap_done_reg),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__1_n_0),
        .Q(ap_done_reg),
        .R(ap_done_reg_reg_0));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__1
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__1_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00400040CC4C0040)) 
    ap_enable_reg_pp0_iter1_i_1__8
       (.I0(\r_V_reg_302[9]_i_1__1_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_8_data_str_empty_n),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__8_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[0]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_8[0]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[10]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_8[10]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[11]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_8[11]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[12]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_8[12]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[13]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_8[13]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[14]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_8[14]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[15]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_8[15]));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[1]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_8[1]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[2]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_8[2]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[3]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_8[3]));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[4]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_8[4]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[5]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_8[5]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[6]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_8[6]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[7]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_8[7]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[8]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_8[8]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_8[9]_INST_0 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_8[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_8_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_8_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__7 
       (.I0(diff_sum_t_3_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[0]_i_1__7_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[10]_i_1__7_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[11]_i_1__7_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[12]_i_1__7_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[13]_i_1__7_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[14]_i_1__7_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[15]_i_1__7_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[1]_i_1__7_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[2]_i_1__7_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[3]_i_1__7_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[4]_i_1__7_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[5]_i_1__7_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[6]_i_1__7_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[7]_i_1__7_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[8]_i_1__7_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_8_ap_vld),
        .D(\diff_sum_preg[9]_i_1__7_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__7 
       (.I0(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_8_data_str_empty_n),
        .I4(Q),
        .O(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__7 
       (.I0(ap_done_reg),
        .I1(minus_vector34_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__7 
       (.I0(Q),
        .I1(img_src_c_8_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[0]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[10]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[11]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[12]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[13]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[14]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[15]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[1]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[2]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[3]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[4]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[5]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[6]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[7]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[8]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__7_n_0 ),
        .D(\diff_sum_preg[9]_i_1__7_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__7_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__7 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__7_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__7_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1__0_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__7_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    int_ap_idle_i_6
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(\ap_CS_fsm_reg[0]_2 ),
        .I3(\ap_CS_fsm_reg[0]_3 ),
        .O(int_ap_idle_reg));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__19
       (.I0(q0_reg),
        .I1(img_src_c_8_data_str_empty_n),
        .I2(Q),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__8 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(Q),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector34_majbC mask_8_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_8_data_str_empty_n(img_src_c_8_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__7 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(Q),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__7 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__7_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__1 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__7 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__1 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2__7 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(\r_V_reg_302[7]_i_1__7_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__1_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__7 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__7 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__7 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__7 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAA08AAAAAAAAAA)) 
    \t_V_1_reg_126[4]_i_1__1 
       (.I0(\r_V_reg_302[9]_i_1__1_n_0 ),
        .I1(q0_reg),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(Q),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h20002020)) 
    \t_V_1_reg_126[4]_i_2__2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q),
        .I3(img_src_c_8_data_str_empty_n),
        .I4(q0_reg),
        .O(t_V_1_reg_1260));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__7 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(\t_V_1_reg_126[0]_i_1__7_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__7 
       (.I0(ap_done_reg),
        .I1(minus_vector34_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__1 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__7_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__1_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__7 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__7_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__1_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__0 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__7_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__0_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__7 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(\tmp_s_reg_316[0]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__0 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .I4(p_shl_cast_fu_168_p1[6]),
        .I5(p_shl_cast_fu_168_p1[5]),
        .O(\tmp_s_reg_316[0]_i_3__0_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__0_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector34_majbC" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector34_majbC
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_8_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_8_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_8_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector34_majbC_rom minus_vector34_majbC_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_8_data_str_empty_n(img_src_c_8_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector34_majbC_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector34_majbC_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_8_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_8_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_8[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_8[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_8[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_8[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_8[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_8[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_8[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_8[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_8[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_8[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_8[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_8[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_8[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_8[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_8[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_8[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_8_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_8_ce0;
  wire mask_8_q0;
  wire q0_reg_i_2__7_n_1;
  wire q0_reg_i_2__7_n_2;
  wire q0_reg_i_2__7_n_3;
  wire q0_reg_i_3__7_n_0;
  wire q0_reg_i_3__7_n_1;
  wire q0_reg_i_3__7_n_2;
  wire q0_reg_i_3__7_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_8[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__7_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__7_O_UNCONNECTED;

  CARRY4 \diff_sum_8[11]_INST_0_i_1 
       (.CI(\diff_sum_8[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_8[11]_INST_0_i_1_n_0 ,\diff_sum_8[11]_INST_0_i_1_n_1 ,\diff_sum_8[11]_INST_0_i_1_n_2 ,\diff_sum_8[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_8[15]_INST_0_i_1 
       (.CI(\diff_sum_8[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_8[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_8[15]_INST_0_i_1_n_1 ,\diff_sum_8[15]_INST_0_i_1_n_2 ,\diff_sum_8[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_8[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_8[3]_INST_0_i_1_n_0 ,\diff_sum_8[3]_INST_0_i_1_n_1 ,\diff_sum_8[3]_INST_0_i_1_n_2 ,\diff_sum_8[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_8[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_8[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_8_q0),
        .O(\diff_sum_8[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_8[7]_INST_0_i_1 
       (.CI(\diff_sum_8[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_8[7]_INST_0_i_1_n_0 ,\diff_sum_8[7]_INST_0_i_1_n_1 ,\diff_sum_8[7]_INST_0_i_1_n_2 ,\diff_sum_8[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0001000100010001000100000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000100000000),
    .INIT_03(256'h0001000100010001000000000000000000000000000000000000000000010001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010000000000000000000000000000),
    .INIT_06(256'h0000000000010001000100010001000100010001000100010000000000000000),
    .INIT_07(256'h0000000000000000000000000001000100010001000100010001000100000000),
    .INIT_08(256'h0001000100010000000000010001000100010001000100010001000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_0A(256'h0001000100010001000100010001000000000001000100010001000100010001),
    .INIT_0B(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000010001000100010001000100000001000100010001),
    .INIT_0D(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000010001000100010001000100010000),
    .INIT_0F(256'h0001000100010000000100010001000100010001000100000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_11(256'h0001000100010001000100010000000000000001000100010001000100010001),
    .INIT_12(256'h0001000100010001000100000000000000000000000000000000000000000001),
    .INIT_13(256'h0001000100010001000100010001000100010000000000000000000100010001),
    .INIT_14(256'h0000000000010001000100010001000100010001000100000000000000000000),
    .INIT_15(256'h0001000100010001000100010001000100010001000100010000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000010001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100010001000100010001000100010000),
    .INIT_18(256'h0001000100010001000100000000000000000000000000000001000100010001),
    .INIT_19(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1A(256'h0000000000010001000100010001000100010001000000000000000000000001),
    .INIT_1B(256'h0000000000010001000100010001000100010001000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000010001000100010001000100010000),
    .INIT_1D(256'h0001000100010001000000010001000100010001000100010000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_1F(256'h0000000000010001000100010001000100010001000100010001000100010000),
    .INIT_20(256'h0001000100000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000001000100010001000100010001000100010001),
    .INIT_22(256'h0001000100010001000100010000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_24(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000010001),
    .INIT_26(256'h0000000100010001000100010001000100010001000100010001000100000000),
    .INIT_27(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000100010001000100010001000100000000000100010001),
    .INIT_29(256'h0000000100010001000100010001000100010000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000010001000100010001000100010001000100010000),
    .INIT_2B(256'h0001000000000000000000000001000100010001000100010001000100010001),
    .INIT_2C(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_2D(256'h0001000100010000000000000000000000000000000000000001000100010001),
    .INIT_2E(256'h0000000000010001000100010001000100010001000100010001000100010001),
    .INIT_2F(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000100010001000100010001),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_8_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mask_8_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hA200)) 
    q0_reg_i_1__2
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_src_c_8_data_str_empty_n),
        .I3(\ap_CS_fsm_reg[2] ),
        .O(mask_8_ce0));
  CARRY4 q0_reg_i_2__7
       (.CI(q0_reg_i_3__7_n_0),
        .CO({NLW_q0_reg_i_2__7_CO_UNCONNECTED[3],q0_reg_i_2__7_n_1,q0_reg_i_2__7_n_2,q0_reg_i_2__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__7
       (.CI(1'b0),
        .CO({q0_reg_i_3__7_n_0,q0_reg_i_3__7_n_1,q0_reg_i_3__7_n_2,q0_reg_i_3__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__7_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector35" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector35
   (q0_reg,
    \mOutPtr_reg[0] ,
    Q,
    ap_done_reg_reg_0,
    \ap_CS_fsm_reg[0]_0 ,
    diff_sum_9,
    diff_sum_9_ap_vld,
    internal_empty_n_reg,
    ap_clk,
    ap_done_reg_reg_1,
    \exitcond_i_reg_419_reg[0] ,
    img_src_c_9_data_str_empty_n,
    \mOutPtr_reg[0]_0 ,
    ap_rst_n,
    ap_done_reg,
    \t_V_reg_114_reg[1]_0 ,
    minus_vector35_U0_ap_start,
    \mOutPtr_reg[1] ,
    ap_rst_n_inv);
  output q0_reg;
  output \mOutPtr_reg[0] ;
  output [1:0]Q;
  output ap_done_reg_reg_0;
  output \ap_CS_fsm_reg[0]_0 ;
  output [15:0]diff_sum_9;
  output diff_sum_9_ap_vld;
  output internal_empty_n_reg;
  input ap_clk;
  input ap_done_reg_reg_1;
  input \exitcond_i_reg_419_reg[0] ;
  input img_src_c_9_data_str_empty_n;
  input \mOutPtr_reg[0]_0 ;
  input ap_rst_n;
  input ap_done_reg;
  input \t_V_reg_114_reg[1]_0 ;
  input minus_vector35_U0_ap_start;
  input \mOutPtr_reg[1] ;
  input ap_rst_n_inv;

  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done_reg;
  wire ap_done_reg_0;
  wire ap_done_reg_i_1__3_n_0;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__4_n_0;
  wire ap_enable_reg_pp0_iter1_i_1__9_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]diff_sum_9;
  wire diff_sum_9_ap_vld;
  wire [15:0]diff_sum_preg;
  wire \diff_sum_preg[0]_i_1__8_n_0 ;
  wire \diff_sum_preg[10]_i_1__8_n_0 ;
  wire \diff_sum_preg[11]_i_1__8_n_0 ;
  wire \diff_sum_preg[12]_i_1__8_n_0 ;
  wire \diff_sum_preg[13]_i_1__8_n_0 ;
  wire \diff_sum_preg[14]_i_1__8_n_0 ;
  wire \diff_sum_preg[15]_i_1__8_n_0 ;
  wire \diff_sum_preg[1]_i_1__8_n_0 ;
  wire \diff_sum_preg[2]_i_1__8_n_0 ;
  wire \diff_sum_preg[3]_i_1__8_n_0 ;
  wire \diff_sum_preg[4]_i_1__8_n_0 ;
  wire \diff_sum_preg[5]_i_1__8_n_0 ;
  wire \diff_sum_preg[6]_i_1__8_n_0 ;
  wire \diff_sum_preg[7]_i_1__8_n_0 ;
  wire \diff_sum_preg[8]_i_1__8_n_0 ;
  wire \diff_sum_preg[9]_i_1__8_n_0 ;
  wire [15:0]diff_sum_t_1_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire \diff_sum_t_fu_84[15]_i_1__8_n_0 ;
  wire \diff_sum_t_fu_84[15]_i_2__8_n_0 ;
  wire \exitcond_i_reg_419_reg[0] ;
  wire exitcond_reg_307;
  wire \exitcond_reg_307[0]_i_1__8_n_0 ;
  wire [4:3]i_V_fu_148_p2;
  wire [4:0]i_V_reg_292;
  wire \i_V_reg_292[0]_i_1_n_0 ;
  wire \i_V_reg_292[2]_i_1__8_n_0 ;
  wire img_src_c_9_data_str_empty_n;
  wire internal_empty_n_reg;
  wire [4:1]j_V_fu_196_p2;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire minus_vector35_U0_ap_start;
  wire or_cond_fu_234_p2;
  wire or_cond_reg_326;
  wire \or_cond_reg_326[0]_i_1__8_n_0 ;
  wire [7:1]p_0_in1_in;
  wire p_8_in;
  wire [9:5]p_shl_cast_fu_168_p1;
  wire q0_reg;
  wire q0_reg_i_5_n_0;
  wire q0_reg_i_6_n_0;
  wire q0_reg_i_7_n_0;
  wire [9:2]r_V_reg_302;
  wire \r_V_reg_302[7]_i_1__8_n_0 ;
  wire \r_V_reg_302[9]_i_1__4_n_0 ;
  wire [2:0]sum_cast_fu_223_p1;
  wire t_V_1_reg_126;
  wire t_V_1_reg_1260;
  wire \t_V_1_reg_126[0]_i_1__8_n_0 ;
  wire [1:1]t_V_1_reg_126_reg;
  wire [4:2]t_V_1_reg_126_reg__0;
  wire t_V_reg_114;
  wire \t_V_reg_114_reg[1]_0 ;
  wire \tmp_6_reg_297[0]_i_1__4_n_0 ;
  wire \tmp_6_reg_297[0]_i_2__8_n_0 ;
  wire \tmp_6_reg_297_reg_n_0_[0] ;
  wire \tmp_s_reg_316[0]_i_1__9_n_0 ;
  wire \tmp_s_reg_316[0]_i_2__8_n_0 ;
  wire \tmp_s_reg_316[0]_i_3__9_n_0 ;
  wire \tmp_s_reg_316_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hDF55)) 
    \ap_CS_fsm[0]_i_1__4 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(ap_done_reg_0),
        .I2(minus_vector35_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ap_CS_fsm[0]_i_2__4 
       (.I0(p_shl_cast_fu_168_p1[6]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[9]),
        .I4(p_shl_cast_fu_168_p1[8]),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ap_CS_fsm[1]_i_1__10 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_done_reg_0),
        .I2(minus_vector35_U0_ap_start),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hBFBFFFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__4 
       (.I0(\r_V_reg_302[9]_i_1__4_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(q0_reg),
        .I4(img_src_c_9_data_str_empty_n),
        .I5(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \ap_CS_fsm[3]_i_1__9 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(q0_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[3]_i_2__9 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(t_V_1_reg_126_reg__0[2]),
        .I3(t_V_1_reg_126_reg),
        .I4(sum_cast_fu_223_p1[0]),
        .O(ap_condition_pp0_exit_iter0_state3));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_done_reg_i_1__3
       (.I0(ap_done_reg_0),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done_reg_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__3_n_0),
        .Q(ap_done_reg_0),
        .R(ap_done_reg_reg_1));
  LUT5 #(
    .INIT(32'h70707000)) 
    ap_enable_reg_pp0_iter0_i_1__4
       (.I0(p_8_in),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(ap_rst_n),
        .I3(\r_V_reg_302[9]_i_1__4_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__4_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00400040CC4C0040)) 
    ap_enable_reg_pp0_iter1_i_1__9
       (.I0(\r_V_reg_302[9]_i_1__4_n_0 ),
        .I1(ap_rst_n),
        .I2(q0_reg),
        .I3(img_src_c_9_data_str_empty_n),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(ap_enable_reg_pp0_iter1_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__9_n_0),
        .Q(q0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[0]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[0]),
        .O(diff_sum_9[0]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[10]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[10]),
        .O(diff_sum_9[10]));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[11]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[11]),
        .O(diff_sum_9[11]));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[12]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[12]),
        .O(diff_sum_9[12]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[13]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[13]),
        .O(diff_sum_9[13]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[14]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[14]),
        .O(diff_sum_9[14]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[15]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[15]),
        .O(diff_sum_9[15]));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[1]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[1]),
        .O(diff_sum_9[1]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[2]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[2]),
        .O(diff_sum_9[2]));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[3]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[3]),
        .O(diff_sum_9[3]));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[4]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[4]),
        .O(diff_sum_9[4]));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[5]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[5]),
        .O(diff_sum_9[5]));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[6]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[6]),
        .O(diff_sum_9[6]));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[7]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[7]),
        .O(diff_sum_9[7]));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[8]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[8]),
        .O(diff_sum_9[8]));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \diff_sum_9[9]_INST_0 
       (.I0(diff_sum_t_1_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(diff_sum_9_ap_vld),
        .I3(diff_sum_preg[9]),
        .O(diff_sum_9[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    diff_sum_9_ap_vld_INST_0
       (.I0(or_cond_reg_326),
        .I1(Q[1]),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(q0_reg),
        .O(diff_sum_9_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[0]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[0]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[10]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[10]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[10]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[11]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[11]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[11]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[12]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[12]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[12]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[13]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[13]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[13]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[14]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[14]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[14]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[15]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[15]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[15]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[1]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[1]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[1]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[2]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[2]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[2]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[3]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[3]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[3]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[4]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[4]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[4]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[5]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[5]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[5]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[6]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[6]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[6]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[7]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[7]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[7]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[8]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[8]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[8]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \diff_sum_preg[9]_i_1__8 
       (.I0(diff_sum_t_1_fu_260_p3[9]),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .O(\diff_sum_preg[9]_i_1__8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[0] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[0]_i_1__8_n_0 ),
        .Q(diff_sum_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[10] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[10]_i_1__8_n_0 ),
        .Q(diff_sum_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[11] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[11]_i_1__8_n_0 ),
        .Q(diff_sum_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[12] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[12]_i_1__8_n_0 ),
        .Q(diff_sum_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[13] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[13]_i_1__8_n_0 ),
        .Q(diff_sum_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[14] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[14]_i_1__8_n_0 ),
        .Q(diff_sum_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[15] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[15]_i_1__8_n_0 ),
        .Q(diff_sum_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[1] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[1]_i_1__8_n_0 ),
        .Q(diff_sum_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[2] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[2]_i_1__8_n_0 ),
        .Q(diff_sum_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[3] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[3]_i_1__8_n_0 ),
        .Q(diff_sum_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[4] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[4]_i_1__8_n_0 ),
        .Q(diff_sum_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[5] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[5]_i_1__8_n_0 ),
        .Q(diff_sum_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[6] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[6]_i_1__8_n_0 ),
        .Q(diff_sum_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[7] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[7]_i_1__8_n_0 ),
        .Q(diff_sum_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[8] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[8]_i_1__8_n_0 ),
        .Q(diff_sum_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \diff_sum_preg_reg[9] 
       (.C(ap_clk),
        .CE(diff_sum_9_ap_vld),
        .D(\diff_sum_preg[9]_i_1__8_n_0 ),
        .Q(diff_sum_preg[9]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \diff_sum_t_fu_84[15]_i_1__8 
       (.I0(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .I1(exitcond_reg_307),
        .I2(q0_reg),
        .I3(img_src_c_9_data_str_empty_n),
        .I4(Q[1]),
        .O(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \diff_sum_t_fu_84[15]_i_2__8 
       (.I0(ap_done_reg_0),
        .I1(minus_vector35_U0_ap_start),
        .I2(Q[0]),
        .I3(exitcond_reg_307),
        .I4(q0_reg),
        .I5(p_8_in),
        .O(\diff_sum_t_fu_84[15]_i_2__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \diff_sum_t_fu_84[15]_i_3__8 
       (.I0(Q[1]),
        .I1(img_src_c_9_data_str_empty_n),
        .I2(q0_reg),
        .O(p_8_in));
  FDRE \diff_sum_t_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[0]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[0]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[10]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[10]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[11]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[11]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[12]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[12]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[13]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[13]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[14]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[14]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[15]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[15]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[1]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[1]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[2]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[2]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[3]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[3]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[4]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[4]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[5]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[5]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[6]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[6]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[7]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[7]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[8]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[8]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  FDRE \diff_sum_t_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(\diff_sum_t_fu_84[15]_i_2__8_n_0 ),
        .D(\diff_sum_preg[9]_i_1__8_n_0 ),
        .Q(diff_sum_t_fu_84[9]),
        .R(\diff_sum_t_fu_84[15]_i_1__8_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \exitcond_reg_307[0]_i_1__8 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(Q[1]),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(q0_reg),
        .I4(exitcond_reg_307),
        .O(\exitcond_reg_307[0]_i_1__8_n_0 ));
  FDRE \exitcond_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_307[0]_i_1__8_n_0 ),
        .Q(exitcond_reg_307),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_292[0]_i_1 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_292[1]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_292[2]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(\i_V_reg_292[2]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_292[3]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .O(i_V_fu_148_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_292[4]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[9]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(i_V_fu_148_p2[4]));
  FDRE \i_V_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[0]_i_1_n_0 ),
        .Q(i_V_reg_292[0]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_0_in1_in[1]),
        .Q(i_V_reg_292[1]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_V_reg_292[2]_i_1__8_n_0 ),
        .Q(i_V_reg_292[2]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[3]),
        .Q(i_V_reg_292[3]),
        .R(1'b0));
  FDRE \i_V_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_148_p2[4]),
        .Q(i_V_reg_292[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \int_isr[0]_i_9 
       (.I0(ap_done_reg_0),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(ap_done_reg),
        .I3(\t_V_reg_114_reg[1]_0 ),
        .O(ap_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__20
       (.I0(q0_reg),
        .I1(img_src_c_9_data_str_empty_n),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \mOutPtr[0]_i_1__9 
       (.I0(\exitcond_i_reg_419_reg[0] ),
        .I1(q0_reg),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr_reg[0] ));
  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector35_makbM mask_9_U
       (.ADDRARDADDR({sum_cast_fu_223_p1[2],t_V_1_reg_126_reg,sum_cast_fu_223_p1[0]}),
        .Q(r_V_reg_302),
        .S({q0_reg_i_5_n_0,q0_reg_i_6_n_0,q0_reg_i_7_n_0}),
        .\ap_CS_fsm_reg[2] (Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(q0_reg),
        .diff_sum_t_1_fu_260_p3(diff_sum_t_1_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_9_data_str_empty_n(img_src_c_9_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \or_cond_reg_326[0]_i_1__8 
       (.I0(or_cond_fu_234_p2),
        .I1(q0_reg),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(or_cond_reg_326),
        .O(\or_cond_reg_326[0]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \or_cond_reg_326[0]_i_2__8 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(t_V_1_reg_126_reg),
        .I2(sum_cast_fu_223_p1[0]),
        .I3(\tmp_6_reg_297_reg_n_0_[0] ),
        .I4(t_V_1_reg_126_reg__0[3]),
        .I5(t_V_1_reg_126_reg__0[4]),
        .O(or_cond_fu_234_p2));
  FDRE \or_cond_reg_326_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\or_cond_reg_326[0]_i_1__8_n_0 ),
        .Q(or_cond_reg_326),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_4
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(sum_cast_fu_223_p1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_5
       (.I0(r_V_reg_302[4]),
        .I1(t_V_1_reg_126_reg__0[4]),
        .O(q0_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_6
       (.I0(r_V_reg_302[3]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .O(q0_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_reg_i_7
       (.I0(r_V_reg_302[2]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .O(q0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \r_V_reg_302[4]_i_1__4 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT4 #(
    .INIT(16'hAA56)) 
    \r_V_reg_302[5]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[6]),
        .I3(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT5 #(
    .INIT(32'hF50B0AF4)) 
    \r_V_reg_302[6]_i_1__0 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[7]),
        .I2(p_shl_cast_fu_168_p1[8]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .O(p_0_in1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT5 #(
    .INIT(32'h2F02D0FC)) 
    \r_V_reg_302[7]_i_1__8 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(\r_V_reg_302[7]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT5 #(
    .INIT(32'hAE10AE50)) 
    \r_V_reg_302[8]_i_1__5 
       (.I0(p_shl_cast_fu_168_p1[7]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[8]),
        .I4(p_shl_cast_fu_168_p1[5]),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \r_V_reg_302[9]_i_1__4 
       (.I0(ap_CS_fsm_state2),
        .I1(p_shl_cast_fu_168_p1[6]),
        .I2(p_shl_cast_fu_168_p1[5]),
        .I3(p_shl_cast_fu_168_p1[7]),
        .I4(p_shl_cast_fu_168_p1[9]),
        .I5(p_shl_cast_fu_168_p1[8]),
        .O(\r_V_reg_302[9]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT5 #(
    .INIT(32'hF0F0E0A0)) 
    \r_V_reg_302[9]_i_2__8 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(p_shl_cast_fu_168_p1[7]),
        .O(p_0_in1_in[7]));
  FDRE \r_V_reg_302_reg[2] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_shl_cast_fu_168_p1[5]),
        .Q(r_V_reg_302[2]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[3] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(r_V_reg_302[3]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[4] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(r_V_reg_302[4]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[5] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(r_V_reg_302[5]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[6] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(r_V_reg_302[6]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[7] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(\r_V_reg_302[7]_i_1__8_n_0 ),
        .Q(r_V_reg_302[7]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[8] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(r_V_reg_302[8]),
        .R(1'b0));
  FDRE \r_V_reg_302_reg[9] 
       (.C(ap_clk),
        .CE(\r_V_reg_302[9]_i_1__4_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(r_V_reg_302[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_126[0]_i_1__8 
       (.I0(sum_cast_fu_223_p1[0]),
        .O(\t_V_1_reg_126[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_126[1]_i_1__8 
       (.I0(t_V_1_reg_126_reg),
        .I1(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_126[2]_i_1__8 
       (.I0(t_V_1_reg_126_reg__0[2]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .O(j_V_fu_196_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_126[3]_i_1__8 
       (.I0(t_V_1_reg_126_reg__0[3]),
        .I1(t_V_1_reg_126_reg__0[2]),
        .I2(t_V_1_reg_126_reg),
        .I3(sum_cast_fu_223_p1[0]),
        .O(j_V_fu_196_p2[3]));
  LUT6 #(
    .INIT(64'hAAAA08AAAAAAAAAA)) 
    \t_V_1_reg_126[4]_i_1__4 
       (.I0(\r_V_reg_302[9]_i_1__4_n_0 ),
        .I1(q0_reg),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(Q[1]),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(ap_enable_reg_pp0_iter0),
        .O(t_V_1_reg_126));
  LUT5 #(
    .INIT(32'h20002020)) 
    \t_V_1_reg_126[4]_i_2__3 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q[1]),
        .I3(img_src_c_9_data_str_empty_n),
        .I4(q0_reg),
        .O(t_V_1_reg_1260));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_126[4]_i_3__8 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(sum_cast_fu_223_p1[0]),
        .I2(t_V_1_reg_126_reg),
        .I3(t_V_1_reg_126_reg__0[2]),
        .I4(t_V_1_reg_126_reg__0[3]),
        .O(j_V_fu_196_p2[4]));
  FDRE \t_V_1_reg_126_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(\t_V_1_reg_126[0]_i_1__8_n_0 ),
        .Q(sum_cast_fu_223_p1[0]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[1]),
        .Q(t_V_1_reg_126_reg),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[2]),
        .Q(t_V_1_reg_126_reg__0[2]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[3]),
        .Q(t_V_1_reg_126_reg__0[3]),
        .R(t_V_1_reg_126));
  FDRE \t_V_1_reg_126_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1260),
        .D(j_V_fu_196_p2[4]),
        .Q(t_V_1_reg_126_reg__0[4]),
        .R(t_V_1_reg_126));
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_reg_114[4]_i_1__8 
       (.I0(ap_done_reg_0),
        .I1(minus_vector35_U0_ap_start),
        .I2(Q[0]),
        .I3(ap_CS_fsm_state5),
        .O(t_V_reg_114));
  FDRE \t_V_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[0]),
        .Q(p_shl_cast_fu_168_p1[5]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[1]),
        .Q(p_shl_cast_fu_168_p1[6]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[2]),
        .Q(p_shl_cast_fu_168_p1[7]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[3]),
        .Q(p_shl_cast_fu_168_p1[8]),
        .R(t_V_reg_114));
  FDRE \t_V_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_292[4]),
        .Q(p_shl_cast_fu_168_p1[9]),
        .R(t_V_reg_114));
  LUT6 #(
    .INIT(64'h000000C0AAAAAAAA)) 
    \tmp_6_reg_297[0]_i_1__4 
       (.I0(\tmp_6_reg_297_reg_n_0_[0] ),
        .I1(p_shl_cast_fu_168_p1[8]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(\tmp_6_reg_297[0]_i_2__8_n_0 ),
        .I4(p_shl_cast_fu_168_p1[7]),
        .I5(\r_V_reg_302[9]_i_1__4_n_0 ),
        .O(\tmp_6_reg_297[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_6_reg_297[0]_i_2__8 
       (.I0(p_shl_cast_fu_168_p1[5]),
        .I1(p_shl_cast_fu_168_p1[6]),
        .O(\tmp_6_reg_297[0]_i_2__8_n_0 ));
  FDRE \tmp_6_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_6_reg_297[0]_i_1__4_n_0 ),
        .Q(\tmp_6_reg_297_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC8C8C8C)) 
    \tmp_s_reg_316[0]_i_1__9 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(\tmp_s_reg_316_reg_n_0_[0] ),
        .I2(p_8_in),
        .I3(\tmp_s_reg_316[0]_i_2__8_n_0 ),
        .I4(\tmp_s_reg_316[0]_i_3__9_n_0 ),
        .O(\tmp_s_reg_316[0]_i_1__9_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_s_reg_316[0]_i_2__8 
       (.I0(p_shl_cast_fu_168_p1[8]),
        .I1(t_V_1_reg_126_reg__0[3]),
        .I2(p_shl_cast_fu_168_p1[9]),
        .I3(t_V_1_reg_126_reg__0[2]),
        .O(\tmp_s_reg_316[0]_i_2__8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmp_s_reg_316[0]_i_3__9 
       (.I0(t_V_1_reg_126_reg__0[4]),
        .I1(p_shl_cast_fu_168_p1[5]),
        .I2(p_shl_cast_fu_168_p1[7]),
        .I3(p_shl_cast_fu_168_p1[6]),
        .I4(sum_cast_fu_223_p1[0]),
        .I5(t_V_1_reg_126_reg),
        .O(\tmp_s_reg_316[0]_i_3__9_n_0 ));
  FDRE \tmp_s_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_s_reg_316[0]_i_1__9_n_0 ),
        .Q(\tmp_s_reg_316_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "minus_vector35_makbM" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector35_makbM
   (diff_sum_t_1_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_9_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_1_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_9_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_1_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_9_data_str_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector35_makbM_rom minus_vector35_makbM_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_1_fu_260_p3(diff_sum_t_1_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_9_data_str_empty_n(img_src_c_9_data_str_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector35_makbM_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector35_makbM_rom
   (diff_sum_t_1_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_9_data_str_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_1_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_9_data_str_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_9[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_9[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_9[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_9[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_9[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_9[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_9[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_9[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_9[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_9[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_9[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_9[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_9[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_9[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_9[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_9[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_1_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_9_data_str_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_9_ce0;
  wire mask_9_q0;
  wire q0_reg_i_2__8_n_1;
  wire q0_reg_i_2__8_n_2;
  wire q0_reg_i_2__8_n_3;
  wire q0_reg_i_3__8_n_0;
  wire q0_reg_i_3__8_n_1;
  wire q0_reg_i_3__8_n_2;
  wire q0_reg_i_3__8_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_9[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__8_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__8_O_UNCONNECTED;

  CARRY4 \diff_sum_9[11]_INST_0_i_1 
       (.CI(\diff_sum_9[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_9[11]_INST_0_i_1_n_0 ,\diff_sum_9[11]_INST_0_i_1_n_1 ,\diff_sum_9[11]_INST_0_i_1_n_2 ,\diff_sum_9[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_1_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_9[15]_INST_0_i_1 
       (.CI(\diff_sum_9[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_9[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_9[15]_INST_0_i_1_n_1 ,\diff_sum_9[15]_INST_0_i_1_n_2 ,\diff_sum_9[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_1_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_9[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_9[3]_INST_0_i_1_n_0 ,\diff_sum_9[3]_INST_0_i_1_n_1 ,\diff_sum_9[3]_INST_0_i_1_n_2 ,\diff_sum_9[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_1_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_9[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_9[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_9_q0),
        .O(\diff_sum_9[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_9[7]_INST_0_i_1 
       (.CI(\diff_sum_9[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_9[7]_INST_0_i_1_n_0 ,\diff_sum_9[7]_INST_0_i_1_n_1 ,\diff_sum_9[7]_INST_0_i_1_n_2 ,\diff_sum_9[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_1_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_02(256'h0001000100010001000100010001000100010001000100010001000000000000),
    .INIT_03(256'h0001000100010001000000000000000000000000000000000000000000010001),
    .INIT_04(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_05(256'h0001000100010001000100010001000100010001000000000000000000000000),
    .INIT_06(256'h0000000000010001000100010001000100010001000100010001000100010001),
    .INIT_07(256'h0000000000000000000000000001000100010001000100010001000100010000),
    .INIT_08(256'h0001000100010000000000010001000100010001000100010001000100000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_0A(256'h0000000100010001000100010001000100000001000100010001000100010001),
    .INIT_0B(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000010001000100010001000100010001000100010001),
    .INIT_0D(256'h0001000100010001000100010001000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000001000100010001000100010001),
    .INIT_0F(256'h0001000100010001000100010001000100010001000100000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000100010001),
    .INIT_11(256'h0001000100010001000100010001000100010001000100010001000100010000),
    .INIT_12(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000001000100010001000100010001000100000001000100010001),
    .INIT_14(256'h0000000100010001000100010001000100010000000000000000000000000000),
    .INIT_15(256'h0001000000010001000100010001000100010001000100010001000100000000),
    .INIT_16(256'h0001000000000000000000010001000100010001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_18(256'h0001000100000000000000000000000000000000000100010001000100010001),
    .INIT_19(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1A(256'h0001000100010000000000000000000000000000000000000000000000010001),
    .INIT_1B(256'h0000000000000001000100010001000100010001000100010001000100010001),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000100010001000100010001000100010000),
    .INIT_1E(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_20(256'h0001000100010001000100010001000100010000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000001000100010001000100010001000100000000),
    .INIT_23(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_25(256'h0001000100010001000100010001000100010000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000010001000100010001000100010001000100000000),
    .INIT_28(256'h0001000100010001000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000010001000100010001),
    .INIT_2A(256'h0001000100010001000100010001000100010000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000001000100010001000100010001000100010000),
    .INIT_2D(256'h0001000100010000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_2F(256'h0000000000010001000100000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_9_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mask_9_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hA200)) 
    q0_reg_i_1__3
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_src_c_9_data_str_empty_n),
        .I3(\ap_CS_fsm_reg[2] ),
        .O(mask_9_ce0));
  CARRY4 q0_reg_i_2__8
       (.CI(q0_reg_i_3__8_n_0),
        .CO({NLW_q0_reg_i_2__8_CO_UNCONNECTED[3],q0_reg_i_2__8_n_1,q0_reg_i_2__8_n_2,q0_reg_i_2__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__8
       (.CI(1'b0),
        .CO({q0_reg_i_3__8_n_0,q0_reg_i_3__8_n_1,q0_reg_i_3__8_n_2,q0_reg_i_3__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__8_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "minus_vector_masklbW" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector_masklbW
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_10_data_st_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_10_data_st_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_10_data_st_empty_n;
  wire \mOutPtr_reg[1] ;

  m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector_masklbW_rom minus_vector_masklbW_rom_U
       (.ADDRARDADDR(ADDRARDADDR),
        .Q(Q),
        .S(S),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .diff_sum_t_3_fu_260_p3(diff_sum_t_3_fu_260_p3),
        .diff_sum_t_fu_84(diff_sum_t_fu_84),
        .img_src_c_10_data_st_empty_n(img_src_c_10_data_st_empty_n),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ));
endmodule

(* ORIG_REF_NAME = "minus_vector_masklbW_rom" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_minus_vector_masklbW_rom
   (diff_sum_t_3_fu_260_p3,
    ap_clk,
    ADDRARDADDR,
    diff_sum_t_fu_84,
    Q,
    S,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    img_src_c_10_data_st_empty_n,
    \ap_CS_fsm_reg[2] ,
    \mOutPtr_reg[1] );
  output [15:0]diff_sum_t_3_fu_260_p3;
  input ap_clk;
  input [2:0]ADDRARDADDR;
  input [15:0]diff_sum_t_fu_84;
  input [7:0]Q;
  input [2:0]S;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input img_src_c_10_data_st_empty_n;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input \mOutPtr_reg[1] ;

  wire [2:0]ADDRARDADDR;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire \diff_sum_10[11]_INST_0_i_1_n_0 ;
  wire \diff_sum_10[11]_INST_0_i_1_n_1 ;
  wire \diff_sum_10[11]_INST_0_i_1_n_2 ;
  wire \diff_sum_10[11]_INST_0_i_1_n_3 ;
  wire \diff_sum_10[15]_INST_0_i_1_n_1 ;
  wire \diff_sum_10[15]_INST_0_i_1_n_2 ;
  wire \diff_sum_10[15]_INST_0_i_1_n_3 ;
  wire \diff_sum_10[3]_INST_0_i_1_n_0 ;
  wire \diff_sum_10[3]_INST_0_i_1_n_1 ;
  wire \diff_sum_10[3]_INST_0_i_1_n_2 ;
  wire \diff_sum_10[3]_INST_0_i_1_n_3 ;
  wire \diff_sum_10[3]_INST_0_i_2_n_0 ;
  wire \diff_sum_10[7]_INST_0_i_1_n_0 ;
  wire \diff_sum_10[7]_INST_0_i_1_n_1 ;
  wire \diff_sum_10[7]_INST_0_i_1_n_2 ;
  wire \diff_sum_10[7]_INST_0_i_1_n_3 ;
  wire [15:0]diff_sum_t_3_fu_260_p3;
  wire [15:0]diff_sum_t_fu_84;
  wire img_src_c_10_data_st_empty_n;
  wire \mOutPtr_reg[1] ;
  wire mask_10_ce0;
  wire mask_10_q0;
  wire q0_reg_i_2__9_n_1;
  wire q0_reg_i_2__9_n_2;
  wire q0_reg_i_2__9_n_3;
  wire q0_reg_i_3__9_n_0;
  wire q0_reg_i_3__9_n_1;
  wire q0_reg_i_3__9_n_2;
  wire q0_reg_i_3__9_n_3;
  wire [9:3]sum_cast_fu_223_p1;
  wire [3:3]\NLW_diff_sum_10[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [15:1]NLW_q0_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;
  wire [3:3]NLW_q0_reg_i_2__9_CO_UNCONNECTED;
  wire [0:0]NLW_q0_reg_i_3__9_O_UNCONNECTED;

  CARRY4 \diff_sum_10[11]_INST_0_i_1 
       (.CI(\diff_sum_10[7]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_10[11]_INST_0_i_1_n_0 ,\diff_sum_10[11]_INST_0_i_1_n_1 ,\diff_sum_10[11]_INST_0_i_1_n_2 ,\diff_sum_10[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[11:8]),
        .S(diff_sum_t_fu_84[11:8]));
  CARRY4 \diff_sum_10[15]_INST_0_i_1 
       (.CI(\diff_sum_10[11]_INST_0_i_1_n_0 ),
        .CO({\NLW_diff_sum_10[15]_INST_0_i_1_CO_UNCONNECTED [3],\diff_sum_10[15]_INST_0_i_1_n_1 ,\diff_sum_10[15]_INST_0_i_1_n_2 ,\diff_sum_10[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[15:12]),
        .S(diff_sum_t_fu_84[15:12]));
  CARRY4 \diff_sum_10[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\diff_sum_10[3]_INST_0_i_1_n_0 ,\diff_sum_10[3]_INST_0_i_1_n_1 ,\diff_sum_10[3]_INST_0_i_1_n_2 ,\diff_sum_10[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,diff_sum_t_fu_84[0]}),
        .O(diff_sum_t_3_fu_260_p3[3:0]),
        .S({diff_sum_t_fu_84[3:1],\diff_sum_10[3]_INST_0_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \diff_sum_10[3]_INST_0_i_2 
       (.I0(diff_sum_t_fu_84[0]),
        .I1(\mOutPtr_reg[1] ),
        .I2(mask_10_q0),
        .O(\diff_sum_10[3]_INST_0_i_2_n_0 ));
  CARRY4 \diff_sum_10[7]_INST_0_i_1 
       (.CI(\diff_sum_10[3]_INST_0_i_1_n_0 ),
        .CO({\diff_sum_10[7]_INST_0_i_1_n_0 ,\diff_sum_10[7]_INST_0_i_1_n_1 ,\diff_sum_10[7]_INST_0_i_1_n_2 ,\diff_sum_10[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_sum_t_3_fu_260_p3[7:4]),
        .S(diff_sum_t_fu_84[7:4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_16(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_17(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_18(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_19(256'h0001000100010001000100010001000100010001000100010001000100010001),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000001000100010001),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({sum_cast_fu_223_p1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_q0_reg_DOADO_UNCONNECTED[15:1],mask_10_q0}),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mask_10_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hA200)) 
    q0_reg_i_1__4
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(img_src_c_10_data_st_empty_n),
        .I3(\ap_CS_fsm_reg[2] ),
        .O(mask_10_ce0));
  CARRY4 q0_reg_i_2__9
       (.CI(q0_reg_i_3__9_n_0),
        .CO({NLW_q0_reg_i_2__9_CO_UNCONNECTED[3],q0_reg_i_2__9_n_1,q0_reg_i_2__9_n_2,q0_reg_i_2__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_cast_fu_223_p1[9:6]),
        .S(Q[7:4]));
  CARRY4 q0_reg_i_3__9
       (.CI(1'b0),
        .CO({q0_reg_i_3__9_n_0,q0_reg_i_3__9_n_1,q0_reg_i_3__9_n_2,q0_reg_i_3__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[2:0]}),
        .O({sum_cast_fu_223_p1[5:3],NLW_q0_reg_i_3__9_O_UNCONNECTED[0]}),
        .S({Q[3],S}));
endmodule

(* ORIG_REF_NAME = "start_for_Duplicamb6" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_Duplicamb6
   (start_for_Duplicate_my_U0_full_n,
    Duplicate_my_U0_ap_start,
    ap_idle,
    int_ap_idle_reg,
    ap_clk,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n,
    internal_empty_n_reg_0,
    Block_proc_U0_ap_start,
    start_once_reg,
    \ap_CS_fsm_reg[0] ,
    internal_empty_n_reg_1,
    Q,
    minus_vector28_U0_ap_start,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    internal_full_n_reg_2,
    start_once_reg_0,
    CO,
    \ap_CS_fsm_reg[1]_0 ,
    int_ap_start_reg,
    ap_rst_n_inv);
  output start_for_Duplicate_my_U0_full_n;
  output Duplicate_my_U0_ap_start;
  output ap_idle;
  output int_ap_idle_reg;
  input ap_clk;
  input \ap_CS_fsm_reg[1] ;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input Block_proc_U0_ap_start;
  input start_once_reg;
  input \ap_CS_fsm_reg[0] ;
  input internal_empty_n_reg_1;
  input [0:0]Q;
  input minus_vector28_U0_ap_start;
  input internal_full_n_reg_0;
  input internal_full_n_reg_1;
  input internal_full_n_reg_2;
  input start_once_reg_0;
  input [0:0]CO;
  input [0:0]\ap_CS_fsm_reg[1]_0 ;
  input int_ap_start_reg;
  input ap_rst_n_inv;

  wire Block_proc_U0_ap_start;
  wire [0:0]CO;
  wire Duplicate_my_U0_ap_start;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire int_ap_idle_reg;
  wire int_ap_start_reg;
  wire internal_empty_n_i_1__10_n_0;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__10_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire internal_full_n_reg_2;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector28_U0_ap_start;
  wire start_for_Duplicate_my_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_0;

  LUT5 #(
    .INIT(32'h5555FFF7)) 
    \ap_CS_fsm[0]_i_2__10 
       (.I0(Duplicate_my_U0_ap_start),
        .I1(internal_full_n_reg_0),
        .I2(internal_full_n_reg_1),
        .I3(internal_full_n_reg_2),
        .I4(start_once_reg_0),
        .O(int_ap_idle_reg));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    int_ap_idle_i_1
       (.I0(int_ap_idle_reg),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(internal_empty_n_reg_1),
        .I3(Block_proc_U0_ap_start),
        .I4(Q),
        .I5(minus_vector28_U0_ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__10
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(\mOutPtr[1]_i_2_n_0 ),
        .I4(Duplicate_my_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__10_n_0),
        .Q(Duplicate_my_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__10
       (.I0(ap_rst_n),
        .I1(start_for_Duplicate_my_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(\mOutPtr[1]_i_2_n_0 ),
        .I5(internal_empty_n_reg_0),
        .O(internal_full_n_i_1__10_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__10_n_0),
        .Q(start_for_Duplicate_my_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7F807F80807F80)) 
    \mOutPtr[0]_i_1 
       (.I0(Duplicate_my_U0_ap_start),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(CO),
        .I3(int_ap_start_reg),
        .I4(start_once_reg),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE777777718888888)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr[1]_i_2_n_0 ),
        .I2(CO),
        .I3(\ap_CS_fsm_reg[1]_0 ),
        .I4(Duplicate_my_U0_ap_start),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \mOutPtr[1]_i_2 
       (.I0(start_for_Duplicate_my_U0_full_n),
        .I1(Block_proc_U0_ap_start),
        .I2(start_once_reg),
        .O(\mOutPtr[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vncg" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vncg
   (start_for_minus_vector26_U0_full_n,
    minus_vector26_U0_ap_start,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector26_U0_full_n;
  output minus_vector26_U0_ap_start;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__2_n_0;
  wire internal_full_n_i_1__2_n_0;
  wire internal_full_n_i_2__2_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector26_U0_ap_start;
  wire start_for_minus_vector26_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector26_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_0),
        .Q(minus_vector26_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__2
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector26_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__2_n_0),
        .O(internal_full_n_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__2
       (.I0(minus_vector26_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_0),
        .Q(start_for_minus_vector26_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair343" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector26_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair343" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector26_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vocq" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vocq
   (start_for_minus_vector27_U0_full_n,
    minus_vector27_U0_ap_start,
    ap_clk,
    \ap_CS_fsm_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector27_U0_full_n;
  output minus_vector27_U0_ap_start;
  input ap_clk;
  input \ap_CS_fsm_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__9_n_0;
  wire internal_full_n_i_1__9_n_0;
  wire internal_full_n_i_2__9_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector27_U0_ap_start;
  wire start_for_minus_vector27_U0_full_n;
  wire start_once_reg_reg;

  LUT6 #(
    .INIT(64'hFFEFFF0000000000)) 
    internal_empty_n_i_1__9
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector27_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__9_n_0),
        .Q(minus_vector27_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__9
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector27_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__9_n_0),
        .O(internal_full_n_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    internal_full_n_i_2__9
       (.I0(minus_vector27_U0_ap_start),
        .I1(\ap_CS_fsm_reg[1] ),
        .O(internal_full_n_i_2__9_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__9_n_0),
        .Q(start_for_minus_vector27_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair344" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector27_U0_ap_start),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair344" *) 
  LUT5 #(
    .INIT(32'hE7771888)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(minus_vector27_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vpcA" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vpcA
   (start_for_minus_vector28_U0_full_n,
    minus_vector28_U0_ap_start,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector28_U0_full_n;
  output minus_vector28_U0_ap_start;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__7_n_0;
  wire internal_full_n_i_1__7_n_0;
  wire internal_full_n_i_2__7_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector28_U0_ap_start;
  wire start_for_minus_vector28_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__7
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector28_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__7_n_0),
        .Q(minus_vector28_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__7
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector28_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__7_n_0),
        .O(internal_full_n_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__7
       (.I0(minus_vector28_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__7_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__7_n_0),
        .Q(start_for_minus_vector28_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair345" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector28_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair345" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector28_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vqcK" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vqcK
   (start_for_minus_vector29_U0_full_n,
    minus_vector29_U0_ap_start,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector29_U0_full_n;
  output minus_vector29_U0_ap_start;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__6_n_0;
  wire internal_full_n_i_1__6_n_0;
  wire internal_full_n_i_2__6_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector29_U0_ap_start;
  wire start_for_minus_vector29_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__6
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector29_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__6_n_0),
        .Q(minus_vector29_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__6
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector29_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__6_n_0),
        .O(internal_full_n_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__6
       (.I0(minus_vector29_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__6_n_0),
        .Q(start_for_minus_vector29_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair346" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector29_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair346" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector29_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vrcU" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vrcU
   (start_for_minus_vector30_U0_full_n,
    minus_vector30_U0_ap_start,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector30_U0_full_n;
  output minus_vector30_U0_ap_start;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1_n_0;
  wire internal_full_n_i_1_n_0;
  wire internal_full_n_i_2_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector30_U0_ap_start;
  wire start_for_minus_vector30_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector30_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_0),
        .Q(minus_vector30_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector30_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2_n_0),
        .O(internal_full_n_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2
       (.I0(minus_vector30_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_0),
        .Q(start_for_minus_vector30_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair347" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector30_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair347" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector30_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vsc4" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vsc4
   (minus_vector31_U0_ap_start,
    int_ap_idle_reg,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    start_for_minus_vector34_U0_full_n,
    start_for_minus_vector28_U0_full_n,
    ap_rst_n_inv);
  output minus_vector31_U0_ap_start;
  output int_ap_idle_reg;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input start_for_minus_vector34_U0_full_n;
  input start_for_minus_vector28_U0_full_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire int_ap_idle_reg;
  wire internal_empty_n_i_1__8_n_0;
  wire internal_full_n_i_1__8_n_0;
  wire internal_full_n_i_2__8_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector31_U0_ap_start;
  wire start_for_minus_vector28_U0_full_n;
  wire start_for_minus_vector31_U0_full_n;
  wire start_for_minus_vector34_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[0]_i_3 
       (.I0(start_for_minus_vector31_U0_full_n),
        .I1(start_for_minus_vector34_U0_full_n),
        .I2(start_for_minus_vector28_U0_full_n),
        .O(int_ap_idle_reg));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__8
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector31_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__8_n_0),
        .Q(minus_vector31_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__8
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector31_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__8_n_0),
        .O(internal_full_n_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__8
       (.I0(minus_vector31_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__8_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__8_n_0),
        .Q(start_for_minus_vector31_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair348" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector31_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair348" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector31_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vtde" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vtde
   (start_for_minus_vector32_U0_full_n,
    minus_vector32_U0_ap_start,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector32_U0_full_n;
  output minus_vector32_U0_ap_start;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__0_n_0;
  wire internal_full_n_i_1__0_n_0;
  wire internal_full_n_i_2__0_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector32_U0_ap_start;
  wire start_for_minus_vector32_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector32_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_0),
        .Q(minus_vector32_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__0
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector32_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__0_n_0),
        .O(internal_full_n_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__0
       (.I0(minus_vector32_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_0),
        .Q(start_for_minus_vector32_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair349" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector32_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair349" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector32_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vudo" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vudo
   (minus_vector33_U0_ap_start,
    int_ap_idle_reg,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    start_for_minus_vector32_U0_full_n,
    start_for_minus_vector35_U0_full_n,
    start_for_minus_vector27_U0_full_n,
    ap_rst_n_inv);
  output minus_vector33_U0_ap_start;
  output int_ap_idle_reg;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input start_for_minus_vector32_U0_full_n;
  input start_for_minus_vector35_U0_full_n;
  input start_for_minus_vector27_U0_full_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire int_ap_idle_reg;
  wire internal_empty_n_i_1__5_n_0;
  wire internal_full_n_i_1__5_n_0;
  wire internal_full_n_i_2__5_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector33_U0_ap_start;
  wire start_for_minus_vector27_U0_full_n;
  wire start_for_minus_vector32_U0_full_n;
  wire start_for_minus_vector33_U0_full_n;
  wire start_for_minus_vector35_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT4 #(
    .INIT(16'h7FFF)) 
    \ap_CS_fsm[0]_i_4 
       (.I0(start_for_minus_vector33_U0_full_n),
        .I1(start_for_minus_vector32_U0_full_n),
        .I2(start_for_minus_vector35_U0_full_n),
        .I3(start_for_minus_vector27_U0_full_n),
        .O(int_ap_idle_reg));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__5
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector33_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__5_n_0),
        .Q(minus_vector33_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__5
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector33_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__5_n_0),
        .O(internal_full_n_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__5
       (.I0(minus_vector33_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__5_n_0),
        .Q(start_for_minus_vector33_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair350" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector33_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair350" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector33_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vvdy" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vvdy
   (start_for_minus_vector34_U0_full_n,
    minus_vector34_U0_ap_start,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    ap_rst_n_inv);
  output start_for_minus_vector34_U0_full_n;
  output minus_vector34_U0_ap_start;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_full_n_i_1__1_n_0;
  wire internal_full_n_i_2__1_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector34_U0_ap_start;
  wire start_for_minus_vector34_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector34_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(minus_vector34_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__1
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector34_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__1_n_0),
        .O(internal_full_n_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__1
       (.I0(minus_vector34_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(start_for_minus_vector34_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair351" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector34_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair351" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector34_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vwdI" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vwdI
   (start_for_minus_vector35_U0_full_n,
    minus_vector35_U0_ap_start,
    int_ap_idle_reg,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    Q,
    minus_vector32_U0_ap_start,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    ap_rst_n_inv);
  output start_for_minus_vector35_U0_full_n;
  output minus_vector35_U0_ap_start;
  output int_ap_idle_reg;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input [0:0]Q;
  input minus_vector32_U0_ap_start;
  input [0:0]\ap_CS_fsm_reg[0] ;
  input \ap_CS_fsm_reg[0]_0 ;
  input ap_rst_n_inv;

  wire [0:0]Q;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire int_ap_idle_reg;
  wire internal_empty_n_i_1__4_n_0;
  wire internal_full_n_i_1__4_n_0;
  wire internal_full_n_i_2__4_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector32_U0_ap_start;
  wire minus_vector35_U0_ap_start;
  wire start_for_minus_vector35_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    int_ap_idle_i_3
       (.I0(minus_vector35_U0_ap_start),
        .I1(Q),
        .I2(minus_vector32_U0_ap_start),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(\ap_CS_fsm_reg[0]_0 ),
        .O(int_ap_idle_reg));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__4
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector35_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_0),
        .Q(minus_vector35_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__4
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector35_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__4_n_0),
        .O(internal_full_n_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__4
       (.I0(minus_vector35_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_0),
        .Q(start_for_minus_vector35_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair352" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector35_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair352" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector35_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_minus_vxdS" *) 
module m3_for_arty_a7_contrast_hls_rom_0_0_start_for_minus_vxdS
   (minus_vector_U0_ap_start,
    int_ap_idle_reg,
    ap_clk,
    \t_V_reg_114_reg[1] ,
    start_once_reg_reg,
    ap_rst_n,
    start_for_minus_vector26_U0_full_n,
    start_for_minus_vector30_U0_full_n,
    start_for_minus_vector29_U0_full_n,
    ap_rst_n_inv);
  output minus_vector_U0_ap_start;
  output int_ap_idle_reg;
  input ap_clk;
  input \t_V_reg_114_reg[1] ;
  input start_once_reg_reg;
  input ap_rst_n;
  input start_for_minus_vector26_U0_full_n;
  input start_for_minus_vector30_U0_full_n;
  input start_for_minus_vector29_U0_full_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire int_ap_idle_reg;
  wire internal_empty_n_i_1__3_n_0;
  wire internal_full_n_i_1__3_n_0;
  wire internal_full_n_i_2__3_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire minus_vector_U0_ap_start;
  wire start_for_minus_vector26_U0_full_n;
  wire start_for_minus_vector29_U0_full_n;
  wire start_for_minus_vector30_U0_full_n;
  wire start_for_minus_vector_U0_full_n;
  wire start_once_reg_reg;
  wire \t_V_reg_114_reg[1] ;

  LUT4 #(
    .INIT(16'h7FFF)) 
    \ap_CS_fsm[0]_i_5 
       (.I0(start_for_minus_vector_U0_full_n),
        .I1(start_for_minus_vector26_U0_full_n),
        .I2(start_for_minus_vector30_U0_full_n),
        .I3(start_for_minus_vector29_U0_full_n),
        .O(int_ap_idle_reg));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(start_once_reg_reg),
        .I4(minus_vector_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_0),
        .Q(minus_vector_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__3
       (.I0(ap_rst_n),
        .I1(start_for_minus_vector_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(start_once_reg_reg),
        .I5(internal_full_n_i_2__3_n_0),
        .O(internal_full_n_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_full_n_i_2__3
       (.I0(minus_vector_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .O(internal_full_n_i_2__3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_0),
        .Q(start_for_minus_vector_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair353" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[0]_i_1 
       (.I0(minus_vector_U0_ap_start),
        .I1(\t_V_reg_114_reg[1] ),
        .I2(start_once_reg_reg),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair353" *) 
  LUT5 #(
    .INIT(32'h7E778188)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(\t_V_reg_114_reg[1] ),
        .I3(minus_vector_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
