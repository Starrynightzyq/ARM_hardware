//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_082c_wrapper.bd
//Design : bd_082c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_082c_wrapper
   (SLOT_0_VID_IO_active_video,
    SLOT_0_VID_IO_data,
    SLOT_0_VID_IO_field,
    SLOT_0_VID_IO_hblank,
    SLOT_0_VID_IO_hsync,
    SLOT_0_VID_IO_vblank,
    SLOT_0_VID_IO_vsync,
    SLOT_1_VIDEO_TIMING_active_video,
    SLOT_1_VIDEO_TIMING_hblank,
    SLOT_1_VIDEO_TIMING_hsync,
    SLOT_1_VIDEO_TIMING_vblank,
    SLOT_1_VIDEO_TIMING_vsync,
    clk,
    probe0);
  input SLOT_0_VID_IO_active_video;
  input [23:0]SLOT_0_VID_IO_data;
  input SLOT_0_VID_IO_field;
  input SLOT_0_VID_IO_hblank;
  input SLOT_0_VID_IO_hsync;
  input SLOT_0_VID_IO_vblank;
  input SLOT_0_VID_IO_vsync;
  input SLOT_1_VIDEO_TIMING_active_video;
  input SLOT_1_VIDEO_TIMING_hblank;
  input SLOT_1_VIDEO_TIMING_hsync;
  input SLOT_1_VIDEO_TIMING_vblank;
  input SLOT_1_VIDEO_TIMING_vsync;
  input clk;
  input [0:0]probe0;

  wire SLOT_0_VID_IO_active_video;
  wire [23:0]SLOT_0_VID_IO_data;
  wire SLOT_0_VID_IO_field;
  wire SLOT_0_VID_IO_hblank;
  wire SLOT_0_VID_IO_hsync;
  wire SLOT_0_VID_IO_vblank;
  wire SLOT_0_VID_IO_vsync;
  wire SLOT_1_VIDEO_TIMING_active_video;
  wire SLOT_1_VIDEO_TIMING_hblank;
  wire SLOT_1_VIDEO_TIMING_hsync;
  wire SLOT_1_VIDEO_TIMING_vblank;
  wire SLOT_1_VIDEO_TIMING_vsync;
  wire clk;
  wire [0:0]probe0;

  bd_082c bd_082c_i
       (.SLOT_0_VID_IO_active_video(SLOT_0_VID_IO_active_video),
        .SLOT_0_VID_IO_data(SLOT_0_VID_IO_data),
        .SLOT_0_VID_IO_field(SLOT_0_VID_IO_field),
        .SLOT_0_VID_IO_hblank(SLOT_0_VID_IO_hblank),
        .SLOT_0_VID_IO_hsync(SLOT_0_VID_IO_hsync),
        .SLOT_0_VID_IO_vblank(SLOT_0_VID_IO_vblank),
        .SLOT_0_VID_IO_vsync(SLOT_0_VID_IO_vsync),
        .SLOT_1_VIDEO_TIMING_active_video(SLOT_1_VIDEO_TIMING_active_video),
        .SLOT_1_VIDEO_TIMING_hblank(SLOT_1_VIDEO_TIMING_hblank),
        .SLOT_1_VIDEO_TIMING_hsync(SLOT_1_VIDEO_TIMING_hsync),
        .SLOT_1_VIDEO_TIMING_vblank(SLOT_1_VIDEO_TIMING_vblank),
        .SLOT_1_VIDEO_TIMING_vsync(SLOT_1_VIDEO_TIMING_vsync),
        .clk(clk),
        .probe0(probe0));
endmodule
