//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_082c.bd
//Design : bd_082c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_082c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_082c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "m3_for_arty_a7_system_ila_0_0.hwdef" *) 
module bd_082c
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk, FREQ_HZ 100000000, PHASE 0" *) input clk;
  input [3:0]probe0;
  input [15:0]probe1;
  input [0:0]probe2;
  input [2:0]probe3;
  input [31:0]probe4;
  input [0:0]probe5;
  input [31:0]probe6;
  input [0:0]probe7;

  wire clk_1;
  wire [3:0]probe0_1;
  wire [15:0]probe1_1;
  wire [0:0]probe2_1;
  wire [2:0]probe3_1;
  wire [31:0]probe4_1;
  wire [0:0]probe5_1;
  wire [31:0]probe6_1;
  wire [0:0]probe7_1;

  assign clk_1 = clk;
  assign probe0_1 = probe0[3:0];
  assign probe1_1 = probe1[15:0];
  assign probe2_1 = probe2[0];
  assign probe3_1 = probe3[2:0];
  assign probe4_1 = probe4[31:0];
  assign probe5_1 = probe5[0];
  assign probe6_1 = probe6[31:0];
  assign probe7_1 = probe7[0];
  bd_082c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1),
        .probe5(probe5_1),
        .probe6(probe6_1),
        .probe7(probe7_1));
endmodule
