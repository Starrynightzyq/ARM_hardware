// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jul 14 16:53:47 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_gpio_allocate_0_0/m3_for_arty_a7_gpio_allocate_0_0_stub.v
// Design      : m3_for_arty_a7_gpio_allocate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gpio_allocate,Vivado 2018.2" *)
module m3_for_arty_a7_gpio_allocate_0_0(gpio_input, max_diff, min_continue, 
  min_counter)
/* synthesis syn_black_box black_box_pad_pin="gpio_input[27:0],max_diff[15:0],min_continue[3:0],min_counter[7:0]" */;
  input [27:0]gpio_input;
  output [15:0]max_diff;
  output [3:0]min_continue;
  output [7:0]min_counter;
endmodule
