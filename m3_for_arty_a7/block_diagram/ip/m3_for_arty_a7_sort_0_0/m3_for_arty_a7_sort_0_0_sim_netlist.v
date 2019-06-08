// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jun  8 15:11:44 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               V:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_sort_0_0/m3_for_arty_a7_sort_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_sort_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_sort_0_0,sort,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sort,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_sort_0_0
   (clk,
    rst_n,
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
    diff_sum_10_ap_vld,
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
    char_index,
    char_diff,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input diff_sum_0_ap_vld;
  input diff_sum_1_ap_vld;
  input diff_sum_2_ap_vld;
  input diff_sum_3_ap_vld;
  input diff_sum_4_ap_vld;
  input diff_sum_5_ap_vld;
  input diff_sum_6_ap_vld;
  input diff_sum_7_ap_vld;
  input diff_sum_8_ap_vld;
  input diff_sum_9_ap_vld;
  input diff_sum_10_ap_vld;
  input [15:0]diff_sum_0;
  input [15:0]diff_sum_1;
  input [15:0]diff_sum_2;
  input [15:0]diff_sum_3;
  input [15:0]diff_sum_4;
  input [15:0]diff_sum_5;
  input [15:0]diff_sum_6;
  input [15:0]diff_sum_7;
  input [15:0]diff_sum_8;
  input [15:0]diff_sum_9;
  input [15:0]diff_sum_10;
  output [3:0]char_index;
  output [15:0]char_diff;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire clk;
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
  wire interrupt;
  wire rst_n;

  m3_for_arty_a7_sort_0_0_sort inst
       (.char_diff(char_diff),
        .char_index(char_index),
        .clk(clk),
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
        .interrupt(interrupt),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "sort" *) 
module m3_for_arty_a7_sort_0_0_sort
   (interrupt,
    char_index,
    char_diff,
    clk,
    diff_sum_1_ap_vld,
    diff_sum_3_ap_vld,
    diff_sum_4_ap_vld,
    diff_sum_2_ap_vld,
    diff_sum_0_ap_vld,
    diff_sum_7_ap_vld,
    diff_sum_10_ap_vld,
    diff_sum_8_ap_vld,
    diff_sum_9_ap_vld,
    diff_sum_6_ap_vld,
    diff_sum_5_ap_vld,
    diff_sum_10,
    diff_sum_9,
    diff_sum_8,
    diff_sum_7,
    diff_sum_6,
    diff_sum_5,
    diff_sum_4,
    diff_sum_3,
    diff_sum_2,
    diff_sum_1,
    diff_sum_0,
    rst_n);
  output interrupt;
  output [3:0]char_index;
  output [15:0]char_diff;
  input clk;
  input diff_sum_1_ap_vld;
  input diff_sum_3_ap_vld;
  input diff_sum_4_ap_vld;
  input diff_sum_2_ap_vld;
  input diff_sum_0_ap_vld;
  input diff_sum_7_ap_vld;
  input diff_sum_10_ap_vld;
  input diff_sum_8_ap_vld;
  input diff_sum_9_ap_vld;
  input diff_sum_6_ap_vld;
  input diff_sum_5_ap_vld;
  input [15:0]diff_sum_10;
  input [15:0]diff_sum_9;
  input [15:0]diff_sum_8;
  input [15:0]diff_sum_7;
  input [15:0]diff_sum_6;
  input [15:0]diff_sum_5;
  input [15:0]diff_sum_4;
  input [15:0]diff_sum_3;
  input [15:0]diff_sum_2;
  input [15:0]diff_sum_1;
  input [15:0]diff_sum_0;
  input rst_n;

  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire clk;
  wire [15:0]diff_sum_0;
  wire diff_sum_0_ap_vld;
  wire [15:0]diff_sum_0_r;
  wire [15:0]diff_sum_1;
  wire [15:0]diff_sum_10;
  wire diff_sum_10_ap_vld;
  wire [15:0]diff_sum_10_r;
  wire \diff_sum_10_r[15]_i_2_n_0 ;
  wire \diff_sum_10_r[15]_i_3_n_0 ;
  wire diff_sum_1_ap_vld;
  wire [15:0]diff_sum_1_r;
  wire [15:0]diff_sum_2;
  wire diff_sum_2_ap_vld;
  wire [15:0]diff_sum_2_r;
  wire [15:0]diff_sum_3;
  wire diff_sum_3_ap_vld;
  wire [15:0]diff_sum_3_r;
  wire [15:0]diff_sum_4;
  wire diff_sum_4_ap_vld;
  wire [15:0]diff_sum_4_r;
  wire [15:0]diff_sum_5;
  wire diff_sum_5_ap_vld;
  wire [15:0]diff_sum_5_r;
  wire [15:0]diff_sum_6;
  wire diff_sum_6_ap_vld;
  wire [15:0]diff_sum_6_r;
  wire [15:0]diff_sum_7;
  wire diff_sum_7_ap_vld;
  wire [15:0]diff_sum_7_r;
  wire [15:0]diff_sum_8;
  wire diff_sum_8_ap_vld;
  wire [15:0]diff_sum_8_r;
  wire [15:0]diff_sum_9;
  wire diff_sum_9_ap_vld;
  wire [15:0]diff_sum_9_r;
  wire din_vld;
  wire din_vld_4_r_reg_srl4_n_0;
  wire interrupt;
  wire [15:0]min1_1;
  wire min1_11;
  wire min1_11_carry__0_i_1_n_0;
  wire min1_11_carry__0_i_2_n_0;
  wire min1_11_carry__0_i_3_n_0;
  wire min1_11_carry__0_i_4_n_0;
  wire min1_11_carry__0_i_5_n_0;
  wire min1_11_carry__0_i_6_n_0;
  wire min1_11_carry__0_i_7_n_0;
  wire min1_11_carry__0_i_8_n_0;
  wire min1_11_carry__0_n_1;
  wire min1_11_carry__0_n_2;
  wire min1_11_carry__0_n_3;
  wire min1_11_carry_i_1_n_0;
  wire min1_11_carry_i_2_n_0;
  wire min1_11_carry_i_3_n_0;
  wire min1_11_carry_i_4_n_0;
  wire min1_11_carry_i_5_n_0;
  wire min1_11_carry_i_6_n_0;
  wire min1_11_carry_i_7_n_0;
  wire min1_11_carry_i_8_n_0;
  wire min1_11_carry_n_0;
  wire min1_11_carry_n_1;
  wire min1_11_carry_n_2;
  wire min1_11_carry_n_3;
  wire \min1_1[0]_i_1_n_0 ;
  wire \min1_1[10]_i_1_n_0 ;
  wire \min1_1[11]_i_1_n_0 ;
  wire \min1_1[12]_i_1_n_0 ;
  wire \min1_1[13]_i_1_n_0 ;
  wire \min1_1[14]_i_1_n_0 ;
  wire \min1_1[15]_i_1_n_0 ;
  wire \min1_1[1]_i_1_n_0 ;
  wire \min1_1[2]_i_1_n_0 ;
  wire \min1_1[3]_i_1_n_0 ;
  wire \min1_1[4]_i_1_n_0 ;
  wire \min1_1[5]_i_1_n_0 ;
  wire \min1_1[6]_i_1_n_0 ;
  wire \min1_1[7]_i_1_n_0 ;
  wire \min1_1[8]_i_1_n_0 ;
  wire \min1_1[9]_i_1_n_0 ;
  wire [0:0]min1_1_index;
  wire \min1_1_index[0]_i_1_n_0 ;
  wire [15:0]min1_2;
  wire min1_21;
  wire min1_21_carry__0_i_1_n_0;
  wire min1_21_carry__0_i_2_n_0;
  wire min1_21_carry__0_i_3_n_0;
  wire min1_21_carry__0_i_4_n_0;
  wire min1_21_carry__0_i_5_n_0;
  wire min1_21_carry__0_i_6_n_0;
  wire min1_21_carry__0_i_7_n_0;
  wire min1_21_carry__0_i_8_n_0;
  wire min1_21_carry__0_n_1;
  wire min1_21_carry__0_n_2;
  wire min1_21_carry__0_n_3;
  wire min1_21_carry_i_1_n_0;
  wire min1_21_carry_i_2_n_0;
  wire min1_21_carry_i_3_n_0;
  wire min1_21_carry_i_4_n_0;
  wire min1_21_carry_i_5_n_0;
  wire min1_21_carry_i_6_n_0;
  wire min1_21_carry_i_7_n_0;
  wire min1_21_carry_i_8_n_0;
  wire min1_21_carry_n_0;
  wire min1_21_carry_n_1;
  wire min1_21_carry_n_2;
  wire min1_21_carry_n_3;
  wire \min1_2[0]_i_1_n_0 ;
  wire \min1_2[10]_i_1_n_0 ;
  wire \min1_2[11]_i_1_n_0 ;
  wire \min1_2[12]_i_1_n_0 ;
  wire \min1_2[13]_i_1_n_0 ;
  wire \min1_2[14]_i_1_n_0 ;
  wire \min1_2[15]_i_1_n_0 ;
  wire \min1_2[1]_i_1_n_0 ;
  wire \min1_2[2]_i_1_n_0 ;
  wire \min1_2[3]_i_1_n_0 ;
  wire \min1_2[4]_i_1_n_0 ;
  wire \min1_2[5]_i_1_n_0 ;
  wire \min1_2[6]_i_1_n_0 ;
  wire \min1_2[7]_i_1_n_0 ;
  wire \min1_2[8]_i_1_n_0 ;
  wire \min1_2[9]_i_1_n_0 ;
  wire [0:0]min1_2_index;
  wire \min1_2_index[0]_i_1_n_0 ;
  wire [15:0]min1_3;
  wire min1_31;
  wire min1_31_carry__0_i_1_n_0;
  wire min1_31_carry__0_i_2_n_0;
  wire min1_31_carry__0_i_3_n_0;
  wire min1_31_carry__0_i_4_n_0;
  wire min1_31_carry__0_i_5_n_0;
  wire min1_31_carry__0_i_6_n_0;
  wire min1_31_carry__0_i_7_n_0;
  wire min1_31_carry__0_i_8_n_0;
  wire min1_31_carry__0_n_1;
  wire min1_31_carry__0_n_2;
  wire min1_31_carry__0_n_3;
  wire min1_31_carry_i_1_n_0;
  wire min1_31_carry_i_2_n_0;
  wire min1_31_carry_i_3_n_0;
  wire min1_31_carry_i_4_n_0;
  wire min1_31_carry_i_5_n_0;
  wire min1_31_carry_i_6_n_0;
  wire min1_31_carry_i_7_n_0;
  wire min1_31_carry_i_8_n_0;
  wire min1_31_carry_n_0;
  wire min1_31_carry_n_1;
  wire min1_31_carry_n_2;
  wire min1_31_carry_n_3;
  wire \min1_3[0]_i_1_n_0 ;
  wire \min1_3[10]_i_1_n_0 ;
  wire \min1_3[11]_i_1_n_0 ;
  wire \min1_3[12]_i_1_n_0 ;
  wire \min1_3[13]_i_1_n_0 ;
  wire \min1_3[14]_i_1_n_0 ;
  wire \min1_3[15]_i_1_n_0 ;
  wire \min1_3[1]_i_1_n_0 ;
  wire \min1_3[2]_i_1_n_0 ;
  wire \min1_3[3]_i_1_n_0 ;
  wire \min1_3[4]_i_1_n_0 ;
  wire \min1_3[5]_i_1_n_0 ;
  wire \min1_3[6]_i_1_n_0 ;
  wire \min1_3[7]_i_1_n_0 ;
  wire \min1_3[8]_i_1_n_0 ;
  wire \min1_3[9]_i_1_n_0 ;
  wire [0:0]min1_3_index;
  wire \min1_3_index[0]_i_1_n_0 ;
  wire [15:0]min1_4;
  wire min1_41;
  wire min1_41_carry__0_i_1_n_0;
  wire min1_41_carry__0_i_2_n_0;
  wire min1_41_carry__0_i_3_n_0;
  wire min1_41_carry__0_i_4_n_0;
  wire min1_41_carry__0_i_5_n_0;
  wire min1_41_carry__0_i_6_n_0;
  wire min1_41_carry__0_i_7_n_0;
  wire min1_41_carry__0_i_8_n_0;
  wire min1_41_carry__0_n_1;
  wire min1_41_carry__0_n_2;
  wire min1_41_carry__0_n_3;
  wire min1_41_carry_i_1_n_0;
  wire min1_41_carry_i_2_n_0;
  wire min1_41_carry_i_3_n_0;
  wire min1_41_carry_i_4_n_0;
  wire min1_41_carry_i_5_n_0;
  wire min1_41_carry_i_6_n_0;
  wire min1_41_carry_i_7_n_0;
  wire min1_41_carry_i_8_n_0;
  wire min1_41_carry_n_0;
  wire min1_41_carry_n_1;
  wire min1_41_carry_n_2;
  wire min1_41_carry_n_3;
  wire \min1_4[0]_i_1_n_0 ;
  wire \min1_4[10]_i_1_n_0 ;
  wire \min1_4[11]_i_1_n_0 ;
  wire \min1_4[12]_i_1_n_0 ;
  wire \min1_4[13]_i_1_n_0 ;
  wire \min1_4[14]_i_1_n_0 ;
  wire \min1_4[15]_i_1_n_0 ;
  wire \min1_4[1]_i_1_n_0 ;
  wire \min1_4[2]_i_1_n_0 ;
  wire \min1_4[3]_i_1_n_0 ;
  wire \min1_4[4]_i_1_n_0 ;
  wire \min1_4[5]_i_1_n_0 ;
  wire \min1_4[6]_i_1_n_0 ;
  wire \min1_4[7]_i_1_n_0 ;
  wire \min1_4[8]_i_1_n_0 ;
  wire \min1_4[9]_i_1_n_0 ;
  wire [0:0]min1_4_index;
  wire \min1_4_index[0]_i_1_n_0 ;
  wire [15:0]min1_5;
  wire min1_51;
  wire min1_51_carry__0_i_1_n_0;
  wire min1_51_carry__0_i_2_n_0;
  wire min1_51_carry__0_i_3_n_0;
  wire min1_51_carry__0_i_4_n_0;
  wire min1_51_carry__0_i_5_n_0;
  wire min1_51_carry__0_i_6_n_0;
  wire min1_51_carry__0_i_7_n_0;
  wire min1_51_carry__0_i_8_n_0;
  wire min1_51_carry__0_n_1;
  wire min1_51_carry__0_n_2;
  wire min1_51_carry__0_n_3;
  wire min1_51_carry_i_1_n_0;
  wire min1_51_carry_i_2_n_0;
  wire min1_51_carry_i_3_n_0;
  wire min1_51_carry_i_4_n_0;
  wire min1_51_carry_i_5_n_0;
  wire min1_51_carry_i_6_n_0;
  wire min1_51_carry_i_7_n_0;
  wire min1_51_carry_i_8_n_0;
  wire min1_51_carry_n_0;
  wire min1_51_carry_n_1;
  wire min1_51_carry_n_2;
  wire min1_51_carry_n_3;
  wire [3:0]min1_5_index;
  wire \min1_5_index[0]_i_1_n_0 ;
  wire [15:0]min1_6;
  wire [3:3]min1_6_index;
  wire [15:0]min2_1;
  wire min2_11_carry__0_i_1_n_0;
  wire min2_11_carry__0_i_2_n_0;
  wire min2_11_carry__0_i_3_n_0;
  wire min2_11_carry__0_i_4_n_0;
  wire min2_11_carry__0_i_5_n_0;
  wire min2_11_carry__0_i_6_n_0;
  wire min2_11_carry__0_i_7_n_0;
  wire min2_11_carry__0_i_8_n_0;
  wire min2_11_carry__0_n_0;
  wire min2_11_carry__0_n_1;
  wire min2_11_carry__0_n_2;
  wire min2_11_carry__0_n_3;
  wire min2_11_carry_i_1_n_0;
  wire min2_11_carry_i_2_n_0;
  wire min2_11_carry_i_3_n_0;
  wire min2_11_carry_i_4_n_0;
  wire min2_11_carry_i_5_n_0;
  wire min2_11_carry_i_6_n_0;
  wire min2_11_carry_i_7_n_0;
  wire min2_11_carry_i_8_n_0;
  wire min2_11_carry_n_0;
  wire min2_11_carry_n_1;
  wire min2_11_carry_n_2;
  wire min2_11_carry_n_3;
  wire \min2_1[0]_i_1_n_0 ;
  wire \min2_1[10]_i_1_n_0 ;
  wire \min2_1[11]_i_1_n_0 ;
  wire \min2_1[12]_i_1_n_0 ;
  wire \min2_1[13]_i_1_n_0 ;
  wire \min2_1[14]_i_1_n_0 ;
  wire \min2_1[15]_i_1_n_0 ;
  wire \min2_1[1]_i_1_n_0 ;
  wire \min2_1[2]_i_1_n_0 ;
  wire \min2_1[3]_i_1_n_0 ;
  wire \min2_1[4]_i_1_n_0 ;
  wire \min2_1[5]_i_1_n_0 ;
  wire \min2_1[6]_i_1_n_0 ;
  wire \min2_1[7]_i_1_n_0 ;
  wire \min2_1[8]_i_1_n_0 ;
  wire \min2_1[9]_i_1_n_0 ;
  wire [1:0]min2_1_index;
  wire \min2_1_index[0]_i_1_n_0 ;
  wire \min2_1_index[1]_i_1_n_0 ;
  wire [15:0]min2_2;
  wire min2_21_carry__0_i_1_n_0;
  wire min2_21_carry__0_i_2_n_0;
  wire min2_21_carry__0_i_3_n_0;
  wire min2_21_carry__0_i_4_n_0;
  wire min2_21_carry__0_i_5_n_0;
  wire min2_21_carry__0_i_6_n_0;
  wire min2_21_carry__0_i_7_n_0;
  wire min2_21_carry__0_i_8_n_0;
  wire min2_21_carry__0_n_0;
  wire min2_21_carry__0_n_1;
  wire min2_21_carry__0_n_2;
  wire min2_21_carry__0_n_3;
  wire min2_21_carry_i_1_n_0;
  wire min2_21_carry_i_2_n_0;
  wire min2_21_carry_i_3_n_0;
  wire min2_21_carry_i_4_n_0;
  wire min2_21_carry_i_5_n_0;
  wire min2_21_carry_i_6_n_0;
  wire min2_21_carry_i_7_n_0;
  wire min2_21_carry_i_8_n_0;
  wire min2_21_carry_n_0;
  wire min2_21_carry_n_1;
  wire min2_21_carry_n_2;
  wire min2_21_carry_n_3;
  wire \min2_2[0]_i_1_n_0 ;
  wire \min2_2[10]_i_1_n_0 ;
  wire \min2_2[11]_i_1_n_0 ;
  wire \min2_2[12]_i_1_n_0 ;
  wire \min2_2[13]_i_1_n_0 ;
  wire \min2_2[14]_i_1_n_0 ;
  wire \min2_2[15]_i_1_n_0 ;
  wire \min2_2[1]_i_1_n_0 ;
  wire \min2_2[2]_i_1_n_0 ;
  wire \min2_2[3]_i_1_n_0 ;
  wire \min2_2[4]_i_1_n_0 ;
  wire \min2_2[5]_i_1_n_0 ;
  wire \min2_2[6]_i_1_n_0 ;
  wire \min2_2[7]_i_1_n_0 ;
  wire \min2_2[8]_i_1_n_0 ;
  wire \min2_2[9]_i_1_n_0 ;
  wire [2:0]min2_2_index;
  wire \min2_2_index[0]_i_1_n_0 ;
  wire \min2_2_index[1]_i_1_n_0 ;
  wire [15:0]min2_3;
  wire min2_31_carry__0_i_1_n_0;
  wire min2_31_carry__0_i_2_n_0;
  wire min2_31_carry__0_i_3_n_0;
  wire min2_31_carry__0_i_4_n_0;
  wire min2_31_carry__0_i_5_n_0;
  wire min2_31_carry__0_i_6_n_0;
  wire min2_31_carry__0_i_7_n_0;
  wire min2_31_carry__0_i_8_n_0;
  wire min2_31_carry__0_n_0;
  wire min2_31_carry__0_n_1;
  wire min2_31_carry__0_n_2;
  wire min2_31_carry__0_n_3;
  wire min2_31_carry_i_1_n_0;
  wire min2_31_carry_i_2_n_0;
  wire min2_31_carry_i_3_n_0;
  wire min2_31_carry_i_4_n_0;
  wire min2_31_carry_i_5_n_0;
  wire min2_31_carry_i_6_n_0;
  wire min2_31_carry_i_7_n_0;
  wire min2_31_carry_i_8_n_0;
  wire min2_31_carry_n_0;
  wire min2_31_carry_n_1;
  wire min2_31_carry_n_2;
  wire min2_31_carry_n_3;
  wire \min2_3[0]_i_1_n_0 ;
  wire \min2_3[10]_i_1_n_0 ;
  wire \min2_3[11]_i_1_n_0 ;
  wire \min2_3[12]_i_1_n_0 ;
  wire \min2_3[13]_i_1_n_0 ;
  wire \min2_3[14]_i_1_n_0 ;
  wire \min2_3[15]_i_1_n_0 ;
  wire \min2_3[1]_i_1_n_0 ;
  wire \min2_3[2]_i_1_n_0 ;
  wire \min2_3[3]_i_1_n_0 ;
  wire \min2_3[4]_i_1_n_0 ;
  wire \min2_3[5]_i_1_n_0 ;
  wire \min2_3[6]_i_1_n_0 ;
  wire \min2_3[7]_i_1_n_0 ;
  wire \min2_3[8]_i_1_n_0 ;
  wire \min2_3[9]_i_1_n_0 ;
  wire \min2_3_index[0]_i_1_n_0 ;
  wire \min2_3_index[1]_i_1_n_0 ;
  wire \min2_3_index[3]_i_1_n_0 ;
  wire \min2_3_index_reg_n_0_[0] ;
  wire \min2_3_index_reg_n_0_[1] ;
  wire \min2_3_index_reg_n_0_[3] ;
  wire [15:0]min3_1;
  wire min3_11_carry__0_i_1_n_0;
  wire min3_11_carry__0_i_2_n_0;
  wire min3_11_carry__0_i_3_n_0;
  wire min3_11_carry__0_i_4_n_0;
  wire min3_11_carry__0_i_5_n_0;
  wire min3_11_carry__0_i_6_n_0;
  wire min3_11_carry__0_i_7_n_0;
  wire min3_11_carry__0_i_8_n_0;
  wire min3_11_carry__0_n_0;
  wire min3_11_carry__0_n_1;
  wire min3_11_carry__0_n_2;
  wire min3_11_carry__0_n_3;
  wire min3_11_carry_i_1_n_0;
  wire min3_11_carry_i_2_n_0;
  wire min3_11_carry_i_3_n_0;
  wire min3_11_carry_i_4_n_0;
  wire min3_11_carry_i_5_n_0;
  wire min3_11_carry_i_6_n_0;
  wire min3_11_carry_i_7_n_0;
  wire min3_11_carry_i_8_n_0;
  wire min3_11_carry_n_0;
  wire min3_11_carry_n_1;
  wire min3_11_carry_n_2;
  wire min3_11_carry_n_3;
  wire \min3_1[0]_i_1_n_0 ;
  wire \min3_1[10]_i_1_n_0 ;
  wire \min3_1[11]_i_1_n_0 ;
  wire \min3_1[12]_i_1_n_0 ;
  wire \min3_1[13]_i_1_n_0 ;
  wire \min3_1[14]_i_1_n_0 ;
  wire \min3_1[15]_i_1_n_0 ;
  wire \min3_1[1]_i_1_n_0 ;
  wire \min3_1[2]_i_1_n_0 ;
  wire \min3_1[3]_i_1_n_0 ;
  wire \min3_1[4]_i_1_n_0 ;
  wire \min3_1[5]_i_1_n_0 ;
  wire \min3_1[6]_i_1_n_0 ;
  wire \min3_1[7]_i_1_n_0 ;
  wire \min3_1[8]_i_1_n_0 ;
  wire \min3_1[9]_i_1_n_0 ;
  wire [2:0]min3_1_index;
  wire \min3_1_index[0]_i_1_n_0 ;
  wire \min3_1_index[1]_i_1_n_0 ;
  wire \min3_1_index[2]_i_1_n_0 ;
  wire [15:0]min3_2;
  wire [3:0]min3_2_index;
  wire min4_11_carry__0_i_1_n_0;
  wire min4_11_carry__0_i_2_n_0;
  wire min4_11_carry__0_i_3_n_0;
  wire min4_11_carry__0_i_4_n_0;
  wire min4_11_carry__0_i_5_n_0;
  wire min4_11_carry__0_i_6_n_0;
  wire min4_11_carry__0_i_7_n_0;
  wire min4_11_carry__0_i_8_n_0;
  wire min4_11_carry__0_n_0;
  wire min4_11_carry__0_n_1;
  wire min4_11_carry__0_n_2;
  wire min4_11_carry__0_n_3;
  wire min4_11_carry_i_1_n_0;
  wire min4_11_carry_i_2_n_0;
  wire min4_11_carry_i_3_n_0;
  wire min4_11_carry_i_4_n_0;
  wire min4_11_carry_i_5_n_0;
  wire min4_11_carry_i_6_n_0;
  wire min4_11_carry_i_7_n_0;
  wire min4_11_carry_i_8_n_0;
  wire min4_11_carry_n_0;
  wire min4_11_carry_n_1;
  wire min4_11_carry_n_2;
  wire min4_11_carry_n_3;
  wire \min4_1[0]_i_1_n_0 ;
  wire \min4_1[10]_i_1_n_0 ;
  wire \min4_1[11]_i_1_n_0 ;
  wire \min4_1[12]_i_1_n_0 ;
  wire \min4_1[13]_i_1_n_0 ;
  wire \min4_1[14]_i_1_n_0 ;
  wire \min4_1[15]_i_1_n_0 ;
  wire \min4_1[1]_i_1_n_0 ;
  wire \min4_1[2]_i_1_n_0 ;
  wire \min4_1[3]_i_1_n_0 ;
  wire \min4_1[4]_i_1_n_0 ;
  wire \min4_1[5]_i_1_n_0 ;
  wire \min4_1[6]_i_1_n_0 ;
  wire \min4_1[7]_i_1_n_0 ;
  wire \min4_1[8]_i_1_n_0 ;
  wire \min4_1[9]_i_1_n_0 ;
  wire \min4_1_index[0]_i_1_n_0 ;
  wire \min4_1_index[1]_i_1_n_0 ;
  wire \min4_1_index[2]_i_1_n_0 ;
  wire \min4_1_index[3]_i_1_n_0 ;
  wire [15:0]p_0_in;
  wire rst_n;
  wire [3:0]NLW_min1_11_carry_O_UNCONNECTED;
  wire [3:0]NLW_min1_11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min1_21_carry_O_UNCONNECTED;
  wire [3:0]NLW_min1_21_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min1_31_carry_O_UNCONNECTED;
  wire [3:0]NLW_min1_31_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min1_41_carry_O_UNCONNECTED;
  wire [3:0]NLW_min1_41_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min1_51_carry_O_UNCONNECTED;
  wire [3:0]NLW_min1_51_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min2_11_carry_O_UNCONNECTED;
  wire [3:0]NLW_min2_11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min2_21_carry_O_UNCONNECTED;
  wire [3:0]NLW_min2_21_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min2_31_carry_O_UNCONNECTED;
  wire [3:0]NLW_min2_31_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min3_11_carry_O_UNCONNECTED;
  wire [3:0]NLW_min3_11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_min4_11_carry_O_UNCONNECTED;
  wire [3:0]NLW_min4_11_carry__0_O_UNCONNECTED;

  FDCE \diff_sum_0_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[0]),
        .Q(diff_sum_0_r[0]));
  FDCE \diff_sum_0_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[10]),
        .Q(diff_sum_0_r[10]));
  FDCE \diff_sum_0_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[11]),
        .Q(diff_sum_0_r[11]));
  FDCE \diff_sum_0_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[12]),
        .Q(diff_sum_0_r[12]));
  FDCE \diff_sum_0_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[13]),
        .Q(diff_sum_0_r[13]));
  FDCE \diff_sum_0_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[14]),
        .Q(diff_sum_0_r[14]));
  FDCE \diff_sum_0_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[15]),
        .Q(diff_sum_0_r[15]));
  FDCE \diff_sum_0_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[1]),
        .Q(diff_sum_0_r[1]));
  FDCE \diff_sum_0_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[2]),
        .Q(diff_sum_0_r[2]));
  FDCE \diff_sum_0_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[3]),
        .Q(diff_sum_0_r[3]));
  FDCE \diff_sum_0_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[4]),
        .Q(diff_sum_0_r[4]));
  FDCE \diff_sum_0_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[5]),
        .Q(diff_sum_0_r[5]));
  FDCE \diff_sum_0_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[6]),
        .Q(diff_sum_0_r[6]));
  FDCE \diff_sum_0_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[7]),
        .Q(diff_sum_0_r[7]));
  FDCE \diff_sum_0_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[8]),
        .Q(diff_sum_0_r[8]));
  FDCE \diff_sum_0_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_0[9]),
        .Q(diff_sum_0_r[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \diff_sum_10_r[15]_i_1 
       (.I0(diff_sum_1_ap_vld),
        .I1(diff_sum_3_ap_vld),
        .I2(\diff_sum_10_r[15]_i_3_n_0 ),
        .I3(diff_sum_4_ap_vld),
        .I4(diff_sum_2_ap_vld),
        .I5(diff_sum_0_ap_vld),
        .O(din_vld));
  LUT1 #(
    .INIT(2'h1)) 
    \diff_sum_10_r[15]_i_2 
       (.I0(rst_n),
        .O(\diff_sum_10_r[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \diff_sum_10_r[15]_i_3 
       (.I0(diff_sum_7_ap_vld),
        .I1(diff_sum_10_ap_vld),
        .I2(diff_sum_8_ap_vld),
        .I3(diff_sum_9_ap_vld),
        .I4(diff_sum_6_ap_vld),
        .I5(diff_sum_5_ap_vld),
        .O(\diff_sum_10_r[15]_i_3_n_0 ));
  FDCE \diff_sum_10_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[0]),
        .Q(diff_sum_10_r[0]));
  FDCE \diff_sum_10_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[10]),
        .Q(diff_sum_10_r[10]));
  FDCE \diff_sum_10_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[11]),
        .Q(diff_sum_10_r[11]));
  FDCE \diff_sum_10_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[12]),
        .Q(diff_sum_10_r[12]));
  FDCE \diff_sum_10_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[13]),
        .Q(diff_sum_10_r[13]));
  FDCE \diff_sum_10_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[14]),
        .Q(diff_sum_10_r[14]));
  FDCE \diff_sum_10_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[15]),
        .Q(diff_sum_10_r[15]));
  FDCE \diff_sum_10_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[1]),
        .Q(diff_sum_10_r[1]));
  FDCE \diff_sum_10_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[2]),
        .Q(diff_sum_10_r[2]));
  FDCE \diff_sum_10_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[3]),
        .Q(diff_sum_10_r[3]));
  FDCE \diff_sum_10_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[4]),
        .Q(diff_sum_10_r[4]));
  FDCE \diff_sum_10_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[5]),
        .Q(diff_sum_10_r[5]));
  FDCE \diff_sum_10_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[6]),
        .Q(diff_sum_10_r[6]));
  FDCE \diff_sum_10_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[7]),
        .Q(diff_sum_10_r[7]));
  FDCE \diff_sum_10_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[8]),
        .Q(diff_sum_10_r[8]));
  FDCE \diff_sum_10_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_10[9]),
        .Q(diff_sum_10_r[9]));
  FDCE \diff_sum_1_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[0]),
        .Q(diff_sum_1_r[0]));
  FDCE \diff_sum_1_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[10]),
        .Q(diff_sum_1_r[10]));
  FDCE \diff_sum_1_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[11]),
        .Q(diff_sum_1_r[11]));
  FDCE \diff_sum_1_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[12]),
        .Q(diff_sum_1_r[12]));
  FDCE \diff_sum_1_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[13]),
        .Q(diff_sum_1_r[13]));
  FDCE \diff_sum_1_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[14]),
        .Q(diff_sum_1_r[14]));
  FDCE \diff_sum_1_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[15]),
        .Q(diff_sum_1_r[15]));
  FDCE \diff_sum_1_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[1]),
        .Q(diff_sum_1_r[1]));
  FDCE \diff_sum_1_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[2]),
        .Q(diff_sum_1_r[2]));
  FDCE \diff_sum_1_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[3]),
        .Q(diff_sum_1_r[3]));
  FDCE \diff_sum_1_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[4]),
        .Q(diff_sum_1_r[4]));
  FDCE \diff_sum_1_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[5]),
        .Q(diff_sum_1_r[5]));
  FDCE \diff_sum_1_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[6]),
        .Q(diff_sum_1_r[6]));
  FDCE \diff_sum_1_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[7]),
        .Q(diff_sum_1_r[7]));
  FDCE \diff_sum_1_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[8]),
        .Q(diff_sum_1_r[8]));
  FDCE \diff_sum_1_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_1[9]),
        .Q(diff_sum_1_r[9]));
  FDCE \diff_sum_2_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[0]),
        .Q(diff_sum_2_r[0]));
  FDCE \diff_sum_2_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[10]),
        .Q(diff_sum_2_r[10]));
  FDCE \diff_sum_2_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[11]),
        .Q(diff_sum_2_r[11]));
  FDCE \diff_sum_2_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[12]),
        .Q(diff_sum_2_r[12]));
  FDCE \diff_sum_2_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[13]),
        .Q(diff_sum_2_r[13]));
  FDCE \diff_sum_2_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[14]),
        .Q(diff_sum_2_r[14]));
  FDCE \diff_sum_2_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[15]),
        .Q(diff_sum_2_r[15]));
  FDCE \diff_sum_2_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[1]),
        .Q(diff_sum_2_r[1]));
  FDCE \diff_sum_2_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[2]),
        .Q(diff_sum_2_r[2]));
  FDCE \diff_sum_2_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[3]),
        .Q(diff_sum_2_r[3]));
  FDCE \diff_sum_2_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[4]),
        .Q(diff_sum_2_r[4]));
  FDCE \diff_sum_2_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[5]),
        .Q(diff_sum_2_r[5]));
  FDCE \diff_sum_2_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[6]),
        .Q(diff_sum_2_r[6]));
  FDCE \diff_sum_2_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[7]),
        .Q(diff_sum_2_r[7]));
  FDCE \diff_sum_2_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[8]),
        .Q(diff_sum_2_r[8]));
  FDCE \diff_sum_2_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_2[9]),
        .Q(diff_sum_2_r[9]));
  FDCE \diff_sum_3_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[0]),
        .Q(diff_sum_3_r[0]));
  FDCE \diff_sum_3_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[10]),
        .Q(diff_sum_3_r[10]));
  FDCE \diff_sum_3_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[11]),
        .Q(diff_sum_3_r[11]));
  FDCE \diff_sum_3_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[12]),
        .Q(diff_sum_3_r[12]));
  FDCE \diff_sum_3_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[13]),
        .Q(diff_sum_3_r[13]));
  FDCE \diff_sum_3_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[14]),
        .Q(diff_sum_3_r[14]));
  FDCE \diff_sum_3_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[15]),
        .Q(diff_sum_3_r[15]));
  FDCE \diff_sum_3_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[1]),
        .Q(diff_sum_3_r[1]));
  FDCE \diff_sum_3_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[2]),
        .Q(diff_sum_3_r[2]));
  FDCE \diff_sum_3_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[3]),
        .Q(diff_sum_3_r[3]));
  FDCE \diff_sum_3_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[4]),
        .Q(diff_sum_3_r[4]));
  FDCE \diff_sum_3_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[5]),
        .Q(diff_sum_3_r[5]));
  FDCE \diff_sum_3_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[6]),
        .Q(diff_sum_3_r[6]));
  FDCE \diff_sum_3_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[7]),
        .Q(diff_sum_3_r[7]));
  FDCE \diff_sum_3_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[8]),
        .Q(diff_sum_3_r[8]));
  FDCE \diff_sum_3_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_3[9]),
        .Q(diff_sum_3_r[9]));
  FDCE \diff_sum_4_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[0]),
        .Q(diff_sum_4_r[0]));
  FDCE \diff_sum_4_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[10]),
        .Q(diff_sum_4_r[10]));
  FDCE \diff_sum_4_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[11]),
        .Q(diff_sum_4_r[11]));
  FDCE \diff_sum_4_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[12]),
        .Q(diff_sum_4_r[12]));
  FDCE \diff_sum_4_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[13]),
        .Q(diff_sum_4_r[13]));
  FDCE \diff_sum_4_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[14]),
        .Q(diff_sum_4_r[14]));
  FDCE \diff_sum_4_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[15]),
        .Q(diff_sum_4_r[15]));
  FDCE \diff_sum_4_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[1]),
        .Q(diff_sum_4_r[1]));
  FDCE \diff_sum_4_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[2]),
        .Q(diff_sum_4_r[2]));
  FDCE \diff_sum_4_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[3]),
        .Q(diff_sum_4_r[3]));
  FDCE \diff_sum_4_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[4]),
        .Q(diff_sum_4_r[4]));
  FDCE \diff_sum_4_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[5]),
        .Q(diff_sum_4_r[5]));
  FDCE \diff_sum_4_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[6]),
        .Q(diff_sum_4_r[6]));
  FDCE \diff_sum_4_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[7]),
        .Q(diff_sum_4_r[7]));
  FDCE \diff_sum_4_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[8]),
        .Q(diff_sum_4_r[8]));
  FDCE \diff_sum_4_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_4[9]),
        .Q(diff_sum_4_r[9]));
  FDCE \diff_sum_5_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[0]),
        .Q(diff_sum_5_r[0]));
  FDCE \diff_sum_5_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[10]),
        .Q(diff_sum_5_r[10]));
  FDCE \diff_sum_5_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[11]),
        .Q(diff_sum_5_r[11]));
  FDCE \diff_sum_5_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[12]),
        .Q(diff_sum_5_r[12]));
  FDCE \diff_sum_5_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[13]),
        .Q(diff_sum_5_r[13]));
  FDCE \diff_sum_5_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[14]),
        .Q(diff_sum_5_r[14]));
  FDCE \diff_sum_5_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[15]),
        .Q(diff_sum_5_r[15]));
  FDCE \diff_sum_5_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[1]),
        .Q(diff_sum_5_r[1]));
  FDCE \diff_sum_5_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[2]),
        .Q(diff_sum_5_r[2]));
  FDCE \diff_sum_5_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[3]),
        .Q(diff_sum_5_r[3]));
  FDCE \diff_sum_5_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[4]),
        .Q(diff_sum_5_r[4]));
  FDCE \diff_sum_5_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[5]),
        .Q(diff_sum_5_r[5]));
  FDCE \diff_sum_5_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[6]),
        .Q(diff_sum_5_r[6]));
  FDCE \diff_sum_5_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[7]),
        .Q(diff_sum_5_r[7]));
  FDCE \diff_sum_5_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[8]),
        .Q(diff_sum_5_r[8]));
  FDCE \diff_sum_5_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_5[9]),
        .Q(diff_sum_5_r[9]));
  FDCE \diff_sum_6_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[0]),
        .Q(diff_sum_6_r[0]));
  FDCE \diff_sum_6_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[10]),
        .Q(diff_sum_6_r[10]));
  FDCE \diff_sum_6_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[11]),
        .Q(diff_sum_6_r[11]));
  FDCE \diff_sum_6_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[12]),
        .Q(diff_sum_6_r[12]));
  FDCE \diff_sum_6_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[13]),
        .Q(diff_sum_6_r[13]));
  FDCE \diff_sum_6_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[14]),
        .Q(diff_sum_6_r[14]));
  FDCE \diff_sum_6_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[15]),
        .Q(diff_sum_6_r[15]));
  FDCE \diff_sum_6_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[1]),
        .Q(diff_sum_6_r[1]));
  FDCE \diff_sum_6_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[2]),
        .Q(diff_sum_6_r[2]));
  FDCE \diff_sum_6_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[3]),
        .Q(diff_sum_6_r[3]));
  FDCE \diff_sum_6_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[4]),
        .Q(diff_sum_6_r[4]));
  FDCE \diff_sum_6_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[5]),
        .Q(diff_sum_6_r[5]));
  FDCE \diff_sum_6_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[6]),
        .Q(diff_sum_6_r[6]));
  FDCE \diff_sum_6_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[7]),
        .Q(diff_sum_6_r[7]));
  FDCE \diff_sum_6_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[8]),
        .Q(diff_sum_6_r[8]));
  FDCE \diff_sum_6_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_6[9]),
        .Q(diff_sum_6_r[9]));
  FDCE \diff_sum_7_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[0]),
        .Q(diff_sum_7_r[0]));
  FDCE \diff_sum_7_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[10]),
        .Q(diff_sum_7_r[10]));
  FDCE \diff_sum_7_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[11]),
        .Q(diff_sum_7_r[11]));
  FDCE \diff_sum_7_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[12]),
        .Q(diff_sum_7_r[12]));
  FDCE \diff_sum_7_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[13]),
        .Q(diff_sum_7_r[13]));
  FDCE \diff_sum_7_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[14]),
        .Q(diff_sum_7_r[14]));
  FDCE \diff_sum_7_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[15]),
        .Q(diff_sum_7_r[15]));
  FDCE \diff_sum_7_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[1]),
        .Q(diff_sum_7_r[1]));
  FDCE \diff_sum_7_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[2]),
        .Q(diff_sum_7_r[2]));
  FDCE \diff_sum_7_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[3]),
        .Q(diff_sum_7_r[3]));
  FDCE \diff_sum_7_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[4]),
        .Q(diff_sum_7_r[4]));
  FDCE \diff_sum_7_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[5]),
        .Q(diff_sum_7_r[5]));
  FDCE \diff_sum_7_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[6]),
        .Q(diff_sum_7_r[6]));
  FDCE \diff_sum_7_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[7]),
        .Q(diff_sum_7_r[7]));
  FDCE \diff_sum_7_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[8]),
        .Q(diff_sum_7_r[8]));
  FDCE \diff_sum_7_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_7[9]),
        .Q(diff_sum_7_r[9]));
  FDCE \diff_sum_8_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[0]),
        .Q(diff_sum_8_r[0]));
  FDCE \diff_sum_8_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[10]),
        .Q(diff_sum_8_r[10]));
  FDCE \diff_sum_8_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[11]),
        .Q(diff_sum_8_r[11]));
  FDCE \diff_sum_8_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[12]),
        .Q(diff_sum_8_r[12]));
  FDCE \diff_sum_8_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[13]),
        .Q(diff_sum_8_r[13]));
  FDCE \diff_sum_8_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[14]),
        .Q(diff_sum_8_r[14]));
  FDCE \diff_sum_8_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[15]),
        .Q(diff_sum_8_r[15]));
  FDCE \diff_sum_8_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[1]),
        .Q(diff_sum_8_r[1]));
  FDCE \diff_sum_8_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[2]),
        .Q(diff_sum_8_r[2]));
  FDCE \diff_sum_8_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[3]),
        .Q(diff_sum_8_r[3]));
  FDCE \diff_sum_8_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[4]),
        .Q(diff_sum_8_r[4]));
  FDCE \diff_sum_8_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[5]),
        .Q(diff_sum_8_r[5]));
  FDCE \diff_sum_8_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[6]),
        .Q(diff_sum_8_r[6]));
  FDCE \diff_sum_8_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[7]),
        .Q(diff_sum_8_r[7]));
  FDCE \diff_sum_8_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[8]),
        .Q(diff_sum_8_r[8]));
  FDCE \diff_sum_8_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_8[9]),
        .Q(diff_sum_8_r[9]));
  FDCE \diff_sum_9_r_reg[0] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[0]),
        .Q(diff_sum_9_r[0]));
  FDCE \diff_sum_9_r_reg[10] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[10]),
        .Q(diff_sum_9_r[10]));
  FDCE \diff_sum_9_r_reg[11] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[11]),
        .Q(diff_sum_9_r[11]));
  FDCE \diff_sum_9_r_reg[12] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[12]),
        .Q(diff_sum_9_r[12]));
  FDCE \diff_sum_9_r_reg[13] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[13]),
        .Q(diff_sum_9_r[13]));
  FDCE \diff_sum_9_r_reg[14] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[14]),
        .Q(diff_sum_9_r[14]));
  FDCE \diff_sum_9_r_reg[15] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[15]),
        .Q(diff_sum_9_r[15]));
  FDCE \diff_sum_9_r_reg[1] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[1]),
        .Q(diff_sum_9_r[1]));
  FDCE \diff_sum_9_r_reg[2] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[2]),
        .Q(diff_sum_9_r[2]));
  FDCE \diff_sum_9_r_reg[3] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[3]),
        .Q(diff_sum_9_r[3]));
  FDCE \diff_sum_9_r_reg[4] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[4]),
        .Q(diff_sum_9_r[4]));
  FDCE \diff_sum_9_r_reg[5] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[5]),
        .Q(diff_sum_9_r[5]));
  FDCE \diff_sum_9_r_reg[6] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[6]),
        .Q(diff_sum_9_r[6]));
  FDCE \diff_sum_9_r_reg[7] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[7]),
        .Q(diff_sum_9_r[7]));
  FDCE \diff_sum_9_r_reg[8] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[8]),
        .Q(diff_sum_9_r[8]));
  FDCE \diff_sum_9_r_reg[9] 
       (.C(clk),
        .CE(din_vld),
        .CLR(\diff_sum_10_r[15]_i_2_n_0 ),
        .D(diff_sum_9[9]),
        .Q(diff_sum_9_r[9]));
  (* srl_name = "\inst/din_vld_4_r_reg_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    din_vld_4_r_reg_srl4
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(din_vld),
        .Q(din_vld_4_r_reg_srl4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    din_vld_5_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(din_vld_4_r_reg_srl4_n_0),
        .Q(interrupt),
        .R(1'b0));
  CARRY4 min1_11_carry
       (.CI(1'b0),
        .CO({min1_11_carry_n_0,min1_11_carry_n_1,min1_11_carry_n_2,min1_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_11_carry_i_1_n_0,min1_11_carry_i_2_n_0,min1_11_carry_i_3_n_0,min1_11_carry_i_4_n_0}),
        .O(NLW_min1_11_carry_O_UNCONNECTED[3:0]),
        .S({min1_11_carry_i_5_n_0,min1_11_carry_i_6_n_0,min1_11_carry_i_7_n_0,min1_11_carry_i_8_n_0}));
  CARRY4 min1_11_carry__0
       (.CI(min1_11_carry_n_0),
        .CO({min1_11,min1_11_carry__0_n_1,min1_11_carry__0_n_2,min1_11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min1_11_carry__0_i_1_n_0,min1_11_carry__0_i_2_n_0,min1_11_carry__0_i_3_n_0,min1_11_carry__0_i_4_n_0}),
        .O(NLW_min1_11_carry__0_O_UNCONNECTED[3:0]),
        .S({min1_11_carry__0_i_5_n_0,min1_11_carry__0_i_6_n_0,min1_11_carry__0_i_7_n_0,min1_11_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry__0_i_1
       (.I0(diff_sum_1_r[14]),
        .I1(diff_sum_0_r[14]),
        .I2(diff_sum_0_r[15]),
        .I3(diff_sum_1_r[15]),
        .O(min1_11_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry__0_i_2
       (.I0(diff_sum_1_r[12]),
        .I1(diff_sum_0_r[12]),
        .I2(diff_sum_0_r[13]),
        .I3(diff_sum_1_r[13]),
        .O(min1_11_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry__0_i_3
       (.I0(diff_sum_1_r[10]),
        .I1(diff_sum_0_r[10]),
        .I2(diff_sum_0_r[11]),
        .I3(diff_sum_1_r[11]),
        .O(min1_11_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry__0_i_4
       (.I0(diff_sum_1_r[8]),
        .I1(diff_sum_0_r[8]),
        .I2(diff_sum_0_r[9]),
        .I3(diff_sum_1_r[9]),
        .O(min1_11_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry__0_i_5
       (.I0(diff_sum_1_r[14]),
        .I1(diff_sum_0_r[14]),
        .I2(diff_sum_1_r[15]),
        .I3(diff_sum_0_r[15]),
        .O(min1_11_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry__0_i_6
       (.I0(diff_sum_1_r[12]),
        .I1(diff_sum_0_r[12]),
        .I2(diff_sum_1_r[13]),
        .I3(diff_sum_0_r[13]),
        .O(min1_11_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry__0_i_7
       (.I0(diff_sum_1_r[10]),
        .I1(diff_sum_0_r[10]),
        .I2(diff_sum_1_r[11]),
        .I3(diff_sum_0_r[11]),
        .O(min1_11_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry__0_i_8
       (.I0(diff_sum_1_r[8]),
        .I1(diff_sum_0_r[8]),
        .I2(diff_sum_1_r[9]),
        .I3(diff_sum_0_r[9]),
        .O(min1_11_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry_i_1
       (.I0(diff_sum_1_r[6]),
        .I1(diff_sum_0_r[6]),
        .I2(diff_sum_0_r[7]),
        .I3(diff_sum_1_r[7]),
        .O(min1_11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry_i_2
       (.I0(diff_sum_1_r[4]),
        .I1(diff_sum_0_r[4]),
        .I2(diff_sum_0_r[5]),
        .I3(diff_sum_1_r[5]),
        .O(min1_11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry_i_3
       (.I0(diff_sum_1_r[2]),
        .I1(diff_sum_0_r[2]),
        .I2(diff_sum_0_r[3]),
        .I3(diff_sum_1_r[3]),
        .O(min1_11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_11_carry_i_4
       (.I0(diff_sum_1_r[0]),
        .I1(diff_sum_0_r[0]),
        .I2(diff_sum_0_r[1]),
        .I3(diff_sum_1_r[1]),
        .O(min1_11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry_i_5
       (.I0(diff_sum_1_r[6]),
        .I1(diff_sum_0_r[6]),
        .I2(diff_sum_1_r[7]),
        .I3(diff_sum_0_r[7]),
        .O(min1_11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry_i_6
       (.I0(diff_sum_1_r[4]),
        .I1(diff_sum_0_r[4]),
        .I2(diff_sum_1_r[5]),
        .I3(diff_sum_0_r[5]),
        .O(min1_11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry_i_7
       (.I0(diff_sum_1_r[2]),
        .I1(diff_sum_0_r[2]),
        .I2(diff_sum_1_r[3]),
        .I3(diff_sum_0_r[3]),
        .O(min1_11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_11_carry_i_8
       (.I0(diff_sum_1_r[0]),
        .I1(diff_sum_0_r[0]),
        .I2(diff_sum_1_r[1]),
        .I3(diff_sum_0_r[1]),
        .O(min1_11_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[0]_i_1 
       (.I0(diff_sum_0_r[0]),
        .I1(diff_sum_1_r[0]),
        .I2(min1_11),
        .O(\min1_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[10]_i_1 
       (.I0(diff_sum_0_r[10]),
        .I1(diff_sum_1_r[10]),
        .I2(min1_11),
        .O(\min1_1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[11]_i_1 
       (.I0(diff_sum_0_r[11]),
        .I1(diff_sum_1_r[11]),
        .I2(min1_11),
        .O(\min1_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[12]_i_1 
       (.I0(diff_sum_0_r[12]),
        .I1(diff_sum_1_r[12]),
        .I2(min1_11),
        .O(\min1_1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[13]_i_1 
       (.I0(diff_sum_0_r[13]),
        .I1(diff_sum_1_r[13]),
        .I2(min1_11),
        .O(\min1_1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[14]_i_1 
       (.I0(diff_sum_0_r[14]),
        .I1(diff_sum_1_r[14]),
        .I2(min1_11),
        .O(\min1_1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[15]_i_1 
       (.I0(diff_sum_0_r[15]),
        .I1(diff_sum_1_r[15]),
        .I2(min1_11),
        .O(\min1_1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[1]_i_1 
       (.I0(diff_sum_0_r[1]),
        .I1(diff_sum_1_r[1]),
        .I2(min1_11),
        .O(\min1_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[2]_i_1 
       (.I0(diff_sum_0_r[2]),
        .I1(diff_sum_1_r[2]),
        .I2(min1_11),
        .O(\min1_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[3]_i_1 
       (.I0(diff_sum_0_r[3]),
        .I1(diff_sum_1_r[3]),
        .I2(min1_11),
        .O(\min1_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[4]_i_1 
       (.I0(diff_sum_0_r[4]),
        .I1(diff_sum_1_r[4]),
        .I2(min1_11),
        .O(\min1_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[5]_i_1 
       (.I0(diff_sum_0_r[5]),
        .I1(diff_sum_1_r[5]),
        .I2(min1_11),
        .O(\min1_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[6]_i_1 
       (.I0(diff_sum_0_r[6]),
        .I1(diff_sum_1_r[6]),
        .I2(min1_11),
        .O(\min1_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[7]_i_1 
       (.I0(diff_sum_0_r[7]),
        .I1(diff_sum_1_r[7]),
        .I2(min1_11),
        .O(\min1_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[8]_i_1 
       (.I0(diff_sum_0_r[8]),
        .I1(diff_sum_1_r[8]),
        .I2(min1_11),
        .O(\min1_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_1[9]_i_1 
       (.I0(diff_sum_0_r[9]),
        .I1(diff_sum_1_r[9]),
        .I2(min1_11),
        .O(\min1_1[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \min1_1_index[0]_i_1 
       (.I0(min1_11),
        .O(\min1_1_index[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1_index[0]_i_1_n_0 ),
        .Q(min1_1_index),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[0]_i_1_n_0 ),
        .Q(min1_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[10]_i_1_n_0 ),
        .Q(min1_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[11]_i_1_n_0 ),
        .Q(min1_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[12]_i_1_n_0 ),
        .Q(min1_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[13]_i_1_n_0 ),
        .Q(min1_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[14]_i_1_n_0 ),
        .Q(min1_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[15]_i_1_n_0 ),
        .Q(min1_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[1]_i_1_n_0 ),
        .Q(min1_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[2]_i_1_n_0 ),
        .Q(min1_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[3]_i_1_n_0 ),
        .Q(min1_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[4]_i_1_n_0 ),
        .Q(min1_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[5]_i_1_n_0 ),
        .Q(min1_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[6]_i_1_n_0 ),
        .Q(min1_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[7]_i_1_n_0 ),
        .Q(min1_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[8]_i_1_n_0 ),
        .Q(min1_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_1[9]_i_1_n_0 ),
        .Q(min1_1[9]),
        .R(1'b0));
  CARRY4 min1_21_carry
       (.CI(1'b0),
        .CO({min1_21_carry_n_0,min1_21_carry_n_1,min1_21_carry_n_2,min1_21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_21_carry_i_1_n_0,min1_21_carry_i_2_n_0,min1_21_carry_i_3_n_0,min1_21_carry_i_4_n_0}),
        .O(NLW_min1_21_carry_O_UNCONNECTED[3:0]),
        .S({min1_21_carry_i_5_n_0,min1_21_carry_i_6_n_0,min1_21_carry_i_7_n_0,min1_21_carry_i_8_n_0}));
  CARRY4 min1_21_carry__0
       (.CI(min1_21_carry_n_0),
        .CO({min1_21,min1_21_carry__0_n_1,min1_21_carry__0_n_2,min1_21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min1_21_carry__0_i_1_n_0,min1_21_carry__0_i_2_n_0,min1_21_carry__0_i_3_n_0,min1_21_carry__0_i_4_n_0}),
        .O(NLW_min1_21_carry__0_O_UNCONNECTED[3:0]),
        .S({min1_21_carry__0_i_5_n_0,min1_21_carry__0_i_6_n_0,min1_21_carry__0_i_7_n_0,min1_21_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry__0_i_1
       (.I0(diff_sum_3_r[14]),
        .I1(diff_sum_2_r[14]),
        .I2(diff_sum_2_r[15]),
        .I3(diff_sum_3_r[15]),
        .O(min1_21_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry__0_i_2
       (.I0(diff_sum_3_r[12]),
        .I1(diff_sum_2_r[12]),
        .I2(diff_sum_2_r[13]),
        .I3(diff_sum_3_r[13]),
        .O(min1_21_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry__0_i_3
       (.I0(diff_sum_3_r[10]),
        .I1(diff_sum_2_r[10]),
        .I2(diff_sum_2_r[11]),
        .I3(diff_sum_3_r[11]),
        .O(min1_21_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry__0_i_4
       (.I0(diff_sum_3_r[8]),
        .I1(diff_sum_2_r[8]),
        .I2(diff_sum_2_r[9]),
        .I3(diff_sum_3_r[9]),
        .O(min1_21_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry__0_i_5
       (.I0(diff_sum_3_r[14]),
        .I1(diff_sum_2_r[14]),
        .I2(diff_sum_3_r[15]),
        .I3(diff_sum_2_r[15]),
        .O(min1_21_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry__0_i_6
       (.I0(diff_sum_3_r[12]),
        .I1(diff_sum_2_r[12]),
        .I2(diff_sum_3_r[13]),
        .I3(diff_sum_2_r[13]),
        .O(min1_21_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry__0_i_7
       (.I0(diff_sum_3_r[10]),
        .I1(diff_sum_2_r[10]),
        .I2(diff_sum_3_r[11]),
        .I3(diff_sum_2_r[11]),
        .O(min1_21_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry__0_i_8
       (.I0(diff_sum_3_r[8]),
        .I1(diff_sum_2_r[8]),
        .I2(diff_sum_3_r[9]),
        .I3(diff_sum_2_r[9]),
        .O(min1_21_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry_i_1
       (.I0(diff_sum_3_r[6]),
        .I1(diff_sum_2_r[6]),
        .I2(diff_sum_2_r[7]),
        .I3(diff_sum_3_r[7]),
        .O(min1_21_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry_i_2
       (.I0(diff_sum_3_r[4]),
        .I1(diff_sum_2_r[4]),
        .I2(diff_sum_2_r[5]),
        .I3(diff_sum_3_r[5]),
        .O(min1_21_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry_i_3
       (.I0(diff_sum_3_r[2]),
        .I1(diff_sum_2_r[2]),
        .I2(diff_sum_2_r[3]),
        .I3(diff_sum_3_r[3]),
        .O(min1_21_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_21_carry_i_4
       (.I0(diff_sum_3_r[0]),
        .I1(diff_sum_2_r[0]),
        .I2(diff_sum_2_r[1]),
        .I3(diff_sum_3_r[1]),
        .O(min1_21_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry_i_5
       (.I0(diff_sum_3_r[6]),
        .I1(diff_sum_2_r[6]),
        .I2(diff_sum_3_r[7]),
        .I3(diff_sum_2_r[7]),
        .O(min1_21_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry_i_6
       (.I0(diff_sum_3_r[4]),
        .I1(diff_sum_2_r[4]),
        .I2(diff_sum_3_r[5]),
        .I3(diff_sum_2_r[5]),
        .O(min1_21_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry_i_7
       (.I0(diff_sum_3_r[2]),
        .I1(diff_sum_2_r[2]),
        .I2(diff_sum_3_r[3]),
        .I3(diff_sum_2_r[3]),
        .O(min1_21_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_21_carry_i_8
       (.I0(diff_sum_3_r[0]),
        .I1(diff_sum_2_r[0]),
        .I2(diff_sum_3_r[1]),
        .I3(diff_sum_2_r[1]),
        .O(min1_21_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[0]_i_1 
       (.I0(diff_sum_2_r[0]),
        .I1(diff_sum_3_r[0]),
        .I2(min1_21),
        .O(\min1_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[10]_i_1 
       (.I0(diff_sum_2_r[10]),
        .I1(diff_sum_3_r[10]),
        .I2(min1_21),
        .O(\min1_2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[11]_i_1 
       (.I0(diff_sum_2_r[11]),
        .I1(diff_sum_3_r[11]),
        .I2(min1_21),
        .O(\min1_2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[12]_i_1 
       (.I0(diff_sum_2_r[12]),
        .I1(diff_sum_3_r[12]),
        .I2(min1_21),
        .O(\min1_2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[13]_i_1 
       (.I0(diff_sum_2_r[13]),
        .I1(diff_sum_3_r[13]),
        .I2(min1_21),
        .O(\min1_2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[14]_i_1 
       (.I0(diff_sum_2_r[14]),
        .I1(diff_sum_3_r[14]),
        .I2(min1_21),
        .O(\min1_2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[15]_i_1 
       (.I0(diff_sum_2_r[15]),
        .I1(diff_sum_3_r[15]),
        .I2(min1_21),
        .O(\min1_2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[1]_i_1 
       (.I0(diff_sum_2_r[1]),
        .I1(diff_sum_3_r[1]),
        .I2(min1_21),
        .O(\min1_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[2]_i_1 
       (.I0(diff_sum_2_r[2]),
        .I1(diff_sum_3_r[2]),
        .I2(min1_21),
        .O(\min1_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[3]_i_1 
       (.I0(diff_sum_2_r[3]),
        .I1(diff_sum_3_r[3]),
        .I2(min1_21),
        .O(\min1_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[4]_i_1 
       (.I0(diff_sum_2_r[4]),
        .I1(diff_sum_3_r[4]),
        .I2(min1_21),
        .O(\min1_2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[5]_i_1 
       (.I0(diff_sum_2_r[5]),
        .I1(diff_sum_3_r[5]),
        .I2(min1_21),
        .O(\min1_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[6]_i_1 
       (.I0(diff_sum_2_r[6]),
        .I1(diff_sum_3_r[6]),
        .I2(min1_21),
        .O(\min1_2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[7]_i_1 
       (.I0(diff_sum_2_r[7]),
        .I1(diff_sum_3_r[7]),
        .I2(min1_21),
        .O(\min1_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[8]_i_1 
       (.I0(diff_sum_2_r[8]),
        .I1(diff_sum_3_r[8]),
        .I2(min1_21),
        .O(\min1_2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_2[9]_i_1 
       (.I0(diff_sum_2_r[9]),
        .I1(diff_sum_3_r[9]),
        .I2(min1_21),
        .O(\min1_2[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \min1_2_index[0]_i_1 
       (.I0(min1_21),
        .O(\min1_2_index[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2_index[0]_i_1_n_0 ),
        .Q(min1_2_index),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[0]_i_1_n_0 ),
        .Q(min1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[10]_i_1_n_0 ),
        .Q(min1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[11]_i_1_n_0 ),
        .Q(min1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[12]_i_1_n_0 ),
        .Q(min1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[13]_i_1_n_0 ),
        .Q(min1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[14]_i_1_n_0 ),
        .Q(min1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[15]_i_1_n_0 ),
        .Q(min1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[1]_i_1_n_0 ),
        .Q(min1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[2]_i_1_n_0 ),
        .Q(min1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[3]_i_1_n_0 ),
        .Q(min1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[4]_i_1_n_0 ),
        .Q(min1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[5]_i_1_n_0 ),
        .Q(min1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[6]_i_1_n_0 ),
        .Q(min1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[7]_i_1_n_0 ),
        .Q(min1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[8]_i_1_n_0 ),
        .Q(min1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_2[9]_i_1_n_0 ),
        .Q(min1_2[9]),
        .R(1'b0));
  CARRY4 min1_31_carry
       (.CI(1'b0),
        .CO({min1_31_carry_n_0,min1_31_carry_n_1,min1_31_carry_n_2,min1_31_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_31_carry_i_1_n_0,min1_31_carry_i_2_n_0,min1_31_carry_i_3_n_0,min1_31_carry_i_4_n_0}),
        .O(NLW_min1_31_carry_O_UNCONNECTED[3:0]),
        .S({min1_31_carry_i_5_n_0,min1_31_carry_i_6_n_0,min1_31_carry_i_7_n_0,min1_31_carry_i_8_n_0}));
  CARRY4 min1_31_carry__0
       (.CI(min1_31_carry_n_0),
        .CO({min1_31,min1_31_carry__0_n_1,min1_31_carry__0_n_2,min1_31_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min1_31_carry__0_i_1_n_0,min1_31_carry__0_i_2_n_0,min1_31_carry__0_i_3_n_0,min1_31_carry__0_i_4_n_0}),
        .O(NLW_min1_31_carry__0_O_UNCONNECTED[3:0]),
        .S({min1_31_carry__0_i_5_n_0,min1_31_carry__0_i_6_n_0,min1_31_carry__0_i_7_n_0,min1_31_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry__0_i_1
       (.I0(diff_sum_5_r[14]),
        .I1(diff_sum_4_r[14]),
        .I2(diff_sum_4_r[15]),
        .I3(diff_sum_5_r[15]),
        .O(min1_31_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry__0_i_2
       (.I0(diff_sum_5_r[12]),
        .I1(diff_sum_4_r[12]),
        .I2(diff_sum_4_r[13]),
        .I3(diff_sum_5_r[13]),
        .O(min1_31_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry__0_i_3
       (.I0(diff_sum_5_r[10]),
        .I1(diff_sum_4_r[10]),
        .I2(diff_sum_4_r[11]),
        .I3(diff_sum_5_r[11]),
        .O(min1_31_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry__0_i_4
       (.I0(diff_sum_5_r[8]),
        .I1(diff_sum_4_r[8]),
        .I2(diff_sum_4_r[9]),
        .I3(diff_sum_5_r[9]),
        .O(min1_31_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry__0_i_5
       (.I0(diff_sum_5_r[14]),
        .I1(diff_sum_4_r[14]),
        .I2(diff_sum_5_r[15]),
        .I3(diff_sum_4_r[15]),
        .O(min1_31_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry__0_i_6
       (.I0(diff_sum_5_r[12]),
        .I1(diff_sum_4_r[12]),
        .I2(diff_sum_5_r[13]),
        .I3(diff_sum_4_r[13]),
        .O(min1_31_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry__0_i_7
       (.I0(diff_sum_5_r[10]),
        .I1(diff_sum_4_r[10]),
        .I2(diff_sum_5_r[11]),
        .I3(diff_sum_4_r[11]),
        .O(min1_31_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry__0_i_8
       (.I0(diff_sum_5_r[8]),
        .I1(diff_sum_4_r[8]),
        .I2(diff_sum_5_r[9]),
        .I3(diff_sum_4_r[9]),
        .O(min1_31_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry_i_1
       (.I0(diff_sum_5_r[6]),
        .I1(diff_sum_4_r[6]),
        .I2(diff_sum_4_r[7]),
        .I3(diff_sum_5_r[7]),
        .O(min1_31_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry_i_2
       (.I0(diff_sum_5_r[4]),
        .I1(diff_sum_4_r[4]),
        .I2(diff_sum_4_r[5]),
        .I3(diff_sum_5_r[5]),
        .O(min1_31_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry_i_3
       (.I0(diff_sum_5_r[2]),
        .I1(diff_sum_4_r[2]),
        .I2(diff_sum_4_r[3]),
        .I3(diff_sum_5_r[3]),
        .O(min1_31_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_31_carry_i_4
       (.I0(diff_sum_5_r[0]),
        .I1(diff_sum_4_r[0]),
        .I2(diff_sum_4_r[1]),
        .I3(diff_sum_5_r[1]),
        .O(min1_31_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry_i_5
       (.I0(diff_sum_5_r[6]),
        .I1(diff_sum_4_r[6]),
        .I2(diff_sum_5_r[7]),
        .I3(diff_sum_4_r[7]),
        .O(min1_31_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry_i_6
       (.I0(diff_sum_5_r[4]),
        .I1(diff_sum_4_r[4]),
        .I2(diff_sum_5_r[5]),
        .I3(diff_sum_4_r[5]),
        .O(min1_31_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry_i_7
       (.I0(diff_sum_5_r[2]),
        .I1(diff_sum_4_r[2]),
        .I2(diff_sum_5_r[3]),
        .I3(diff_sum_4_r[3]),
        .O(min1_31_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_31_carry_i_8
       (.I0(diff_sum_5_r[0]),
        .I1(diff_sum_4_r[0]),
        .I2(diff_sum_5_r[1]),
        .I3(diff_sum_4_r[1]),
        .O(min1_31_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[0]_i_1 
       (.I0(diff_sum_4_r[0]),
        .I1(diff_sum_5_r[0]),
        .I2(min1_31),
        .O(\min1_3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[10]_i_1 
       (.I0(diff_sum_4_r[10]),
        .I1(diff_sum_5_r[10]),
        .I2(min1_31),
        .O(\min1_3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[11]_i_1 
       (.I0(diff_sum_4_r[11]),
        .I1(diff_sum_5_r[11]),
        .I2(min1_31),
        .O(\min1_3[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[12]_i_1 
       (.I0(diff_sum_4_r[12]),
        .I1(diff_sum_5_r[12]),
        .I2(min1_31),
        .O(\min1_3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[13]_i_1 
       (.I0(diff_sum_4_r[13]),
        .I1(diff_sum_5_r[13]),
        .I2(min1_31),
        .O(\min1_3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[14]_i_1 
       (.I0(diff_sum_4_r[14]),
        .I1(diff_sum_5_r[14]),
        .I2(min1_31),
        .O(\min1_3[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[15]_i_1 
       (.I0(diff_sum_4_r[15]),
        .I1(diff_sum_5_r[15]),
        .I2(min1_31),
        .O(\min1_3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[1]_i_1 
       (.I0(diff_sum_4_r[1]),
        .I1(diff_sum_5_r[1]),
        .I2(min1_31),
        .O(\min1_3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[2]_i_1 
       (.I0(diff_sum_4_r[2]),
        .I1(diff_sum_5_r[2]),
        .I2(min1_31),
        .O(\min1_3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[3]_i_1 
       (.I0(diff_sum_4_r[3]),
        .I1(diff_sum_5_r[3]),
        .I2(min1_31),
        .O(\min1_3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[4]_i_1 
       (.I0(diff_sum_4_r[4]),
        .I1(diff_sum_5_r[4]),
        .I2(min1_31),
        .O(\min1_3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[5]_i_1 
       (.I0(diff_sum_4_r[5]),
        .I1(diff_sum_5_r[5]),
        .I2(min1_31),
        .O(\min1_3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[6]_i_1 
       (.I0(diff_sum_4_r[6]),
        .I1(diff_sum_5_r[6]),
        .I2(min1_31),
        .O(\min1_3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[7]_i_1 
       (.I0(diff_sum_4_r[7]),
        .I1(diff_sum_5_r[7]),
        .I2(min1_31),
        .O(\min1_3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[8]_i_1 
       (.I0(diff_sum_4_r[8]),
        .I1(diff_sum_5_r[8]),
        .I2(min1_31),
        .O(\min1_3[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_3[9]_i_1 
       (.I0(diff_sum_4_r[9]),
        .I1(diff_sum_5_r[9]),
        .I2(min1_31),
        .O(\min1_3[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \min1_3_index[0]_i_1 
       (.I0(min1_31),
        .O(\min1_3_index[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3_index[0]_i_1_n_0 ),
        .Q(min1_3_index),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[0]_i_1_n_0 ),
        .Q(min1_3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[10]_i_1_n_0 ),
        .Q(min1_3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[11]_i_1_n_0 ),
        .Q(min1_3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[12]_i_1_n_0 ),
        .Q(min1_3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[13]_i_1_n_0 ),
        .Q(min1_3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[14]_i_1_n_0 ),
        .Q(min1_3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[15]_i_1_n_0 ),
        .Q(min1_3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[1]_i_1_n_0 ),
        .Q(min1_3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[2]_i_1_n_0 ),
        .Q(min1_3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[3]_i_1_n_0 ),
        .Q(min1_3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[4]_i_1_n_0 ),
        .Q(min1_3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[5]_i_1_n_0 ),
        .Q(min1_3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[6]_i_1_n_0 ),
        .Q(min1_3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[7]_i_1_n_0 ),
        .Q(min1_3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[8]_i_1_n_0 ),
        .Q(min1_3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_3[9]_i_1_n_0 ),
        .Q(min1_3[9]),
        .R(1'b0));
  CARRY4 min1_41_carry
       (.CI(1'b0),
        .CO({min1_41_carry_n_0,min1_41_carry_n_1,min1_41_carry_n_2,min1_41_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_41_carry_i_1_n_0,min1_41_carry_i_2_n_0,min1_41_carry_i_3_n_0,min1_41_carry_i_4_n_0}),
        .O(NLW_min1_41_carry_O_UNCONNECTED[3:0]),
        .S({min1_41_carry_i_5_n_0,min1_41_carry_i_6_n_0,min1_41_carry_i_7_n_0,min1_41_carry_i_8_n_0}));
  CARRY4 min1_41_carry__0
       (.CI(min1_41_carry_n_0),
        .CO({min1_41,min1_41_carry__0_n_1,min1_41_carry__0_n_2,min1_41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min1_41_carry__0_i_1_n_0,min1_41_carry__0_i_2_n_0,min1_41_carry__0_i_3_n_0,min1_41_carry__0_i_4_n_0}),
        .O(NLW_min1_41_carry__0_O_UNCONNECTED[3:0]),
        .S({min1_41_carry__0_i_5_n_0,min1_41_carry__0_i_6_n_0,min1_41_carry__0_i_7_n_0,min1_41_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry__0_i_1
       (.I0(diff_sum_7_r[14]),
        .I1(diff_sum_6_r[14]),
        .I2(diff_sum_6_r[15]),
        .I3(diff_sum_7_r[15]),
        .O(min1_41_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry__0_i_2
       (.I0(diff_sum_7_r[12]),
        .I1(diff_sum_6_r[12]),
        .I2(diff_sum_6_r[13]),
        .I3(diff_sum_7_r[13]),
        .O(min1_41_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry__0_i_3
       (.I0(diff_sum_7_r[10]),
        .I1(diff_sum_6_r[10]),
        .I2(diff_sum_6_r[11]),
        .I3(diff_sum_7_r[11]),
        .O(min1_41_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry__0_i_4
       (.I0(diff_sum_7_r[8]),
        .I1(diff_sum_6_r[8]),
        .I2(diff_sum_6_r[9]),
        .I3(diff_sum_7_r[9]),
        .O(min1_41_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry__0_i_5
       (.I0(diff_sum_7_r[14]),
        .I1(diff_sum_6_r[14]),
        .I2(diff_sum_7_r[15]),
        .I3(diff_sum_6_r[15]),
        .O(min1_41_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry__0_i_6
       (.I0(diff_sum_7_r[12]),
        .I1(diff_sum_6_r[12]),
        .I2(diff_sum_7_r[13]),
        .I3(diff_sum_6_r[13]),
        .O(min1_41_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry__0_i_7
       (.I0(diff_sum_7_r[10]),
        .I1(diff_sum_6_r[10]),
        .I2(diff_sum_7_r[11]),
        .I3(diff_sum_6_r[11]),
        .O(min1_41_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry__0_i_8
       (.I0(diff_sum_7_r[8]),
        .I1(diff_sum_6_r[8]),
        .I2(diff_sum_7_r[9]),
        .I3(diff_sum_6_r[9]),
        .O(min1_41_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry_i_1
       (.I0(diff_sum_7_r[6]),
        .I1(diff_sum_6_r[6]),
        .I2(diff_sum_6_r[7]),
        .I3(diff_sum_7_r[7]),
        .O(min1_41_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry_i_2
       (.I0(diff_sum_7_r[4]),
        .I1(diff_sum_6_r[4]),
        .I2(diff_sum_6_r[5]),
        .I3(diff_sum_7_r[5]),
        .O(min1_41_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry_i_3
       (.I0(diff_sum_7_r[2]),
        .I1(diff_sum_6_r[2]),
        .I2(diff_sum_6_r[3]),
        .I3(diff_sum_7_r[3]),
        .O(min1_41_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_41_carry_i_4
       (.I0(diff_sum_7_r[0]),
        .I1(diff_sum_6_r[0]),
        .I2(diff_sum_6_r[1]),
        .I3(diff_sum_7_r[1]),
        .O(min1_41_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry_i_5
       (.I0(diff_sum_7_r[6]),
        .I1(diff_sum_6_r[6]),
        .I2(diff_sum_7_r[7]),
        .I3(diff_sum_6_r[7]),
        .O(min1_41_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry_i_6
       (.I0(diff_sum_7_r[4]),
        .I1(diff_sum_6_r[4]),
        .I2(diff_sum_7_r[5]),
        .I3(diff_sum_6_r[5]),
        .O(min1_41_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry_i_7
       (.I0(diff_sum_7_r[2]),
        .I1(diff_sum_6_r[2]),
        .I2(diff_sum_7_r[3]),
        .I3(diff_sum_6_r[3]),
        .O(min1_41_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_41_carry_i_8
       (.I0(diff_sum_7_r[0]),
        .I1(diff_sum_6_r[0]),
        .I2(diff_sum_7_r[1]),
        .I3(diff_sum_6_r[1]),
        .O(min1_41_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[0]_i_1 
       (.I0(diff_sum_6_r[0]),
        .I1(diff_sum_7_r[0]),
        .I2(min1_41),
        .O(\min1_4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[10]_i_1 
       (.I0(diff_sum_6_r[10]),
        .I1(diff_sum_7_r[10]),
        .I2(min1_41),
        .O(\min1_4[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[11]_i_1 
       (.I0(diff_sum_6_r[11]),
        .I1(diff_sum_7_r[11]),
        .I2(min1_41),
        .O(\min1_4[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[12]_i_1 
       (.I0(diff_sum_6_r[12]),
        .I1(diff_sum_7_r[12]),
        .I2(min1_41),
        .O(\min1_4[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[13]_i_1 
       (.I0(diff_sum_6_r[13]),
        .I1(diff_sum_7_r[13]),
        .I2(min1_41),
        .O(\min1_4[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[14]_i_1 
       (.I0(diff_sum_6_r[14]),
        .I1(diff_sum_7_r[14]),
        .I2(min1_41),
        .O(\min1_4[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[15]_i_1 
       (.I0(diff_sum_6_r[15]),
        .I1(diff_sum_7_r[15]),
        .I2(min1_41),
        .O(\min1_4[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[1]_i_1 
       (.I0(diff_sum_6_r[1]),
        .I1(diff_sum_7_r[1]),
        .I2(min1_41),
        .O(\min1_4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[2]_i_1 
       (.I0(diff_sum_6_r[2]),
        .I1(diff_sum_7_r[2]),
        .I2(min1_41),
        .O(\min1_4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[3]_i_1 
       (.I0(diff_sum_6_r[3]),
        .I1(diff_sum_7_r[3]),
        .I2(min1_41),
        .O(\min1_4[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[4]_i_1 
       (.I0(diff_sum_6_r[4]),
        .I1(diff_sum_7_r[4]),
        .I2(min1_41),
        .O(\min1_4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[5]_i_1 
       (.I0(diff_sum_6_r[5]),
        .I1(diff_sum_7_r[5]),
        .I2(min1_41),
        .O(\min1_4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[6]_i_1 
       (.I0(diff_sum_6_r[6]),
        .I1(diff_sum_7_r[6]),
        .I2(min1_41),
        .O(\min1_4[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[7]_i_1 
       (.I0(diff_sum_6_r[7]),
        .I1(diff_sum_7_r[7]),
        .I2(min1_41),
        .O(\min1_4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[8]_i_1 
       (.I0(diff_sum_6_r[8]),
        .I1(diff_sum_7_r[8]),
        .I2(min1_41),
        .O(\min1_4[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_4[9]_i_1 
       (.I0(diff_sum_6_r[9]),
        .I1(diff_sum_7_r[9]),
        .I2(min1_41),
        .O(\min1_4[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \min1_4_index[0]_i_1 
       (.I0(min1_41),
        .O(\min1_4_index[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4_index[0]_i_1_n_0 ),
        .Q(min1_4_index),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[0]_i_1_n_0 ),
        .Q(min1_4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[10]_i_1_n_0 ),
        .Q(min1_4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[11]_i_1_n_0 ),
        .Q(min1_4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[12]_i_1_n_0 ),
        .Q(min1_4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[13]_i_1_n_0 ),
        .Q(min1_4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[14]_i_1_n_0 ),
        .Q(min1_4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[15]_i_1_n_0 ),
        .Q(min1_4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[1]_i_1_n_0 ),
        .Q(min1_4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[2]_i_1_n_0 ),
        .Q(min1_4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[3]_i_1_n_0 ),
        .Q(min1_4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[4]_i_1_n_0 ),
        .Q(min1_4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[5]_i_1_n_0 ),
        .Q(min1_4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[6]_i_1_n_0 ),
        .Q(min1_4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[7]_i_1_n_0 ),
        .Q(min1_4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[8]_i_1_n_0 ),
        .Q(min1_4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_4[9]_i_1_n_0 ),
        .Q(min1_4[9]),
        .R(1'b0));
  CARRY4 min1_51_carry
       (.CI(1'b0),
        .CO({min1_51_carry_n_0,min1_51_carry_n_1,min1_51_carry_n_2,min1_51_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_51_carry_i_1_n_0,min1_51_carry_i_2_n_0,min1_51_carry_i_3_n_0,min1_51_carry_i_4_n_0}),
        .O(NLW_min1_51_carry_O_UNCONNECTED[3:0]),
        .S({min1_51_carry_i_5_n_0,min1_51_carry_i_6_n_0,min1_51_carry_i_7_n_0,min1_51_carry_i_8_n_0}));
  CARRY4 min1_51_carry__0
       (.CI(min1_51_carry_n_0),
        .CO({min1_51,min1_51_carry__0_n_1,min1_51_carry__0_n_2,min1_51_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min1_51_carry__0_i_1_n_0,min1_51_carry__0_i_2_n_0,min1_51_carry__0_i_3_n_0,min1_51_carry__0_i_4_n_0}),
        .O(NLW_min1_51_carry__0_O_UNCONNECTED[3:0]),
        .S({min1_51_carry__0_i_5_n_0,min1_51_carry__0_i_6_n_0,min1_51_carry__0_i_7_n_0,min1_51_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry__0_i_1
       (.I0(diff_sum_9_r[14]),
        .I1(diff_sum_8_r[14]),
        .I2(diff_sum_8_r[15]),
        .I3(diff_sum_9_r[15]),
        .O(min1_51_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry__0_i_2
       (.I0(diff_sum_9_r[12]),
        .I1(diff_sum_8_r[12]),
        .I2(diff_sum_8_r[13]),
        .I3(diff_sum_9_r[13]),
        .O(min1_51_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry__0_i_3
       (.I0(diff_sum_9_r[10]),
        .I1(diff_sum_8_r[10]),
        .I2(diff_sum_8_r[11]),
        .I3(diff_sum_9_r[11]),
        .O(min1_51_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry__0_i_4
       (.I0(diff_sum_9_r[8]),
        .I1(diff_sum_8_r[8]),
        .I2(diff_sum_8_r[9]),
        .I3(diff_sum_9_r[9]),
        .O(min1_51_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry__0_i_5
       (.I0(diff_sum_9_r[14]),
        .I1(diff_sum_8_r[14]),
        .I2(diff_sum_9_r[15]),
        .I3(diff_sum_8_r[15]),
        .O(min1_51_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry__0_i_6
       (.I0(diff_sum_9_r[12]),
        .I1(diff_sum_8_r[12]),
        .I2(diff_sum_9_r[13]),
        .I3(diff_sum_8_r[13]),
        .O(min1_51_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry__0_i_7
       (.I0(diff_sum_9_r[10]),
        .I1(diff_sum_8_r[10]),
        .I2(diff_sum_9_r[11]),
        .I3(diff_sum_8_r[11]),
        .O(min1_51_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry__0_i_8
       (.I0(diff_sum_9_r[8]),
        .I1(diff_sum_8_r[8]),
        .I2(diff_sum_9_r[9]),
        .I3(diff_sum_8_r[9]),
        .O(min1_51_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry_i_1
       (.I0(diff_sum_9_r[6]),
        .I1(diff_sum_8_r[6]),
        .I2(diff_sum_8_r[7]),
        .I3(diff_sum_9_r[7]),
        .O(min1_51_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry_i_2
       (.I0(diff_sum_9_r[4]),
        .I1(diff_sum_8_r[4]),
        .I2(diff_sum_8_r[5]),
        .I3(diff_sum_9_r[5]),
        .O(min1_51_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry_i_3
       (.I0(diff_sum_9_r[2]),
        .I1(diff_sum_8_r[2]),
        .I2(diff_sum_8_r[3]),
        .I3(diff_sum_9_r[3]),
        .O(min1_51_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min1_51_carry_i_4
       (.I0(diff_sum_9_r[0]),
        .I1(diff_sum_8_r[0]),
        .I2(diff_sum_8_r[1]),
        .I3(diff_sum_9_r[1]),
        .O(min1_51_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry_i_5
       (.I0(diff_sum_9_r[6]),
        .I1(diff_sum_8_r[6]),
        .I2(diff_sum_9_r[7]),
        .I3(diff_sum_8_r[7]),
        .O(min1_51_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry_i_6
       (.I0(diff_sum_9_r[4]),
        .I1(diff_sum_8_r[4]),
        .I2(diff_sum_9_r[5]),
        .I3(diff_sum_8_r[5]),
        .O(min1_51_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry_i_7
       (.I0(diff_sum_9_r[2]),
        .I1(diff_sum_8_r[2]),
        .I2(diff_sum_9_r[3]),
        .I3(diff_sum_8_r[3]),
        .O(min1_51_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_51_carry_i_8
       (.I0(diff_sum_9_r[0]),
        .I1(diff_sum_8_r[0]),
        .I2(diff_sum_9_r[1]),
        .I3(diff_sum_8_r[1]),
        .O(min1_51_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[0]_i_1 
       (.I0(diff_sum_8_r[0]),
        .I1(diff_sum_9_r[0]),
        .I2(min1_51),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[10]_i_1 
       (.I0(diff_sum_8_r[10]),
        .I1(diff_sum_9_r[10]),
        .I2(min1_51),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[11]_i_1 
       (.I0(diff_sum_8_r[11]),
        .I1(diff_sum_9_r[11]),
        .I2(min1_51),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[12]_i_1 
       (.I0(diff_sum_8_r[12]),
        .I1(diff_sum_9_r[12]),
        .I2(min1_51),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[13]_i_1 
       (.I0(diff_sum_8_r[13]),
        .I1(diff_sum_9_r[13]),
        .I2(min1_51),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[14]_i_1 
       (.I0(diff_sum_8_r[14]),
        .I1(diff_sum_9_r[14]),
        .I2(min1_51),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[15]_i_1 
       (.I0(diff_sum_8_r[15]),
        .I1(diff_sum_9_r[15]),
        .I2(min1_51),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[1]_i_1 
       (.I0(diff_sum_8_r[1]),
        .I1(diff_sum_9_r[1]),
        .I2(min1_51),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[2]_i_1 
       (.I0(diff_sum_8_r[2]),
        .I1(diff_sum_9_r[2]),
        .I2(min1_51),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[3]_i_1 
       (.I0(diff_sum_8_r[3]),
        .I1(diff_sum_9_r[3]),
        .I2(min1_51),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[4]_i_1 
       (.I0(diff_sum_8_r[4]),
        .I1(diff_sum_9_r[4]),
        .I2(min1_51),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[5]_i_1 
       (.I0(diff_sum_8_r[5]),
        .I1(diff_sum_9_r[5]),
        .I2(min1_51),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[6]_i_1 
       (.I0(diff_sum_8_r[6]),
        .I1(diff_sum_9_r[6]),
        .I2(min1_51),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[7]_i_1 
       (.I0(diff_sum_8_r[7]),
        .I1(diff_sum_9_r[7]),
        .I2(min1_51),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[8]_i_1 
       (.I0(diff_sum_8_r[8]),
        .I1(diff_sum_9_r[8]),
        .I2(min1_51),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min1_5[9]_i_1 
       (.I0(diff_sum_8_r[9]),
        .I1(diff_sum_9_r[9]),
        .I2(min1_51),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \min1_5_index[0]_i_1 
       (.I0(min1_51),
        .O(\min1_5_index[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min1_5_index[0]_i_1_n_0 ),
        .Q(min1_5_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(min1_5_index[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(min1_5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(min1_5[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(min1_5[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(min1_5[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(min1_5[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(min1_5[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(min1_5[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(min1_5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(min1_5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(min1_5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(min1_5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(min1_5[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(min1_5[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(min1_5[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(min1_5[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_5_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(min1_5[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(min1_6_index),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[0]),
        .Q(min1_6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[10]),
        .Q(min1_6[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[11]),
        .Q(min1_6[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[12]),
        .Q(min1_6[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[13]),
        .Q(min1_6[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[14]),
        .Q(min1_6[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[15]),
        .Q(min1_6[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[1]),
        .Q(min1_6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[2]),
        .Q(min1_6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[3]),
        .Q(min1_6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[4]),
        .Q(min1_6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[5]),
        .Q(min1_6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[6]),
        .Q(min1_6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[7]),
        .Q(min1_6[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[8]),
        .Q(min1_6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min1_6_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_sum_10_r[9]),
        .Q(min1_6[9]),
        .R(1'b0));
  CARRY4 min2_11_carry
       (.CI(1'b0),
        .CO({min2_11_carry_n_0,min2_11_carry_n_1,min2_11_carry_n_2,min2_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min2_11_carry_i_1_n_0,min2_11_carry_i_2_n_0,min2_11_carry_i_3_n_0,min2_11_carry_i_4_n_0}),
        .O(NLW_min2_11_carry_O_UNCONNECTED[3:0]),
        .S({min2_11_carry_i_5_n_0,min2_11_carry_i_6_n_0,min2_11_carry_i_7_n_0,min2_11_carry_i_8_n_0}));
  CARRY4 min2_11_carry__0
       (.CI(min2_11_carry_n_0),
        .CO({min2_11_carry__0_n_0,min2_11_carry__0_n_1,min2_11_carry__0_n_2,min2_11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min2_11_carry__0_i_1_n_0,min2_11_carry__0_i_2_n_0,min2_11_carry__0_i_3_n_0,min2_11_carry__0_i_4_n_0}),
        .O(NLW_min2_11_carry__0_O_UNCONNECTED[3:0]),
        .S({min2_11_carry__0_i_5_n_0,min2_11_carry__0_i_6_n_0,min2_11_carry__0_i_7_n_0,min2_11_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry__0_i_1
       (.I0(min1_2[14]),
        .I1(min1_1[14]),
        .I2(min1_1[15]),
        .I3(min1_2[15]),
        .O(min2_11_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry__0_i_2
       (.I0(min1_2[12]),
        .I1(min1_1[12]),
        .I2(min1_1[13]),
        .I3(min1_2[13]),
        .O(min2_11_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry__0_i_3
       (.I0(min1_2[10]),
        .I1(min1_1[10]),
        .I2(min1_1[11]),
        .I3(min1_2[11]),
        .O(min2_11_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry__0_i_4
       (.I0(min1_2[8]),
        .I1(min1_1[8]),
        .I2(min1_1[9]),
        .I3(min1_2[9]),
        .O(min2_11_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry__0_i_5
       (.I0(min1_2[14]),
        .I1(min1_1[14]),
        .I2(min1_2[15]),
        .I3(min1_1[15]),
        .O(min2_11_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry__0_i_6
       (.I0(min1_2[12]),
        .I1(min1_1[12]),
        .I2(min1_2[13]),
        .I3(min1_1[13]),
        .O(min2_11_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry__0_i_7
       (.I0(min1_2[10]),
        .I1(min1_1[10]),
        .I2(min1_2[11]),
        .I3(min1_1[11]),
        .O(min2_11_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry__0_i_8
       (.I0(min1_2[8]),
        .I1(min1_1[8]),
        .I2(min1_2[9]),
        .I3(min1_1[9]),
        .O(min2_11_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry_i_1
       (.I0(min1_2[6]),
        .I1(min1_1[6]),
        .I2(min1_1[7]),
        .I3(min1_2[7]),
        .O(min2_11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry_i_2
       (.I0(min1_2[4]),
        .I1(min1_1[4]),
        .I2(min1_1[5]),
        .I3(min1_2[5]),
        .O(min2_11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry_i_3
       (.I0(min1_2[2]),
        .I1(min1_1[2]),
        .I2(min1_1[3]),
        .I3(min1_2[3]),
        .O(min2_11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_11_carry_i_4
       (.I0(min1_2[0]),
        .I1(min1_1[0]),
        .I2(min1_1[1]),
        .I3(min1_2[1]),
        .O(min2_11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry_i_5
       (.I0(min1_2[6]),
        .I1(min1_1[6]),
        .I2(min1_2[7]),
        .I3(min1_1[7]),
        .O(min2_11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry_i_6
       (.I0(min1_2[4]),
        .I1(min1_1[4]),
        .I2(min1_2[5]),
        .I3(min1_1[5]),
        .O(min2_11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry_i_7
       (.I0(min1_2[2]),
        .I1(min1_1[2]),
        .I2(min1_2[3]),
        .I3(min1_1[3]),
        .O(min2_11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_11_carry_i_8
       (.I0(min1_2[0]),
        .I1(min1_1[0]),
        .I2(min1_2[1]),
        .I3(min1_1[1]),
        .O(min2_11_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[0]_i_1 
       (.I0(min1_1[0]),
        .I1(min1_2[0]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[10]_i_1 
       (.I0(min1_1[10]),
        .I1(min1_2[10]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[11]_i_1 
       (.I0(min1_1[11]),
        .I1(min1_2[11]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[12]_i_1 
       (.I0(min1_1[12]),
        .I1(min1_2[12]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[13]_i_1 
       (.I0(min1_1[13]),
        .I1(min1_2[13]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[14]_i_1 
       (.I0(min1_1[14]),
        .I1(min1_2[14]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[15]_i_1 
       (.I0(min1_1[15]),
        .I1(min1_2[15]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[1]_i_1 
       (.I0(min1_1[1]),
        .I1(min1_2[1]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[2]_i_1 
       (.I0(min1_1[2]),
        .I1(min1_2[2]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[3]_i_1 
       (.I0(min1_1[3]),
        .I1(min1_2[3]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[4]_i_1 
       (.I0(min1_1[4]),
        .I1(min1_2[4]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[5]_i_1 
       (.I0(min1_1[5]),
        .I1(min1_2[5]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[6]_i_1 
       (.I0(min1_1[6]),
        .I1(min1_2[6]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[7]_i_1 
       (.I0(min1_1[7]),
        .I1(min1_2[7]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[8]_i_1 
       (.I0(min1_1[8]),
        .I1(min1_2[8]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_1[9]_i_1 
       (.I0(min1_1[9]),
        .I1(min1_2[9]),
        .I2(min2_11_carry__0_n_0),
        .O(\min2_1[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min2_1_index[0]_i_1 
       (.I0(min1_1_index),
        .I1(min2_11_carry__0_n_0),
        .I2(min1_2_index),
        .O(\min2_1_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min2_1_index[1]_i_1 
       (.I0(min1_5_index[3]),
        .I1(min2_11_carry__0_n_0),
        .O(\min2_1_index[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1_index[0]_i_1_n_0 ),
        .Q(min2_1_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1_index[1]_i_1_n_0 ),
        .Q(min2_1_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[0]_i_1_n_0 ),
        .Q(min2_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[10]_i_1_n_0 ),
        .Q(min2_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[11]_i_1_n_0 ),
        .Q(min2_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[12]_i_1_n_0 ),
        .Q(min2_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[13]_i_1_n_0 ),
        .Q(min2_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[14]_i_1_n_0 ),
        .Q(min2_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[15]_i_1_n_0 ),
        .Q(min2_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[1]_i_1_n_0 ),
        .Q(min2_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[2]_i_1_n_0 ),
        .Q(min2_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[3]_i_1_n_0 ),
        .Q(min2_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[4]_i_1_n_0 ),
        .Q(min2_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[5]_i_1_n_0 ),
        .Q(min2_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[6]_i_1_n_0 ),
        .Q(min2_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[7]_i_1_n_0 ),
        .Q(min2_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[8]_i_1_n_0 ),
        .Q(min2_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_1[9]_i_1_n_0 ),
        .Q(min2_1[9]),
        .R(1'b0));
  CARRY4 min2_21_carry
       (.CI(1'b0),
        .CO({min2_21_carry_n_0,min2_21_carry_n_1,min2_21_carry_n_2,min2_21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min2_21_carry_i_1_n_0,min2_21_carry_i_2_n_0,min2_21_carry_i_3_n_0,min2_21_carry_i_4_n_0}),
        .O(NLW_min2_21_carry_O_UNCONNECTED[3:0]),
        .S({min2_21_carry_i_5_n_0,min2_21_carry_i_6_n_0,min2_21_carry_i_7_n_0,min2_21_carry_i_8_n_0}));
  CARRY4 min2_21_carry__0
       (.CI(min2_21_carry_n_0),
        .CO({min2_21_carry__0_n_0,min2_21_carry__0_n_1,min2_21_carry__0_n_2,min2_21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min2_21_carry__0_i_1_n_0,min2_21_carry__0_i_2_n_0,min2_21_carry__0_i_3_n_0,min2_21_carry__0_i_4_n_0}),
        .O(NLW_min2_21_carry__0_O_UNCONNECTED[3:0]),
        .S({min2_21_carry__0_i_5_n_0,min2_21_carry__0_i_6_n_0,min2_21_carry__0_i_7_n_0,min2_21_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry__0_i_1
       (.I0(min1_4[14]),
        .I1(min1_3[14]),
        .I2(min1_3[15]),
        .I3(min1_4[15]),
        .O(min2_21_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry__0_i_2
       (.I0(min1_4[12]),
        .I1(min1_3[12]),
        .I2(min1_3[13]),
        .I3(min1_4[13]),
        .O(min2_21_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry__0_i_3
       (.I0(min1_4[10]),
        .I1(min1_3[10]),
        .I2(min1_3[11]),
        .I3(min1_4[11]),
        .O(min2_21_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry__0_i_4
       (.I0(min1_4[8]),
        .I1(min1_3[8]),
        .I2(min1_3[9]),
        .I3(min1_4[9]),
        .O(min2_21_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry__0_i_5
       (.I0(min1_4[14]),
        .I1(min1_3[14]),
        .I2(min1_4[15]),
        .I3(min1_3[15]),
        .O(min2_21_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry__0_i_6
       (.I0(min1_4[12]),
        .I1(min1_3[12]),
        .I2(min1_4[13]),
        .I3(min1_3[13]),
        .O(min2_21_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry__0_i_7
       (.I0(min1_4[10]),
        .I1(min1_3[10]),
        .I2(min1_4[11]),
        .I3(min1_3[11]),
        .O(min2_21_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry__0_i_8
       (.I0(min1_4[8]),
        .I1(min1_3[8]),
        .I2(min1_4[9]),
        .I3(min1_3[9]),
        .O(min2_21_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry_i_1
       (.I0(min1_4[6]),
        .I1(min1_3[6]),
        .I2(min1_3[7]),
        .I3(min1_4[7]),
        .O(min2_21_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry_i_2
       (.I0(min1_4[4]),
        .I1(min1_3[4]),
        .I2(min1_3[5]),
        .I3(min1_4[5]),
        .O(min2_21_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry_i_3
       (.I0(min1_4[2]),
        .I1(min1_3[2]),
        .I2(min1_3[3]),
        .I3(min1_4[3]),
        .O(min2_21_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_21_carry_i_4
       (.I0(min1_4[0]),
        .I1(min1_3[0]),
        .I2(min1_3[1]),
        .I3(min1_4[1]),
        .O(min2_21_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry_i_5
       (.I0(min1_4[6]),
        .I1(min1_3[6]),
        .I2(min1_4[7]),
        .I3(min1_3[7]),
        .O(min2_21_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry_i_6
       (.I0(min1_4[4]),
        .I1(min1_3[4]),
        .I2(min1_4[5]),
        .I3(min1_3[5]),
        .O(min2_21_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry_i_7
       (.I0(min1_4[2]),
        .I1(min1_3[2]),
        .I2(min1_4[3]),
        .I3(min1_3[3]),
        .O(min2_21_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_21_carry_i_8
       (.I0(min1_4[0]),
        .I1(min1_3[0]),
        .I2(min1_4[1]),
        .I3(min1_3[1]),
        .O(min2_21_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[0]_i_1 
       (.I0(min1_3[0]),
        .I1(min1_4[0]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[10]_i_1 
       (.I0(min1_3[10]),
        .I1(min1_4[10]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[11]_i_1 
       (.I0(min1_3[11]),
        .I1(min1_4[11]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[12]_i_1 
       (.I0(min1_3[12]),
        .I1(min1_4[12]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[13]_i_1 
       (.I0(min1_3[13]),
        .I1(min1_4[13]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[14]_i_1 
       (.I0(min1_3[14]),
        .I1(min1_4[14]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[15]_i_1 
       (.I0(min1_3[15]),
        .I1(min1_4[15]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[1]_i_1 
       (.I0(min1_3[1]),
        .I1(min1_4[1]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[2]_i_1 
       (.I0(min1_3[2]),
        .I1(min1_4[2]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[3]_i_1 
       (.I0(min1_3[3]),
        .I1(min1_4[3]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[4]_i_1 
       (.I0(min1_3[4]),
        .I1(min1_4[4]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[5]_i_1 
       (.I0(min1_3[5]),
        .I1(min1_4[5]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[6]_i_1 
       (.I0(min1_3[6]),
        .I1(min1_4[6]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[7]_i_1 
       (.I0(min1_3[7]),
        .I1(min1_4[7]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[8]_i_1 
       (.I0(min1_3[8]),
        .I1(min1_4[8]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_2[9]_i_1 
       (.I0(min1_3[9]),
        .I1(min1_4[9]),
        .I2(min2_21_carry__0_n_0),
        .O(\min2_2[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min2_2_index[0]_i_1 
       (.I0(min1_3_index),
        .I1(min2_21_carry__0_n_0),
        .I2(min1_4_index),
        .O(\min2_2_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min2_2_index[1]_i_1 
       (.I0(min1_5_index[3]),
        .I1(min2_21_carry__0_n_0),
        .O(\min2_2_index[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2_index[0]_i_1_n_0 ),
        .Q(min2_2_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2_index[1]_i_1_n_0 ),
        .Q(min2_2_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(min1_5_index[3]),
        .Q(min2_2_index[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[0]_i_1_n_0 ),
        .Q(min2_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[10]_i_1_n_0 ),
        .Q(min2_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[11]_i_1_n_0 ),
        .Q(min2_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[12]_i_1_n_0 ),
        .Q(min2_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[13]_i_1_n_0 ),
        .Q(min2_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[14]_i_1_n_0 ),
        .Q(min2_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[15]_i_1_n_0 ),
        .Q(min2_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[1]_i_1_n_0 ),
        .Q(min2_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[2]_i_1_n_0 ),
        .Q(min2_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[3]_i_1_n_0 ),
        .Q(min2_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[4]_i_1_n_0 ),
        .Q(min2_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[5]_i_1_n_0 ),
        .Q(min2_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[6]_i_1_n_0 ),
        .Q(min2_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[7]_i_1_n_0 ),
        .Q(min2_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[8]_i_1_n_0 ),
        .Q(min2_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_2[9]_i_1_n_0 ),
        .Q(min2_2[9]),
        .R(1'b0));
  CARRY4 min2_31_carry
       (.CI(1'b0),
        .CO({min2_31_carry_n_0,min2_31_carry_n_1,min2_31_carry_n_2,min2_31_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min2_31_carry_i_1_n_0,min2_31_carry_i_2_n_0,min2_31_carry_i_3_n_0,min2_31_carry_i_4_n_0}),
        .O(NLW_min2_31_carry_O_UNCONNECTED[3:0]),
        .S({min2_31_carry_i_5_n_0,min2_31_carry_i_6_n_0,min2_31_carry_i_7_n_0,min2_31_carry_i_8_n_0}));
  CARRY4 min2_31_carry__0
       (.CI(min2_31_carry_n_0),
        .CO({min2_31_carry__0_n_0,min2_31_carry__0_n_1,min2_31_carry__0_n_2,min2_31_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min2_31_carry__0_i_1_n_0,min2_31_carry__0_i_2_n_0,min2_31_carry__0_i_3_n_0,min2_31_carry__0_i_4_n_0}),
        .O(NLW_min2_31_carry__0_O_UNCONNECTED[3:0]),
        .S({min2_31_carry__0_i_5_n_0,min2_31_carry__0_i_6_n_0,min2_31_carry__0_i_7_n_0,min2_31_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry__0_i_1
       (.I0(min1_6[14]),
        .I1(min1_5[14]),
        .I2(min1_5[15]),
        .I3(min1_6[15]),
        .O(min2_31_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry__0_i_2
       (.I0(min1_6[12]),
        .I1(min1_5[12]),
        .I2(min1_5[13]),
        .I3(min1_6[13]),
        .O(min2_31_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry__0_i_3
       (.I0(min1_6[10]),
        .I1(min1_5[10]),
        .I2(min1_5[11]),
        .I3(min1_6[11]),
        .O(min2_31_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry__0_i_4
       (.I0(min1_6[8]),
        .I1(min1_5[8]),
        .I2(min1_5[9]),
        .I3(min1_6[9]),
        .O(min2_31_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry__0_i_5
       (.I0(min1_6[14]),
        .I1(min1_5[14]),
        .I2(min1_6[15]),
        .I3(min1_5[15]),
        .O(min2_31_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry__0_i_6
       (.I0(min1_6[12]),
        .I1(min1_5[12]),
        .I2(min1_6[13]),
        .I3(min1_5[13]),
        .O(min2_31_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry__0_i_7
       (.I0(min1_6[10]),
        .I1(min1_5[10]),
        .I2(min1_6[11]),
        .I3(min1_5[11]),
        .O(min2_31_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry__0_i_8
       (.I0(min1_6[8]),
        .I1(min1_5[8]),
        .I2(min1_6[9]),
        .I3(min1_5[9]),
        .O(min2_31_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry_i_1
       (.I0(min1_6[6]),
        .I1(min1_5[6]),
        .I2(min1_5[7]),
        .I3(min1_6[7]),
        .O(min2_31_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry_i_2
       (.I0(min1_6[4]),
        .I1(min1_5[4]),
        .I2(min1_5[5]),
        .I3(min1_6[5]),
        .O(min2_31_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry_i_3
       (.I0(min1_6[2]),
        .I1(min1_5[2]),
        .I2(min1_5[3]),
        .I3(min1_6[3]),
        .O(min2_31_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_31_carry_i_4
       (.I0(min1_6[0]),
        .I1(min1_5[0]),
        .I2(min1_5[1]),
        .I3(min1_6[1]),
        .O(min2_31_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry_i_5
       (.I0(min1_6[6]),
        .I1(min1_5[6]),
        .I2(min1_6[7]),
        .I3(min1_5[7]),
        .O(min2_31_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry_i_6
       (.I0(min1_6[4]),
        .I1(min1_5[4]),
        .I2(min1_6[5]),
        .I3(min1_5[5]),
        .O(min2_31_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry_i_7
       (.I0(min1_6[2]),
        .I1(min1_5[2]),
        .I2(min1_6[3]),
        .I3(min1_5[3]),
        .O(min2_31_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_31_carry_i_8
       (.I0(min1_6[0]),
        .I1(min1_5[0]),
        .I2(min1_6[1]),
        .I3(min1_5[1]),
        .O(min2_31_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[0]_i_1 
       (.I0(min1_5[0]),
        .I1(min1_6[0]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[10]_i_1 
       (.I0(min1_5[10]),
        .I1(min1_6[10]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[11]_i_1 
       (.I0(min1_5[11]),
        .I1(min1_6[11]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[12]_i_1 
       (.I0(min1_5[12]),
        .I1(min1_6[12]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[13]_i_1 
       (.I0(min1_5[13]),
        .I1(min1_6[13]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[14]_i_1 
       (.I0(min1_5[14]),
        .I1(min1_6[14]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[15]_i_1 
       (.I0(min1_5[15]),
        .I1(min1_6[15]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[1]_i_1 
       (.I0(min1_5[1]),
        .I1(min1_6[1]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[2]_i_1 
       (.I0(min1_5[2]),
        .I1(min1_6[2]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[3]_i_1 
       (.I0(min1_5[3]),
        .I1(min1_6[3]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[4]_i_1 
       (.I0(min1_5[4]),
        .I1(min1_6[4]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[5]_i_1 
       (.I0(min1_5[5]),
        .I1(min1_6[5]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[6]_i_1 
       (.I0(min1_5[6]),
        .I1(min1_6[6]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[7]_i_1 
       (.I0(min1_5[7]),
        .I1(min1_6[7]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[8]_i_1 
       (.I0(min1_5[8]),
        .I1(min1_6[8]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min2_3[9]_i_1 
       (.I0(min1_5[9]),
        .I1(min1_6[9]),
        .I2(min2_31_carry__0_n_0),
        .O(\min2_3[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \min2_3_index[0]_i_1 
       (.I0(min2_31_carry__0_n_0),
        .I1(min1_5_index[0]),
        .O(\min2_3_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min2_3_index[1]_i_1 
       (.I0(min1_6_index),
        .I1(min2_31_carry__0_n_0),
        .O(\min2_3_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min2_3_index[3]_i_1 
       (.I0(min1_5_index[3]),
        .I1(min2_31_carry__0_n_0),
        .I2(min1_6_index),
        .O(\min2_3_index[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3_index[0]_i_1_n_0 ),
        .Q(\min2_3_index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3_index[1]_i_1_n_0 ),
        .Q(\min2_3_index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3_index[3]_i_1_n_0 ),
        .Q(\min2_3_index_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[0]_i_1_n_0 ),
        .Q(min2_3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[10]_i_1_n_0 ),
        .Q(min2_3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[11]_i_1_n_0 ),
        .Q(min2_3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[12]_i_1_n_0 ),
        .Q(min2_3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[13]_i_1_n_0 ),
        .Q(min2_3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[14]_i_1_n_0 ),
        .Q(min2_3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[15]_i_1_n_0 ),
        .Q(min2_3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[1]_i_1_n_0 ),
        .Q(min2_3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[2]_i_1_n_0 ),
        .Q(min2_3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[3]_i_1_n_0 ),
        .Q(min2_3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[4]_i_1_n_0 ),
        .Q(min2_3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[5]_i_1_n_0 ),
        .Q(min2_3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[6]_i_1_n_0 ),
        .Q(min2_3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[7]_i_1_n_0 ),
        .Q(min2_3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[8]_i_1_n_0 ),
        .Q(min2_3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min2_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3[9]_i_1_n_0 ),
        .Q(min2_3[9]),
        .R(1'b0));
  CARRY4 min3_11_carry
       (.CI(1'b0),
        .CO({min3_11_carry_n_0,min3_11_carry_n_1,min3_11_carry_n_2,min3_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min3_11_carry_i_1_n_0,min3_11_carry_i_2_n_0,min3_11_carry_i_3_n_0,min3_11_carry_i_4_n_0}),
        .O(NLW_min3_11_carry_O_UNCONNECTED[3:0]),
        .S({min3_11_carry_i_5_n_0,min3_11_carry_i_6_n_0,min3_11_carry_i_7_n_0,min3_11_carry_i_8_n_0}));
  CARRY4 min3_11_carry__0
       (.CI(min3_11_carry_n_0),
        .CO({min3_11_carry__0_n_0,min3_11_carry__0_n_1,min3_11_carry__0_n_2,min3_11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min3_11_carry__0_i_1_n_0,min3_11_carry__0_i_2_n_0,min3_11_carry__0_i_3_n_0,min3_11_carry__0_i_4_n_0}),
        .O(NLW_min3_11_carry__0_O_UNCONNECTED[3:0]),
        .S({min3_11_carry__0_i_5_n_0,min3_11_carry__0_i_6_n_0,min3_11_carry__0_i_7_n_0,min3_11_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry__0_i_1
       (.I0(min2_2[14]),
        .I1(min2_1[14]),
        .I2(min2_1[15]),
        .I3(min2_2[15]),
        .O(min3_11_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry__0_i_2
       (.I0(min2_2[12]),
        .I1(min2_1[12]),
        .I2(min2_1[13]),
        .I3(min2_2[13]),
        .O(min3_11_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry__0_i_3
       (.I0(min2_2[10]),
        .I1(min2_1[10]),
        .I2(min2_1[11]),
        .I3(min2_2[11]),
        .O(min3_11_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry__0_i_4
       (.I0(min2_2[8]),
        .I1(min2_1[8]),
        .I2(min2_1[9]),
        .I3(min2_2[9]),
        .O(min3_11_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry__0_i_5
       (.I0(min2_2[14]),
        .I1(min2_1[14]),
        .I2(min2_2[15]),
        .I3(min2_1[15]),
        .O(min3_11_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry__0_i_6
       (.I0(min2_2[12]),
        .I1(min2_1[12]),
        .I2(min2_2[13]),
        .I3(min2_1[13]),
        .O(min3_11_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry__0_i_7
       (.I0(min2_2[10]),
        .I1(min2_1[10]),
        .I2(min2_2[11]),
        .I3(min2_1[11]),
        .O(min3_11_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry__0_i_8
       (.I0(min2_2[8]),
        .I1(min2_1[8]),
        .I2(min2_2[9]),
        .I3(min2_1[9]),
        .O(min3_11_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry_i_1
       (.I0(min2_2[6]),
        .I1(min2_1[6]),
        .I2(min2_1[7]),
        .I3(min2_2[7]),
        .O(min3_11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry_i_2
       (.I0(min2_2[4]),
        .I1(min2_1[4]),
        .I2(min2_1[5]),
        .I3(min2_2[5]),
        .O(min3_11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry_i_3
       (.I0(min2_2[2]),
        .I1(min2_1[2]),
        .I2(min2_1[3]),
        .I3(min2_2[3]),
        .O(min3_11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min3_11_carry_i_4
       (.I0(min2_2[0]),
        .I1(min2_1[0]),
        .I2(min2_1[1]),
        .I3(min2_2[1]),
        .O(min3_11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry_i_5
       (.I0(min2_2[6]),
        .I1(min2_1[6]),
        .I2(min2_2[7]),
        .I3(min2_1[7]),
        .O(min3_11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry_i_6
       (.I0(min2_2[4]),
        .I1(min2_1[4]),
        .I2(min2_2[5]),
        .I3(min2_1[5]),
        .O(min3_11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry_i_7
       (.I0(min2_2[2]),
        .I1(min2_1[2]),
        .I2(min2_2[3]),
        .I3(min2_1[3]),
        .O(min3_11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min3_11_carry_i_8
       (.I0(min2_2[0]),
        .I1(min2_1[0]),
        .I2(min2_2[1]),
        .I3(min2_1[1]),
        .O(min3_11_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[0]_i_1 
       (.I0(min2_1[0]),
        .I1(min2_2[0]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[10]_i_1 
       (.I0(min2_1[10]),
        .I1(min2_2[10]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[11]_i_1 
       (.I0(min2_1[11]),
        .I1(min2_2[11]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[12]_i_1 
       (.I0(min2_1[12]),
        .I1(min2_2[12]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[13]_i_1 
       (.I0(min2_1[13]),
        .I1(min2_2[13]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[14]_i_1 
       (.I0(min2_1[14]),
        .I1(min2_2[14]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[15]_i_1 
       (.I0(min2_1[15]),
        .I1(min2_2[15]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[1]_i_1 
       (.I0(min2_1[1]),
        .I1(min2_2[1]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[2]_i_1 
       (.I0(min2_1[2]),
        .I1(min2_2[2]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[3]_i_1 
       (.I0(min2_1[3]),
        .I1(min2_2[3]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[4]_i_1 
       (.I0(min2_1[4]),
        .I1(min2_2[4]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[5]_i_1 
       (.I0(min2_1[5]),
        .I1(min2_2[5]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[6]_i_1 
       (.I0(min2_1[6]),
        .I1(min2_2[6]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[7]_i_1 
       (.I0(min2_1[7]),
        .I1(min2_2[7]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[8]_i_1 
       (.I0(min2_1[8]),
        .I1(min2_2[8]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min3_1[9]_i_1 
       (.I0(min2_1[9]),
        .I1(min2_2[9]),
        .I2(min3_11_carry__0_n_0),
        .O(\min3_1[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min3_1_index[0]_i_1 
       (.I0(min2_1_index[0]),
        .I1(min3_11_carry__0_n_0),
        .I2(min2_2_index[0]),
        .O(\min3_1_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min3_1_index[1]_i_1 
       (.I0(min2_1_index[1]),
        .I1(min3_11_carry__0_n_0),
        .I2(min2_2_index[1]),
        .O(\min3_1_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min3_1_index[2]_i_1 
       (.I0(min2_2_index[2]),
        .I1(min3_11_carry__0_n_0),
        .O(\min3_1_index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1_index[0]_i_1_n_0 ),
        .Q(min3_1_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1_index[1]_i_1_n_0 ),
        .Q(min3_1_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1_index[2]_i_1_n_0 ),
        .Q(min3_1_index[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[0]_i_1_n_0 ),
        .Q(min3_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[10]_i_1_n_0 ),
        .Q(min3_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[11]_i_1_n_0 ),
        .Q(min3_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[12]_i_1_n_0 ),
        .Q(min3_1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[13]_i_1_n_0 ),
        .Q(min3_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[14]_i_1_n_0 ),
        .Q(min3_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[15]_i_1_n_0 ),
        .Q(min3_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[1]_i_1_n_0 ),
        .Q(min3_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[2]_i_1_n_0 ),
        .Q(min3_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[3]_i_1_n_0 ),
        .Q(min3_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[4]_i_1_n_0 ),
        .Q(min3_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[5]_i_1_n_0 ),
        .Q(min3_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[6]_i_1_n_0 ),
        .Q(min3_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[7]_i_1_n_0 ),
        .Q(min3_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[8]_i_1_n_0 ),
        .Q(min3_1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min3_1[9]_i_1_n_0 ),
        .Q(min3_1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3_index_reg_n_0_[0] ),
        .Q(min3_2_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3_index_reg_n_0_[1] ),
        .Q(min3_2_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min2_3_index_reg_n_0_[3] ),
        .Q(min3_2_index[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[0]),
        .Q(min3_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[10]),
        .Q(min3_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[11]),
        .Q(min3_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[12]),
        .Q(min3_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[13]),
        .Q(min3_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[14]),
        .Q(min3_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[15]),
        .Q(min3_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[1]),
        .Q(min3_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[2]),
        .Q(min3_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[3]),
        .Q(min3_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[4]),
        .Q(min3_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[5]),
        .Q(min3_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[6]),
        .Q(min3_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[7]),
        .Q(min3_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[8]),
        .Q(min3_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min3_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(min2_3[9]),
        .Q(min3_2[9]),
        .R(1'b0));
  CARRY4 min4_11_carry
       (.CI(1'b0),
        .CO({min4_11_carry_n_0,min4_11_carry_n_1,min4_11_carry_n_2,min4_11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min4_11_carry_i_1_n_0,min4_11_carry_i_2_n_0,min4_11_carry_i_3_n_0,min4_11_carry_i_4_n_0}),
        .O(NLW_min4_11_carry_O_UNCONNECTED[3:0]),
        .S({min4_11_carry_i_5_n_0,min4_11_carry_i_6_n_0,min4_11_carry_i_7_n_0,min4_11_carry_i_8_n_0}));
  CARRY4 min4_11_carry__0
       (.CI(min4_11_carry_n_0),
        .CO({min4_11_carry__0_n_0,min4_11_carry__0_n_1,min4_11_carry__0_n_2,min4_11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({min4_11_carry__0_i_1_n_0,min4_11_carry__0_i_2_n_0,min4_11_carry__0_i_3_n_0,min4_11_carry__0_i_4_n_0}),
        .O(NLW_min4_11_carry__0_O_UNCONNECTED[3:0]),
        .S({min4_11_carry__0_i_5_n_0,min4_11_carry__0_i_6_n_0,min4_11_carry__0_i_7_n_0,min4_11_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry__0_i_1
       (.I0(min3_2[14]),
        .I1(min3_1[14]),
        .I2(min3_1[15]),
        .I3(min3_2[15]),
        .O(min4_11_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry__0_i_2
       (.I0(min3_2[12]),
        .I1(min3_1[12]),
        .I2(min3_1[13]),
        .I3(min3_2[13]),
        .O(min4_11_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry__0_i_3
       (.I0(min3_2[10]),
        .I1(min3_1[10]),
        .I2(min3_1[11]),
        .I3(min3_2[11]),
        .O(min4_11_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry__0_i_4
       (.I0(min3_2[8]),
        .I1(min3_1[8]),
        .I2(min3_1[9]),
        .I3(min3_2[9]),
        .O(min4_11_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry__0_i_5
       (.I0(min3_2[14]),
        .I1(min3_1[14]),
        .I2(min3_2[15]),
        .I3(min3_1[15]),
        .O(min4_11_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry__0_i_6
       (.I0(min3_2[12]),
        .I1(min3_1[12]),
        .I2(min3_2[13]),
        .I3(min3_1[13]),
        .O(min4_11_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry__0_i_7
       (.I0(min3_2[10]),
        .I1(min3_1[10]),
        .I2(min3_2[11]),
        .I3(min3_1[11]),
        .O(min4_11_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry__0_i_8
       (.I0(min3_2[8]),
        .I1(min3_1[8]),
        .I2(min3_2[9]),
        .I3(min3_1[9]),
        .O(min4_11_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry_i_1
       (.I0(min3_2[6]),
        .I1(min3_1[6]),
        .I2(min3_1[7]),
        .I3(min3_2[7]),
        .O(min4_11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry_i_2
       (.I0(min3_2[4]),
        .I1(min3_1[4]),
        .I2(min3_1[5]),
        .I3(min3_2[5]),
        .O(min4_11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry_i_3
       (.I0(min3_2[2]),
        .I1(min3_1[2]),
        .I2(min3_1[3]),
        .I3(min3_2[3]),
        .O(min4_11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min4_11_carry_i_4
       (.I0(min3_2[0]),
        .I1(min3_1[0]),
        .I2(min3_1[1]),
        .I3(min3_2[1]),
        .O(min4_11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry_i_5
       (.I0(min3_2[6]),
        .I1(min3_1[6]),
        .I2(min3_2[7]),
        .I3(min3_1[7]),
        .O(min4_11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry_i_6
       (.I0(min3_2[4]),
        .I1(min3_1[4]),
        .I2(min3_2[5]),
        .I3(min3_1[5]),
        .O(min4_11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry_i_7
       (.I0(min3_2[2]),
        .I1(min3_1[2]),
        .I2(min3_2[3]),
        .I3(min3_1[3]),
        .O(min4_11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min4_11_carry_i_8
       (.I0(min3_2[0]),
        .I1(min3_1[0]),
        .I2(min3_2[1]),
        .I3(min3_1[1]),
        .O(min4_11_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[0]_i_1 
       (.I0(min3_1[0]),
        .I1(min3_2[0]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[10]_i_1 
       (.I0(min3_1[10]),
        .I1(min3_2[10]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[11]_i_1 
       (.I0(min3_1[11]),
        .I1(min3_2[11]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[12]_i_1 
       (.I0(min3_1[12]),
        .I1(min3_2[12]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[13]_i_1 
       (.I0(min3_1[13]),
        .I1(min3_2[13]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[14]_i_1 
       (.I0(min3_1[14]),
        .I1(min3_2[14]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[15]_i_1 
       (.I0(min3_1[15]),
        .I1(min3_2[15]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[1]_i_1 
       (.I0(min3_1[1]),
        .I1(min3_2[1]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[2]_i_1 
       (.I0(min3_1[2]),
        .I1(min3_2[2]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[3]_i_1 
       (.I0(min3_1[3]),
        .I1(min3_2[3]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[4]_i_1 
       (.I0(min3_1[4]),
        .I1(min3_2[4]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[5]_i_1 
       (.I0(min3_1[5]),
        .I1(min3_2[5]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[6]_i_1 
       (.I0(min3_1[6]),
        .I1(min3_2[6]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[7]_i_1 
       (.I0(min3_1[7]),
        .I1(min3_2[7]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[8]_i_1 
       (.I0(min3_1[8]),
        .I1(min3_2[8]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \min4_1[9]_i_1 
       (.I0(min3_1[9]),
        .I1(min3_2[9]),
        .I2(min4_11_carry__0_n_0),
        .O(\min4_1[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min4_1_index[0]_i_1 
       (.I0(min3_1_index[0]),
        .I1(min4_11_carry__0_n_0),
        .I2(min3_2_index[0]),
        .O(\min4_1_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \min4_1_index[1]_i_1 
       (.I0(min3_1_index[1]),
        .I1(min4_11_carry__0_n_0),
        .I2(min3_2_index[1]),
        .O(\min4_1_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \min4_1_index[2]_i_1 
       (.I0(min4_11_carry__0_n_0),
        .I1(min3_1_index[2]),
        .O(\min4_1_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \min4_1_index[3]_i_1 
       (.I0(min3_2_index[3]),
        .I1(min4_11_carry__0_n_0),
        .O(\min4_1_index[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1_index[0]_i_1_n_0 ),
        .Q(char_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1_index[1]_i_1_n_0 ),
        .Q(char_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1_index[2]_i_1_n_0 ),
        .Q(char_index[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1_index[3]_i_1_n_0 ),
        .Q(char_index[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[0]_i_1_n_0 ),
        .Q(char_diff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[10]_i_1_n_0 ),
        .Q(char_diff[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[11]_i_1_n_0 ),
        .Q(char_diff[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[12]_i_1_n_0 ),
        .Q(char_diff[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[13]_i_1_n_0 ),
        .Q(char_diff[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[14]_i_1_n_0 ),
        .Q(char_diff[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[15]_i_1_n_0 ),
        .Q(char_diff[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[1]_i_1_n_0 ),
        .Q(char_diff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[2]_i_1_n_0 ),
        .Q(char_diff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[3]_i_1_n_0 ),
        .Q(char_diff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[4]_i_1_n_0 ),
        .Q(char_diff[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[5]_i_1_n_0 ),
        .Q(char_diff[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[6]_i_1_n_0 ),
        .Q(char_diff[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[7]_i_1_n_0 ),
        .Q(char_diff[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[8]_i_1_n_0 ),
        .Q(char_diff[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min4_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\min4_1[9]_i_1_n_0 ),
        .Q(char_diff[9]),
        .R(1'b0));
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
