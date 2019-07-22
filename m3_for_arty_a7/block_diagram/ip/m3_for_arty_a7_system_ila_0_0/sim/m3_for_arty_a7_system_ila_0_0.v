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


// IP VLNV: xilinx.com:ip:system_ila:1.1
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_system_ila_0_0 (
  clk,
  probe0,
  SLOT_0_AXIS_tid,
  SLOT_0_AXIS_tdest,
  SLOT_0_AXIS_tdata,
  SLOT_0_AXIS_tstrb,
  SLOT_0_AXIS_tkeep,
  SLOT_0_AXIS_tlast,
  SLOT_0_AXIS_tuser,
  SLOT_0_AXIS_tvalid,
  SLOT_0_AXIS_tready,
  SLOT_1_AXIS_tid,
  SLOT_1_AXIS_tdest,
  SLOT_1_AXIS_tdata,
  SLOT_1_AXIS_tstrb,
  SLOT_1_AXIS_tkeep,
  SLOT_1_AXIS_tlast,
  SLOT_1_AXIS_tuser,
  SLOT_1_AXIS_tvalid,
  SLOT_1_AXIS_tready,
  SLOT_2_AXIS_tid,
  SLOT_2_AXIS_tdest,
  SLOT_2_AXIS_tdata,
  SLOT_2_AXIS_tstrb,
  SLOT_2_AXIS_tkeep,
  SLOT_2_AXIS_tlast,
  SLOT_2_AXIS_tuser,
  SLOT_2_AXIS_tvalid,
  SLOT_2_AXIS_tready,
  SLOT_3_AXIS_tid,
  SLOT_3_AXIS_tdest,
  SLOT_3_AXIS_tdata,
  SLOT_3_AXIS_tstrb,
  SLOT_3_AXIS_tkeep,
  SLOT_3_AXIS_tlast,
  SLOT_3_AXIS_tuser,
  SLOT_3_AXIS_tvalid,
  SLOT_3_AXIS_tready,
  SLOT_4_AXIS_tid,
  SLOT_4_AXIS_tdest,
  SLOT_4_AXIS_tdata,
  SLOT_4_AXIS_tstrb,
  SLOT_4_AXIS_tkeep,
  SLOT_4_AXIS_tlast,
  SLOT_4_AXIS_tuser,
  SLOT_4_AXIS_tvalid,
  SLOT_4_AXIS_tready,
  SLOT_5_AXIS_tid,
  SLOT_5_AXIS_tdest,
  SLOT_5_AXIS_tdata,
  SLOT_5_AXIS_tstrb,
  SLOT_5_AXIS_tkeep,
  SLOT_5_AXIS_tlast,
  SLOT_5_AXIS_tuser,
  SLOT_5_AXIS_tvalid,
  SLOT_5_AXIS_tready,
  SLOT_6_AXIS_tid,
  SLOT_6_AXIS_tdest,
  SLOT_6_AXIS_tdata,
  SLOT_6_AXIS_tstrb,
  SLOT_6_AXIS_tkeep,
  SLOT_6_AXIS_tlast,
  SLOT_6_AXIS_tuser,
  SLOT_6_AXIS_tvalid,
  SLOT_6_AXIS_tready,
  SLOT_7_AXIS_tdata,
  SLOT_7_AXIS_tkeep,
  SLOT_7_AXIS_tlast,
  SLOT_7_AXIS_tuser,
  SLOT_7_AXIS_tvalid,
  SLOT_7_AXIS_tready,
  SLOT_8_AXIS_tid,
  SLOT_8_AXIS_tdest,
  SLOT_8_AXIS_tdata,
  SLOT_8_AXIS_tstrb,
  SLOT_8_AXIS_tkeep,
  SLOT_8_AXIS_tlast,
  SLOT_8_AXIS_tuser,
  SLOT_8_AXIS_tvalid,
  SLOT_8_AXIS_tready,
  resetn
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS:SLOT_3_AXIS:SLOT_4_AXIS:SLOT_5_AXIS:SLOT_6_AXIS:SLOT_7_AXIS:SLOT_8_AXIS, ASSOCIATED_RESET resetn" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
input wire clk;
input wire [0 : 0] probe0;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TID" *)
input wire [0 : 0] SLOT_0_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDEST" *)
input wire [0 : 0] SLOT_0_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *)
input wire [31 : 0] SLOT_0_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TSTRB" *)
input wire [3 : 0] SLOT_0_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP" *)
input wire [3 : 0] SLOT_0_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *)
input wire SLOT_0_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER" *)
input wire [0 : 0] SLOT_0_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *)
input wire SLOT_0_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bit\
offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum \
{} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *)
input wire SLOT_0_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TID" *)
input wire [0 : 0] SLOT_1_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDEST" *)
input wire [0 : 0] SLOT_1_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *)
input wire [31 : 0] SLOT_1_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TSTRB" *)
input wire [3 : 0] SLOT_1_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP" *)
input wire [3 : 0] SLOT_1_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *)
input wire SLOT_1_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TUSER" *)
input wire [0 : 0] SLOT_1_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *)
input wire SLOT_1_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bit\
offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum \
{} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *)
input wire SLOT_1_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TID" *)
input wire [0 : 0] SLOT_2_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDEST" *)
input wire [0 : 0] SLOT_2_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *)
input wire [31 : 0] SLOT_2_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TSTRB" *)
input wire [3 : 0] SLOT_2_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TKEEP" *)
input wire [3 : 0] SLOT_2_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *)
input wire SLOT_2_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TUSER" *)
input wire [0 : 0] SLOT_2_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *)
input wire SLOT_2_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TREADY" *)
input wire SLOT_2_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TID" *)
input wire [0 : 0] SLOT_3_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TDEST" *)
input wire [0 : 0] SLOT_3_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TDATA" *)
input wire [31 : 0] SLOT_3_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TSTRB" *)
input wire [3 : 0] SLOT_3_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TKEEP" *)
input wire [3 : 0] SLOT_3_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TLAST" *)
input wire SLOT_3_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TUSER" *)
input wire [0 : 0] SLOT_3_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TVALID" *)
input wire SLOT_3_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_3_AXIS TREADY" *)
input wire SLOT_3_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TID" *)
input wire [0 : 0] SLOT_4_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDEST" *)
input wire [0 : 0] SLOT_4_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDATA" *)
input wire [31 : 0] SLOT_4_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TSTRB" *)
input wire [3 : 0] SLOT_4_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TKEEP" *)
input wire [3 : 0] SLOT_4_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TLAST" *)
input wire SLOT_4_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TUSER" *)
input wire [0 : 0] SLOT_4_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TVALID" *)
input wire SLOT_4_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bit\
offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum \
{} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TREADY" *)
input wire SLOT_4_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TID" *)
input wire [0 : 0] SLOT_5_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TDEST" *)
input wire [0 : 0] SLOT_5_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TDATA" *)
input wire [31 : 0] SLOT_5_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TSTRB" *)
input wire [3 : 0] SLOT_5_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TKEEP" *)
input wire [3 : 0] SLOT_5_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TLAST" *)
input wire SLOT_5_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TUSER" *)
input wire [0 : 0] SLOT_5_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TVALID" *)
input wire SLOT_5_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bit\
offset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum \
{} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TREADY" *)
input wire SLOT_5_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TID" *)
input wire [0 : 0] SLOT_6_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDEST" *)
input wire [0 : 0] SLOT_6_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDATA" *)
input wire [31 : 0] SLOT_6_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TSTRB" *)
input wire [3 : 0] SLOT_6_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TKEEP" *)
input wire [3 : 0] SLOT_6_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TLAST" *)
input wire SLOT_6_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TUSER" *)
input wire [0 : 0] SLOT_6_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TVALID" *)
input wire SLOT_6_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TREADY" *)
input wire SLOT_6_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDATA" *)
input wire [23 : 0] SLOT_7_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TKEEP" *)
input wire [2 : 0] SLOT_7_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TLAST" *)
input wire SLOT_7_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TUSER" *)
input wire [0 : 0] SLOT_7_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TVALID" *)
input wire SLOT_7_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TREADY" *)
input wire SLOT_7_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TID" *)
input wire [0 : 0] SLOT_8_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDEST" *)
input wire [0 : 0] SLOT_8_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TDATA" *)
input wire [23 : 0] SLOT_8_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TSTRB" *)
input wire [2 : 0] SLOT_8_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TKEEP" *)
input wire [2 : 0] SLOT_8_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TLAST" *)
input wire SLOT_8_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TUSER" *)
input wire [0 : 0] SLOT_8_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TVALID" *)
input wire SLOT_8_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_8_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_8_AXIS TREADY" *)
input wire SLOT_8_AXIS_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.resetn RST" *)
input wire resetn;

  bd_082c inst (
    .clk(clk),
    .probe0(probe0),
    .SLOT_0_AXIS_tid(SLOT_0_AXIS_tid),
    .SLOT_0_AXIS_tdest(SLOT_0_AXIS_tdest),
    .SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
    .SLOT_0_AXIS_tstrb(SLOT_0_AXIS_tstrb),
    .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
    .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
    .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
    .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
    .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
    .SLOT_1_AXIS_tid(SLOT_1_AXIS_tid),
    .SLOT_1_AXIS_tdest(SLOT_1_AXIS_tdest),
    .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
    .SLOT_1_AXIS_tstrb(SLOT_1_AXIS_tstrb),
    .SLOT_1_AXIS_tkeep(SLOT_1_AXIS_tkeep),
    .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
    .SLOT_1_AXIS_tuser(SLOT_1_AXIS_tuser),
    .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
    .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
    .SLOT_2_AXIS_tid(SLOT_2_AXIS_tid),
    .SLOT_2_AXIS_tdest(SLOT_2_AXIS_tdest),
    .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
    .SLOT_2_AXIS_tstrb(SLOT_2_AXIS_tstrb),
    .SLOT_2_AXIS_tkeep(SLOT_2_AXIS_tkeep),
    .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
    .SLOT_2_AXIS_tuser(SLOT_2_AXIS_tuser),
    .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
    .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
    .SLOT_3_AXIS_tid(SLOT_3_AXIS_tid),
    .SLOT_3_AXIS_tdest(SLOT_3_AXIS_tdest),
    .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
    .SLOT_3_AXIS_tstrb(SLOT_3_AXIS_tstrb),
    .SLOT_3_AXIS_tkeep(SLOT_3_AXIS_tkeep),
    .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
    .SLOT_3_AXIS_tuser(SLOT_3_AXIS_tuser),
    .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
    .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
    .SLOT_4_AXIS_tid(SLOT_4_AXIS_tid),
    .SLOT_4_AXIS_tdest(SLOT_4_AXIS_tdest),
    .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
    .SLOT_4_AXIS_tstrb(SLOT_4_AXIS_tstrb),
    .SLOT_4_AXIS_tkeep(SLOT_4_AXIS_tkeep),
    .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
    .SLOT_4_AXIS_tuser(SLOT_4_AXIS_tuser),
    .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
    .SLOT_4_AXIS_tready(SLOT_4_AXIS_tready),
    .SLOT_5_AXIS_tid(SLOT_5_AXIS_tid),
    .SLOT_5_AXIS_tdest(SLOT_5_AXIS_tdest),
    .SLOT_5_AXIS_tdata(SLOT_5_AXIS_tdata),
    .SLOT_5_AXIS_tstrb(SLOT_5_AXIS_tstrb),
    .SLOT_5_AXIS_tkeep(SLOT_5_AXIS_tkeep),
    .SLOT_5_AXIS_tlast(SLOT_5_AXIS_tlast),
    .SLOT_5_AXIS_tuser(SLOT_5_AXIS_tuser),
    .SLOT_5_AXIS_tvalid(SLOT_5_AXIS_tvalid),
    .SLOT_5_AXIS_tready(SLOT_5_AXIS_tready),
    .SLOT_6_AXIS_tid(SLOT_6_AXIS_tid),
    .SLOT_6_AXIS_tdest(SLOT_6_AXIS_tdest),
    .SLOT_6_AXIS_tdata(SLOT_6_AXIS_tdata),
    .SLOT_6_AXIS_tstrb(SLOT_6_AXIS_tstrb),
    .SLOT_6_AXIS_tkeep(SLOT_6_AXIS_tkeep),
    .SLOT_6_AXIS_tlast(SLOT_6_AXIS_tlast),
    .SLOT_6_AXIS_tuser(SLOT_6_AXIS_tuser),
    .SLOT_6_AXIS_tvalid(SLOT_6_AXIS_tvalid),
    .SLOT_6_AXIS_tready(SLOT_6_AXIS_tready),
    .SLOT_7_AXIS_tdata(SLOT_7_AXIS_tdata),
    .SLOT_7_AXIS_tkeep(SLOT_7_AXIS_tkeep),
    .SLOT_7_AXIS_tlast(SLOT_7_AXIS_tlast),
    .SLOT_7_AXIS_tuser(SLOT_7_AXIS_tuser),
    .SLOT_7_AXIS_tvalid(SLOT_7_AXIS_tvalid),
    .SLOT_7_AXIS_tready(SLOT_7_AXIS_tready),
    .SLOT_8_AXIS_tid(SLOT_8_AXIS_tid),
    .SLOT_8_AXIS_tdest(SLOT_8_AXIS_tdest),
    .SLOT_8_AXIS_tdata(SLOT_8_AXIS_tdata),
    .SLOT_8_AXIS_tstrb(SLOT_8_AXIS_tstrb),
    .SLOT_8_AXIS_tkeep(SLOT_8_AXIS_tkeep),
    .SLOT_8_AXIS_tlast(SLOT_8_AXIS_tlast),
    .SLOT_8_AXIS_tuser(SLOT_8_AXIS_tuser),
    .SLOT_8_AXIS_tvalid(SLOT_8_AXIS_tvalid),
    .SLOT_8_AXIS_tready(SLOT_8_AXIS_tready),
    .resetn(resetn)
  );
endmodule
