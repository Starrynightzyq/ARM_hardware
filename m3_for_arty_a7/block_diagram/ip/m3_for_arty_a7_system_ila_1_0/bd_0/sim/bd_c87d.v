//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_c87d.bd
//Design : bd_c87d
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_c87d,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_c87d,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "m3_for_arty_a7_system_ila_1_0.hwdef" *) 
module bd_c87d
   (SLOT_0_VID_IO_active_video,
    SLOT_0_VID_IO_data,
    SLOT_0_VID_IO_hsync,
    SLOT_0_VID_IO_vsync,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 SLOT_0_VID_IO ACTIVE_VIDEO" *) input SLOT_0_VID_IO_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 SLOT_0_VID_IO DATA" *) input [23:0]SLOT_0_VID_IO_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 SLOT_0_VID_IO HSYNC" *) input SLOT_0_VID_IO_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 SLOT_0_VID_IO VSYNC" *) input SLOT_0_VID_IO_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN bd_c87d_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;

  wire SLOT_0_VID_IO_active_video_1;
  wire [23:0]SLOT_0_VID_IO_data_1;
  wire SLOT_0_VID_IO_hsync_1;
  wire SLOT_0_VID_IO_vsync_1;
  wire clk_1;

  assign SLOT_0_VID_IO_active_video_1 = SLOT_0_VID_IO_active_video;
  assign SLOT_0_VID_IO_data_1 = SLOT_0_VID_IO_data[23:0];
  assign SLOT_0_VID_IO_hsync_1 = SLOT_0_VID_IO_hsync;
  assign SLOT_0_VID_IO_vsync_1 = SLOT_0_VID_IO_vsync;
  assign clk_1 = clk;
  bd_c87d_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(SLOT_0_VID_IO_active_video_1),
        .probe1(SLOT_0_VID_IO_vsync_1),
        .probe2(SLOT_0_VID_IO_data_1),
        .probe3(SLOT_0_VID_IO_hsync_1));
endmodule
