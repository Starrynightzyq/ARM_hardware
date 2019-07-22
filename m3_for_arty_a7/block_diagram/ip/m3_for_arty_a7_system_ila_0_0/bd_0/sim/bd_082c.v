//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_082c.bd
//Design : bd_082c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_082c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_082c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "m3_for_arty_a7_system_ila_0_0.hwdef" *) 
module bd_082c
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tdest,
    SLOT_0_AXIS_tid,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tstrb,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tdest,
    SLOT_1_AXIS_tid,
    SLOT_1_AXIS_tkeep,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tstrb,
    SLOT_1_AXIS_tuser,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tdest,
    SLOT_2_AXIS_tid,
    SLOT_2_AXIS_tkeep,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tready,
    SLOT_2_AXIS_tstrb,
    SLOT_2_AXIS_tuser,
    SLOT_2_AXIS_tvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tdest,
    SLOT_3_AXIS_tid,
    SLOT_3_AXIS_tkeep,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tstrb,
    SLOT_3_AXIS_tuser,
    SLOT_3_AXIS_tvalid,
    SLOT_4_AXIS_tdata,
    SLOT_4_AXIS_tdest,
    SLOT_4_AXIS_tid,
    SLOT_4_AXIS_tkeep,
    SLOT_4_AXIS_tlast,
    SLOT_4_AXIS_tready,
    SLOT_4_AXIS_tstrb,
    SLOT_4_AXIS_tuser,
    SLOT_4_AXIS_tvalid,
    SLOT_5_AXIS_tdata,
    SLOT_5_AXIS_tdest,
    SLOT_5_AXIS_tid,
    SLOT_5_AXIS_tkeep,
    SLOT_5_AXIS_tlast,
    SLOT_5_AXIS_tready,
    SLOT_5_AXIS_tstrb,
    SLOT_5_AXIS_tuser,
    SLOT_5_AXIS_tvalid,
    SLOT_6_AXIS_tdata,
    SLOT_6_AXIS_tdest,
    SLOT_6_AXIS_tid,
    SLOT_6_AXIS_tkeep,
    SLOT_6_AXIS_tlast,
    SLOT_6_AXIS_tready,
    SLOT_6_AXIS_tstrb,
    SLOT_6_AXIS_tuser,
    SLOT_6_AXIS_tvalid,
    SLOT_7_AXIS_tdata,
    SLOT_7_AXIS_tkeep,
    SLOT_7_AXIS_tlast,
    SLOT_7_AXIS_tready,
    SLOT_7_AXIS_tuser,
    SLOT_7_AXIS_tvalid,
    SLOT_8_AXIS_tdata,
    SLOT_8_AXIS_tdest,
    SLOT_8_AXIS_tid,
    SLOT_8_AXIS_tkeep,
    SLOT_8_AXIS_tlast,
    SLOT_8_AXIS_tready,
    SLOT_8_AXIS_tstrb,
    SLOT_8_AXIS_tuser,
    SLOT_8_AXIS_tvalid,
    clk,
    probe0,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDEST" *) input [0:0]SLOT_0_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TID" *) input [0:0]SLOT_0_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP" *) input [3:0]SLOT_0_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TSTRB" *) input [3:0]SLOT_0_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER" *) input [0:0]SLOT_0_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDEST" *) input [0:0]SLOT_1_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TID" *) input [0:0]SLOT_1_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP" *) input [3:0]SLOT_1_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TSTRB" *) input [3:0]SLOT_1_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TUSER" *) input [0:0]SLOT_1_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_2_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDEST" *) input [0:0]SLOT_2_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TID" *) input [0:0]SLOT_2_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TKEEP" *) input [3:0]SLOT_2_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *) input SLOT_2_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TREADY" *) input SLOT_2_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TSTRB" *) input [3:0]SLOT_2_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TUSER" *) input [0:0]SLOT_2_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *) input SLOT_2_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_3_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TDEST" *) input [0:0]SLOT_3_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TID" *) input [0:0]SLOT_3_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TKEEP" *) input [3:0]SLOT_3_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TLAST" *) input SLOT_3_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TREADY" *) input SLOT_3_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TSTRB" *) input [3:0]SLOT_3_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TUSER" *) input [0:0]SLOT_3_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TVALID" *) input SLOT_3_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_4_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDEST" *) input [0:0]SLOT_4_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TID" *) input [0:0]SLOT_4_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TKEEP" *) input [3:0]SLOT_4_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TLAST" *) input SLOT_4_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TREADY" *) input SLOT_4_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TSTRB" *) input [3:0]SLOT_4_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TUSER" *) input [0:0]SLOT_4_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TVALID" *) input SLOT_4_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_5_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TDEST" *) input [0:0]SLOT_5_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TID" *) input [0:0]SLOT_5_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TKEEP" *) input [3:0]SLOT_5_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TLAST" *) input SLOT_5_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TREADY" *) input SLOT_5_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TSTRB" *) input [3:0]SLOT_5_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TUSER" *) input [0:0]SLOT_5_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TVALID" *) input SLOT_5_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]SLOT_6_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDEST" *) input [0:0]SLOT_6_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TID" *) input [0:0]SLOT_6_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TKEEP" *) input [3:0]SLOT_6_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TLAST" *) input SLOT_6_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TREADY" *) input SLOT_6_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TSTRB" *) input [3:0]SLOT_6_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TUSER" *) input [0:0]SLOT_6_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TVALID" *) input SLOT_6_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [23:0]SLOT_7_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TKEEP" *) input [2:0]SLOT_7_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TLAST" *) input SLOT_7_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TREADY" *) input SLOT_7_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TUSER" *) input [0:0]SLOT_7_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TVALID" *) input SLOT_7_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_8_AXIS, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [23:0]SLOT_8_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDEST" *) input [0:0]SLOT_8_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TID" *) input [0:0]SLOT_8_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TKEEP" *) input [2:0]SLOT_8_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TLAST" *) input SLOT_8_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TREADY" *) input SLOT_8_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TSTRB" *) input [2:0]SLOT_8_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TUSER" *) input [0:0]SLOT_8_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TVALID" *) input SLOT_8_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS:SLOT_3_AXIS:SLOT_4_AXIS:SLOT_5_AXIS:SLOT_6_AXIS:SLOT_7_AXIS:SLOT_8_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, FREQ_HZ 200000000, PHASE 0.0" *) input clk;
  input [0:0]probe0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]Conn1_TDATA;
  wire [0:0]Conn1_TDEST;
  wire [0:0]Conn1_TID;
  wire [3:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire [3:0]Conn1_TSTRB;
  wire [0:0]Conn1_TUSER;
  wire Conn1_TVALID;
  wire [31:0]Conn2_TDATA;
  wire [0:0]Conn2_TDEST;
  wire [0:0]Conn2_TID;
  wire [3:0]Conn2_TKEEP;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire [3:0]Conn2_TSTRB;
  wire [0:0]Conn2_TUSER;
  wire Conn2_TVALID;
  wire [31:0]Conn3_TDATA;
  wire [0:0]Conn3_TDEST;
  wire [0:0]Conn3_TID;
  wire [3:0]Conn3_TKEEP;
  wire Conn3_TLAST;
  wire Conn3_TREADY;
  wire [3:0]Conn3_TSTRB;
  wire [0:0]Conn3_TUSER;
  wire Conn3_TVALID;
  wire [31:0]Conn4_TDATA;
  wire [0:0]Conn4_TDEST;
  wire [0:0]Conn4_TID;
  wire [3:0]Conn4_TKEEP;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire [3:0]Conn4_TSTRB;
  wire [0:0]Conn4_TUSER;
  wire Conn4_TVALID;
  wire [31:0]Conn5_TDATA;
  wire [0:0]Conn5_TDEST;
  wire [0:0]Conn5_TID;
  wire [3:0]Conn5_TKEEP;
  wire Conn5_TLAST;
  wire Conn5_TREADY;
  wire [3:0]Conn5_TSTRB;
  wire [0:0]Conn5_TUSER;
  wire Conn5_TVALID;
  wire [31:0]Conn6_TDATA;
  wire [0:0]Conn6_TDEST;
  wire [0:0]Conn6_TID;
  wire [3:0]Conn6_TKEEP;
  wire Conn6_TLAST;
  wire Conn6_TREADY;
  wire [3:0]Conn6_TSTRB;
  wire [0:0]Conn6_TUSER;
  wire Conn6_TVALID;
  wire [23:0]Conn7_TDATA;
  wire [2:0]Conn7_TKEEP;
  wire Conn7_TLAST;
  wire Conn7_TREADY;
  wire [0:0]Conn7_TUSER;
  wire Conn7_TVALID;
  wire [23:0]Conn8_TDATA;
  wire [0:0]Conn8_TDEST;
  wire [0:0]Conn8_TID;
  wire [2:0]Conn8_TKEEP;
  wire Conn8_TLAST;
  wire Conn8_TREADY;
  wire [2:0]Conn8_TSTRB;
  wire [0:0]Conn8_TUSER;
  wire Conn8_TVALID;
  wire [31:0]Conn_TDATA;
  wire [0:0]Conn_TDEST;
  wire [0:0]Conn_TID;
  wire [3:0]Conn_TKEEP;
  wire Conn_TLAST;
  wire Conn_TREADY;
  wire [3:0]Conn_TSTRB;
  wire [0:0]Conn_TUSER;
  wire Conn_TVALID;
  wire clk_1;
  wire [31:0]net_slot_0_axis_tdata;
  wire [0:0]net_slot_0_axis_tdest;
  wire [0:0]net_slot_0_axis_tid;
  wire [3:0]net_slot_0_axis_tkeep;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire [3:0]net_slot_0_axis_tstrb;
  wire [0:0]net_slot_0_axis_tuser;
  wire net_slot_0_axis_tvalid;
  wire [31:0]net_slot_1_axis_tdata;
  wire [0:0]net_slot_1_axis_tdest;
  wire [0:0]net_slot_1_axis_tid;
  wire [3:0]net_slot_1_axis_tkeep;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire [3:0]net_slot_1_axis_tstrb;
  wire [0:0]net_slot_1_axis_tuser;
  wire net_slot_1_axis_tvalid;
  wire [31:0]net_slot_2_axis_tdata;
  wire [0:0]net_slot_2_axis_tdest;
  wire [0:0]net_slot_2_axis_tid;
  wire [3:0]net_slot_2_axis_tkeep;
  wire net_slot_2_axis_tlast;
  wire net_slot_2_axis_tready;
  wire [3:0]net_slot_2_axis_tstrb;
  wire [0:0]net_slot_2_axis_tuser;
  wire net_slot_2_axis_tvalid;
  wire [31:0]net_slot_3_axis_tdata;
  wire [0:0]net_slot_3_axis_tdest;
  wire [0:0]net_slot_3_axis_tid;
  wire [3:0]net_slot_3_axis_tkeep;
  wire net_slot_3_axis_tlast;
  wire net_slot_3_axis_tready;
  wire [3:0]net_slot_3_axis_tstrb;
  wire [0:0]net_slot_3_axis_tuser;
  wire net_slot_3_axis_tvalid;
  wire [31:0]net_slot_4_axis_tdata;
  wire [0:0]net_slot_4_axis_tdest;
  wire [0:0]net_slot_4_axis_tid;
  wire [3:0]net_slot_4_axis_tkeep;
  wire net_slot_4_axis_tlast;
  wire net_slot_4_axis_tready;
  wire [3:0]net_slot_4_axis_tstrb;
  wire [0:0]net_slot_4_axis_tuser;
  wire net_slot_4_axis_tvalid;
  wire [31:0]net_slot_5_axis_tdata;
  wire [0:0]net_slot_5_axis_tdest;
  wire [0:0]net_slot_5_axis_tid;
  wire [3:0]net_slot_5_axis_tkeep;
  wire net_slot_5_axis_tlast;
  wire net_slot_5_axis_tready;
  wire [3:0]net_slot_5_axis_tstrb;
  wire [0:0]net_slot_5_axis_tuser;
  wire net_slot_5_axis_tvalid;
  wire [31:0]net_slot_6_axis_tdata;
  wire [0:0]net_slot_6_axis_tdest;
  wire [0:0]net_slot_6_axis_tid;
  wire [3:0]net_slot_6_axis_tkeep;
  wire net_slot_6_axis_tlast;
  wire net_slot_6_axis_tready;
  wire [3:0]net_slot_6_axis_tstrb;
  wire [0:0]net_slot_6_axis_tuser;
  wire net_slot_6_axis_tvalid;
  wire [23:0]net_slot_7_axis_tdata;
  wire [2:0]net_slot_7_axis_tkeep;
  wire net_slot_7_axis_tlast;
  wire net_slot_7_axis_tready;
  wire [0:0]net_slot_7_axis_tuser;
  wire net_slot_7_axis_tvalid;
  wire [23:0]net_slot_8_axis_tdata;
  wire [0:0]net_slot_8_axis_tdest;
  wire [0:0]net_slot_8_axis_tid;
  wire [2:0]net_slot_8_axis_tkeep;
  wire net_slot_8_axis_tlast;
  wire net_slot_8_axis_tready;
  wire [2:0]net_slot_8_axis_tstrb;
  wire [0:0]net_slot_8_axis_tuser;
  wire net_slot_8_axis_tvalid;
  wire [0:0]probe0_1;
  wire resetn_1;

  assign Conn1_TDATA = SLOT_1_AXIS_tdata[31:0];
  assign Conn1_TDEST = SLOT_1_AXIS_tdest[0];
  assign Conn1_TID = SLOT_1_AXIS_tid[0];
  assign Conn1_TKEEP = SLOT_1_AXIS_tkeep[3:0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TREADY = SLOT_1_AXIS_tready;
  assign Conn1_TSTRB = SLOT_1_AXIS_tstrb[3:0];
  assign Conn1_TUSER = SLOT_1_AXIS_tuser[0];
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn2_TDATA = SLOT_2_AXIS_tdata[31:0];
  assign Conn2_TDEST = SLOT_2_AXIS_tdest[0];
  assign Conn2_TID = SLOT_2_AXIS_tid[0];
  assign Conn2_TKEEP = SLOT_2_AXIS_tkeep[3:0];
  assign Conn2_TLAST = SLOT_2_AXIS_tlast;
  assign Conn2_TREADY = SLOT_2_AXIS_tready;
  assign Conn2_TSTRB = SLOT_2_AXIS_tstrb[3:0];
  assign Conn2_TUSER = SLOT_2_AXIS_tuser[0];
  assign Conn2_TVALID = SLOT_2_AXIS_tvalid;
  assign Conn3_TDATA = SLOT_3_AXIS_tdata[31:0];
  assign Conn3_TDEST = SLOT_3_AXIS_tdest[0];
  assign Conn3_TID = SLOT_3_AXIS_tid[0];
  assign Conn3_TKEEP = SLOT_3_AXIS_tkeep[3:0];
  assign Conn3_TLAST = SLOT_3_AXIS_tlast;
  assign Conn3_TREADY = SLOT_3_AXIS_tready;
  assign Conn3_TSTRB = SLOT_3_AXIS_tstrb[3:0];
  assign Conn3_TUSER = SLOT_3_AXIS_tuser[0];
  assign Conn3_TVALID = SLOT_3_AXIS_tvalid;
  assign Conn4_TDATA = SLOT_4_AXIS_tdata[31:0];
  assign Conn4_TDEST = SLOT_4_AXIS_tdest[0];
  assign Conn4_TID = SLOT_4_AXIS_tid[0];
  assign Conn4_TKEEP = SLOT_4_AXIS_tkeep[3:0];
  assign Conn4_TLAST = SLOT_4_AXIS_tlast;
  assign Conn4_TREADY = SLOT_4_AXIS_tready;
  assign Conn4_TSTRB = SLOT_4_AXIS_tstrb[3:0];
  assign Conn4_TUSER = SLOT_4_AXIS_tuser[0];
  assign Conn4_TVALID = SLOT_4_AXIS_tvalid;
  assign Conn5_TDATA = SLOT_5_AXIS_tdata[31:0];
  assign Conn5_TDEST = SLOT_5_AXIS_tdest[0];
  assign Conn5_TID = SLOT_5_AXIS_tid[0];
  assign Conn5_TKEEP = SLOT_5_AXIS_tkeep[3:0];
  assign Conn5_TLAST = SLOT_5_AXIS_tlast;
  assign Conn5_TREADY = SLOT_5_AXIS_tready;
  assign Conn5_TSTRB = SLOT_5_AXIS_tstrb[3:0];
  assign Conn5_TUSER = SLOT_5_AXIS_tuser[0];
  assign Conn5_TVALID = SLOT_5_AXIS_tvalid;
  assign Conn6_TDATA = SLOT_6_AXIS_tdata[31:0];
  assign Conn6_TDEST = SLOT_6_AXIS_tdest[0];
  assign Conn6_TID = SLOT_6_AXIS_tid[0];
  assign Conn6_TKEEP = SLOT_6_AXIS_tkeep[3:0];
  assign Conn6_TLAST = SLOT_6_AXIS_tlast;
  assign Conn6_TREADY = SLOT_6_AXIS_tready;
  assign Conn6_TSTRB = SLOT_6_AXIS_tstrb[3:0];
  assign Conn6_TUSER = SLOT_6_AXIS_tuser[0];
  assign Conn6_TVALID = SLOT_6_AXIS_tvalid;
  assign Conn7_TDATA = SLOT_7_AXIS_tdata[23:0];
  assign Conn7_TKEEP = SLOT_7_AXIS_tkeep[2:0];
  assign Conn7_TLAST = SLOT_7_AXIS_tlast;
  assign Conn7_TREADY = SLOT_7_AXIS_tready;
  assign Conn7_TUSER = SLOT_7_AXIS_tuser[0];
  assign Conn7_TVALID = SLOT_7_AXIS_tvalid;
  assign Conn8_TDATA = SLOT_8_AXIS_tdata[23:0];
  assign Conn8_TDEST = SLOT_8_AXIS_tdest[0];
  assign Conn8_TID = SLOT_8_AXIS_tid[0];
  assign Conn8_TKEEP = SLOT_8_AXIS_tkeep[2:0];
  assign Conn8_TLAST = SLOT_8_AXIS_tlast;
  assign Conn8_TREADY = SLOT_8_AXIS_tready;
  assign Conn8_TSTRB = SLOT_8_AXIS_tstrb[2:0];
  assign Conn8_TUSER = SLOT_8_AXIS_tuser[0];
  assign Conn8_TVALID = SLOT_8_AXIS_tvalid;
  assign Conn_TDATA = SLOT_0_AXIS_tdata[31:0];
  assign Conn_TDEST = SLOT_0_AXIS_tdest[0];
  assign Conn_TID = SLOT_0_AXIS_tid[0];
  assign Conn_TKEEP = SLOT_0_AXIS_tkeep[3:0];
  assign Conn_TLAST = SLOT_0_AXIS_tlast;
  assign Conn_TREADY = SLOT_0_AXIS_tready;
  assign Conn_TSTRB = SLOT_0_AXIS_tstrb[3:0];
  assign Conn_TUSER = SLOT_0_AXIS_tuser[0];
  assign Conn_TVALID = SLOT_0_AXIS_tvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign resetn_1 = resetn;
  bd_082c_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tdest(net_slot_0_axis_tdest),
        .m_slot_0_axis_tid(net_slot_0_axis_tid),
        .m_slot_0_axis_tkeep(net_slot_0_axis_tkeep),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tstrb(net_slot_0_axis_tstrb),
        .m_slot_0_axis_tuser(net_slot_0_axis_tuser),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tdest(net_slot_1_axis_tdest),
        .m_slot_1_axis_tid(net_slot_1_axis_tid),
        .m_slot_1_axis_tkeep(net_slot_1_axis_tkeep),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tstrb(net_slot_1_axis_tstrb),
        .m_slot_1_axis_tuser(net_slot_1_axis_tuser),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axis_tdata(net_slot_2_axis_tdata),
        .m_slot_2_axis_tdest(net_slot_2_axis_tdest),
        .m_slot_2_axis_tid(net_slot_2_axis_tid),
        .m_slot_2_axis_tkeep(net_slot_2_axis_tkeep),
        .m_slot_2_axis_tlast(net_slot_2_axis_tlast),
        .m_slot_2_axis_tready(net_slot_2_axis_tready),
        .m_slot_2_axis_tstrb(net_slot_2_axis_tstrb),
        .m_slot_2_axis_tuser(net_slot_2_axis_tuser),
        .m_slot_2_axis_tvalid(net_slot_2_axis_tvalid),
        .m_slot_3_axis_tdata(net_slot_3_axis_tdata),
        .m_slot_3_axis_tdest(net_slot_3_axis_tdest),
        .m_slot_3_axis_tid(net_slot_3_axis_tid),
        .m_slot_3_axis_tkeep(net_slot_3_axis_tkeep),
        .m_slot_3_axis_tlast(net_slot_3_axis_tlast),
        .m_slot_3_axis_tready(net_slot_3_axis_tready),
        .m_slot_3_axis_tstrb(net_slot_3_axis_tstrb),
        .m_slot_3_axis_tuser(net_slot_3_axis_tuser),
        .m_slot_3_axis_tvalid(net_slot_3_axis_tvalid),
        .m_slot_4_axis_tdata(net_slot_4_axis_tdata),
        .m_slot_4_axis_tdest(net_slot_4_axis_tdest),
        .m_slot_4_axis_tid(net_slot_4_axis_tid),
        .m_slot_4_axis_tkeep(net_slot_4_axis_tkeep),
        .m_slot_4_axis_tlast(net_slot_4_axis_tlast),
        .m_slot_4_axis_tready(net_slot_4_axis_tready),
        .m_slot_4_axis_tstrb(net_slot_4_axis_tstrb),
        .m_slot_4_axis_tuser(net_slot_4_axis_tuser),
        .m_slot_4_axis_tvalid(net_slot_4_axis_tvalid),
        .m_slot_5_axis_tdata(net_slot_5_axis_tdata),
        .m_slot_5_axis_tdest(net_slot_5_axis_tdest),
        .m_slot_5_axis_tid(net_slot_5_axis_tid),
        .m_slot_5_axis_tkeep(net_slot_5_axis_tkeep),
        .m_slot_5_axis_tlast(net_slot_5_axis_tlast),
        .m_slot_5_axis_tready(net_slot_5_axis_tready),
        .m_slot_5_axis_tstrb(net_slot_5_axis_tstrb),
        .m_slot_5_axis_tuser(net_slot_5_axis_tuser),
        .m_slot_5_axis_tvalid(net_slot_5_axis_tvalid),
        .m_slot_6_axis_tdata(net_slot_6_axis_tdata),
        .m_slot_6_axis_tdest(net_slot_6_axis_tdest),
        .m_slot_6_axis_tid(net_slot_6_axis_tid),
        .m_slot_6_axis_tkeep(net_slot_6_axis_tkeep),
        .m_slot_6_axis_tlast(net_slot_6_axis_tlast),
        .m_slot_6_axis_tready(net_slot_6_axis_tready),
        .m_slot_6_axis_tstrb(net_slot_6_axis_tstrb),
        .m_slot_6_axis_tuser(net_slot_6_axis_tuser),
        .m_slot_6_axis_tvalid(net_slot_6_axis_tvalid),
        .m_slot_7_axis_tdata(net_slot_7_axis_tdata),
        .m_slot_7_axis_tkeep(net_slot_7_axis_tkeep),
        .m_slot_7_axis_tlast(net_slot_7_axis_tlast),
        .m_slot_7_axis_tready(net_slot_7_axis_tready),
        .m_slot_7_axis_tuser(net_slot_7_axis_tuser),
        .m_slot_7_axis_tvalid(net_slot_7_axis_tvalid),
        .m_slot_8_axis_tdata(net_slot_8_axis_tdata),
        .m_slot_8_axis_tdest(net_slot_8_axis_tdest),
        .m_slot_8_axis_tid(net_slot_8_axis_tid),
        .m_slot_8_axis_tkeep(net_slot_8_axis_tkeep),
        .m_slot_8_axis_tlast(net_slot_8_axis_tlast),
        .m_slot_8_axis_tready(net_slot_8_axis_tready),
        .m_slot_8_axis_tstrb(net_slot_8_axis_tstrb),
        .m_slot_8_axis_tuser(net_slot_8_axis_tuser),
        .m_slot_8_axis_tvalid(net_slot_8_axis_tvalid),
        .slot_0_axis_tdata(Conn_TDATA),
        .slot_0_axis_tdest(Conn_TDEST),
        .slot_0_axis_tid(Conn_TID),
        .slot_0_axis_tkeep(Conn_TKEEP),
        .slot_0_axis_tlast(Conn_TLAST),
        .slot_0_axis_tready(Conn_TREADY),
        .slot_0_axis_tstrb(Conn_TSTRB),
        .slot_0_axis_tuser(Conn_TUSER),
        .slot_0_axis_tvalid(Conn_TVALID),
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tdest(Conn1_TDEST),
        .slot_1_axis_tid(Conn1_TID),
        .slot_1_axis_tkeep(Conn1_TKEEP),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tready(Conn1_TREADY),
        .slot_1_axis_tstrb(Conn1_TSTRB),
        .slot_1_axis_tuser(Conn1_TUSER),
        .slot_1_axis_tvalid(Conn1_TVALID),
        .slot_2_axis_tdata(Conn2_TDATA),
        .slot_2_axis_tdest(Conn2_TDEST),
        .slot_2_axis_tid(Conn2_TID),
        .slot_2_axis_tkeep(Conn2_TKEEP),
        .slot_2_axis_tlast(Conn2_TLAST),
        .slot_2_axis_tready(Conn2_TREADY),
        .slot_2_axis_tstrb(Conn2_TSTRB),
        .slot_2_axis_tuser(Conn2_TUSER),
        .slot_2_axis_tvalid(Conn2_TVALID),
        .slot_3_axis_tdata(Conn3_TDATA),
        .slot_3_axis_tdest(Conn3_TDEST),
        .slot_3_axis_tid(Conn3_TID),
        .slot_3_axis_tkeep(Conn3_TKEEP),
        .slot_3_axis_tlast(Conn3_TLAST),
        .slot_3_axis_tready(Conn3_TREADY),
        .slot_3_axis_tstrb(Conn3_TSTRB),
        .slot_3_axis_tuser(Conn3_TUSER),
        .slot_3_axis_tvalid(Conn3_TVALID),
        .slot_4_axis_tdata(Conn4_TDATA),
        .slot_4_axis_tdest(Conn4_TDEST),
        .slot_4_axis_tid(Conn4_TID),
        .slot_4_axis_tkeep(Conn4_TKEEP),
        .slot_4_axis_tlast(Conn4_TLAST),
        .slot_4_axis_tready(Conn4_TREADY),
        .slot_4_axis_tstrb(Conn4_TSTRB),
        .slot_4_axis_tuser(Conn4_TUSER),
        .slot_4_axis_tvalid(Conn4_TVALID),
        .slot_5_axis_tdata(Conn5_TDATA),
        .slot_5_axis_tdest(Conn5_TDEST),
        .slot_5_axis_tid(Conn5_TID),
        .slot_5_axis_tkeep(Conn5_TKEEP),
        .slot_5_axis_tlast(Conn5_TLAST),
        .slot_5_axis_tready(Conn5_TREADY),
        .slot_5_axis_tstrb(Conn5_TSTRB),
        .slot_5_axis_tuser(Conn5_TUSER),
        .slot_5_axis_tvalid(Conn5_TVALID),
        .slot_6_axis_tdata(Conn6_TDATA),
        .slot_6_axis_tdest(Conn6_TDEST),
        .slot_6_axis_tid(Conn6_TID),
        .slot_6_axis_tkeep(Conn6_TKEEP),
        .slot_6_axis_tlast(Conn6_TLAST),
        .slot_6_axis_tready(Conn6_TREADY),
        .slot_6_axis_tstrb(Conn6_TSTRB),
        .slot_6_axis_tuser(Conn6_TUSER),
        .slot_6_axis_tvalid(Conn6_TVALID),
        .slot_7_axis_tdata(Conn7_TDATA),
        .slot_7_axis_tkeep(Conn7_TKEEP),
        .slot_7_axis_tlast(Conn7_TLAST),
        .slot_7_axis_tready(Conn7_TREADY),
        .slot_7_axis_tuser(Conn7_TUSER),
        .slot_7_axis_tvalid(Conn7_TVALID),
        .slot_8_axis_tdata(Conn8_TDATA),
        .slot_8_axis_tdest(Conn8_TDEST),
        .slot_8_axis_tid(Conn8_TID),
        .slot_8_axis_tkeep(Conn8_TKEEP),
        .slot_8_axis_tlast(Conn8_TLAST),
        .slot_8_axis_tready(Conn8_TREADY),
        .slot_8_axis_tstrb(Conn8_TSTRB),
        .slot_8_axis_tuser(Conn8_TUSER),
        .slot_8_axis_tvalid(Conn8_TVALID));
  bd_082c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(net_slot_0_axis_tdata),
        .probe10(net_slot_1_axis_tdata),
        .probe11(net_slot_1_axis_tdest),
        .probe12(net_slot_1_axis_tid),
        .probe13(net_slot_1_axis_tkeep),
        .probe14(net_slot_1_axis_tstrb),
        .probe15(net_slot_1_axis_tuser),
        .probe16(net_slot_1_axis_tvalid),
        .probe17(net_slot_1_axis_tready),
        .probe18(net_slot_1_axis_tlast),
        .probe19(net_slot_2_axis_tdata),
        .probe2(net_slot_0_axis_tdest),
        .probe20(net_slot_2_axis_tdest),
        .probe21(net_slot_2_axis_tid),
        .probe22(net_slot_2_axis_tkeep),
        .probe23(net_slot_2_axis_tstrb),
        .probe24(net_slot_2_axis_tuser),
        .probe25(net_slot_2_axis_tvalid),
        .probe26(net_slot_2_axis_tready),
        .probe27(net_slot_2_axis_tlast),
        .probe28(net_slot_3_axis_tdata),
        .probe29(net_slot_3_axis_tdest),
        .probe3(net_slot_0_axis_tid),
        .probe30(net_slot_3_axis_tid),
        .probe31(net_slot_3_axis_tkeep),
        .probe32(net_slot_3_axis_tstrb),
        .probe33(net_slot_3_axis_tuser),
        .probe34(net_slot_3_axis_tvalid),
        .probe35(net_slot_3_axis_tready),
        .probe36(net_slot_3_axis_tlast),
        .probe37(net_slot_4_axis_tdata),
        .probe38(net_slot_4_axis_tdest),
        .probe39(net_slot_4_axis_tid),
        .probe4(net_slot_0_axis_tkeep),
        .probe40(net_slot_4_axis_tkeep),
        .probe41(net_slot_4_axis_tstrb),
        .probe42(net_slot_4_axis_tuser),
        .probe43(net_slot_4_axis_tvalid),
        .probe44(net_slot_4_axis_tready),
        .probe45(net_slot_4_axis_tlast),
        .probe46(net_slot_5_axis_tdata),
        .probe47(net_slot_5_axis_tdest),
        .probe48(net_slot_5_axis_tid),
        .probe49(net_slot_5_axis_tkeep),
        .probe5(net_slot_0_axis_tstrb),
        .probe50(net_slot_5_axis_tstrb),
        .probe51(net_slot_5_axis_tuser),
        .probe52(net_slot_5_axis_tvalid),
        .probe53(net_slot_5_axis_tready),
        .probe54(net_slot_5_axis_tlast),
        .probe55(net_slot_6_axis_tdata),
        .probe56(net_slot_6_axis_tdest),
        .probe57(net_slot_6_axis_tid),
        .probe58(net_slot_6_axis_tkeep),
        .probe59(net_slot_6_axis_tstrb),
        .probe6(net_slot_0_axis_tuser),
        .probe60(net_slot_6_axis_tuser),
        .probe61(net_slot_6_axis_tvalid),
        .probe62(net_slot_6_axis_tready),
        .probe63(net_slot_6_axis_tlast),
        .probe64(net_slot_7_axis_tdata),
        .probe65(net_slot_7_axis_tkeep),
        .probe66(net_slot_7_axis_tuser),
        .probe67(net_slot_7_axis_tvalid),
        .probe68(net_slot_7_axis_tready),
        .probe69(net_slot_7_axis_tlast),
        .probe7(net_slot_0_axis_tvalid),
        .probe70(net_slot_8_axis_tdata),
        .probe71(net_slot_8_axis_tdest),
        .probe72(net_slot_8_axis_tid),
        .probe73(net_slot_8_axis_tkeep),
        .probe74(net_slot_8_axis_tstrb),
        .probe75(net_slot_8_axis_tuser),
        .probe76(net_slot_8_axis_tvalid),
        .probe77(net_slot_8_axis_tready),
        .probe78(net_slot_8_axis_tlast),
        .probe8(net_slot_0_axis_tready),
        .probe9(net_slot_0_axis_tlast));
endmodule
