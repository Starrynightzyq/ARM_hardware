//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_c87d_wrapper.bd
//Design : bd_c87d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_c87d_wrapper
   (SLOT_0_VID_IO_active_video,
    SLOT_0_VID_IO_data,
    SLOT_0_VID_IO_hsync,
    SLOT_0_VID_IO_vsync,
    clk);
  input SLOT_0_VID_IO_active_video;
  input [23:0]SLOT_0_VID_IO_data;
  input SLOT_0_VID_IO_hsync;
  input SLOT_0_VID_IO_vsync;
  input clk;

  wire SLOT_0_VID_IO_active_video;
  wire [23:0]SLOT_0_VID_IO_data;
  wire SLOT_0_VID_IO_hsync;
  wire SLOT_0_VID_IO_vsync;
  wire clk;

  bd_c87d bd_c87d_i
       (.SLOT_0_VID_IO_active_video(SLOT_0_VID_IO_active_video),
        .SLOT_0_VID_IO_data(SLOT_0_VID_IO_data),
        .SLOT_0_VID_IO_hsync(SLOT_0_VID_IO_hsync),
        .SLOT_0_VID_IO_vsync(SLOT_0_VID_IO_vsync),
        .clk(clk));
endmodule
