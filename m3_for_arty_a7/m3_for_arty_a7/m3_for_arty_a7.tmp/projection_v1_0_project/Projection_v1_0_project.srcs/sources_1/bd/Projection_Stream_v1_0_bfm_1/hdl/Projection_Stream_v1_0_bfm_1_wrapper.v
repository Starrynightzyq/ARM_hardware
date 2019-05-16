//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun May 12 11:16:21 2019
//Host        : DESKTOP-A56TUCA running 64-bit major release  (build 9200)
//Command     : generate_target Projection_Stream_v1_0_bfm_1_wrapper.bd
//Design      : Projection_Stream_v1_0_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Projection_Stream_v1_0_bfm_1_wrapper
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
  input ACLK;
  input ARESETN;
  output [31:0]M_AXIS_0_tdata;
  output M_AXIS_0_tlast;
  input M_AXIS_0_tready;
  output [3:0]M_AXIS_0_tstrb;
  output M_AXIS_0_tvalid;
  input [31:0]S_AXIS_0_tdata;
  input S_AXIS_0_tlast;
  output S_AXIS_0_tready;
  input [3:0]S_AXIS_0_tstrb;
  input S_AXIS_0_tvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_AXIS_0_tdata;
  wire M_AXIS_0_tlast;
  wire M_AXIS_0_tready;
  wire [3:0]M_AXIS_0_tstrb;
  wire M_AXIS_0_tvalid;
  wire [31:0]S_AXIS_0_tdata;
  wire S_AXIS_0_tlast;
  wire S_AXIS_0_tready;
  wire [3:0]S_AXIS_0_tstrb;
  wire S_AXIS_0_tvalid;

  Projection_Stream_v1_0_bfm_1 Projection_Stream_v1_0_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXIS_0_tdata(M_AXIS_0_tdata),
        .M_AXIS_0_tlast(M_AXIS_0_tlast),
        .M_AXIS_0_tready(M_AXIS_0_tready),
        .M_AXIS_0_tstrb(M_AXIS_0_tstrb),
        .M_AXIS_0_tvalid(M_AXIS_0_tvalid),
        .S_AXIS_0_tdata(S_AXIS_0_tdata),
        .S_AXIS_0_tlast(S_AXIS_0_tlast),
        .S_AXIS_0_tready(S_AXIS_0_tready),
        .S_AXIS_0_tstrb(S_AXIS_0_tstrb),
        .S_AXIS_0_tvalid(S_AXIS_0_tvalid));
endmodule
