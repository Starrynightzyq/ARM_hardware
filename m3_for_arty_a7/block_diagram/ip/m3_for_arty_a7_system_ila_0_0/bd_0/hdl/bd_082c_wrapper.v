//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_082c_wrapper.bd
//Design : bd_082c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_082c_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tkeep,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
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
    SLOT_3_AXIS_tkeep,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
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
    clk,
    probe0,
    resetn);
  input [23:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input [23:0]SLOT_1_AXIS_tdata;
  input [2:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input [0:0]SLOT_1_AXIS_tuser;
  input SLOT_1_AXIS_tvalid;
  input [23:0]SLOT_2_AXIS_tdata;
  input [0:0]SLOT_2_AXIS_tdest;
  input [0:0]SLOT_2_AXIS_tid;
  input [2:0]SLOT_2_AXIS_tkeep;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tready;
  input [2:0]SLOT_2_AXIS_tstrb;
  input [0:0]SLOT_2_AXIS_tuser;
  input SLOT_2_AXIS_tvalid;
  input [23:0]SLOT_3_AXIS_tdata;
  input [2:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input [0:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input [23:0]SLOT_4_AXIS_tdata;
  input [0:0]SLOT_4_AXIS_tdest;
  input [0:0]SLOT_4_AXIS_tid;
  input [2:0]SLOT_4_AXIS_tkeep;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tready;
  input [2:0]SLOT_4_AXIS_tstrb;
  input [0:0]SLOT_4_AXIS_tuser;
  input SLOT_4_AXIS_tvalid;
  input clk;
  input [0:0]probe0;
  input resetn;

  wire [23:0]SLOT_0_AXIS_tdata;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire [23:0]SLOT_1_AXIS_tdata;
  wire [2:0]SLOT_1_AXIS_tkeep;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire [0:0]SLOT_1_AXIS_tuser;
  wire SLOT_1_AXIS_tvalid;
  wire [23:0]SLOT_2_AXIS_tdata;
  wire [0:0]SLOT_2_AXIS_tdest;
  wire [0:0]SLOT_2_AXIS_tid;
  wire [2:0]SLOT_2_AXIS_tkeep;
  wire SLOT_2_AXIS_tlast;
  wire SLOT_2_AXIS_tready;
  wire [2:0]SLOT_2_AXIS_tstrb;
  wire [0:0]SLOT_2_AXIS_tuser;
  wire SLOT_2_AXIS_tvalid;
  wire [23:0]SLOT_3_AXIS_tdata;
  wire [2:0]SLOT_3_AXIS_tkeep;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire [0:0]SLOT_3_AXIS_tuser;
  wire SLOT_3_AXIS_tvalid;
  wire [23:0]SLOT_4_AXIS_tdata;
  wire [0:0]SLOT_4_AXIS_tdest;
  wire [0:0]SLOT_4_AXIS_tid;
  wire [2:0]SLOT_4_AXIS_tkeep;
  wire SLOT_4_AXIS_tlast;
  wire SLOT_4_AXIS_tready;
  wire [2:0]SLOT_4_AXIS_tstrb;
  wire [0:0]SLOT_4_AXIS_tuser;
  wire SLOT_4_AXIS_tvalid;
  wire clk;
  wire [0:0]probe0;
  wire resetn;

  bd_082c bd_082c_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tkeep(SLOT_1_AXIS_tkeep),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
        .SLOT_1_AXIS_tuser(SLOT_1_AXIS_tuser),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
        .SLOT_2_AXIS_tdest(SLOT_2_AXIS_tdest),
        .SLOT_2_AXIS_tid(SLOT_2_AXIS_tid),
        .SLOT_2_AXIS_tkeep(SLOT_2_AXIS_tkeep),
        .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
        .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
        .SLOT_2_AXIS_tstrb(SLOT_2_AXIS_tstrb),
        .SLOT_2_AXIS_tuser(SLOT_2_AXIS_tuser),
        .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tkeep(SLOT_3_AXIS_tkeep),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tuser(SLOT_3_AXIS_tuser),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
        .SLOT_4_AXIS_tdest(SLOT_4_AXIS_tdest),
        .SLOT_4_AXIS_tid(SLOT_4_AXIS_tid),
        .SLOT_4_AXIS_tkeep(SLOT_4_AXIS_tkeep),
        .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
        .SLOT_4_AXIS_tready(SLOT_4_AXIS_tready),
        .SLOT_4_AXIS_tstrb(SLOT_4_AXIS_tstrb),
        .SLOT_4_AXIS_tuser(SLOT_4_AXIS_tuser),
        .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .resetn(resetn));
endmodule
