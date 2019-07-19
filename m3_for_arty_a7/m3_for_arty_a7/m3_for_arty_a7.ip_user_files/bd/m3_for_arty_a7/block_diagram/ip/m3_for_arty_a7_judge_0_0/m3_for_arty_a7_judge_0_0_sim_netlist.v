// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:48:40 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_judge_0_0/m3_for_arty_a7_judge_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_judge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_judge_0_0,judge,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "judge,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_judge_0_0
   (clk,
    rst_n,
    max_diff,
    min_continue,
    min_counter,
    char_index_c,
    char_diff_c,
    char_valid_c,
    char_index_co,
    char_valid_co);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input [31:0]char_index_c;
  input [127:0]char_diff_c;
  input char_valid_c;
  output [19:0]char_index_co;
  output char_valid_co;

  wire [127:0]char_diff_c;
  wire [31:0]char_index_c;
  wire [19:0]char_index_co;
  wire char_valid_c;
  wire char_valid_co;
  wire clk;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  wire rst_n;

  m3_for_arty_a7_judge_0_0_judge inst
       (.char_diff_c(char_diff_c[127:48]),
        .char_index_c(char_index_c[31:12]),
        .char_index_co(char_index_co),
        .char_valid_c(char_valid_c),
        .char_valid_co(char_valid_co),
        .clk(clk),
        .max_diff(max_diff),
        .min_continue(min_continue),
        .min_counter(min_counter),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "judge" *) 
module m3_for_arty_a7_judge_0_0_judge
   (char_index_co,
    char_valid_co,
    clk,
    rst_n,
    max_diff,
    min_continue,
    min_counter,
    char_valid_c,
    char_index_c,
    char_diff_c);
  output [19:0]char_index_co;
  output char_valid_co;
  input clk;
  input rst_n;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input char_valid_c;
  input [19:0]char_index_c;
  input [79:0]char_diff_c;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire all_done_i_1_n_0;
  wire all_done_reg_n_0;
  wire [15:0]char_diff_3;
  wire [15:0]char_diff_4;
  wire [15:0]char_diff_5;
  wire [15:0]char_diff_6;
  wire [15:0]char_diff_7;
  wire [79:0]char_diff_c;
  wire [3:0]char_index_3;
  wire [3:0]char_index_4;
  wire [3:0]char_index_5;
  wire [3:0]char_index_6;
  wire [3:0]char_index_7;
  wire [19:0]char_index_c;
  wire [19:0]char_index_co;
  wire \char_index_co[19]_i_1_n_0 ;
  wire \char_index_co[19]_i_2_n_0 ;
  wire [19:0]char_index_co_last;
  wire \char_index_co_last[19]_i_1_n_0 ;
  wire [3:0]char_index_o_3;
  wire [3:0]char_index_o_4;
  wire [3:0]char_index_o_5;
  wire [3:0]char_index_o_6;
  wire [3:0]char_index_o_7;
  wire char_valid;
  wire char_valid_c;
  wire char_valid_co;
  wire char_valid_co0_carry__0_i_1_n_0;
  wire char_valid_co0_carry__0_i_2_n_0;
  wire char_valid_co0_carry__0_i_3_n_0;
  wire char_valid_co0_carry__0_n_1;
  wire char_valid_co0_carry__0_n_2;
  wire char_valid_co0_carry__0_n_3;
  wire char_valid_co0_carry_i_1_n_0;
  wire char_valid_co0_carry_i_2_n_0;
  wire char_valid_co0_carry_i_3_n_0;
  wire char_valid_co0_carry_i_4_n_0;
  wire char_valid_co0_carry_n_0;
  wire char_valid_co0_carry_n_1;
  wire char_valid_co0_carry_n_2;
  wire char_valid_co0_carry_n_3;
  wire char_valid_co_i_1_n_0;
  wire clk;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  (* MARK_DEBUG *) wire recognize_done_3;
  (* MARK_DEBUG *) wire recognize_done_4;
  (* MARK_DEBUG *) wire recognize_done_5;
  (* MARK_DEBUG *) wire recognize_done_6;
  (* MARK_DEBUG *) wire recognize_done_7;
  wire rst_n;
  wire [1:1]state_next;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]NLW_char_valid_co0_carry_O_UNCONNECTED;
  wire [3:3]NLW_char_valid_co0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_char_valid_co0_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state_reg[1]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .O(state_next));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(recognize_done_6),
        .I1(recognize_done_7),
        .I2(recognize_done_4),
        .I3(recognize_done_5),
        .I4(recognize_done_3),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,RECOGN:01,DONE:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "IDLE:00,RECOGN:01,DONE:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(state_next),
        .Q(state_reg[1]));
  LUT3 #(
    .INIT(8'h74)) 
    all_done_i_1
       (.I0(state_reg[0]),
        .I1(rst_n),
        .I2(all_done_reg_n_0),
        .O(all_done_i_1_n_0));
  FDRE all_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(all_done_i_1_n_0),
        .Q(all_done_reg_n_0),
        .R(1'b0));
  FDCE \char_diff_3_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[0]),
        .Q(char_diff_3[0]));
  FDCE \char_diff_3_reg[10] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[10]),
        .Q(char_diff_3[10]));
  FDCE \char_diff_3_reg[11] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[11]),
        .Q(char_diff_3[11]));
  FDCE \char_diff_3_reg[12] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[12]),
        .Q(char_diff_3[12]));
  FDCE \char_diff_3_reg[13] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[13]),
        .Q(char_diff_3[13]));
  FDCE \char_diff_3_reg[14] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[14]),
        .Q(char_diff_3[14]));
  FDCE \char_diff_3_reg[15] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[15]),
        .Q(char_diff_3[15]));
  FDCE \char_diff_3_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[1]),
        .Q(char_diff_3[1]));
  FDCE \char_diff_3_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[2]),
        .Q(char_diff_3[2]));
  FDCE \char_diff_3_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[3]),
        .Q(char_diff_3[3]));
  FDCE \char_diff_3_reg[4] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[4]),
        .Q(char_diff_3[4]));
  FDCE \char_diff_3_reg[5] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[5]),
        .Q(char_diff_3[5]));
  FDCE \char_diff_3_reg[6] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[6]),
        .Q(char_diff_3[6]));
  FDCE \char_diff_3_reg[7] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[7]),
        .Q(char_diff_3[7]));
  FDCE \char_diff_3_reg[8] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[8]),
        .Q(char_diff_3[8]));
  FDCE \char_diff_3_reg[9] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[9]),
        .Q(char_diff_3[9]));
  FDCE \char_diff_4_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[16]),
        .Q(char_diff_4[0]));
  FDCE \char_diff_4_reg[10] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[26]),
        .Q(char_diff_4[10]));
  FDCE \char_diff_4_reg[11] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[27]),
        .Q(char_diff_4[11]));
  FDCE \char_diff_4_reg[12] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[28]),
        .Q(char_diff_4[12]));
  FDCE \char_diff_4_reg[13] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[29]),
        .Q(char_diff_4[13]));
  FDCE \char_diff_4_reg[14] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[30]),
        .Q(char_diff_4[14]));
  FDCE \char_diff_4_reg[15] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[31]),
        .Q(char_diff_4[15]));
  FDCE \char_diff_4_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[17]),
        .Q(char_diff_4[1]));
  FDCE \char_diff_4_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[18]),
        .Q(char_diff_4[2]));
  FDCE \char_diff_4_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[19]),
        .Q(char_diff_4[3]));
  FDCE \char_diff_4_reg[4] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[20]),
        .Q(char_diff_4[4]));
  FDCE \char_diff_4_reg[5] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[21]),
        .Q(char_diff_4[5]));
  FDCE \char_diff_4_reg[6] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[22]),
        .Q(char_diff_4[6]));
  FDCE \char_diff_4_reg[7] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[23]),
        .Q(char_diff_4[7]));
  FDCE \char_diff_4_reg[8] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[24]),
        .Q(char_diff_4[8]));
  FDCE \char_diff_4_reg[9] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[25]),
        .Q(char_diff_4[9]));
  FDCE \char_diff_5_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[32]),
        .Q(char_diff_5[0]));
  FDCE \char_diff_5_reg[10] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[42]),
        .Q(char_diff_5[10]));
  FDCE \char_diff_5_reg[11] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[43]),
        .Q(char_diff_5[11]));
  FDCE \char_diff_5_reg[12] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[44]),
        .Q(char_diff_5[12]));
  FDCE \char_diff_5_reg[13] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[45]),
        .Q(char_diff_5[13]));
  FDCE \char_diff_5_reg[14] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[46]),
        .Q(char_diff_5[14]));
  FDCE \char_diff_5_reg[15] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[47]),
        .Q(char_diff_5[15]));
  FDCE \char_diff_5_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[33]),
        .Q(char_diff_5[1]));
  FDCE \char_diff_5_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[34]),
        .Q(char_diff_5[2]));
  FDCE \char_diff_5_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[35]),
        .Q(char_diff_5[3]));
  FDCE \char_diff_5_reg[4] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[36]),
        .Q(char_diff_5[4]));
  FDCE \char_diff_5_reg[5] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[37]),
        .Q(char_diff_5[5]));
  FDCE \char_diff_5_reg[6] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[38]),
        .Q(char_diff_5[6]));
  FDCE \char_diff_5_reg[7] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[39]),
        .Q(char_diff_5[7]));
  FDCE \char_diff_5_reg[8] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[40]),
        .Q(char_diff_5[8]));
  FDCE \char_diff_5_reg[9] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[41]),
        .Q(char_diff_5[9]));
  FDCE \char_diff_6_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[48]),
        .Q(char_diff_6[0]));
  FDCE \char_diff_6_reg[10] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[58]),
        .Q(char_diff_6[10]));
  FDCE \char_diff_6_reg[11] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[59]),
        .Q(char_diff_6[11]));
  FDCE \char_diff_6_reg[12] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[60]),
        .Q(char_diff_6[12]));
  FDCE \char_diff_6_reg[13] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[61]),
        .Q(char_diff_6[13]));
  FDCE \char_diff_6_reg[14] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[62]),
        .Q(char_diff_6[14]));
  FDCE \char_diff_6_reg[15] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[63]),
        .Q(char_diff_6[15]));
  FDCE \char_diff_6_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[49]),
        .Q(char_diff_6[1]));
  FDCE \char_diff_6_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[50]),
        .Q(char_diff_6[2]));
  FDCE \char_diff_6_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[51]),
        .Q(char_diff_6[3]));
  FDCE \char_diff_6_reg[4] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[52]),
        .Q(char_diff_6[4]));
  FDCE \char_diff_6_reg[5] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[53]),
        .Q(char_diff_6[5]));
  FDCE \char_diff_6_reg[6] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[54]),
        .Q(char_diff_6[6]));
  FDCE \char_diff_6_reg[7] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[55]),
        .Q(char_diff_6[7]));
  FDCE \char_diff_6_reg[8] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[56]),
        .Q(char_diff_6[8]));
  FDCE \char_diff_6_reg[9] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[57]),
        .Q(char_diff_6[9]));
  FDCE \char_diff_7_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[64]),
        .Q(char_diff_7[0]));
  FDCE \char_diff_7_reg[10] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[74]),
        .Q(char_diff_7[10]));
  FDCE \char_diff_7_reg[11] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[75]),
        .Q(char_diff_7[11]));
  FDCE \char_diff_7_reg[12] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[76]),
        .Q(char_diff_7[12]));
  FDCE \char_diff_7_reg[13] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[77]),
        .Q(char_diff_7[13]));
  FDCE \char_diff_7_reg[14] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[78]),
        .Q(char_diff_7[14]));
  FDCE \char_diff_7_reg[15] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[79]),
        .Q(char_diff_7[15]));
  FDCE \char_diff_7_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[65]),
        .Q(char_diff_7[1]));
  FDCE \char_diff_7_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[66]),
        .Q(char_diff_7[2]));
  FDCE \char_diff_7_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[67]),
        .Q(char_diff_7[3]));
  FDCE \char_diff_7_reg[4] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[68]),
        .Q(char_diff_7[4]));
  FDCE \char_diff_7_reg[5] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[69]),
        .Q(char_diff_7[5]));
  FDCE \char_diff_7_reg[6] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[70]),
        .Q(char_diff_7[6]));
  FDCE \char_diff_7_reg[7] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[71]),
        .Q(char_diff_7[7]));
  FDCE \char_diff_7_reg[8] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[72]),
        .Q(char_diff_7[8]));
  FDCE \char_diff_7_reg[9] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_diff_c[73]),
        .Q(char_diff_7[9]));
  FDCE \char_index_3_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[0]),
        .Q(char_index_3[0]));
  FDCE \char_index_3_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[1]),
        .Q(char_index_3[1]));
  FDCE \char_index_3_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[2]),
        .Q(char_index_3[2]));
  FDCE \char_index_3_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[3]),
        .Q(char_index_3[3]));
  FDCE \char_index_4_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[4]),
        .Q(char_index_4[0]));
  FDCE \char_index_4_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[5]),
        .Q(char_index_4[1]));
  FDCE \char_index_4_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[6]),
        .Q(char_index_4[2]));
  FDCE \char_index_4_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[7]),
        .Q(char_index_4[3]));
  FDCE \char_index_5_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[8]),
        .Q(char_index_5[0]));
  FDCE \char_index_5_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[9]),
        .Q(char_index_5[1]));
  FDCE \char_index_5_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[10]),
        .Q(char_index_5[2]));
  FDCE \char_index_5_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[11]),
        .Q(char_index_5[3]));
  FDCE \char_index_6_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[12]),
        .Q(char_index_6[0]));
  FDCE \char_index_6_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[13]),
        .Q(char_index_6[1]));
  FDCE \char_index_6_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[14]),
        .Q(char_index_6[2]));
  FDCE \char_index_6_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[15]),
        .Q(char_index_6[3]));
  FDCE \char_index_7_reg[0] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[16]),
        .Q(char_index_7[0]));
  FDCE \char_index_7_reg[1] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[17]),
        .Q(char_index_7[1]));
  FDCE \char_index_7_reg[2] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[18]),
        .Q(char_index_7[2]));
  FDCE \char_index_7_reg[3] 
       (.C(clk),
        .CE(char_valid_c),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_c[19]),
        .Q(char_index_7[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \char_index_co[19]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(\char_index_co[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \char_index_co[19]_i_2 
       (.I0(rst_n),
        .O(\char_index_co[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \char_index_co_last[19]_i_1 
       (.I0(rst_n),
        .I1(state_reg[1]),
        .I2(char_valid_co0_carry__0_n_1),
        .I3(state_reg[0]),
        .O(\char_index_co_last[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[0] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_3[0]),
        .Q(char_index_co_last[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[10] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_5[2]),
        .Q(char_index_co_last[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[11] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_5[3]),
        .Q(char_index_co_last[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[12] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_6[0]),
        .Q(char_index_co_last[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[13] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_6[1]),
        .Q(char_index_co_last[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[14] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_6[2]),
        .Q(char_index_co_last[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[15] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_6[3]),
        .Q(char_index_co_last[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[16] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_7[0]),
        .Q(char_index_co_last[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[17] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_7[1]),
        .Q(char_index_co_last[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[18] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_7[2]),
        .Q(char_index_co_last[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[19] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_7[3]),
        .Q(char_index_co_last[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[1] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_3[1]),
        .Q(char_index_co_last[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[2] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_3[2]),
        .Q(char_index_co_last[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[3] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_3[3]),
        .Q(char_index_co_last[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[4] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_4[0]),
        .Q(char_index_co_last[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[5] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_4[1]),
        .Q(char_index_co_last[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[6] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_4[2]),
        .Q(char_index_co_last[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[7] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_4[3]),
        .Q(char_index_co_last[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[8] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_5[0]),
        .Q(char_index_co_last[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_co_last_reg[9] 
       (.C(clk),
        .CE(\char_index_co_last[19]_i_1_n_0 ),
        .D(char_index_o_5[1]),
        .Q(char_index_co_last[9]),
        .R(1'b0));
  FDCE \char_index_co_reg[0] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_3[0]),
        .Q(char_index_co[0]));
  FDCE \char_index_co_reg[10] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_5[2]),
        .Q(char_index_co[10]));
  FDCE \char_index_co_reg[11] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_5[3]),
        .Q(char_index_co[11]));
  FDCE \char_index_co_reg[12] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_6[0]),
        .Q(char_index_co[12]));
  FDCE \char_index_co_reg[13] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_6[1]),
        .Q(char_index_co[13]));
  FDCE \char_index_co_reg[14] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_6[2]),
        .Q(char_index_co[14]));
  FDCE \char_index_co_reg[15] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_6[3]),
        .Q(char_index_co[15]));
  FDCE \char_index_co_reg[16] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_7[0]),
        .Q(char_index_co[16]));
  FDCE \char_index_co_reg[17] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_7[1]),
        .Q(char_index_co[17]));
  FDCE \char_index_co_reg[18] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_7[2]),
        .Q(char_index_co[18]));
  FDCE \char_index_co_reg[19] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_7[3]),
        .Q(char_index_co[19]));
  FDCE \char_index_co_reg[1] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_3[1]),
        .Q(char_index_co[1]));
  FDCE \char_index_co_reg[2] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_3[2]),
        .Q(char_index_co[2]));
  FDCE \char_index_co_reg[3] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_3[3]),
        .Q(char_index_co[3]));
  FDCE \char_index_co_reg[4] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_4[0]),
        .Q(char_index_co[4]));
  FDCE \char_index_co_reg[5] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_4[1]),
        .Q(char_index_co[5]));
  FDCE \char_index_co_reg[6] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_4[2]),
        .Q(char_index_co[6]));
  FDCE \char_index_co_reg[7] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_4[3]),
        .Q(char_index_co[7]));
  FDCE \char_index_co_reg[8] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_5[0]),
        .Q(char_index_co[8]));
  FDCE \char_index_co_reg[9] 
       (.C(clk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_index_o_5[1]),
        .Q(char_index_co[9]));
  CARRY4 char_valid_co0_carry
       (.CI(1'b0),
        .CO({char_valid_co0_carry_n_0,char_valid_co0_carry_n_1,char_valid_co0_carry_n_2,char_valid_co0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_char_valid_co0_carry_O_UNCONNECTED[3:0]),
        .S({char_valid_co0_carry_i_1_n_0,char_valid_co0_carry_i_2_n_0,char_valid_co0_carry_i_3_n_0,char_valid_co0_carry_i_4_n_0}));
  CARRY4 char_valid_co0_carry__0
       (.CI(char_valid_co0_carry_n_0),
        .CO({NLW_char_valid_co0_carry__0_CO_UNCONNECTED[3],char_valid_co0_carry__0_n_1,char_valid_co0_carry__0_n_2,char_valid_co0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_char_valid_co0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,char_valid_co0_carry__0_i_1_n_0,char_valid_co0_carry__0_i_2_n_0,char_valid_co0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    char_valid_co0_carry__0_i_1
       (.I0(char_index_co_last[18]),
        .I1(char_index_o_7[2]),
        .I2(char_index_co_last[19]),
        .I3(char_index_o_7[3]),
        .O(char_valid_co0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_valid_co0_carry__0_i_2
       (.I0(char_index_co_last[15]),
        .I1(char_index_o_6[3]),
        .I2(char_index_o_7[1]),
        .I3(char_index_co_last[17]),
        .I4(char_index_o_7[0]),
        .I5(char_index_co_last[16]),
        .O(char_valid_co0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_valid_co0_carry__0_i_3
       (.I0(char_index_co_last[12]),
        .I1(char_index_o_6[0]),
        .I2(char_index_o_6[2]),
        .I3(char_index_co_last[14]),
        .I4(char_index_o_6[1]),
        .I5(char_index_co_last[13]),
        .O(char_valid_co0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_valid_co0_carry_i_1
       (.I0(char_index_co_last[9]),
        .I1(char_index_o_5[1]),
        .I2(char_index_o_5[3]),
        .I3(char_index_co_last[11]),
        .I4(char_index_o_5[2]),
        .I5(char_index_co_last[10]),
        .O(char_valid_co0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_valid_co0_carry_i_2
       (.I0(char_index_co_last[6]),
        .I1(char_index_o_4[2]),
        .I2(char_index_o_5[0]),
        .I3(char_index_co_last[8]),
        .I4(char_index_o_4[3]),
        .I5(char_index_co_last[7]),
        .O(char_valid_co0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_valid_co0_carry_i_3
       (.I0(char_index_co_last[3]),
        .I1(char_index_o_3[3]),
        .I2(char_index_o_4[1]),
        .I3(char_index_co_last[5]),
        .I4(char_index_o_4[0]),
        .I5(char_index_co_last[4]),
        .O(char_valid_co0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_valid_co0_carry_i_4
       (.I0(char_index_co_last[0]),
        .I1(char_index_o_3[0]),
        .I2(char_index_o_3[2]),
        .I3(char_index_co_last[2]),
        .I4(char_index_o_3[1]),
        .I5(char_index_co_last[1]),
        .O(char_valid_co0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    char_valid_co_i_1
       (.I0(state_reg[0]),
        .I1(char_valid_co0_carry__0_n_1),
        .I2(state_reg[1]),
        .O(char_valid_co_i_1_n_0));
  FDCE char_valid_co_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\char_index_co[19]_i_2_n_0 ),
        .D(char_valid_co_i_1_n_0),
        .Q(char_valid_co));
  FDRE #(
    .INIT(1'b0)) 
    char_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid_c),
        .Q(char_valid),
        .R(1'b0));
  (* COUNT = "2'b01" *) 
  (* DONE = "2'b10" *) 
  (* IDLE = "2'b00" *) 
  m3_for_arty_a7_judge_0_0_judge_one__1 inst_judge_one_3
       (.all_done(all_done_reg_n_0),
        .char_diff(char_diff_3),
        .char_index(char_index_3),
        .char_index_o(char_index_o_3),
        .char_valid(char_valid),
        .clk(clk),
        .max_diff(max_diff),
        .min_continue(min_continue),
        .min_counter(min_counter),
        .recognize_done(recognize_done_3),
        .rst_n(rst_n));
  (* COUNT = "2'b01" *) 
  (* DONE = "2'b10" *) 
  (* IDLE = "2'b00" *) 
  m3_for_arty_a7_judge_0_0_judge_one__2 inst_judge_one_4
       (.all_done(all_done_reg_n_0),
        .char_diff(char_diff_4),
        .char_index(char_index_4),
        .char_index_o(char_index_o_4),
        .char_valid(char_valid),
        .clk(clk),
        .max_diff(max_diff),
        .min_continue(min_continue),
        .min_counter(min_counter),
        .recognize_done(recognize_done_4),
        .rst_n(rst_n));
  (* COUNT = "2'b01" *) 
  (* DONE = "2'b10" *) 
  (* IDLE = "2'b00" *) 
  m3_for_arty_a7_judge_0_0_judge_one__3 inst_judge_one_5
       (.all_done(all_done_reg_n_0),
        .char_diff(char_diff_5),
        .char_index(char_index_5),
        .char_index_o(char_index_o_5),
        .char_valid(char_valid),
        .clk(clk),
        .max_diff(max_diff),
        .min_continue(min_continue),
        .min_counter(min_counter),
        .recognize_done(recognize_done_5),
        .rst_n(rst_n));
  (* COUNT = "2'b01" *) 
  (* DONE = "2'b10" *) 
  (* IDLE = "2'b00" *) 
  m3_for_arty_a7_judge_0_0_judge_one__4 inst_judge_one_6
       (.all_done(all_done_reg_n_0),
        .char_diff(char_diff_6),
        .char_index(char_index_6),
        .char_index_o(char_index_o_6),
        .char_valid(char_valid),
        .clk(clk),
        .max_diff(max_diff),
        .min_continue(min_continue),
        .min_counter(min_counter),
        .recognize_done(recognize_done_6),
        .rst_n(rst_n));
  (* COUNT = "2'b01" *) 
  (* DONE = "2'b10" *) 
  (* IDLE = "2'b00" *) 
  m3_for_arty_a7_judge_0_0_judge_one inst_judge_one_7
       (.all_done(all_done_reg_n_0),
        .char_diff(char_diff_7),
        .char_index(char_index_7),
        .char_index_o(char_index_o_7),
        .char_valid(char_valid),
        .clk(clk),
        .max_diff(max_diff),
        .min_continue(min_continue),
        .min_counter(min_counter),
        .recognize_done(recognize_done_7),
        .rst_n(rst_n));
endmodule

(* COUNT = "2'b01" *) (* DONE = "2'b10" *) (* IDLE = "2'b00" *) 
(* ORIG_REF_NAME = "judge_one" *) 
module m3_for_arty_a7_judge_0_0_judge_one
   (clk,
    rst_n,
    char_index,
    char_diff,
    char_valid,
    max_diff,
    min_continue,
    min_counter,
    all_done,
    char_index_o,
    recognize_done);
  input clk;
  input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input char_valid;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input all_done;
  output [3:0]char_index_o;
  output recognize_done;

  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire all_done;
  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire [3:0]char_index_o;
  wire \char_index_o[3]_i_10_n_0 ;
  wire \char_index_o[3]_i_11_n_0 ;
  wire \char_index_o[3]_i_12_n_0 ;
  wire \char_index_o[3]_i_13_n_0 ;
  wire \char_index_o[3]_i_14_n_0 ;
  wire \char_index_o[3]_i_15_n_0 ;
  wire \char_index_o[3]_i_16_n_0 ;
  wire \char_index_o[3]_i_17_n_0 ;
  wire \char_index_o[3]_i_18_n_0 ;
  wire \char_index_o[3]_i_19_n_0 ;
  wire \char_index_o[3]_i_1_n_0 ;
  wire \char_index_o[3]_i_20_n_0 ;
  wire \char_index_o[3]_i_21_n_0 ;
  wire \char_index_o[3]_i_22_n_0 ;
  wire \char_index_o[3]_i_23_n_0 ;
  wire \char_index_o[3]_i_24_n_0 ;
  wire \char_index_o[3]_i_25_n_0 ;
  wire \char_index_o[3]_i_26_n_0 ;
  wire \char_index_o[3]_i_27_n_0 ;
  wire \char_index_o[3]_i_28_n_0 ;
  wire \char_index_o[3]_i_29_n_0 ;
  wire \char_index_o[3]_i_2_n_0 ;
  wire \char_index_o[3]_i_30_n_0 ;
  wire \char_index_o[3]_i_31_n_0 ;
  wire \char_index_o[3]_i_32_n_0 ;
  wire \char_index_o[3]_i_33_n_0 ;
  wire \char_index_o[3]_i_5_n_0 ;
  wire \char_index_o[3]_i_7_n_0 ;
  wire \char_index_o[3]_i_8_n_0 ;
  wire \char_index_o_reg[3]_i_4_n_1 ;
  wire \char_index_o_reg[3]_i_4_n_2 ;
  wire \char_index_o_reg[3]_i_4_n_3 ;
  wire \char_index_o_reg[3]_i_6_n_1 ;
  wire \char_index_o_reg[3]_i_6_n_2 ;
  wire \char_index_o_reg[3]_i_6_n_3 ;
  wire \char_index_o_reg[3]_i_9_n_0 ;
  wire \char_index_o_reg[3]_i_9_n_1 ;
  wire \char_index_o_reg[3]_i_9_n_2 ;
  wire \char_index_o_reg[3]_i_9_n_3 ;
  wire [3:0]char_last;
  wire \char_last[3]_i_1_n_0 ;
  wire char_valid;
  wire clk;
  wire count_continue_done1;
  wire count_continue_done11_in;
  wire count_continue_done_i_1_n_0;
  wire count_continue_done_i_2_n_0;
  wire count_continue_done_reg_n_0;
  wire count_done_i_1_n_0;
  wire count_done_reg_n_0;
  wire [7:0]counter_char;
  wire \counter_char[0][0]_i_1_n_0 ;
  wire \counter_char[0][1]_i_1_n_0 ;
  wire \counter_char[0][2]_i_1_n_0 ;
  wire \counter_char[0][3]_i_10_n_0 ;
  wire \counter_char[0][3]_i_11_n_0 ;
  wire \counter_char[0][3]_i_12_n_0 ;
  wire \counter_char[0][3]_i_13_n_0 ;
  wire \counter_char[0][3]_i_14_n_0 ;
  wire \counter_char[0][3]_i_15_n_0 ;
  wire \counter_char[0][3]_i_16_n_0 ;
  wire \counter_char[0][3]_i_17_n_0 ;
  wire \counter_char[0][3]_i_1_n_0 ;
  wire \counter_char[0][3]_i_6_n_0 ;
  wire \counter_char[0][3]_i_7_n_0 ;
  wire \counter_char[0][3]_i_8_n_0 ;
  wire \counter_char[0][3]_i_9_n_0 ;
  wire \counter_char[0][4]_i_1_n_0 ;
  wire \counter_char[0][4]_i_3_n_0 ;
  wire \counter_char[0][4]_i_4_n_0 ;
  wire \counter_char[0][4]_i_5_n_0 ;
  wire \counter_char[0][4]_i_6_n_0 ;
  wire \counter_char[0][5]_i_1_n_0 ;
  wire \counter_char[0][5]_i_3_n_0 ;
  wire \counter_char[0][5]_i_4_n_0 ;
  wire \counter_char[0][5]_i_5_n_0 ;
  wire \counter_char[0][5]_i_6_n_0 ;
  wire \counter_char[0][6]_i_1_n_0 ;
  wire \counter_char[0][7]_i_10_n_0 ;
  wire \counter_char[0][7]_i_11_n_0 ;
  wire \counter_char[0][7]_i_12_n_0 ;
  wire \counter_char[0][7]_i_13_n_0 ;
  wire \counter_char[0][7]_i_14_n_0 ;
  wire \counter_char[0][7]_i_1_n_0 ;
  wire \counter_char[0][7]_i_2_n_0 ;
  wire \counter_char[0][7]_i_3_n_0 ;
  wire \counter_char[0][7]_i_4_n_0 ;
  wire \counter_char[0][7]_i_7_n_0 ;
  wire \counter_char[0][7]_i_8_n_0 ;
  wire \counter_char[0][7]_i_9_n_0 ;
  wire \counter_char[10][0]_i_1_n_0 ;
  wire \counter_char[10][7]_i_1_n_0 ;
  wire \counter_char[10][7]_i_2_n_0 ;
  wire \counter_char[1][0]_i_1_n_0 ;
  wire \counter_char[1][7]_i_1_n_0 ;
  wire \counter_char[1][7]_i_2_n_0 ;
  wire \counter_char[1][7]_i_3_n_0 ;
  wire \counter_char[2][0]_i_1_n_0 ;
  wire \counter_char[2][7]_i_1_n_0 ;
  wire \counter_char[2][7]_i_2_n_0 ;
  wire \counter_char[2][7]_i_3_n_0 ;
  wire \counter_char[3][0]_i_1_n_0 ;
  wire \counter_char[3][7]_i_1_n_0 ;
  wire \counter_char[3][7]_i_2_n_0 ;
  wire \counter_char[3][7]_i_3_n_0 ;
  wire \counter_char[4][0]_i_1_n_0 ;
  wire \counter_char[4][7]_i_1_n_0 ;
  wire \counter_char[4][7]_i_2_n_0 ;
  wire \counter_char[5][0]_i_1_n_0 ;
  wire \counter_char[5][7]_i_1_n_0 ;
  wire \counter_char[5][7]_i_2_n_0 ;
  wire \counter_char[6][0]_i_1_n_0 ;
  wire \counter_char[6][7]_i_1_n_0 ;
  wire \counter_char[6][7]_i_2_n_0 ;
  wire \counter_char[7][0]_i_1_n_0 ;
  wire \counter_char[7][7]_i_1_n_0 ;
  wire \counter_char[7][7]_i_2_n_0 ;
  wire \counter_char[8][0]_i_1_n_0 ;
  wire \counter_char[8][7]_i_1_n_0 ;
  wire \counter_char[8][7]_i_2_n_0 ;
  wire \counter_char[9][0]_i_1_n_0 ;
  wire \counter_char[9][7]_i_1_n_0 ;
  wire \counter_char[9][7]_i_2_n_0 ;
  wire [7:0]\counter_char_reg[0]__0 ;
  wire [7:0]\counter_char_reg[10]__0 ;
  wire [7:0]\counter_char_reg[1]__0 ;
  wire [7:0]\counter_char_reg[2]__0 ;
  wire [7:0]\counter_char_reg[3]__0 ;
  wire [7:0]\counter_char_reg[4]__0 ;
  wire [7:0]\counter_char_reg[5]__0 ;
  wire [7:0]\counter_char_reg[6]__0 ;
  wire [7:0]\counter_char_reg[7]__0 ;
  wire [7:0]\counter_char_reg[8]__0 ;
  wire [7:0]\counter_char_reg[9]__0 ;
  wire \counter_continue[0]_i_1_n_0 ;
  wire \counter_continue[1]_i_1_n_0 ;
  wire \counter_continue[2]_i_1_n_0 ;
  wire \counter_continue[3]_i_1_n_0 ;
  wire \counter_continue[3]_i_2_n_0 ;
  wire \counter_continue[3]_i_3_n_0 ;
  wire \counter_continue[3]_i_4_n_0 ;
  wire \counter_continue_reg_n_0_[0] ;
  wire \counter_continue_reg_n_0_[1] ;
  wire \counter_continue_reg_n_0_[2] ;
  wire \counter_continue_reg_n_0_[3] ;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  wire p_0_in;
  wire recognize_done;
  wire recognize_done_i_1_n_0;
  wire rst_n;
  wire [1:0]state_next;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(count_done_reg_n_0),
        .I2(count_continue_done_reg_n_0),
        .I3(state_reg[1]),
        .O(state_next[0]));
  LUT5 #(
    .INIT(32'h33304444)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(all_done),
        .I1(state_reg[1]),
        .I2(count_continue_done_reg_n_0),
        .I3(count_done_reg_n_0),
        .I4(state_reg[0]),
        .O(state_next[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT6 #(
    .INIT(64'h40000000FF000000)) 
    \char_index_o[3]_i_1 
       (.I0(\char_index_o[3]_i_2_n_0 ),
        .I1(count_continue_done1),
        .I2(count_continue_done11_in),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\char_index_o[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_10 
       (.I0(max_diff[14]),
        .I1(char_diff[14]),
        .I2(char_diff[15]),
        .I3(max_diff[15]),
        .O(\char_index_o[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_11 
       (.I0(max_diff[12]),
        .I1(char_diff[12]),
        .I2(char_diff[13]),
        .I3(max_diff[13]),
        .O(\char_index_o[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_12 
       (.I0(max_diff[10]),
        .I1(char_diff[10]),
        .I2(char_diff[11]),
        .I3(max_diff[11]),
        .O(\char_index_o[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_13 
       (.I0(max_diff[8]),
        .I1(char_diff[8]),
        .I2(char_diff[9]),
        .I3(max_diff[9]),
        .O(\char_index_o[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_14 
       (.I0(char_diff[15]),
        .I1(max_diff[15]),
        .I2(char_diff[14]),
        .I3(max_diff[14]),
        .O(\char_index_o[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_15 
       (.I0(char_diff[13]),
        .I1(max_diff[13]),
        .I2(char_diff[12]),
        .I3(max_diff[12]),
        .O(\char_index_o[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_16 
       (.I0(char_diff[11]),
        .I1(max_diff[11]),
        .I2(char_diff[10]),
        .I3(max_diff[10]),
        .O(\char_index_o[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_17 
       (.I0(char_diff[9]),
        .I1(max_diff[9]),
        .I2(char_diff[8]),
        .I3(max_diff[8]),
        .O(\char_index_o[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_18 
       (.I0(counter_char[6]),
        .I1(min_counter[6]),
        .I2(counter_char[7]),
        .I3(min_counter[7]),
        .O(\char_index_o[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_19 
       (.I0(counter_char[4]),
        .I1(min_counter[4]),
        .I2(counter_char[5]),
        .I3(min_counter[5]),
        .O(\char_index_o[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \char_index_o[3]_i_2 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(min_continue[3]),
        .I2(\char_index_o[3]_i_7_n_0 ),
        .O(\char_index_o[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_20 
       (.I0(counter_char[2]),
        .I1(min_counter[2]),
        .I2(counter_char[3]),
        .I3(min_counter[3]),
        .O(\char_index_o[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_21 
       (.I0(counter_char[0]),
        .I1(min_counter[0]),
        .I2(counter_char[1]),
        .I3(min_counter[1]),
        .O(\char_index_o[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_22 
       (.I0(counter_char[7]),
        .I1(min_counter[7]),
        .I2(counter_char[6]),
        .I3(min_counter[6]),
        .O(\char_index_o[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_23 
       (.I0(counter_char[5]),
        .I1(min_counter[5]),
        .I2(counter_char[4]),
        .I3(min_counter[4]),
        .O(\char_index_o[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_24 
       (.I0(counter_char[3]),
        .I1(min_counter[3]),
        .I2(counter_char[2]),
        .I3(min_counter[2]),
        .O(\char_index_o[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_25 
       (.I0(counter_char[1]),
        .I1(min_counter[1]),
        .I2(counter_char[0]),
        .I3(min_counter[0]),
        .O(\char_index_o[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_26 
       (.I0(max_diff[6]),
        .I1(char_diff[6]),
        .I2(char_diff[7]),
        .I3(max_diff[7]),
        .O(\char_index_o[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_27 
       (.I0(max_diff[4]),
        .I1(char_diff[4]),
        .I2(char_diff[5]),
        .I3(max_diff[5]),
        .O(\char_index_o[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_28 
       (.I0(max_diff[2]),
        .I1(char_diff[2]),
        .I2(char_diff[3]),
        .I3(max_diff[3]),
        .O(\char_index_o[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_29 
       (.I0(max_diff[0]),
        .I1(char_diff[0]),
        .I2(char_diff[1]),
        .I3(max_diff[1]),
        .O(\char_index_o[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \char_index_o[3]_i_3 
       (.I0(char_last[3]),
        .I1(char_index[3]),
        .I2(char_last[2]),
        .I3(char_index[2]),
        .I4(\char_index_o[3]_i_8_n_0 ),
        .O(count_continue_done1));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_30 
       (.I0(char_diff[7]),
        .I1(max_diff[7]),
        .I2(char_diff[6]),
        .I3(max_diff[6]),
        .O(\char_index_o[3]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_31 
       (.I0(char_diff[5]),
        .I1(max_diff[5]),
        .I2(char_diff[4]),
        .I3(max_diff[4]),
        .O(\char_index_o[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_32 
       (.I0(char_diff[3]),
        .I1(max_diff[3]),
        .I2(char_diff[2]),
        .I3(max_diff[2]),
        .O(\char_index_o[3]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_33 
       (.I0(char_diff[1]),
        .I1(max_diff[1]),
        .I2(char_diff[0]),
        .I3(max_diff[0]),
        .O(\char_index_o[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \char_index_o[3]_i_5 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(char_valid),
        .O(\char_index_o[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \char_index_o[3]_i_7 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(min_continue[2]),
        .I2(min_continue[1]),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(min_continue[0]),
        .I5(\counter_continue_reg_n_0_[0] ),
        .O(\char_index_o[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_8 
       (.I0(char_index[0]),
        .I1(char_last[0]),
        .I2(char_index[1]),
        .I3(char_last[1]),
        .O(\char_index_o[3]_i_8_n_0 ));
  FDRE \char_index_o_reg[0] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_index_o[0]),
        .R(1'b0));
  FDRE \char_index_o_reg[1] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_index_o[1]),
        .R(1'b0));
  FDRE \char_index_o_reg[2] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_index_o[2]),
        .R(1'b0));
  FDRE \char_index_o_reg[3] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_index_o[3]),
        .R(1'b0));
  CARRY4 \char_index_o_reg[3]_i_4 
       (.CI(\char_index_o_reg[3]_i_9_n_0 ),
        .CO({count_continue_done11_in,\char_index_o_reg[3]_i_4_n_1 ,\char_index_o_reg[3]_i_4_n_2 ,\char_index_o_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_10_n_0 ,\char_index_o[3]_i_11_n_0 ,\char_index_o[3]_i_12_n_0 ,\char_index_o[3]_i_13_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_14_n_0 ,\char_index_o[3]_i_15_n_0 ,\char_index_o[3]_i_16_n_0 ,\char_index_o[3]_i_17_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_6 
       (.CI(1'b0),
        .CO({p_0_in,\char_index_o_reg[3]_i_6_n_1 ,\char_index_o_reg[3]_i_6_n_2 ,\char_index_o_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_18_n_0 ,\char_index_o[3]_i_19_n_0 ,\char_index_o[3]_i_20_n_0 ,\char_index_o[3]_i_21_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_22_n_0 ,\char_index_o[3]_i_23_n_0 ,\char_index_o[3]_i_24_n_0 ,\char_index_o[3]_i_25_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\char_index_o_reg[3]_i_9_n_0 ,\char_index_o_reg[3]_i_9_n_1 ,\char_index_o_reg[3]_i_9_n_2 ,\char_index_o_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_26_n_0 ,\char_index_o[3]_i_27_n_0 ,\char_index_o[3]_i_28_n_0 ,\char_index_o[3]_i_29_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_30_n_0 ,\char_index_o[3]_i_31_n_0 ,\char_index_o[3]_i_32_n_0 ,\char_index_o[3]_i_33_n_0 }));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    \char_last[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(count_continue_done1),
        .I3(count_continue_done11_in),
        .I4(state_reg[0]),
        .I5(char_valid),
        .O(\char_last[3]_i_1_n_0 ));
  FDRE \char_last_reg[0] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_last[0]),
        .R(1'b0));
  FDRE \char_last_reg[1] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_last[1]),
        .R(1'b0));
  FDRE \char_last_reg[2] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_last[2]),
        .R(1'b0));
  FDRE \char_last_reg[3] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_last[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    count_continue_done_i_1
       (.I0(state_reg[1]),
        .I1(count_continue_done_i_2_n_0),
        .I2(\char_index_o[3]_i_2_n_0 ),
        .I3(\counter_continue[3]_i_2_n_0 ),
        .I4(count_continue_done_reg_n_0),
        .O(count_continue_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    count_continue_done_i_2
       (.I0(state_reg[0]),
        .I1(count_continue_done11_in),
        .I2(count_continue_done1),
        .O(count_continue_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_continue_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_continue_done_i_1_n_0),
        .Q(count_continue_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFF4CFF00004000)) 
    count_done_i_1
       (.I0(p_0_in),
        .I1(state_reg[0]),
        .I2(char_valid),
        .I3(rst_n),
        .I4(state_reg[1]),
        .I5(count_done_reg_n_0),
        .O(count_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_done_i_1_n_0),
        .Q(count_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[0][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[0][7]_i_2_n_0 ),
        .I5(\counter_char_reg[0]__0 [0]),
        .O(\counter_char[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][1]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \counter_char[0][2]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(counter_char[2]),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \counter_char[0][3]_i_1 
       (.I0(counter_char[2]),
        .I1(counter_char[0]),
        .I2(counter_char[1]),
        .I3(counter_char[3]),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\counter_char[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_10 
       (.I0(\counter_char_reg[5]__0 [0]),
        .I1(\counter_char_reg[7]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [0]),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_11 
       (.I0(\counter_char_reg[9]__0 [0]),
        .I1(\counter_char_reg[8]__0 [0]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_12 
       (.I0(\counter_char_reg[1]__0 [1]),
        .I1(\counter_char_reg[3]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [1]),
        .I5(\counter_char_reg[2]__0 [1]),
        .O(\counter_char[0][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_13 
       (.I0(\counter_char_reg[5]__0 [1]),
        .I1(\counter_char_reg[7]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [1]),
        .I5(\counter_char_reg[6]__0 [1]),
        .O(\counter_char[0][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_14 
       (.I0(\counter_char_reg[9]__0 [1]),
        .I1(\counter_char_reg[8]__0 [1]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_15 
       (.I0(\counter_char_reg[1]__0 [3]),
        .I1(\counter_char_reg[3]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [3]),
        .I5(\counter_char_reg[2]__0 [3]),
        .O(\counter_char[0][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_16 
       (.I0(\counter_char_reg[5]__0 [3]),
        .I1(\counter_char_reg[7]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [3]),
        .I5(\counter_char_reg[6]__0 [3]),
        .O(\counter_char[0][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_17 
       (.I0(\counter_char_reg[9]__0 [3]),
        .I1(\counter_char_reg[8]__0 [3]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_2 
       (.I0(\counter_char[0][3]_i_6_n_0 ),
        .I1(\counter_char[0][3]_i_7_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_8_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [2]),
        .O(counter_char[2]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_3 
       (.I0(\counter_char[0][3]_i_9_n_0 ),
        .I1(\counter_char[0][3]_i_10_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_11_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(counter_char[0]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_4 
       (.I0(\counter_char[0][3]_i_12_n_0 ),
        .I1(\counter_char[0][3]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [1]),
        .O(counter_char[1]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_5 
       (.I0(\counter_char[0][3]_i_15_n_0 ),
        .I1(\counter_char[0][3]_i_16_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_17_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [3]),
        .O(counter_char[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_6 
       (.I0(\counter_char_reg[1]__0 [2]),
        .I1(\counter_char_reg[3]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [2]),
        .I5(\counter_char_reg[2]__0 [2]),
        .O(\counter_char[0][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_7 
       (.I0(\counter_char_reg[5]__0 [2]),
        .I1(\counter_char_reg[7]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [2]),
        .I5(\counter_char_reg[6]__0 [2]),
        .O(\counter_char[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_8 
       (.I0(\counter_char_reg[9]__0 [2]),
        .I1(\counter_char_reg[8]__0 [2]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_9 
       (.I0(\counter_char_reg[1]__0 [0]),
        .I1(\counter_char_reg[3]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [0]),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[0][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][4]_i_1 
       (.I0(counter_char[4]),
        .I1(\counter_char[0][4]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][4]_i_2 
       (.I0(\counter_char[0][4]_i_4_n_0 ),
        .I1(\counter_char[0][4]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][4]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [4]),
        .O(counter_char[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_char[0][4]_i_3 
       (.I0(counter_char[3]),
        .I1(counter_char[1]),
        .I2(counter_char[0]),
        .I3(counter_char[2]),
        .O(\counter_char[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_4 
       (.I0(\counter_char_reg[1]__0 [4]),
        .I1(\counter_char_reg[3]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [4]),
        .I5(\counter_char_reg[2]__0 [4]),
        .O(\counter_char[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_5 
       (.I0(\counter_char_reg[5]__0 [4]),
        .I1(\counter_char_reg[7]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [4]),
        .I5(\counter_char_reg[6]__0 [4]),
        .O(\counter_char[0][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][4]_i_6 
       (.I0(\counter_char_reg[9]__0 [4]),
        .I1(\counter_char_reg[8]__0 [4]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][5]_i_1 
       (.I0(counter_char[5]),
        .I1(\counter_char[0][5]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][5]_i_2 
       (.I0(\counter_char[0][5]_i_4_n_0 ),
        .I1(\counter_char[0][5]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][5]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [5]),
        .O(counter_char[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_char[0][5]_i_3 
       (.I0(counter_char[4]),
        .I1(counter_char[2]),
        .I2(counter_char[0]),
        .I3(counter_char[1]),
        .I4(counter_char[3]),
        .O(\counter_char[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_4 
       (.I0(\counter_char_reg[1]__0 [5]),
        .I1(\counter_char_reg[3]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [5]),
        .I5(\counter_char_reg[2]__0 [5]),
        .O(\counter_char[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_5 
       (.I0(\counter_char_reg[5]__0 [5]),
        .I1(\counter_char_reg[7]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [5]),
        .I5(\counter_char_reg[6]__0 [5]),
        .O(\counter_char[0][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][5]_i_6 
       (.I0(\counter_char_reg[9]__0 [5]),
        .I1(\counter_char_reg[8]__0 [5]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][6]_i_1 
       (.I0(counter_char[6]),
        .I1(\counter_char[0][7]_i_7_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[0][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[0][7]_i_2_n_0 ),
        .O(\counter_char[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_10 
       (.I0(\counter_char_reg[9]__0 [7]),
        .I1(\counter_char_reg[8]__0 [7]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_char[0][7]_i_11 
       (.I0(char_index[1]),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .O(\counter_char[0][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_12 
       (.I0(\counter_char_reg[1]__0 [6]),
        .I1(\counter_char_reg[3]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [6]),
        .I5(\counter_char_reg[2]__0 [6]),
        .O(\counter_char[0][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_13 
       (.I0(\counter_char_reg[5]__0 [6]),
        .I1(\counter_char_reg[7]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [6]),
        .I5(\counter_char_reg[6]__0 [6]),
        .O(\counter_char[0][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_14 
       (.I0(\counter_char_reg[9]__0 [6]),
        .I1(\counter_char_reg[8]__0 [6]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[0][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[0][7]_i_4_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \counter_char[0][7]_i_3 
       (.I0(counter_char[7]),
        .I1(counter_char[6]),
        .I2(\counter_char[0][7]_i_7_n_0 ),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter_char[0][7]_i_4 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_5 
       (.I0(\counter_char[0][7]_i_8_n_0 ),
        .I1(\counter_char[0][7]_i_9_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_10_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [7]),
        .O(counter_char[7]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_6 
       (.I0(\counter_char[0][7]_i_12_n_0 ),
        .I1(\counter_char[0][7]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [6]),
        .O(counter_char[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_char[0][7]_i_7 
       (.I0(counter_char[5]),
        .I1(counter_char[3]),
        .I2(counter_char[1]),
        .I3(counter_char[0]),
        .I4(counter_char[2]),
        .I5(counter_char[4]),
        .O(\counter_char[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_8 
       (.I0(\counter_char_reg[1]__0 [7]),
        .I1(\counter_char_reg[3]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [7]),
        .I5(\counter_char_reg[2]__0 [7]),
        .O(\counter_char[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_9 
       (.I0(\counter_char_reg[5]__0 [7]),
        .I1(\counter_char_reg[7]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [7]),
        .I5(\counter_char_reg[6]__0 [7]),
        .O(\counter_char[0][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[10][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[10][7]_i_2_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(\counter_char[10][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[10][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[10][7]_i_2_n_0 ),
        .O(\counter_char[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[10][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[2][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[1][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[1][7]_i_2_n_0 ),
        .I5(\counter_char_reg[1]__0 [0]),
        .O(\counter_char[1][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[1][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[1][7]_i_2_n_0 ),
        .O(\counter_char[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[1][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[1][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[1][7]_i_3 
       (.I0(char_index[0]),
        .I1(char_index[1]),
        .O(\counter_char[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[2][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[2][7]_i_2_n_0 ),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[2][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[2][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[2][7]_i_2_n_0 ),
        .O(\counter_char[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[2][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[2][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[2][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[3][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[3][7]_i_2_n_0 ),
        .I5(\counter_char_reg[3]__0 [0]),
        .O(\counter_char[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[3][7]_i_2_n_0 ),
        .O(\counter_char[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \counter_char[3][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[3][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[4][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[4][7]_i_2_n_0 ),
        .I5(\counter_char_reg[4]__0 [0]),
        .O(\counter_char[4][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[4][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[4][7]_i_2_n_0 ),
        .O(\counter_char[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[4][7]_i_2 
       (.I0(\counter_char[0][7]_i_4_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[5][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[5][7]_i_2_n_0 ),
        .I5(\counter_char_reg[5]__0 [0]),
        .O(\counter_char[5][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[5][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[5][7]_i_2_n_0 ),
        .O(\counter_char[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[5][7]_i_2 
       (.I0(\counter_char[1][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[6][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[6][7]_i_2_n_0 ),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[6][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[6][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[6][7]_i_2_n_0 ),
        .O(\counter_char[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[6][7]_i_2 
       (.I0(\counter_char[2][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[7][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[7][7]_i_2_n_0 ),
        .I5(\counter_char_reg[7]__0 [0]),
        .O(\counter_char[7][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[7][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[7][7]_i_2_n_0 ),
        .O(\counter_char[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[7][7]_i_2 
       (.I0(\counter_char[3][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[8][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[8][7]_i_2_n_0 ),
        .I5(\counter_char_reg[8]__0 [0]),
        .O(\counter_char[8][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[8][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[8][7]_i_2_n_0 ),
        .O(\counter_char[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[8][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[0][7]_i_4_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[9][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[9][7]_i_2_n_0 ),
        .I5(\counter_char_reg[9]__0 [0]),
        .O(\counter_char[9][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[9][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[9][7]_i_2_n_0 ),
        .O(\counter_char[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[9][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[1][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[9][7]_i_2_n_0 ));
  FDRE \counter_char_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[0][0]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[0][1] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [1]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][2] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [2]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][3] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [3]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][4] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [4]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][5] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [5]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][6] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [6]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][7] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[0]__0 [7]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[10][0]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[10][1] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [1]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][2] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [2]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][3] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [3]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][4] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [4]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][5] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [5]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][6] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [6]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][7] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[10]__0 [7]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[1][0]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[1][1] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [1]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][2] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [2]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][3] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [3]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][4] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [4]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][5] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [5]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][6] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [6]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][7] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[1]__0 [7]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[2][0]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[2][1] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [1]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][2] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [2]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][3] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [3]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][4] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [4]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][5] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [5]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][6] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [6]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][7] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[2]__0 [7]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[3][0]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[3][1] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [1]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][2] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [2]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][3] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [3]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][4] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [4]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][5] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [5]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][6] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [6]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][7] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[3]__0 [7]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[4][0]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[4][1] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [1]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][2] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [2]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][3] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [3]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][4] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [4]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][5] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [5]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][6] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [6]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][7] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[4]__0 [7]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[5][0]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[5][1] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [1]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][2] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [2]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][3] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [3]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][4] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [4]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][5] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [5]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][6] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [6]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][7] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[5]__0 [7]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[6][0]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[6][1] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [1]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][2] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [2]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][3] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [3]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][4] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [4]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][5] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [5]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][6] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [6]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][7] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[6]__0 [7]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[7][0]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[7][1] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [1]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][2] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [2]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][3] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [3]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][4] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [4]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][5] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [5]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][6] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [6]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][7] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[7]__0 [7]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[8][0]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[8][1] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [1]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][2] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [2]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][3] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [3]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][4] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [4]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][5] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [5]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][6] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [6]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][7] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[8]__0 [7]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[9][0]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[9][1] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [1]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][2] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [2]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][3] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [3]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][4] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [4]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][5] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [5]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][6] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [6]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][7] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[9]__0 [7]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008888)) 
    \counter_continue[0]_i_1 
       (.I0(count_continue_done11_in),
        .I1(state_reg[0]),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .I4(count_continue_done1),
        .O(\counter_continue[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter_continue[1]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \counter_continue[2]_i_1 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \counter_continue[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .O(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h50D0)) 
    \counter_continue[3]_i_2 
       (.I0(state_reg[0]),
        .I1(char_valid),
        .I2(rst_n),
        .I3(state_reg[1]),
        .O(\counter_continue[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \counter_continue[3]_i_3 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_continue[3]_i_4 
       (.I0(count_continue_done1),
        .I1(count_continue_done11_in),
        .I2(state_reg[0]),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .O(\counter_continue[3]_i_4_n_0 ));
  FDRE \counter_continue_reg[0] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[0]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[0] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[1] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[1]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[1] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[2] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[2]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[2] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[3] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[3]_i_3_n_0 ),
        .Q(\counter_continue_reg_n_0_[3] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    recognize_done_i_1
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .I3(recognize_done),
        .O(recognize_done_i_1_n_0));
  FDRE recognize_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(recognize_done_i_1_n_0),
        .Q(recognize_done),
        .R(1'b0));
endmodule

(* COUNT = "2'b01" *) (* DONE = "2'b10" *) (* IDLE = "2'b00" *) 
(* ORIG_REF_NAME = "judge_one" *) 
module m3_for_arty_a7_judge_0_0_judge_one__1
   (clk,
    rst_n,
    char_index,
    char_diff,
    char_valid,
    max_diff,
    min_continue,
    min_counter,
    all_done,
    char_index_o,
    recognize_done);
  input clk;
  input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input char_valid;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input all_done;
  output [3:0]char_index_o;
  output recognize_done;

  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire all_done;
  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire [3:0]char_index_o;
  wire \char_index_o[3]_i_10_n_0 ;
  wire \char_index_o[3]_i_11_n_0 ;
  wire \char_index_o[3]_i_12_n_0 ;
  wire \char_index_o[3]_i_13_n_0 ;
  wire \char_index_o[3]_i_14_n_0 ;
  wire \char_index_o[3]_i_15_n_0 ;
  wire \char_index_o[3]_i_16_n_0 ;
  wire \char_index_o[3]_i_17_n_0 ;
  wire \char_index_o[3]_i_18_n_0 ;
  wire \char_index_o[3]_i_19_n_0 ;
  wire \char_index_o[3]_i_1_n_0 ;
  wire \char_index_o[3]_i_20_n_0 ;
  wire \char_index_o[3]_i_21_n_0 ;
  wire \char_index_o[3]_i_22_n_0 ;
  wire \char_index_o[3]_i_23_n_0 ;
  wire \char_index_o[3]_i_24_n_0 ;
  wire \char_index_o[3]_i_25_n_0 ;
  wire \char_index_o[3]_i_26_n_0 ;
  wire \char_index_o[3]_i_27_n_0 ;
  wire \char_index_o[3]_i_28_n_0 ;
  wire \char_index_o[3]_i_29_n_0 ;
  wire \char_index_o[3]_i_2_n_0 ;
  wire \char_index_o[3]_i_30_n_0 ;
  wire \char_index_o[3]_i_31_n_0 ;
  wire \char_index_o[3]_i_32_n_0 ;
  wire \char_index_o[3]_i_33_n_0 ;
  wire \char_index_o[3]_i_5_n_0 ;
  wire \char_index_o[3]_i_7_n_0 ;
  wire \char_index_o[3]_i_8_n_0 ;
  wire \char_index_o_reg[3]_i_4_n_1 ;
  wire \char_index_o_reg[3]_i_4_n_2 ;
  wire \char_index_o_reg[3]_i_4_n_3 ;
  wire \char_index_o_reg[3]_i_6_n_1 ;
  wire \char_index_o_reg[3]_i_6_n_2 ;
  wire \char_index_o_reg[3]_i_6_n_3 ;
  wire \char_index_o_reg[3]_i_9_n_0 ;
  wire \char_index_o_reg[3]_i_9_n_1 ;
  wire \char_index_o_reg[3]_i_9_n_2 ;
  wire \char_index_o_reg[3]_i_9_n_3 ;
  wire [3:0]char_last;
  wire \char_last[3]_i_1_n_0 ;
  wire char_valid;
  wire clk;
  wire count_continue_done1;
  wire count_continue_done11_in;
  wire count_continue_done_i_1_n_0;
  wire count_continue_done_i_2_n_0;
  wire count_continue_done_reg_n_0;
  wire count_done_i_1_n_0;
  wire count_done_reg_n_0;
  wire [7:0]counter_char;
  wire \counter_char[0][0]_i_1_n_0 ;
  wire \counter_char[0][1]_i_1_n_0 ;
  wire \counter_char[0][2]_i_1_n_0 ;
  wire \counter_char[0][3]_i_10_n_0 ;
  wire \counter_char[0][3]_i_11_n_0 ;
  wire \counter_char[0][3]_i_12_n_0 ;
  wire \counter_char[0][3]_i_13_n_0 ;
  wire \counter_char[0][3]_i_14_n_0 ;
  wire \counter_char[0][3]_i_15_n_0 ;
  wire \counter_char[0][3]_i_16_n_0 ;
  wire \counter_char[0][3]_i_17_n_0 ;
  wire \counter_char[0][3]_i_1_n_0 ;
  wire \counter_char[0][3]_i_6_n_0 ;
  wire \counter_char[0][3]_i_7_n_0 ;
  wire \counter_char[0][3]_i_8_n_0 ;
  wire \counter_char[0][3]_i_9_n_0 ;
  wire \counter_char[0][4]_i_1_n_0 ;
  wire \counter_char[0][4]_i_3_n_0 ;
  wire \counter_char[0][4]_i_4_n_0 ;
  wire \counter_char[0][4]_i_5_n_0 ;
  wire \counter_char[0][4]_i_6_n_0 ;
  wire \counter_char[0][5]_i_1_n_0 ;
  wire \counter_char[0][5]_i_3_n_0 ;
  wire \counter_char[0][5]_i_4_n_0 ;
  wire \counter_char[0][5]_i_5_n_0 ;
  wire \counter_char[0][5]_i_6_n_0 ;
  wire \counter_char[0][6]_i_1_n_0 ;
  wire \counter_char[0][7]_i_10_n_0 ;
  wire \counter_char[0][7]_i_11_n_0 ;
  wire \counter_char[0][7]_i_12_n_0 ;
  wire \counter_char[0][7]_i_13_n_0 ;
  wire \counter_char[0][7]_i_14_n_0 ;
  wire \counter_char[0][7]_i_1_n_0 ;
  wire \counter_char[0][7]_i_2_n_0 ;
  wire \counter_char[0][7]_i_3_n_0 ;
  wire \counter_char[0][7]_i_4_n_0 ;
  wire \counter_char[0][7]_i_7_n_0 ;
  wire \counter_char[0][7]_i_8_n_0 ;
  wire \counter_char[0][7]_i_9_n_0 ;
  wire \counter_char[10][0]_i_1_n_0 ;
  wire \counter_char[10][7]_i_1_n_0 ;
  wire \counter_char[10][7]_i_2_n_0 ;
  wire \counter_char[1][0]_i_1_n_0 ;
  wire \counter_char[1][7]_i_1_n_0 ;
  wire \counter_char[1][7]_i_2_n_0 ;
  wire \counter_char[1][7]_i_3_n_0 ;
  wire \counter_char[2][0]_i_1_n_0 ;
  wire \counter_char[2][7]_i_1_n_0 ;
  wire \counter_char[2][7]_i_2_n_0 ;
  wire \counter_char[2][7]_i_3_n_0 ;
  wire \counter_char[3][0]_i_1_n_0 ;
  wire \counter_char[3][7]_i_1_n_0 ;
  wire \counter_char[3][7]_i_2_n_0 ;
  wire \counter_char[3][7]_i_3_n_0 ;
  wire \counter_char[4][0]_i_1_n_0 ;
  wire \counter_char[4][7]_i_1_n_0 ;
  wire \counter_char[4][7]_i_2_n_0 ;
  wire \counter_char[5][0]_i_1_n_0 ;
  wire \counter_char[5][7]_i_1_n_0 ;
  wire \counter_char[5][7]_i_2_n_0 ;
  wire \counter_char[6][0]_i_1_n_0 ;
  wire \counter_char[6][7]_i_1_n_0 ;
  wire \counter_char[6][7]_i_2_n_0 ;
  wire \counter_char[7][0]_i_1_n_0 ;
  wire \counter_char[7][7]_i_1_n_0 ;
  wire \counter_char[7][7]_i_2_n_0 ;
  wire \counter_char[8][0]_i_1_n_0 ;
  wire \counter_char[8][7]_i_1_n_0 ;
  wire \counter_char[8][7]_i_2_n_0 ;
  wire \counter_char[9][0]_i_1_n_0 ;
  wire \counter_char[9][7]_i_1_n_0 ;
  wire \counter_char[9][7]_i_2_n_0 ;
  wire [7:0]\counter_char_reg[0]__0 ;
  wire [7:0]\counter_char_reg[10]__0 ;
  wire [7:0]\counter_char_reg[1]__0 ;
  wire [7:0]\counter_char_reg[2]__0 ;
  wire [7:0]\counter_char_reg[3]__0 ;
  wire [7:0]\counter_char_reg[4]__0 ;
  wire [7:0]\counter_char_reg[5]__0 ;
  wire [7:0]\counter_char_reg[6]__0 ;
  wire [7:0]\counter_char_reg[7]__0 ;
  wire [7:0]\counter_char_reg[8]__0 ;
  wire [7:0]\counter_char_reg[9]__0 ;
  wire \counter_continue[0]_i_1_n_0 ;
  wire \counter_continue[1]_i_1_n_0 ;
  wire \counter_continue[2]_i_1_n_0 ;
  wire \counter_continue[3]_i_1_n_0 ;
  wire \counter_continue[3]_i_2_n_0 ;
  wire \counter_continue[3]_i_3_n_0 ;
  wire \counter_continue[3]_i_4_n_0 ;
  wire \counter_continue_reg_n_0_[0] ;
  wire \counter_continue_reg_n_0_[1] ;
  wire \counter_continue_reg_n_0_[2] ;
  wire \counter_continue_reg_n_0_[3] ;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  wire p_0_in;
  wire recognize_done;
  wire recognize_done_i_1_n_0;
  wire rst_n;
  wire [1:0]state_next;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(count_done_reg_n_0),
        .I2(count_continue_done_reg_n_0),
        .I3(state_reg[1]),
        .O(state_next[0]));
  LUT5 #(
    .INIT(32'h33304444)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(all_done),
        .I1(state_reg[1]),
        .I2(count_continue_done_reg_n_0),
        .I3(count_done_reg_n_0),
        .I4(state_reg[0]),
        .O(state_next[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT6 #(
    .INIT(64'h40000000FF000000)) 
    \char_index_o[3]_i_1 
       (.I0(\char_index_o[3]_i_2_n_0 ),
        .I1(count_continue_done1),
        .I2(count_continue_done11_in),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\char_index_o[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_10 
       (.I0(max_diff[14]),
        .I1(char_diff[14]),
        .I2(char_diff[15]),
        .I3(max_diff[15]),
        .O(\char_index_o[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_11 
       (.I0(max_diff[12]),
        .I1(char_diff[12]),
        .I2(char_diff[13]),
        .I3(max_diff[13]),
        .O(\char_index_o[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_12 
       (.I0(max_diff[10]),
        .I1(char_diff[10]),
        .I2(char_diff[11]),
        .I3(max_diff[11]),
        .O(\char_index_o[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_13 
       (.I0(max_diff[8]),
        .I1(char_diff[8]),
        .I2(char_diff[9]),
        .I3(max_diff[9]),
        .O(\char_index_o[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_14 
       (.I0(char_diff[15]),
        .I1(max_diff[15]),
        .I2(char_diff[14]),
        .I3(max_diff[14]),
        .O(\char_index_o[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_15 
       (.I0(char_diff[13]),
        .I1(max_diff[13]),
        .I2(char_diff[12]),
        .I3(max_diff[12]),
        .O(\char_index_o[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_16 
       (.I0(char_diff[11]),
        .I1(max_diff[11]),
        .I2(char_diff[10]),
        .I3(max_diff[10]),
        .O(\char_index_o[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_17 
       (.I0(char_diff[9]),
        .I1(max_diff[9]),
        .I2(char_diff[8]),
        .I3(max_diff[8]),
        .O(\char_index_o[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_18 
       (.I0(counter_char[6]),
        .I1(min_counter[6]),
        .I2(counter_char[7]),
        .I3(min_counter[7]),
        .O(\char_index_o[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_19 
       (.I0(counter_char[4]),
        .I1(min_counter[4]),
        .I2(counter_char[5]),
        .I3(min_counter[5]),
        .O(\char_index_o[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \char_index_o[3]_i_2 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(min_continue[3]),
        .I2(\char_index_o[3]_i_7_n_0 ),
        .O(\char_index_o[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_20 
       (.I0(counter_char[2]),
        .I1(min_counter[2]),
        .I2(counter_char[3]),
        .I3(min_counter[3]),
        .O(\char_index_o[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_21 
       (.I0(counter_char[0]),
        .I1(min_counter[0]),
        .I2(counter_char[1]),
        .I3(min_counter[1]),
        .O(\char_index_o[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_22 
       (.I0(counter_char[7]),
        .I1(min_counter[7]),
        .I2(counter_char[6]),
        .I3(min_counter[6]),
        .O(\char_index_o[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_23 
       (.I0(counter_char[5]),
        .I1(min_counter[5]),
        .I2(counter_char[4]),
        .I3(min_counter[4]),
        .O(\char_index_o[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_24 
       (.I0(counter_char[3]),
        .I1(min_counter[3]),
        .I2(counter_char[2]),
        .I3(min_counter[2]),
        .O(\char_index_o[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_25 
       (.I0(counter_char[1]),
        .I1(min_counter[1]),
        .I2(counter_char[0]),
        .I3(min_counter[0]),
        .O(\char_index_o[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_26 
       (.I0(max_diff[6]),
        .I1(char_diff[6]),
        .I2(char_diff[7]),
        .I3(max_diff[7]),
        .O(\char_index_o[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_27 
       (.I0(max_diff[4]),
        .I1(char_diff[4]),
        .I2(char_diff[5]),
        .I3(max_diff[5]),
        .O(\char_index_o[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_28 
       (.I0(max_diff[2]),
        .I1(char_diff[2]),
        .I2(char_diff[3]),
        .I3(max_diff[3]),
        .O(\char_index_o[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_29 
       (.I0(max_diff[0]),
        .I1(char_diff[0]),
        .I2(char_diff[1]),
        .I3(max_diff[1]),
        .O(\char_index_o[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \char_index_o[3]_i_3 
       (.I0(char_last[3]),
        .I1(char_index[3]),
        .I2(char_last[2]),
        .I3(char_index[2]),
        .I4(\char_index_o[3]_i_8_n_0 ),
        .O(count_continue_done1));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_30 
       (.I0(char_diff[7]),
        .I1(max_diff[7]),
        .I2(char_diff[6]),
        .I3(max_diff[6]),
        .O(\char_index_o[3]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_31 
       (.I0(char_diff[5]),
        .I1(max_diff[5]),
        .I2(char_diff[4]),
        .I3(max_diff[4]),
        .O(\char_index_o[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_32 
       (.I0(char_diff[3]),
        .I1(max_diff[3]),
        .I2(char_diff[2]),
        .I3(max_diff[2]),
        .O(\char_index_o[3]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_33 
       (.I0(char_diff[1]),
        .I1(max_diff[1]),
        .I2(char_diff[0]),
        .I3(max_diff[0]),
        .O(\char_index_o[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \char_index_o[3]_i_5 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(char_valid),
        .O(\char_index_o[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \char_index_o[3]_i_7 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(min_continue[2]),
        .I2(min_continue[1]),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(min_continue[0]),
        .I5(\counter_continue_reg_n_0_[0] ),
        .O(\char_index_o[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_8 
       (.I0(char_index[0]),
        .I1(char_last[0]),
        .I2(char_index[1]),
        .I3(char_last[1]),
        .O(\char_index_o[3]_i_8_n_0 ));
  FDRE \char_index_o_reg[0] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_index_o[0]),
        .R(1'b0));
  FDRE \char_index_o_reg[1] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_index_o[1]),
        .R(1'b0));
  FDRE \char_index_o_reg[2] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_index_o[2]),
        .R(1'b0));
  FDRE \char_index_o_reg[3] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_index_o[3]),
        .R(1'b0));
  CARRY4 \char_index_o_reg[3]_i_4 
       (.CI(\char_index_o_reg[3]_i_9_n_0 ),
        .CO({count_continue_done11_in,\char_index_o_reg[3]_i_4_n_1 ,\char_index_o_reg[3]_i_4_n_2 ,\char_index_o_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_10_n_0 ,\char_index_o[3]_i_11_n_0 ,\char_index_o[3]_i_12_n_0 ,\char_index_o[3]_i_13_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_14_n_0 ,\char_index_o[3]_i_15_n_0 ,\char_index_o[3]_i_16_n_0 ,\char_index_o[3]_i_17_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_6 
       (.CI(1'b0),
        .CO({p_0_in,\char_index_o_reg[3]_i_6_n_1 ,\char_index_o_reg[3]_i_6_n_2 ,\char_index_o_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_18_n_0 ,\char_index_o[3]_i_19_n_0 ,\char_index_o[3]_i_20_n_0 ,\char_index_o[3]_i_21_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_22_n_0 ,\char_index_o[3]_i_23_n_0 ,\char_index_o[3]_i_24_n_0 ,\char_index_o[3]_i_25_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\char_index_o_reg[3]_i_9_n_0 ,\char_index_o_reg[3]_i_9_n_1 ,\char_index_o_reg[3]_i_9_n_2 ,\char_index_o_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_26_n_0 ,\char_index_o[3]_i_27_n_0 ,\char_index_o[3]_i_28_n_0 ,\char_index_o[3]_i_29_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_30_n_0 ,\char_index_o[3]_i_31_n_0 ,\char_index_o[3]_i_32_n_0 ,\char_index_o[3]_i_33_n_0 }));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    \char_last[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(count_continue_done1),
        .I3(count_continue_done11_in),
        .I4(state_reg[0]),
        .I5(char_valid),
        .O(\char_last[3]_i_1_n_0 ));
  FDRE \char_last_reg[0] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_last[0]),
        .R(1'b0));
  FDRE \char_last_reg[1] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_last[1]),
        .R(1'b0));
  FDRE \char_last_reg[2] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_last[2]),
        .R(1'b0));
  FDRE \char_last_reg[3] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_last[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    count_continue_done_i_1
       (.I0(state_reg[1]),
        .I1(count_continue_done_i_2_n_0),
        .I2(\char_index_o[3]_i_2_n_0 ),
        .I3(\counter_continue[3]_i_2_n_0 ),
        .I4(count_continue_done_reg_n_0),
        .O(count_continue_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    count_continue_done_i_2
       (.I0(state_reg[0]),
        .I1(count_continue_done11_in),
        .I2(count_continue_done1),
        .O(count_continue_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_continue_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_continue_done_i_1_n_0),
        .Q(count_continue_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFF4CFF00004000)) 
    count_done_i_1
       (.I0(p_0_in),
        .I1(state_reg[0]),
        .I2(char_valid),
        .I3(rst_n),
        .I4(state_reg[1]),
        .I5(count_done_reg_n_0),
        .O(count_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_done_i_1_n_0),
        .Q(count_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[0][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[0][7]_i_2_n_0 ),
        .I5(\counter_char_reg[0]__0 [0]),
        .O(\counter_char[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][1]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \counter_char[0][2]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(counter_char[2]),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \counter_char[0][3]_i_1 
       (.I0(counter_char[2]),
        .I1(counter_char[0]),
        .I2(counter_char[1]),
        .I3(counter_char[3]),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\counter_char[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_10 
       (.I0(\counter_char_reg[5]__0 [0]),
        .I1(\counter_char_reg[7]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [0]),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_11 
       (.I0(\counter_char_reg[9]__0 [0]),
        .I1(\counter_char_reg[8]__0 [0]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_12 
       (.I0(\counter_char_reg[1]__0 [1]),
        .I1(\counter_char_reg[3]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [1]),
        .I5(\counter_char_reg[2]__0 [1]),
        .O(\counter_char[0][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_13 
       (.I0(\counter_char_reg[5]__0 [1]),
        .I1(\counter_char_reg[7]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [1]),
        .I5(\counter_char_reg[6]__0 [1]),
        .O(\counter_char[0][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_14 
       (.I0(\counter_char_reg[9]__0 [1]),
        .I1(\counter_char_reg[8]__0 [1]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_15 
       (.I0(\counter_char_reg[1]__0 [3]),
        .I1(\counter_char_reg[3]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [3]),
        .I5(\counter_char_reg[2]__0 [3]),
        .O(\counter_char[0][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_16 
       (.I0(\counter_char_reg[5]__0 [3]),
        .I1(\counter_char_reg[7]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [3]),
        .I5(\counter_char_reg[6]__0 [3]),
        .O(\counter_char[0][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_17 
       (.I0(\counter_char_reg[9]__0 [3]),
        .I1(\counter_char_reg[8]__0 [3]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_2 
       (.I0(\counter_char[0][3]_i_6_n_0 ),
        .I1(\counter_char[0][3]_i_7_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_8_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [2]),
        .O(counter_char[2]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_3 
       (.I0(\counter_char[0][3]_i_9_n_0 ),
        .I1(\counter_char[0][3]_i_10_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_11_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(counter_char[0]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_4 
       (.I0(\counter_char[0][3]_i_12_n_0 ),
        .I1(\counter_char[0][3]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [1]),
        .O(counter_char[1]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_5 
       (.I0(\counter_char[0][3]_i_15_n_0 ),
        .I1(\counter_char[0][3]_i_16_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_17_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [3]),
        .O(counter_char[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_6 
       (.I0(\counter_char_reg[1]__0 [2]),
        .I1(\counter_char_reg[3]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [2]),
        .I5(\counter_char_reg[2]__0 [2]),
        .O(\counter_char[0][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_7 
       (.I0(\counter_char_reg[5]__0 [2]),
        .I1(\counter_char_reg[7]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [2]),
        .I5(\counter_char_reg[6]__0 [2]),
        .O(\counter_char[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_8 
       (.I0(\counter_char_reg[9]__0 [2]),
        .I1(\counter_char_reg[8]__0 [2]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_9 
       (.I0(\counter_char_reg[1]__0 [0]),
        .I1(\counter_char_reg[3]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [0]),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[0][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][4]_i_1 
       (.I0(counter_char[4]),
        .I1(\counter_char[0][4]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][4]_i_2 
       (.I0(\counter_char[0][4]_i_4_n_0 ),
        .I1(\counter_char[0][4]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][4]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [4]),
        .O(counter_char[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_char[0][4]_i_3 
       (.I0(counter_char[3]),
        .I1(counter_char[1]),
        .I2(counter_char[0]),
        .I3(counter_char[2]),
        .O(\counter_char[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_4 
       (.I0(\counter_char_reg[1]__0 [4]),
        .I1(\counter_char_reg[3]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [4]),
        .I5(\counter_char_reg[2]__0 [4]),
        .O(\counter_char[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_5 
       (.I0(\counter_char_reg[5]__0 [4]),
        .I1(\counter_char_reg[7]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [4]),
        .I5(\counter_char_reg[6]__0 [4]),
        .O(\counter_char[0][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][4]_i_6 
       (.I0(\counter_char_reg[9]__0 [4]),
        .I1(\counter_char_reg[8]__0 [4]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][5]_i_1 
       (.I0(counter_char[5]),
        .I1(\counter_char[0][5]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][5]_i_2 
       (.I0(\counter_char[0][5]_i_4_n_0 ),
        .I1(\counter_char[0][5]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][5]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [5]),
        .O(counter_char[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_char[0][5]_i_3 
       (.I0(counter_char[4]),
        .I1(counter_char[2]),
        .I2(counter_char[0]),
        .I3(counter_char[1]),
        .I4(counter_char[3]),
        .O(\counter_char[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_4 
       (.I0(\counter_char_reg[1]__0 [5]),
        .I1(\counter_char_reg[3]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [5]),
        .I5(\counter_char_reg[2]__0 [5]),
        .O(\counter_char[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_5 
       (.I0(\counter_char_reg[5]__0 [5]),
        .I1(\counter_char_reg[7]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [5]),
        .I5(\counter_char_reg[6]__0 [5]),
        .O(\counter_char[0][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][5]_i_6 
       (.I0(\counter_char_reg[9]__0 [5]),
        .I1(\counter_char_reg[8]__0 [5]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][6]_i_1 
       (.I0(counter_char[6]),
        .I1(\counter_char[0][7]_i_7_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[0][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[0][7]_i_2_n_0 ),
        .O(\counter_char[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_10 
       (.I0(\counter_char_reg[9]__0 [7]),
        .I1(\counter_char_reg[8]__0 [7]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_char[0][7]_i_11 
       (.I0(char_index[1]),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .O(\counter_char[0][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_12 
       (.I0(\counter_char_reg[1]__0 [6]),
        .I1(\counter_char_reg[3]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [6]),
        .I5(\counter_char_reg[2]__0 [6]),
        .O(\counter_char[0][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_13 
       (.I0(\counter_char_reg[5]__0 [6]),
        .I1(\counter_char_reg[7]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [6]),
        .I5(\counter_char_reg[6]__0 [6]),
        .O(\counter_char[0][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_14 
       (.I0(\counter_char_reg[9]__0 [6]),
        .I1(\counter_char_reg[8]__0 [6]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[0][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[0][7]_i_4_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \counter_char[0][7]_i_3 
       (.I0(counter_char[7]),
        .I1(counter_char[6]),
        .I2(\counter_char[0][7]_i_7_n_0 ),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter_char[0][7]_i_4 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_5 
       (.I0(\counter_char[0][7]_i_8_n_0 ),
        .I1(\counter_char[0][7]_i_9_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_10_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [7]),
        .O(counter_char[7]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_6 
       (.I0(\counter_char[0][7]_i_12_n_0 ),
        .I1(\counter_char[0][7]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [6]),
        .O(counter_char[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_char[0][7]_i_7 
       (.I0(counter_char[5]),
        .I1(counter_char[3]),
        .I2(counter_char[1]),
        .I3(counter_char[0]),
        .I4(counter_char[2]),
        .I5(counter_char[4]),
        .O(\counter_char[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_8 
       (.I0(\counter_char_reg[1]__0 [7]),
        .I1(\counter_char_reg[3]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [7]),
        .I5(\counter_char_reg[2]__0 [7]),
        .O(\counter_char[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_9 
       (.I0(\counter_char_reg[5]__0 [7]),
        .I1(\counter_char_reg[7]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [7]),
        .I5(\counter_char_reg[6]__0 [7]),
        .O(\counter_char[0][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[10][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[10][7]_i_2_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(\counter_char[10][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[10][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[10][7]_i_2_n_0 ),
        .O(\counter_char[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[10][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[2][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[1][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[1][7]_i_2_n_0 ),
        .I5(\counter_char_reg[1]__0 [0]),
        .O(\counter_char[1][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[1][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[1][7]_i_2_n_0 ),
        .O(\counter_char[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[1][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[1][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[1][7]_i_3 
       (.I0(char_index[0]),
        .I1(char_index[1]),
        .O(\counter_char[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[2][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[2][7]_i_2_n_0 ),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[2][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[2][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[2][7]_i_2_n_0 ),
        .O(\counter_char[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[2][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[2][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[2][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[3][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[3][7]_i_2_n_0 ),
        .I5(\counter_char_reg[3]__0 [0]),
        .O(\counter_char[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[3][7]_i_2_n_0 ),
        .O(\counter_char[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \counter_char[3][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[3][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[4][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[4][7]_i_2_n_0 ),
        .I5(\counter_char_reg[4]__0 [0]),
        .O(\counter_char[4][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[4][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[4][7]_i_2_n_0 ),
        .O(\counter_char[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[4][7]_i_2 
       (.I0(\counter_char[0][7]_i_4_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[5][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[5][7]_i_2_n_0 ),
        .I5(\counter_char_reg[5]__0 [0]),
        .O(\counter_char[5][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[5][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[5][7]_i_2_n_0 ),
        .O(\counter_char[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[5][7]_i_2 
       (.I0(\counter_char[1][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[6][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[6][7]_i_2_n_0 ),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[6][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[6][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[6][7]_i_2_n_0 ),
        .O(\counter_char[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[6][7]_i_2 
       (.I0(\counter_char[2][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[7][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[7][7]_i_2_n_0 ),
        .I5(\counter_char_reg[7]__0 [0]),
        .O(\counter_char[7][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[7][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[7][7]_i_2_n_0 ),
        .O(\counter_char[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[7][7]_i_2 
       (.I0(\counter_char[3][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[8][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[8][7]_i_2_n_0 ),
        .I5(\counter_char_reg[8]__0 [0]),
        .O(\counter_char[8][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[8][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[8][7]_i_2_n_0 ),
        .O(\counter_char[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[8][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[0][7]_i_4_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[9][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[9][7]_i_2_n_0 ),
        .I5(\counter_char_reg[9]__0 [0]),
        .O(\counter_char[9][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[9][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[9][7]_i_2_n_0 ),
        .O(\counter_char[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[9][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[1][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[9][7]_i_2_n_0 ));
  FDRE \counter_char_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[0][0]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[0][1] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [1]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][2] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [2]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][3] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [3]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][4] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [4]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][5] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [5]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][6] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [6]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][7] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[0]__0 [7]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[10][0]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[10][1] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [1]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][2] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [2]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][3] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [3]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][4] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [4]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][5] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [5]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][6] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [6]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][7] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[10]__0 [7]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[1][0]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[1][1] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [1]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][2] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [2]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][3] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [3]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][4] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [4]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][5] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [5]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][6] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [6]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][7] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[1]__0 [7]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[2][0]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[2][1] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [1]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][2] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [2]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][3] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [3]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][4] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [4]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][5] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [5]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][6] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [6]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][7] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[2]__0 [7]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[3][0]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[3][1] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [1]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][2] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [2]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][3] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [3]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][4] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [4]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][5] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [5]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][6] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [6]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][7] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[3]__0 [7]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[4][0]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[4][1] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [1]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][2] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [2]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][3] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [3]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][4] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [4]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][5] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [5]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][6] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [6]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][7] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[4]__0 [7]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[5][0]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[5][1] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [1]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][2] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [2]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][3] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [3]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][4] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [4]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][5] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [5]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][6] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [6]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][7] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[5]__0 [7]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[6][0]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[6][1] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [1]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][2] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [2]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][3] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [3]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][4] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [4]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][5] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [5]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][6] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [6]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][7] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[6]__0 [7]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[7][0]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[7][1] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [1]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][2] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [2]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][3] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [3]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][4] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [4]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][5] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [5]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][6] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [6]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][7] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[7]__0 [7]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[8][0]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[8][1] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [1]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][2] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [2]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][3] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [3]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][4] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [4]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][5] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [5]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][6] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [6]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][7] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[8]__0 [7]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[9][0]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[9][1] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [1]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][2] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [2]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][3] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [3]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][4] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [4]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][5] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [5]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][6] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [6]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][7] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[9]__0 [7]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008888)) 
    \counter_continue[0]_i_1 
       (.I0(count_continue_done11_in),
        .I1(state_reg[0]),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .I4(count_continue_done1),
        .O(\counter_continue[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter_continue[1]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \counter_continue[2]_i_1 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \counter_continue[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .O(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h50D0)) 
    \counter_continue[3]_i_2 
       (.I0(state_reg[0]),
        .I1(char_valid),
        .I2(rst_n),
        .I3(state_reg[1]),
        .O(\counter_continue[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \counter_continue[3]_i_3 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_continue[3]_i_4 
       (.I0(count_continue_done1),
        .I1(count_continue_done11_in),
        .I2(state_reg[0]),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .O(\counter_continue[3]_i_4_n_0 ));
  FDRE \counter_continue_reg[0] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[0]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[0] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[1] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[1]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[1] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[2] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[2]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[2] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[3] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[3]_i_3_n_0 ),
        .Q(\counter_continue_reg_n_0_[3] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    recognize_done_i_1
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .I3(recognize_done),
        .O(recognize_done_i_1_n_0));
  FDRE recognize_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(recognize_done_i_1_n_0),
        .Q(recognize_done),
        .R(1'b0));
endmodule

(* COUNT = "2'b01" *) (* DONE = "2'b10" *) (* IDLE = "2'b00" *) 
(* ORIG_REF_NAME = "judge_one" *) 
module m3_for_arty_a7_judge_0_0_judge_one__2
   (clk,
    rst_n,
    char_index,
    char_diff,
    char_valid,
    max_diff,
    min_continue,
    min_counter,
    all_done,
    char_index_o,
    recognize_done);
  input clk;
  input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input char_valid;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input all_done;
  output [3:0]char_index_o;
  output recognize_done;

  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire all_done;
  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire [3:0]char_index_o;
  wire \char_index_o[3]_i_10_n_0 ;
  wire \char_index_o[3]_i_11_n_0 ;
  wire \char_index_o[3]_i_12_n_0 ;
  wire \char_index_o[3]_i_13_n_0 ;
  wire \char_index_o[3]_i_14_n_0 ;
  wire \char_index_o[3]_i_15_n_0 ;
  wire \char_index_o[3]_i_16_n_0 ;
  wire \char_index_o[3]_i_17_n_0 ;
  wire \char_index_o[3]_i_18_n_0 ;
  wire \char_index_o[3]_i_19_n_0 ;
  wire \char_index_o[3]_i_1_n_0 ;
  wire \char_index_o[3]_i_20_n_0 ;
  wire \char_index_o[3]_i_21_n_0 ;
  wire \char_index_o[3]_i_22_n_0 ;
  wire \char_index_o[3]_i_23_n_0 ;
  wire \char_index_o[3]_i_24_n_0 ;
  wire \char_index_o[3]_i_25_n_0 ;
  wire \char_index_o[3]_i_26_n_0 ;
  wire \char_index_o[3]_i_27_n_0 ;
  wire \char_index_o[3]_i_28_n_0 ;
  wire \char_index_o[3]_i_29_n_0 ;
  wire \char_index_o[3]_i_2_n_0 ;
  wire \char_index_o[3]_i_30_n_0 ;
  wire \char_index_o[3]_i_31_n_0 ;
  wire \char_index_o[3]_i_32_n_0 ;
  wire \char_index_o[3]_i_33_n_0 ;
  wire \char_index_o[3]_i_5_n_0 ;
  wire \char_index_o[3]_i_7_n_0 ;
  wire \char_index_o[3]_i_8_n_0 ;
  wire \char_index_o_reg[3]_i_4_n_1 ;
  wire \char_index_o_reg[3]_i_4_n_2 ;
  wire \char_index_o_reg[3]_i_4_n_3 ;
  wire \char_index_o_reg[3]_i_6_n_1 ;
  wire \char_index_o_reg[3]_i_6_n_2 ;
  wire \char_index_o_reg[3]_i_6_n_3 ;
  wire \char_index_o_reg[3]_i_9_n_0 ;
  wire \char_index_o_reg[3]_i_9_n_1 ;
  wire \char_index_o_reg[3]_i_9_n_2 ;
  wire \char_index_o_reg[3]_i_9_n_3 ;
  wire [3:0]char_last;
  wire \char_last[3]_i_1_n_0 ;
  wire char_valid;
  wire clk;
  wire count_continue_done1;
  wire count_continue_done11_in;
  wire count_continue_done_i_1_n_0;
  wire count_continue_done_i_2_n_0;
  wire count_continue_done_reg_n_0;
  wire count_done_i_1_n_0;
  wire count_done_reg_n_0;
  wire [7:0]counter_char;
  wire \counter_char[0][0]_i_1_n_0 ;
  wire \counter_char[0][1]_i_1_n_0 ;
  wire \counter_char[0][2]_i_1_n_0 ;
  wire \counter_char[0][3]_i_10_n_0 ;
  wire \counter_char[0][3]_i_11_n_0 ;
  wire \counter_char[0][3]_i_12_n_0 ;
  wire \counter_char[0][3]_i_13_n_0 ;
  wire \counter_char[0][3]_i_14_n_0 ;
  wire \counter_char[0][3]_i_15_n_0 ;
  wire \counter_char[0][3]_i_16_n_0 ;
  wire \counter_char[0][3]_i_17_n_0 ;
  wire \counter_char[0][3]_i_1_n_0 ;
  wire \counter_char[0][3]_i_6_n_0 ;
  wire \counter_char[0][3]_i_7_n_0 ;
  wire \counter_char[0][3]_i_8_n_0 ;
  wire \counter_char[0][3]_i_9_n_0 ;
  wire \counter_char[0][4]_i_1_n_0 ;
  wire \counter_char[0][4]_i_3_n_0 ;
  wire \counter_char[0][4]_i_4_n_0 ;
  wire \counter_char[0][4]_i_5_n_0 ;
  wire \counter_char[0][4]_i_6_n_0 ;
  wire \counter_char[0][5]_i_1_n_0 ;
  wire \counter_char[0][5]_i_3_n_0 ;
  wire \counter_char[0][5]_i_4_n_0 ;
  wire \counter_char[0][5]_i_5_n_0 ;
  wire \counter_char[0][5]_i_6_n_0 ;
  wire \counter_char[0][6]_i_1_n_0 ;
  wire \counter_char[0][7]_i_10_n_0 ;
  wire \counter_char[0][7]_i_11_n_0 ;
  wire \counter_char[0][7]_i_12_n_0 ;
  wire \counter_char[0][7]_i_13_n_0 ;
  wire \counter_char[0][7]_i_14_n_0 ;
  wire \counter_char[0][7]_i_1_n_0 ;
  wire \counter_char[0][7]_i_2_n_0 ;
  wire \counter_char[0][7]_i_3_n_0 ;
  wire \counter_char[0][7]_i_4_n_0 ;
  wire \counter_char[0][7]_i_7_n_0 ;
  wire \counter_char[0][7]_i_8_n_0 ;
  wire \counter_char[0][7]_i_9_n_0 ;
  wire \counter_char[10][0]_i_1_n_0 ;
  wire \counter_char[10][7]_i_1_n_0 ;
  wire \counter_char[10][7]_i_2_n_0 ;
  wire \counter_char[1][0]_i_1_n_0 ;
  wire \counter_char[1][7]_i_1_n_0 ;
  wire \counter_char[1][7]_i_2_n_0 ;
  wire \counter_char[1][7]_i_3_n_0 ;
  wire \counter_char[2][0]_i_1_n_0 ;
  wire \counter_char[2][7]_i_1_n_0 ;
  wire \counter_char[2][7]_i_2_n_0 ;
  wire \counter_char[2][7]_i_3_n_0 ;
  wire \counter_char[3][0]_i_1_n_0 ;
  wire \counter_char[3][7]_i_1_n_0 ;
  wire \counter_char[3][7]_i_2_n_0 ;
  wire \counter_char[3][7]_i_3_n_0 ;
  wire \counter_char[4][0]_i_1_n_0 ;
  wire \counter_char[4][7]_i_1_n_0 ;
  wire \counter_char[4][7]_i_2_n_0 ;
  wire \counter_char[5][0]_i_1_n_0 ;
  wire \counter_char[5][7]_i_1_n_0 ;
  wire \counter_char[5][7]_i_2_n_0 ;
  wire \counter_char[6][0]_i_1_n_0 ;
  wire \counter_char[6][7]_i_1_n_0 ;
  wire \counter_char[6][7]_i_2_n_0 ;
  wire \counter_char[7][0]_i_1_n_0 ;
  wire \counter_char[7][7]_i_1_n_0 ;
  wire \counter_char[7][7]_i_2_n_0 ;
  wire \counter_char[8][0]_i_1_n_0 ;
  wire \counter_char[8][7]_i_1_n_0 ;
  wire \counter_char[8][7]_i_2_n_0 ;
  wire \counter_char[9][0]_i_1_n_0 ;
  wire \counter_char[9][7]_i_1_n_0 ;
  wire \counter_char[9][7]_i_2_n_0 ;
  wire [7:0]\counter_char_reg[0]__0 ;
  wire [7:0]\counter_char_reg[10]__0 ;
  wire [7:0]\counter_char_reg[1]__0 ;
  wire [7:0]\counter_char_reg[2]__0 ;
  wire [7:0]\counter_char_reg[3]__0 ;
  wire [7:0]\counter_char_reg[4]__0 ;
  wire [7:0]\counter_char_reg[5]__0 ;
  wire [7:0]\counter_char_reg[6]__0 ;
  wire [7:0]\counter_char_reg[7]__0 ;
  wire [7:0]\counter_char_reg[8]__0 ;
  wire [7:0]\counter_char_reg[9]__0 ;
  wire \counter_continue[0]_i_1_n_0 ;
  wire \counter_continue[1]_i_1_n_0 ;
  wire \counter_continue[2]_i_1_n_0 ;
  wire \counter_continue[3]_i_1_n_0 ;
  wire \counter_continue[3]_i_2_n_0 ;
  wire \counter_continue[3]_i_3_n_0 ;
  wire \counter_continue[3]_i_4_n_0 ;
  wire \counter_continue_reg_n_0_[0] ;
  wire \counter_continue_reg_n_0_[1] ;
  wire \counter_continue_reg_n_0_[2] ;
  wire \counter_continue_reg_n_0_[3] ;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  wire p_0_in;
  wire recognize_done;
  wire recognize_done_i_1_n_0;
  wire rst_n;
  wire [1:0]state_next;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(count_done_reg_n_0),
        .I2(count_continue_done_reg_n_0),
        .I3(state_reg[1]),
        .O(state_next[0]));
  LUT5 #(
    .INIT(32'h33304444)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(all_done),
        .I1(state_reg[1]),
        .I2(count_continue_done_reg_n_0),
        .I3(count_done_reg_n_0),
        .I4(state_reg[0]),
        .O(state_next[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT6 #(
    .INIT(64'h40000000FF000000)) 
    \char_index_o[3]_i_1 
       (.I0(\char_index_o[3]_i_2_n_0 ),
        .I1(count_continue_done1),
        .I2(count_continue_done11_in),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\char_index_o[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_10 
       (.I0(max_diff[14]),
        .I1(char_diff[14]),
        .I2(char_diff[15]),
        .I3(max_diff[15]),
        .O(\char_index_o[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_11 
       (.I0(max_diff[12]),
        .I1(char_diff[12]),
        .I2(char_diff[13]),
        .I3(max_diff[13]),
        .O(\char_index_o[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_12 
       (.I0(max_diff[10]),
        .I1(char_diff[10]),
        .I2(char_diff[11]),
        .I3(max_diff[11]),
        .O(\char_index_o[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_13 
       (.I0(max_diff[8]),
        .I1(char_diff[8]),
        .I2(char_diff[9]),
        .I3(max_diff[9]),
        .O(\char_index_o[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_14 
       (.I0(char_diff[15]),
        .I1(max_diff[15]),
        .I2(char_diff[14]),
        .I3(max_diff[14]),
        .O(\char_index_o[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_15 
       (.I0(char_diff[13]),
        .I1(max_diff[13]),
        .I2(char_diff[12]),
        .I3(max_diff[12]),
        .O(\char_index_o[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_16 
       (.I0(char_diff[11]),
        .I1(max_diff[11]),
        .I2(char_diff[10]),
        .I3(max_diff[10]),
        .O(\char_index_o[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_17 
       (.I0(char_diff[9]),
        .I1(max_diff[9]),
        .I2(char_diff[8]),
        .I3(max_diff[8]),
        .O(\char_index_o[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_18 
       (.I0(counter_char[6]),
        .I1(min_counter[6]),
        .I2(counter_char[7]),
        .I3(min_counter[7]),
        .O(\char_index_o[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_19 
       (.I0(counter_char[4]),
        .I1(min_counter[4]),
        .I2(counter_char[5]),
        .I3(min_counter[5]),
        .O(\char_index_o[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \char_index_o[3]_i_2 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(min_continue[3]),
        .I2(\char_index_o[3]_i_7_n_0 ),
        .O(\char_index_o[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_20 
       (.I0(counter_char[2]),
        .I1(min_counter[2]),
        .I2(counter_char[3]),
        .I3(min_counter[3]),
        .O(\char_index_o[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_21 
       (.I0(counter_char[0]),
        .I1(min_counter[0]),
        .I2(counter_char[1]),
        .I3(min_counter[1]),
        .O(\char_index_o[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_22 
       (.I0(counter_char[7]),
        .I1(min_counter[7]),
        .I2(counter_char[6]),
        .I3(min_counter[6]),
        .O(\char_index_o[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_23 
       (.I0(counter_char[5]),
        .I1(min_counter[5]),
        .I2(counter_char[4]),
        .I3(min_counter[4]),
        .O(\char_index_o[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_24 
       (.I0(counter_char[3]),
        .I1(min_counter[3]),
        .I2(counter_char[2]),
        .I3(min_counter[2]),
        .O(\char_index_o[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_25 
       (.I0(counter_char[1]),
        .I1(min_counter[1]),
        .I2(counter_char[0]),
        .I3(min_counter[0]),
        .O(\char_index_o[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_26 
       (.I0(max_diff[6]),
        .I1(char_diff[6]),
        .I2(char_diff[7]),
        .I3(max_diff[7]),
        .O(\char_index_o[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_27 
       (.I0(max_diff[4]),
        .I1(char_diff[4]),
        .I2(char_diff[5]),
        .I3(max_diff[5]),
        .O(\char_index_o[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_28 
       (.I0(max_diff[2]),
        .I1(char_diff[2]),
        .I2(char_diff[3]),
        .I3(max_diff[3]),
        .O(\char_index_o[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_29 
       (.I0(max_diff[0]),
        .I1(char_diff[0]),
        .I2(char_diff[1]),
        .I3(max_diff[1]),
        .O(\char_index_o[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \char_index_o[3]_i_3 
       (.I0(char_last[3]),
        .I1(char_index[3]),
        .I2(char_last[2]),
        .I3(char_index[2]),
        .I4(\char_index_o[3]_i_8_n_0 ),
        .O(count_continue_done1));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_30 
       (.I0(char_diff[7]),
        .I1(max_diff[7]),
        .I2(char_diff[6]),
        .I3(max_diff[6]),
        .O(\char_index_o[3]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_31 
       (.I0(char_diff[5]),
        .I1(max_diff[5]),
        .I2(char_diff[4]),
        .I3(max_diff[4]),
        .O(\char_index_o[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_32 
       (.I0(char_diff[3]),
        .I1(max_diff[3]),
        .I2(char_diff[2]),
        .I3(max_diff[2]),
        .O(\char_index_o[3]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_33 
       (.I0(char_diff[1]),
        .I1(max_diff[1]),
        .I2(char_diff[0]),
        .I3(max_diff[0]),
        .O(\char_index_o[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \char_index_o[3]_i_5 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(char_valid),
        .O(\char_index_o[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \char_index_o[3]_i_7 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(min_continue[2]),
        .I2(min_continue[1]),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(min_continue[0]),
        .I5(\counter_continue_reg_n_0_[0] ),
        .O(\char_index_o[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_8 
       (.I0(char_index[0]),
        .I1(char_last[0]),
        .I2(char_index[1]),
        .I3(char_last[1]),
        .O(\char_index_o[3]_i_8_n_0 ));
  FDRE \char_index_o_reg[0] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_index_o[0]),
        .R(1'b0));
  FDRE \char_index_o_reg[1] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_index_o[1]),
        .R(1'b0));
  FDRE \char_index_o_reg[2] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_index_o[2]),
        .R(1'b0));
  FDRE \char_index_o_reg[3] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_index_o[3]),
        .R(1'b0));
  CARRY4 \char_index_o_reg[3]_i_4 
       (.CI(\char_index_o_reg[3]_i_9_n_0 ),
        .CO({count_continue_done11_in,\char_index_o_reg[3]_i_4_n_1 ,\char_index_o_reg[3]_i_4_n_2 ,\char_index_o_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_10_n_0 ,\char_index_o[3]_i_11_n_0 ,\char_index_o[3]_i_12_n_0 ,\char_index_o[3]_i_13_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_14_n_0 ,\char_index_o[3]_i_15_n_0 ,\char_index_o[3]_i_16_n_0 ,\char_index_o[3]_i_17_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_6 
       (.CI(1'b0),
        .CO({p_0_in,\char_index_o_reg[3]_i_6_n_1 ,\char_index_o_reg[3]_i_6_n_2 ,\char_index_o_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_18_n_0 ,\char_index_o[3]_i_19_n_0 ,\char_index_o[3]_i_20_n_0 ,\char_index_o[3]_i_21_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_22_n_0 ,\char_index_o[3]_i_23_n_0 ,\char_index_o[3]_i_24_n_0 ,\char_index_o[3]_i_25_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\char_index_o_reg[3]_i_9_n_0 ,\char_index_o_reg[3]_i_9_n_1 ,\char_index_o_reg[3]_i_9_n_2 ,\char_index_o_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_26_n_0 ,\char_index_o[3]_i_27_n_0 ,\char_index_o[3]_i_28_n_0 ,\char_index_o[3]_i_29_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_30_n_0 ,\char_index_o[3]_i_31_n_0 ,\char_index_o[3]_i_32_n_0 ,\char_index_o[3]_i_33_n_0 }));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    \char_last[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(count_continue_done1),
        .I3(count_continue_done11_in),
        .I4(state_reg[0]),
        .I5(char_valid),
        .O(\char_last[3]_i_1_n_0 ));
  FDRE \char_last_reg[0] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_last[0]),
        .R(1'b0));
  FDRE \char_last_reg[1] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_last[1]),
        .R(1'b0));
  FDRE \char_last_reg[2] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_last[2]),
        .R(1'b0));
  FDRE \char_last_reg[3] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_last[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    count_continue_done_i_1
       (.I0(state_reg[1]),
        .I1(count_continue_done_i_2_n_0),
        .I2(\char_index_o[3]_i_2_n_0 ),
        .I3(\counter_continue[3]_i_2_n_0 ),
        .I4(count_continue_done_reg_n_0),
        .O(count_continue_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    count_continue_done_i_2
       (.I0(state_reg[0]),
        .I1(count_continue_done11_in),
        .I2(count_continue_done1),
        .O(count_continue_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_continue_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_continue_done_i_1_n_0),
        .Q(count_continue_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFF4CFF00004000)) 
    count_done_i_1
       (.I0(p_0_in),
        .I1(state_reg[0]),
        .I2(char_valid),
        .I3(rst_n),
        .I4(state_reg[1]),
        .I5(count_done_reg_n_0),
        .O(count_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_done_i_1_n_0),
        .Q(count_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[0][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[0][7]_i_2_n_0 ),
        .I5(\counter_char_reg[0]__0 [0]),
        .O(\counter_char[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][1]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \counter_char[0][2]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(counter_char[2]),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \counter_char[0][3]_i_1 
       (.I0(counter_char[2]),
        .I1(counter_char[0]),
        .I2(counter_char[1]),
        .I3(counter_char[3]),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\counter_char[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_10 
       (.I0(\counter_char_reg[5]__0 [0]),
        .I1(\counter_char_reg[7]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [0]),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_11 
       (.I0(\counter_char_reg[9]__0 [0]),
        .I1(\counter_char_reg[8]__0 [0]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_12 
       (.I0(\counter_char_reg[1]__0 [1]),
        .I1(\counter_char_reg[3]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [1]),
        .I5(\counter_char_reg[2]__0 [1]),
        .O(\counter_char[0][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_13 
       (.I0(\counter_char_reg[5]__0 [1]),
        .I1(\counter_char_reg[7]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [1]),
        .I5(\counter_char_reg[6]__0 [1]),
        .O(\counter_char[0][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_14 
       (.I0(\counter_char_reg[9]__0 [1]),
        .I1(\counter_char_reg[8]__0 [1]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_15 
       (.I0(\counter_char_reg[1]__0 [3]),
        .I1(\counter_char_reg[3]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [3]),
        .I5(\counter_char_reg[2]__0 [3]),
        .O(\counter_char[0][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_16 
       (.I0(\counter_char_reg[5]__0 [3]),
        .I1(\counter_char_reg[7]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [3]),
        .I5(\counter_char_reg[6]__0 [3]),
        .O(\counter_char[0][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_17 
       (.I0(\counter_char_reg[9]__0 [3]),
        .I1(\counter_char_reg[8]__0 [3]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_2 
       (.I0(\counter_char[0][3]_i_6_n_0 ),
        .I1(\counter_char[0][3]_i_7_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_8_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [2]),
        .O(counter_char[2]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_3 
       (.I0(\counter_char[0][3]_i_9_n_0 ),
        .I1(\counter_char[0][3]_i_10_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_11_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(counter_char[0]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_4 
       (.I0(\counter_char[0][3]_i_12_n_0 ),
        .I1(\counter_char[0][3]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [1]),
        .O(counter_char[1]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_5 
       (.I0(\counter_char[0][3]_i_15_n_0 ),
        .I1(\counter_char[0][3]_i_16_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_17_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [3]),
        .O(counter_char[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_6 
       (.I0(\counter_char_reg[1]__0 [2]),
        .I1(\counter_char_reg[3]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [2]),
        .I5(\counter_char_reg[2]__0 [2]),
        .O(\counter_char[0][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_7 
       (.I0(\counter_char_reg[5]__0 [2]),
        .I1(\counter_char_reg[7]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [2]),
        .I5(\counter_char_reg[6]__0 [2]),
        .O(\counter_char[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_8 
       (.I0(\counter_char_reg[9]__0 [2]),
        .I1(\counter_char_reg[8]__0 [2]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_9 
       (.I0(\counter_char_reg[1]__0 [0]),
        .I1(\counter_char_reg[3]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [0]),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[0][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][4]_i_1 
       (.I0(counter_char[4]),
        .I1(\counter_char[0][4]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][4]_i_2 
       (.I0(\counter_char[0][4]_i_4_n_0 ),
        .I1(\counter_char[0][4]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][4]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [4]),
        .O(counter_char[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_char[0][4]_i_3 
       (.I0(counter_char[3]),
        .I1(counter_char[1]),
        .I2(counter_char[0]),
        .I3(counter_char[2]),
        .O(\counter_char[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_4 
       (.I0(\counter_char_reg[1]__0 [4]),
        .I1(\counter_char_reg[3]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [4]),
        .I5(\counter_char_reg[2]__0 [4]),
        .O(\counter_char[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_5 
       (.I0(\counter_char_reg[5]__0 [4]),
        .I1(\counter_char_reg[7]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [4]),
        .I5(\counter_char_reg[6]__0 [4]),
        .O(\counter_char[0][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][4]_i_6 
       (.I0(\counter_char_reg[9]__0 [4]),
        .I1(\counter_char_reg[8]__0 [4]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][5]_i_1 
       (.I0(counter_char[5]),
        .I1(\counter_char[0][5]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][5]_i_2 
       (.I0(\counter_char[0][5]_i_4_n_0 ),
        .I1(\counter_char[0][5]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][5]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [5]),
        .O(counter_char[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_char[0][5]_i_3 
       (.I0(counter_char[4]),
        .I1(counter_char[2]),
        .I2(counter_char[0]),
        .I3(counter_char[1]),
        .I4(counter_char[3]),
        .O(\counter_char[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_4 
       (.I0(\counter_char_reg[1]__0 [5]),
        .I1(\counter_char_reg[3]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [5]),
        .I5(\counter_char_reg[2]__0 [5]),
        .O(\counter_char[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_5 
       (.I0(\counter_char_reg[5]__0 [5]),
        .I1(\counter_char_reg[7]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [5]),
        .I5(\counter_char_reg[6]__0 [5]),
        .O(\counter_char[0][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][5]_i_6 
       (.I0(\counter_char_reg[9]__0 [5]),
        .I1(\counter_char_reg[8]__0 [5]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][6]_i_1 
       (.I0(counter_char[6]),
        .I1(\counter_char[0][7]_i_7_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[0][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[0][7]_i_2_n_0 ),
        .O(\counter_char[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_10 
       (.I0(\counter_char_reg[9]__0 [7]),
        .I1(\counter_char_reg[8]__0 [7]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_char[0][7]_i_11 
       (.I0(char_index[1]),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .O(\counter_char[0][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_12 
       (.I0(\counter_char_reg[1]__0 [6]),
        .I1(\counter_char_reg[3]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [6]),
        .I5(\counter_char_reg[2]__0 [6]),
        .O(\counter_char[0][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_13 
       (.I0(\counter_char_reg[5]__0 [6]),
        .I1(\counter_char_reg[7]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [6]),
        .I5(\counter_char_reg[6]__0 [6]),
        .O(\counter_char[0][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_14 
       (.I0(\counter_char_reg[9]__0 [6]),
        .I1(\counter_char_reg[8]__0 [6]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[0][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[0][7]_i_4_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \counter_char[0][7]_i_3 
       (.I0(counter_char[7]),
        .I1(counter_char[6]),
        .I2(\counter_char[0][7]_i_7_n_0 ),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter_char[0][7]_i_4 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_5 
       (.I0(\counter_char[0][7]_i_8_n_0 ),
        .I1(\counter_char[0][7]_i_9_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_10_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [7]),
        .O(counter_char[7]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_6 
       (.I0(\counter_char[0][7]_i_12_n_0 ),
        .I1(\counter_char[0][7]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [6]),
        .O(counter_char[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_char[0][7]_i_7 
       (.I0(counter_char[5]),
        .I1(counter_char[3]),
        .I2(counter_char[1]),
        .I3(counter_char[0]),
        .I4(counter_char[2]),
        .I5(counter_char[4]),
        .O(\counter_char[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_8 
       (.I0(\counter_char_reg[1]__0 [7]),
        .I1(\counter_char_reg[3]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [7]),
        .I5(\counter_char_reg[2]__0 [7]),
        .O(\counter_char[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_9 
       (.I0(\counter_char_reg[5]__0 [7]),
        .I1(\counter_char_reg[7]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [7]),
        .I5(\counter_char_reg[6]__0 [7]),
        .O(\counter_char[0][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[10][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[10][7]_i_2_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(\counter_char[10][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[10][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[10][7]_i_2_n_0 ),
        .O(\counter_char[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[10][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[2][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[1][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[1][7]_i_2_n_0 ),
        .I5(\counter_char_reg[1]__0 [0]),
        .O(\counter_char[1][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[1][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[1][7]_i_2_n_0 ),
        .O(\counter_char[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[1][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[1][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[1][7]_i_3 
       (.I0(char_index[0]),
        .I1(char_index[1]),
        .O(\counter_char[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[2][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[2][7]_i_2_n_0 ),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[2][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[2][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[2][7]_i_2_n_0 ),
        .O(\counter_char[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[2][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[2][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[2][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[3][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[3][7]_i_2_n_0 ),
        .I5(\counter_char_reg[3]__0 [0]),
        .O(\counter_char[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[3][7]_i_2_n_0 ),
        .O(\counter_char[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \counter_char[3][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[3][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[4][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[4][7]_i_2_n_0 ),
        .I5(\counter_char_reg[4]__0 [0]),
        .O(\counter_char[4][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[4][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[4][7]_i_2_n_0 ),
        .O(\counter_char[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[4][7]_i_2 
       (.I0(\counter_char[0][7]_i_4_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[5][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[5][7]_i_2_n_0 ),
        .I5(\counter_char_reg[5]__0 [0]),
        .O(\counter_char[5][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[5][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[5][7]_i_2_n_0 ),
        .O(\counter_char[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[5][7]_i_2 
       (.I0(\counter_char[1][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[6][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[6][7]_i_2_n_0 ),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[6][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[6][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[6][7]_i_2_n_0 ),
        .O(\counter_char[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[6][7]_i_2 
       (.I0(\counter_char[2][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[7][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[7][7]_i_2_n_0 ),
        .I5(\counter_char_reg[7]__0 [0]),
        .O(\counter_char[7][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[7][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[7][7]_i_2_n_0 ),
        .O(\counter_char[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[7][7]_i_2 
       (.I0(\counter_char[3][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[8][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[8][7]_i_2_n_0 ),
        .I5(\counter_char_reg[8]__0 [0]),
        .O(\counter_char[8][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[8][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[8][7]_i_2_n_0 ),
        .O(\counter_char[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[8][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[0][7]_i_4_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[9][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[9][7]_i_2_n_0 ),
        .I5(\counter_char_reg[9]__0 [0]),
        .O(\counter_char[9][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[9][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[9][7]_i_2_n_0 ),
        .O(\counter_char[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[9][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[1][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[9][7]_i_2_n_0 ));
  FDRE \counter_char_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[0][0]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[0][1] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [1]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][2] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [2]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][3] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [3]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][4] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [4]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][5] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [5]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][6] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [6]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][7] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[0]__0 [7]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[10][0]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[10][1] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [1]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][2] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [2]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][3] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [3]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][4] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [4]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][5] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [5]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][6] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [6]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][7] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[10]__0 [7]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[1][0]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[1][1] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [1]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][2] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [2]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][3] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [3]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][4] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [4]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][5] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [5]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][6] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [6]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][7] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[1]__0 [7]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[2][0]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[2][1] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [1]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][2] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [2]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][3] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [3]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][4] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [4]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][5] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [5]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][6] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [6]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][7] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[2]__0 [7]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[3][0]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[3][1] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [1]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][2] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [2]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][3] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [3]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][4] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [4]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][5] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [5]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][6] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [6]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][7] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[3]__0 [7]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[4][0]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[4][1] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [1]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][2] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [2]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][3] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [3]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][4] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [4]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][5] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [5]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][6] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [6]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][7] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[4]__0 [7]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[5][0]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[5][1] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [1]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][2] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [2]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][3] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [3]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][4] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [4]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][5] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [5]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][6] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [6]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][7] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[5]__0 [7]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[6][0]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[6][1] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [1]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][2] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [2]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][3] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [3]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][4] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [4]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][5] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [5]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][6] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [6]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][7] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[6]__0 [7]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[7][0]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[7][1] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [1]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][2] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [2]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][3] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [3]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][4] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [4]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][5] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [5]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][6] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [6]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][7] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[7]__0 [7]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[8][0]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[8][1] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [1]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][2] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [2]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][3] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [3]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][4] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [4]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][5] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [5]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][6] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [6]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][7] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[8]__0 [7]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[9][0]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[9][1] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [1]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][2] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [2]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][3] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [3]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][4] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [4]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][5] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [5]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][6] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [6]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][7] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[9]__0 [7]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008888)) 
    \counter_continue[0]_i_1 
       (.I0(count_continue_done11_in),
        .I1(state_reg[0]),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .I4(count_continue_done1),
        .O(\counter_continue[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter_continue[1]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \counter_continue[2]_i_1 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \counter_continue[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .O(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h50D0)) 
    \counter_continue[3]_i_2 
       (.I0(state_reg[0]),
        .I1(char_valid),
        .I2(rst_n),
        .I3(state_reg[1]),
        .O(\counter_continue[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \counter_continue[3]_i_3 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_continue[3]_i_4 
       (.I0(count_continue_done1),
        .I1(count_continue_done11_in),
        .I2(state_reg[0]),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .O(\counter_continue[3]_i_4_n_0 ));
  FDRE \counter_continue_reg[0] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[0]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[0] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[1] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[1]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[1] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[2] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[2]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[2] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[3] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[3]_i_3_n_0 ),
        .Q(\counter_continue_reg_n_0_[3] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    recognize_done_i_1
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .I3(recognize_done),
        .O(recognize_done_i_1_n_0));
  FDRE recognize_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(recognize_done_i_1_n_0),
        .Q(recognize_done),
        .R(1'b0));
endmodule

(* COUNT = "2'b01" *) (* DONE = "2'b10" *) (* IDLE = "2'b00" *) 
(* ORIG_REF_NAME = "judge_one" *) 
module m3_for_arty_a7_judge_0_0_judge_one__3
   (clk,
    rst_n,
    char_index,
    char_diff,
    char_valid,
    max_diff,
    min_continue,
    min_counter,
    all_done,
    char_index_o,
    recognize_done);
  input clk;
  input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input char_valid;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input all_done;
  output [3:0]char_index_o;
  output recognize_done;

  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire all_done;
  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire [3:0]char_index_o;
  wire \char_index_o[3]_i_10_n_0 ;
  wire \char_index_o[3]_i_11_n_0 ;
  wire \char_index_o[3]_i_12_n_0 ;
  wire \char_index_o[3]_i_13_n_0 ;
  wire \char_index_o[3]_i_14_n_0 ;
  wire \char_index_o[3]_i_15_n_0 ;
  wire \char_index_o[3]_i_16_n_0 ;
  wire \char_index_o[3]_i_17_n_0 ;
  wire \char_index_o[3]_i_18_n_0 ;
  wire \char_index_o[3]_i_19_n_0 ;
  wire \char_index_o[3]_i_1_n_0 ;
  wire \char_index_o[3]_i_20_n_0 ;
  wire \char_index_o[3]_i_21_n_0 ;
  wire \char_index_o[3]_i_22_n_0 ;
  wire \char_index_o[3]_i_23_n_0 ;
  wire \char_index_o[3]_i_24_n_0 ;
  wire \char_index_o[3]_i_25_n_0 ;
  wire \char_index_o[3]_i_26_n_0 ;
  wire \char_index_o[3]_i_27_n_0 ;
  wire \char_index_o[3]_i_28_n_0 ;
  wire \char_index_o[3]_i_29_n_0 ;
  wire \char_index_o[3]_i_2_n_0 ;
  wire \char_index_o[3]_i_30_n_0 ;
  wire \char_index_o[3]_i_31_n_0 ;
  wire \char_index_o[3]_i_32_n_0 ;
  wire \char_index_o[3]_i_33_n_0 ;
  wire \char_index_o[3]_i_5_n_0 ;
  wire \char_index_o[3]_i_7_n_0 ;
  wire \char_index_o[3]_i_8_n_0 ;
  wire \char_index_o_reg[3]_i_4_n_1 ;
  wire \char_index_o_reg[3]_i_4_n_2 ;
  wire \char_index_o_reg[3]_i_4_n_3 ;
  wire \char_index_o_reg[3]_i_6_n_1 ;
  wire \char_index_o_reg[3]_i_6_n_2 ;
  wire \char_index_o_reg[3]_i_6_n_3 ;
  wire \char_index_o_reg[3]_i_9_n_0 ;
  wire \char_index_o_reg[3]_i_9_n_1 ;
  wire \char_index_o_reg[3]_i_9_n_2 ;
  wire \char_index_o_reg[3]_i_9_n_3 ;
  wire [3:0]char_last;
  wire \char_last[3]_i_1_n_0 ;
  wire char_valid;
  wire clk;
  wire count_continue_done1;
  wire count_continue_done11_in;
  wire count_continue_done_i_1_n_0;
  wire count_continue_done_i_2_n_0;
  wire count_continue_done_reg_n_0;
  wire count_done_i_1_n_0;
  wire count_done_reg_n_0;
  wire [7:0]counter_char;
  wire \counter_char[0][0]_i_1_n_0 ;
  wire \counter_char[0][1]_i_1_n_0 ;
  wire \counter_char[0][2]_i_1_n_0 ;
  wire \counter_char[0][3]_i_10_n_0 ;
  wire \counter_char[0][3]_i_11_n_0 ;
  wire \counter_char[0][3]_i_12_n_0 ;
  wire \counter_char[0][3]_i_13_n_0 ;
  wire \counter_char[0][3]_i_14_n_0 ;
  wire \counter_char[0][3]_i_15_n_0 ;
  wire \counter_char[0][3]_i_16_n_0 ;
  wire \counter_char[0][3]_i_17_n_0 ;
  wire \counter_char[0][3]_i_1_n_0 ;
  wire \counter_char[0][3]_i_6_n_0 ;
  wire \counter_char[0][3]_i_7_n_0 ;
  wire \counter_char[0][3]_i_8_n_0 ;
  wire \counter_char[0][3]_i_9_n_0 ;
  wire \counter_char[0][4]_i_1_n_0 ;
  wire \counter_char[0][4]_i_3_n_0 ;
  wire \counter_char[0][4]_i_4_n_0 ;
  wire \counter_char[0][4]_i_5_n_0 ;
  wire \counter_char[0][4]_i_6_n_0 ;
  wire \counter_char[0][5]_i_1_n_0 ;
  wire \counter_char[0][5]_i_3_n_0 ;
  wire \counter_char[0][5]_i_4_n_0 ;
  wire \counter_char[0][5]_i_5_n_0 ;
  wire \counter_char[0][5]_i_6_n_0 ;
  wire \counter_char[0][6]_i_1_n_0 ;
  wire \counter_char[0][7]_i_10_n_0 ;
  wire \counter_char[0][7]_i_11_n_0 ;
  wire \counter_char[0][7]_i_12_n_0 ;
  wire \counter_char[0][7]_i_13_n_0 ;
  wire \counter_char[0][7]_i_14_n_0 ;
  wire \counter_char[0][7]_i_1_n_0 ;
  wire \counter_char[0][7]_i_2_n_0 ;
  wire \counter_char[0][7]_i_3_n_0 ;
  wire \counter_char[0][7]_i_4_n_0 ;
  wire \counter_char[0][7]_i_7_n_0 ;
  wire \counter_char[0][7]_i_8_n_0 ;
  wire \counter_char[0][7]_i_9_n_0 ;
  wire \counter_char[10][0]_i_1_n_0 ;
  wire \counter_char[10][7]_i_1_n_0 ;
  wire \counter_char[10][7]_i_2_n_0 ;
  wire \counter_char[1][0]_i_1_n_0 ;
  wire \counter_char[1][7]_i_1_n_0 ;
  wire \counter_char[1][7]_i_2_n_0 ;
  wire \counter_char[1][7]_i_3_n_0 ;
  wire \counter_char[2][0]_i_1_n_0 ;
  wire \counter_char[2][7]_i_1_n_0 ;
  wire \counter_char[2][7]_i_2_n_0 ;
  wire \counter_char[2][7]_i_3_n_0 ;
  wire \counter_char[3][0]_i_1_n_0 ;
  wire \counter_char[3][7]_i_1_n_0 ;
  wire \counter_char[3][7]_i_2_n_0 ;
  wire \counter_char[3][7]_i_3_n_0 ;
  wire \counter_char[4][0]_i_1_n_0 ;
  wire \counter_char[4][7]_i_1_n_0 ;
  wire \counter_char[4][7]_i_2_n_0 ;
  wire \counter_char[5][0]_i_1_n_0 ;
  wire \counter_char[5][7]_i_1_n_0 ;
  wire \counter_char[5][7]_i_2_n_0 ;
  wire \counter_char[6][0]_i_1_n_0 ;
  wire \counter_char[6][7]_i_1_n_0 ;
  wire \counter_char[6][7]_i_2_n_0 ;
  wire \counter_char[7][0]_i_1_n_0 ;
  wire \counter_char[7][7]_i_1_n_0 ;
  wire \counter_char[7][7]_i_2_n_0 ;
  wire \counter_char[8][0]_i_1_n_0 ;
  wire \counter_char[8][7]_i_1_n_0 ;
  wire \counter_char[8][7]_i_2_n_0 ;
  wire \counter_char[9][0]_i_1_n_0 ;
  wire \counter_char[9][7]_i_1_n_0 ;
  wire \counter_char[9][7]_i_2_n_0 ;
  wire [7:0]\counter_char_reg[0]__0 ;
  wire [7:0]\counter_char_reg[10]__0 ;
  wire [7:0]\counter_char_reg[1]__0 ;
  wire [7:0]\counter_char_reg[2]__0 ;
  wire [7:0]\counter_char_reg[3]__0 ;
  wire [7:0]\counter_char_reg[4]__0 ;
  wire [7:0]\counter_char_reg[5]__0 ;
  wire [7:0]\counter_char_reg[6]__0 ;
  wire [7:0]\counter_char_reg[7]__0 ;
  wire [7:0]\counter_char_reg[8]__0 ;
  wire [7:0]\counter_char_reg[9]__0 ;
  wire \counter_continue[0]_i_1_n_0 ;
  wire \counter_continue[1]_i_1_n_0 ;
  wire \counter_continue[2]_i_1_n_0 ;
  wire \counter_continue[3]_i_1_n_0 ;
  wire \counter_continue[3]_i_2_n_0 ;
  wire \counter_continue[3]_i_3_n_0 ;
  wire \counter_continue[3]_i_4_n_0 ;
  wire \counter_continue_reg_n_0_[0] ;
  wire \counter_continue_reg_n_0_[1] ;
  wire \counter_continue_reg_n_0_[2] ;
  wire \counter_continue_reg_n_0_[3] ;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  wire p_0_in;
  wire recognize_done;
  wire recognize_done_i_1_n_0;
  wire rst_n;
  wire [1:0]state_next;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(count_done_reg_n_0),
        .I2(count_continue_done_reg_n_0),
        .I3(state_reg[1]),
        .O(state_next[0]));
  LUT5 #(
    .INIT(32'h33304444)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(all_done),
        .I1(state_reg[1]),
        .I2(count_continue_done_reg_n_0),
        .I3(count_done_reg_n_0),
        .I4(state_reg[0]),
        .O(state_next[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT6 #(
    .INIT(64'h40000000FF000000)) 
    \char_index_o[3]_i_1 
       (.I0(\char_index_o[3]_i_2_n_0 ),
        .I1(count_continue_done1),
        .I2(count_continue_done11_in),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\char_index_o[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_10 
       (.I0(max_diff[14]),
        .I1(char_diff[14]),
        .I2(char_diff[15]),
        .I3(max_diff[15]),
        .O(\char_index_o[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_11 
       (.I0(max_diff[12]),
        .I1(char_diff[12]),
        .I2(char_diff[13]),
        .I3(max_diff[13]),
        .O(\char_index_o[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_12 
       (.I0(max_diff[10]),
        .I1(char_diff[10]),
        .I2(char_diff[11]),
        .I3(max_diff[11]),
        .O(\char_index_o[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_13 
       (.I0(max_diff[8]),
        .I1(char_diff[8]),
        .I2(char_diff[9]),
        .I3(max_diff[9]),
        .O(\char_index_o[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_14 
       (.I0(char_diff[15]),
        .I1(max_diff[15]),
        .I2(char_diff[14]),
        .I3(max_diff[14]),
        .O(\char_index_o[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_15 
       (.I0(char_diff[13]),
        .I1(max_diff[13]),
        .I2(char_diff[12]),
        .I3(max_diff[12]),
        .O(\char_index_o[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_16 
       (.I0(char_diff[11]),
        .I1(max_diff[11]),
        .I2(char_diff[10]),
        .I3(max_diff[10]),
        .O(\char_index_o[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_17 
       (.I0(char_diff[9]),
        .I1(max_diff[9]),
        .I2(char_diff[8]),
        .I3(max_diff[8]),
        .O(\char_index_o[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_18 
       (.I0(counter_char[6]),
        .I1(min_counter[6]),
        .I2(counter_char[7]),
        .I3(min_counter[7]),
        .O(\char_index_o[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_19 
       (.I0(counter_char[4]),
        .I1(min_counter[4]),
        .I2(counter_char[5]),
        .I3(min_counter[5]),
        .O(\char_index_o[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \char_index_o[3]_i_2 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(min_continue[3]),
        .I2(\char_index_o[3]_i_7_n_0 ),
        .O(\char_index_o[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_20 
       (.I0(counter_char[2]),
        .I1(min_counter[2]),
        .I2(counter_char[3]),
        .I3(min_counter[3]),
        .O(\char_index_o[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_21 
       (.I0(counter_char[0]),
        .I1(min_counter[0]),
        .I2(counter_char[1]),
        .I3(min_counter[1]),
        .O(\char_index_o[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_22 
       (.I0(counter_char[7]),
        .I1(min_counter[7]),
        .I2(counter_char[6]),
        .I3(min_counter[6]),
        .O(\char_index_o[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_23 
       (.I0(counter_char[5]),
        .I1(min_counter[5]),
        .I2(counter_char[4]),
        .I3(min_counter[4]),
        .O(\char_index_o[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_24 
       (.I0(counter_char[3]),
        .I1(min_counter[3]),
        .I2(counter_char[2]),
        .I3(min_counter[2]),
        .O(\char_index_o[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_25 
       (.I0(counter_char[1]),
        .I1(min_counter[1]),
        .I2(counter_char[0]),
        .I3(min_counter[0]),
        .O(\char_index_o[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_26 
       (.I0(max_diff[6]),
        .I1(char_diff[6]),
        .I2(char_diff[7]),
        .I3(max_diff[7]),
        .O(\char_index_o[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_27 
       (.I0(max_diff[4]),
        .I1(char_diff[4]),
        .I2(char_diff[5]),
        .I3(max_diff[5]),
        .O(\char_index_o[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_28 
       (.I0(max_diff[2]),
        .I1(char_diff[2]),
        .I2(char_diff[3]),
        .I3(max_diff[3]),
        .O(\char_index_o[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_29 
       (.I0(max_diff[0]),
        .I1(char_diff[0]),
        .I2(char_diff[1]),
        .I3(max_diff[1]),
        .O(\char_index_o[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \char_index_o[3]_i_3 
       (.I0(char_last[3]),
        .I1(char_index[3]),
        .I2(char_last[2]),
        .I3(char_index[2]),
        .I4(\char_index_o[3]_i_8_n_0 ),
        .O(count_continue_done1));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_30 
       (.I0(char_diff[7]),
        .I1(max_diff[7]),
        .I2(char_diff[6]),
        .I3(max_diff[6]),
        .O(\char_index_o[3]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_31 
       (.I0(char_diff[5]),
        .I1(max_diff[5]),
        .I2(char_diff[4]),
        .I3(max_diff[4]),
        .O(\char_index_o[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_32 
       (.I0(char_diff[3]),
        .I1(max_diff[3]),
        .I2(char_diff[2]),
        .I3(max_diff[2]),
        .O(\char_index_o[3]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_33 
       (.I0(char_diff[1]),
        .I1(max_diff[1]),
        .I2(char_diff[0]),
        .I3(max_diff[0]),
        .O(\char_index_o[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \char_index_o[3]_i_5 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(char_valid),
        .O(\char_index_o[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \char_index_o[3]_i_7 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(min_continue[2]),
        .I2(min_continue[1]),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(min_continue[0]),
        .I5(\counter_continue_reg_n_0_[0] ),
        .O(\char_index_o[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_8 
       (.I0(char_index[0]),
        .I1(char_last[0]),
        .I2(char_index[1]),
        .I3(char_last[1]),
        .O(\char_index_o[3]_i_8_n_0 ));
  FDRE \char_index_o_reg[0] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_index_o[0]),
        .R(1'b0));
  FDRE \char_index_o_reg[1] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_index_o[1]),
        .R(1'b0));
  FDRE \char_index_o_reg[2] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_index_o[2]),
        .R(1'b0));
  FDRE \char_index_o_reg[3] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_index_o[3]),
        .R(1'b0));
  CARRY4 \char_index_o_reg[3]_i_4 
       (.CI(\char_index_o_reg[3]_i_9_n_0 ),
        .CO({count_continue_done11_in,\char_index_o_reg[3]_i_4_n_1 ,\char_index_o_reg[3]_i_4_n_2 ,\char_index_o_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_10_n_0 ,\char_index_o[3]_i_11_n_0 ,\char_index_o[3]_i_12_n_0 ,\char_index_o[3]_i_13_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_14_n_0 ,\char_index_o[3]_i_15_n_0 ,\char_index_o[3]_i_16_n_0 ,\char_index_o[3]_i_17_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_6 
       (.CI(1'b0),
        .CO({p_0_in,\char_index_o_reg[3]_i_6_n_1 ,\char_index_o_reg[3]_i_6_n_2 ,\char_index_o_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_18_n_0 ,\char_index_o[3]_i_19_n_0 ,\char_index_o[3]_i_20_n_0 ,\char_index_o[3]_i_21_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_22_n_0 ,\char_index_o[3]_i_23_n_0 ,\char_index_o[3]_i_24_n_0 ,\char_index_o[3]_i_25_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\char_index_o_reg[3]_i_9_n_0 ,\char_index_o_reg[3]_i_9_n_1 ,\char_index_o_reg[3]_i_9_n_2 ,\char_index_o_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_26_n_0 ,\char_index_o[3]_i_27_n_0 ,\char_index_o[3]_i_28_n_0 ,\char_index_o[3]_i_29_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_30_n_0 ,\char_index_o[3]_i_31_n_0 ,\char_index_o[3]_i_32_n_0 ,\char_index_o[3]_i_33_n_0 }));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    \char_last[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(count_continue_done1),
        .I3(count_continue_done11_in),
        .I4(state_reg[0]),
        .I5(char_valid),
        .O(\char_last[3]_i_1_n_0 ));
  FDRE \char_last_reg[0] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_last[0]),
        .R(1'b0));
  FDRE \char_last_reg[1] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_last[1]),
        .R(1'b0));
  FDRE \char_last_reg[2] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_last[2]),
        .R(1'b0));
  FDRE \char_last_reg[3] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_last[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    count_continue_done_i_1
       (.I0(state_reg[1]),
        .I1(count_continue_done_i_2_n_0),
        .I2(\char_index_o[3]_i_2_n_0 ),
        .I3(\counter_continue[3]_i_2_n_0 ),
        .I4(count_continue_done_reg_n_0),
        .O(count_continue_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    count_continue_done_i_2
       (.I0(state_reg[0]),
        .I1(count_continue_done11_in),
        .I2(count_continue_done1),
        .O(count_continue_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_continue_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_continue_done_i_1_n_0),
        .Q(count_continue_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFF4CFF00004000)) 
    count_done_i_1
       (.I0(p_0_in),
        .I1(state_reg[0]),
        .I2(char_valid),
        .I3(rst_n),
        .I4(state_reg[1]),
        .I5(count_done_reg_n_0),
        .O(count_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_done_i_1_n_0),
        .Q(count_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[0][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[0][7]_i_2_n_0 ),
        .I5(\counter_char_reg[0]__0 [0]),
        .O(\counter_char[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][1]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \counter_char[0][2]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(counter_char[2]),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \counter_char[0][3]_i_1 
       (.I0(counter_char[2]),
        .I1(counter_char[0]),
        .I2(counter_char[1]),
        .I3(counter_char[3]),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\counter_char[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_10 
       (.I0(\counter_char_reg[5]__0 [0]),
        .I1(\counter_char_reg[7]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [0]),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_11 
       (.I0(\counter_char_reg[9]__0 [0]),
        .I1(\counter_char_reg[8]__0 [0]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_12 
       (.I0(\counter_char_reg[1]__0 [1]),
        .I1(\counter_char_reg[3]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [1]),
        .I5(\counter_char_reg[2]__0 [1]),
        .O(\counter_char[0][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_13 
       (.I0(\counter_char_reg[5]__0 [1]),
        .I1(\counter_char_reg[7]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [1]),
        .I5(\counter_char_reg[6]__0 [1]),
        .O(\counter_char[0][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_14 
       (.I0(\counter_char_reg[9]__0 [1]),
        .I1(\counter_char_reg[8]__0 [1]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_15 
       (.I0(\counter_char_reg[1]__0 [3]),
        .I1(\counter_char_reg[3]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [3]),
        .I5(\counter_char_reg[2]__0 [3]),
        .O(\counter_char[0][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_16 
       (.I0(\counter_char_reg[5]__0 [3]),
        .I1(\counter_char_reg[7]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [3]),
        .I5(\counter_char_reg[6]__0 [3]),
        .O(\counter_char[0][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_17 
       (.I0(\counter_char_reg[9]__0 [3]),
        .I1(\counter_char_reg[8]__0 [3]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_2 
       (.I0(\counter_char[0][3]_i_6_n_0 ),
        .I1(\counter_char[0][3]_i_7_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_8_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [2]),
        .O(counter_char[2]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_3 
       (.I0(\counter_char[0][3]_i_9_n_0 ),
        .I1(\counter_char[0][3]_i_10_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_11_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(counter_char[0]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_4 
       (.I0(\counter_char[0][3]_i_12_n_0 ),
        .I1(\counter_char[0][3]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [1]),
        .O(counter_char[1]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_5 
       (.I0(\counter_char[0][3]_i_15_n_0 ),
        .I1(\counter_char[0][3]_i_16_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_17_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [3]),
        .O(counter_char[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_6 
       (.I0(\counter_char_reg[1]__0 [2]),
        .I1(\counter_char_reg[3]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [2]),
        .I5(\counter_char_reg[2]__0 [2]),
        .O(\counter_char[0][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_7 
       (.I0(\counter_char_reg[5]__0 [2]),
        .I1(\counter_char_reg[7]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [2]),
        .I5(\counter_char_reg[6]__0 [2]),
        .O(\counter_char[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_8 
       (.I0(\counter_char_reg[9]__0 [2]),
        .I1(\counter_char_reg[8]__0 [2]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_9 
       (.I0(\counter_char_reg[1]__0 [0]),
        .I1(\counter_char_reg[3]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [0]),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[0][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][4]_i_1 
       (.I0(counter_char[4]),
        .I1(\counter_char[0][4]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][4]_i_2 
       (.I0(\counter_char[0][4]_i_4_n_0 ),
        .I1(\counter_char[0][4]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][4]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [4]),
        .O(counter_char[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_char[0][4]_i_3 
       (.I0(counter_char[3]),
        .I1(counter_char[1]),
        .I2(counter_char[0]),
        .I3(counter_char[2]),
        .O(\counter_char[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_4 
       (.I0(\counter_char_reg[1]__0 [4]),
        .I1(\counter_char_reg[3]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [4]),
        .I5(\counter_char_reg[2]__0 [4]),
        .O(\counter_char[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_5 
       (.I0(\counter_char_reg[5]__0 [4]),
        .I1(\counter_char_reg[7]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [4]),
        .I5(\counter_char_reg[6]__0 [4]),
        .O(\counter_char[0][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][4]_i_6 
       (.I0(\counter_char_reg[9]__0 [4]),
        .I1(\counter_char_reg[8]__0 [4]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][5]_i_1 
       (.I0(counter_char[5]),
        .I1(\counter_char[0][5]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][5]_i_2 
       (.I0(\counter_char[0][5]_i_4_n_0 ),
        .I1(\counter_char[0][5]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][5]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [5]),
        .O(counter_char[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_char[0][5]_i_3 
       (.I0(counter_char[4]),
        .I1(counter_char[2]),
        .I2(counter_char[0]),
        .I3(counter_char[1]),
        .I4(counter_char[3]),
        .O(\counter_char[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_4 
       (.I0(\counter_char_reg[1]__0 [5]),
        .I1(\counter_char_reg[3]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [5]),
        .I5(\counter_char_reg[2]__0 [5]),
        .O(\counter_char[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_5 
       (.I0(\counter_char_reg[5]__0 [5]),
        .I1(\counter_char_reg[7]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [5]),
        .I5(\counter_char_reg[6]__0 [5]),
        .O(\counter_char[0][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][5]_i_6 
       (.I0(\counter_char_reg[9]__0 [5]),
        .I1(\counter_char_reg[8]__0 [5]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][6]_i_1 
       (.I0(counter_char[6]),
        .I1(\counter_char[0][7]_i_7_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[0][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[0][7]_i_2_n_0 ),
        .O(\counter_char[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_10 
       (.I0(\counter_char_reg[9]__0 [7]),
        .I1(\counter_char_reg[8]__0 [7]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_char[0][7]_i_11 
       (.I0(char_index[1]),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .O(\counter_char[0][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_12 
       (.I0(\counter_char_reg[1]__0 [6]),
        .I1(\counter_char_reg[3]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [6]),
        .I5(\counter_char_reg[2]__0 [6]),
        .O(\counter_char[0][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_13 
       (.I0(\counter_char_reg[5]__0 [6]),
        .I1(\counter_char_reg[7]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [6]),
        .I5(\counter_char_reg[6]__0 [6]),
        .O(\counter_char[0][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_14 
       (.I0(\counter_char_reg[9]__0 [6]),
        .I1(\counter_char_reg[8]__0 [6]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[0][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[0][7]_i_4_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \counter_char[0][7]_i_3 
       (.I0(counter_char[7]),
        .I1(counter_char[6]),
        .I2(\counter_char[0][7]_i_7_n_0 ),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter_char[0][7]_i_4 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_5 
       (.I0(\counter_char[0][7]_i_8_n_0 ),
        .I1(\counter_char[0][7]_i_9_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_10_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [7]),
        .O(counter_char[7]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_6 
       (.I0(\counter_char[0][7]_i_12_n_0 ),
        .I1(\counter_char[0][7]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [6]),
        .O(counter_char[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_char[0][7]_i_7 
       (.I0(counter_char[5]),
        .I1(counter_char[3]),
        .I2(counter_char[1]),
        .I3(counter_char[0]),
        .I4(counter_char[2]),
        .I5(counter_char[4]),
        .O(\counter_char[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_8 
       (.I0(\counter_char_reg[1]__0 [7]),
        .I1(\counter_char_reg[3]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [7]),
        .I5(\counter_char_reg[2]__0 [7]),
        .O(\counter_char[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_9 
       (.I0(\counter_char_reg[5]__0 [7]),
        .I1(\counter_char_reg[7]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [7]),
        .I5(\counter_char_reg[6]__0 [7]),
        .O(\counter_char[0][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[10][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[10][7]_i_2_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(\counter_char[10][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[10][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[10][7]_i_2_n_0 ),
        .O(\counter_char[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[10][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[2][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[1][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[1][7]_i_2_n_0 ),
        .I5(\counter_char_reg[1]__0 [0]),
        .O(\counter_char[1][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[1][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[1][7]_i_2_n_0 ),
        .O(\counter_char[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[1][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[1][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[1][7]_i_3 
       (.I0(char_index[0]),
        .I1(char_index[1]),
        .O(\counter_char[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[2][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[2][7]_i_2_n_0 ),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[2][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[2][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[2][7]_i_2_n_0 ),
        .O(\counter_char[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[2][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[2][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[2][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[3][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[3][7]_i_2_n_0 ),
        .I5(\counter_char_reg[3]__0 [0]),
        .O(\counter_char[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[3][7]_i_2_n_0 ),
        .O(\counter_char[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \counter_char[3][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[3][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[4][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[4][7]_i_2_n_0 ),
        .I5(\counter_char_reg[4]__0 [0]),
        .O(\counter_char[4][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[4][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[4][7]_i_2_n_0 ),
        .O(\counter_char[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[4][7]_i_2 
       (.I0(\counter_char[0][7]_i_4_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[5][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[5][7]_i_2_n_0 ),
        .I5(\counter_char_reg[5]__0 [0]),
        .O(\counter_char[5][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[5][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[5][7]_i_2_n_0 ),
        .O(\counter_char[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[5][7]_i_2 
       (.I0(\counter_char[1][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[6][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[6][7]_i_2_n_0 ),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[6][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[6][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[6][7]_i_2_n_0 ),
        .O(\counter_char[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[6][7]_i_2 
       (.I0(\counter_char[2][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[7][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[7][7]_i_2_n_0 ),
        .I5(\counter_char_reg[7]__0 [0]),
        .O(\counter_char[7][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[7][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[7][7]_i_2_n_0 ),
        .O(\counter_char[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[7][7]_i_2 
       (.I0(\counter_char[3][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[8][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[8][7]_i_2_n_0 ),
        .I5(\counter_char_reg[8]__0 [0]),
        .O(\counter_char[8][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[8][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[8][7]_i_2_n_0 ),
        .O(\counter_char[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[8][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[0][7]_i_4_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[9][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[9][7]_i_2_n_0 ),
        .I5(\counter_char_reg[9]__0 [0]),
        .O(\counter_char[9][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[9][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[9][7]_i_2_n_0 ),
        .O(\counter_char[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[9][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[1][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[9][7]_i_2_n_0 ));
  FDRE \counter_char_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[0][0]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[0][1] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [1]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][2] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [2]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][3] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [3]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][4] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [4]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][5] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [5]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][6] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [6]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][7] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[0]__0 [7]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[10][0]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[10][1] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [1]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][2] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [2]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][3] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [3]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][4] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [4]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][5] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [5]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][6] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [6]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][7] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[10]__0 [7]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[1][0]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[1][1] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [1]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][2] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [2]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][3] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [3]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][4] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [4]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][5] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [5]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][6] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [6]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][7] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[1]__0 [7]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[2][0]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[2][1] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [1]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][2] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [2]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][3] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [3]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][4] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [4]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][5] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [5]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][6] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [6]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][7] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[2]__0 [7]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[3][0]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[3][1] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [1]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][2] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [2]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][3] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [3]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][4] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [4]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][5] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [5]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][6] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [6]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][7] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[3]__0 [7]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[4][0]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[4][1] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [1]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][2] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [2]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][3] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [3]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][4] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [4]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][5] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [5]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][6] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [6]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][7] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[4]__0 [7]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[5][0]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[5][1] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [1]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][2] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [2]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][3] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [3]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][4] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [4]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][5] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [5]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][6] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [6]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][7] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[5]__0 [7]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[6][0]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[6][1] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [1]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][2] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [2]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][3] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [3]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][4] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [4]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][5] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [5]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][6] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [6]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][7] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[6]__0 [7]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[7][0]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[7][1] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [1]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][2] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [2]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][3] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [3]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][4] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [4]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][5] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [5]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][6] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [6]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][7] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[7]__0 [7]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[8][0]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[8][1] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [1]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][2] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [2]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][3] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [3]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][4] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [4]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][5] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [5]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][6] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [6]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][7] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[8]__0 [7]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[9][0]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[9][1] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [1]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][2] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [2]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][3] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [3]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][4] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [4]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][5] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [5]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][6] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [6]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][7] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[9]__0 [7]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008888)) 
    \counter_continue[0]_i_1 
       (.I0(count_continue_done11_in),
        .I1(state_reg[0]),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .I4(count_continue_done1),
        .O(\counter_continue[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter_continue[1]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \counter_continue[2]_i_1 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \counter_continue[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .O(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h50D0)) 
    \counter_continue[3]_i_2 
       (.I0(state_reg[0]),
        .I1(char_valid),
        .I2(rst_n),
        .I3(state_reg[1]),
        .O(\counter_continue[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \counter_continue[3]_i_3 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_continue[3]_i_4 
       (.I0(count_continue_done1),
        .I1(count_continue_done11_in),
        .I2(state_reg[0]),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .O(\counter_continue[3]_i_4_n_0 ));
  FDRE \counter_continue_reg[0] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[0]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[0] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[1] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[1]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[1] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[2] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[2]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[2] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[3] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[3]_i_3_n_0 ),
        .Q(\counter_continue_reg_n_0_[3] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    recognize_done_i_1
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .I3(recognize_done),
        .O(recognize_done_i_1_n_0));
  FDRE recognize_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(recognize_done_i_1_n_0),
        .Q(recognize_done),
        .R(1'b0));
endmodule

(* COUNT = "2'b01" *) (* DONE = "2'b10" *) (* IDLE = "2'b00" *) 
(* ORIG_REF_NAME = "judge_one" *) 
module m3_for_arty_a7_judge_0_0_judge_one__4
   (clk,
    rst_n,
    char_index,
    char_diff,
    char_valid,
    max_diff,
    min_continue,
    min_counter,
    all_done,
    char_index_o,
    recognize_done);
  input clk;
  input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input char_valid;
  input [15:0]max_diff;
  input [3:0]min_continue;
  input [7:0]min_counter;
  input all_done;
  output [3:0]char_index_o;
  output recognize_done;

  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire all_done;
  wire [15:0]char_diff;
  wire [3:0]char_index;
  wire [3:0]char_index_o;
  wire \char_index_o[3]_i_10_n_0 ;
  wire \char_index_o[3]_i_11_n_0 ;
  wire \char_index_o[3]_i_12_n_0 ;
  wire \char_index_o[3]_i_13_n_0 ;
  wire \char_index_o[3]_i_14_n_0 ;
  wire \char_index_o[3]_i_15_n_0 ;
  wire \char_index_o[3]_i_16_n_0 ;
  wire \char_index_o[3]_i_17_n_0 ;
  wire \char_index_o[3]_i_18_n_0 ;
  wire \char_index_o[3]_i_19_n_0 ;
  wire \char_index_o[3]_i_1_n_0 ;
  wire \char_index_o[3]_i_20_n_0 ;
  wire \char_index_o[3]_i_21_n_0 ;
  wire \char_index_o[3]_i_22_n_0 ;
  wire \char_index_o[3]_i_23_n_0 ;
  wire \char_index_o[3]_i_24_n_0 ;
  wire \char_index_o[3]_i_25_n_0 ;
  wire \char_index_o[3]_i_26_n_0 ;
  wire \char_index_o[3]_i_27_n_0 ;
  wire \char_index_o[3]_i_28_n_0 ;
  wire \char_index_o[3]_i_29_n_0 ;
  wire \char_index_o[3]_i_2_n_0 ;
  wire \char_index_o[3]_i_30_n_0 ;
  wire \char_index_o[3]_i_31_n_0 ;
  wire \char_index_o[3]_i_32_n_0 ;
  wire \char_index_o[3]_i_33_n_0 ;
  wire \char_index_o[3]_i_5_n_0 ;
  wire \char_index_o[3]_i_7_n_0 ;
  wire \char_index_o[3]_i_8_n_0 ;
  wire \char_index_o_reg[3]_i_4_n_1 ;
  wire \char_index_o_reg[3]_i_4_n_2 ;
  wire \char_index_o_reg[3]_i_4_n_3 ;
  wire \char_index_o_reg[3]_i_6_n_1 ;
  wire \char_index_o_reg[3]_i_6_n_2 ;
  wire \char_index_o_reg[3]_i_6_n_3 ;
  wire \char_index_o_reg[3]_i_9_n_0 ;
  wire \char_index_o_reg[3]_i_9_n_1 ;
  wire \char_index_o_reg[3]_i_9_n_2 ;
  wire \char_index_o_reg[3]_i_9_n_3 ;
  wire [3:0]char_last;
  wire \char_last[3]_i_1_n_0 ;
  wire char_valid;
  wire clk;
  wire count_continue_done1;
  wire count_continue_done11_in;
  wire count_continue_done_i_1_n_0;
  wire count_continue_done_i_2_n_0;
  wire count_continue_done_reg_n_0;
  wire count_done_i_1_n_0;
  wire count_done_reg_n_0;
  wire [7:0]counter_char;
  wire \counter_char[0][0]_i_1_n_0 ;
  wire \counter_char[0][1]_i_1_n_0 ;
  wire \counter_char[0][2]_i_1_n_0 ;
  wire \counter_char[0][3]_i_10_n_0 ;
  wire \counter_char[0][3]_i_11_n_0 ;
  wire \counter_char[0][3]_i_12_n_0 ;
  wire \counter_char[0][3]_i_13_n_0 ;
  wire \counter_char[0][3]_i_14_n_0 ;
  wire \counter_char[0][3]_i_15_n_0 ;
  wire \counter_char[0][3]_i_16_n_0 ;
  wire \counter_char[0][3]_i_17_n_0 ;
  wire \counter_char[0][3]_i_1_n_0 ;
  wire \counter_char[0][3]_i_6_n_0 ;
  wire \counter_char[0][3]_i_7_n_0 ;
  wire \counter_char[0][3]_i_8_n_0 ;
  wire \counter_char[0][3]_i_9_n_0 ;
  wire \counter_char[0][4]_i_1_n_0 ;
  wire \counter_char[0][4]_i_3_n_0 ;
  wire \counter_char[0][4]_i_4_n_0 ;
  wire \counter_char[0][4]_i_5_n_0 ;
  wire \counter_char[0][4]_i_6_n_0 ;
  wire \counter_char[0][5]_i_1_n_0 ;
  wire \counter_char[0][5]_i_3_n_0 ;
  wire \counter_char[0][5]_i_4_n_0 ;
  wire \counter_char[0][5]_i_5_n_0 ;
  wire \counter_char[0][5]_i_6_n_0 ;
  wire \counter_char[0][6]_i_1_n_0 ;
  wire \counter_char[0][7]_i_10_n_0 ;
  wire \counter_char[0][7]_i_11_n_0 ;
  wire \counter_char[0][7]_i_12_n_0 ;
  wire \counter_char[0][7]_i_13_n_0 ;
  wire \counter_char[0][7]_i_14_n_0 ;
  wire \counter_char[0][7]_i_1_n_0 ;
  wire \counter_char[0][7]_i_2_n_0 ;
  wire \counter_char[0][7]_i_3_n_0 ;
  wire \counter_char[0][7]_i_4_n_0 ;
  wire \counter_char[0][7]_i_7_n_0 ;
  wire \counter_char[0][7]_i_8_n_0 ;
  wire \counter_char[0][7]_i_9_n_0 ;
  wire \counter_char[10][0]_i_1_n_0 ;
  wire \counter_char[10][7]_i_1_n_0 ;
  wire \counter_char[10][7]_i_2_n_0 ;
  wire \counter_char[1][0]_i_1_n_0 ;
  wire \counter_char[1][7]_i_1_n_0 ;
  wire \counter_char[1][7]_i_2_n_0 ;
  wire \counter_char[1][7]_i_3_n_0 ;
  wire \counter_char[2][0]_i_1_n_0 ;
  wire \counter_char[2][7]_i_1_n_0 ;
  wire \counter_char[2][7]_i_2_n_0 ;
  wire \counter_char[2][7]_i_3_n_0 ;
  wire \counter_char[3][0]_i_1_n_0 ;
  wire \counter_char[3][7]_i_1_n_0 ;
  wire \counter_char[3][7]_i_2_n_0 ;
  wire \counter_char[3][7]_i_3_n_0 ;
  wire \counter_char[4][0]_i_1_n_0 ;
  wire \counter_char[4][7]_i_1_n_0 ;
  wire \counter_char[4][7]_i_2_n_0 ;
  wire \counter_char[5][0]_i_1_n_0 ;
  wire \counter_char[5][7]_i_1_n_0 ;
  wire \counter_char[5][7]_i_2_n_0 ;
  wire \counter_char[6][0]_i_1_n_0 ;
  wire \counter_char[6][7]_i_1_n_0 ;
  wire \counter_char[6][7]_i_2_n_0 ;
  wire \counter_char[7][0]_i_1_n_0 ;
  wire \counter_char[7][7]_i_1_n_0 ;
  wire \counter_char[7][7]_i_2_n_0 ;
  wire \counter_char[8][0]_i_1_n_0 ;
  wire \counter_char[8][7]_i_1_n_0 ;
  wire \counter_char[8][7]_i_2_n_0 ;
  wire \counter_char[9][0]_i_1_n_0 ;
  wire \counter_char[9][7]_i_1_n_0 ;
  wire \counter_char[9][7]_i_2_n_0 ;
  wire [7:0]\counter_char_reg[0]__0 ;
  wire [7:0]\counter_char_reg[10]__0 ;
  wire [7:0]\counter_char_reg[1]__0 ;
  wire [7:0]\counter_char_reg[2]__0 ;
  wire [7:0]\counter_char_reg[3]__0 ;
  wire [7:0]\counter_char_reg[4]__0 ;
  wire [7:0]\counter_char_reg[5]__0 ;
  wire [7:0]\counter_char_reg[6]__0 ;
  wire [7:0]\counter_char_reg[7]__0 ;
  wire [7:0]\counter_char_reg[8]__0 ;
  wire [7:0]\counter_char_reg[9]__0 ;
  wire \counter_continue[0]_i_1_n_0 ;
  wire \counter_continue[1]_i_1_n_0 ;
  wire \counter_continue[2]_i_1_n_0 ;
  wire \counter_continue[3]_i_1_n_0 ;
  wire \counter_continue[3]_i_2_n_0 ;
  wire \counter_continue[3]_i_3_n_0 ;
  wire \counter_continue[3]_i_4_n_0 ;
  wire \counter_continue_reg_n_0_[0] ;
  wire \counter_continue_reg_n_0_[1] ;
  wire \counter_continue_reg_n_0_[2] ;
  wire \counter_continue_reg_n_0_[3] ;
  wire [15:0]max_diff;
  wire [3:0]min_continue;
  wire [7:0]min_counter;
  wire p_0_in;
  wire recognize_done;
  wire recognize_done_i_1_n_0;
  wire rst_n;
  wire [1:0]state_next;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0057)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(count_done_reg_n_0),
        .I2(count_continue_done_reg_n_0),
        .I3(state_reg[1]),
        .O(state_next[0]));
  LUT5 #(
    .INIT(32'h33304444)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(all_done),
        .I1(state_reg[1]),
        .I2(count_continue_done_reg_n_0),
        .I3(count_done_reg_n_0),
        .I4(state_reg[0]),
        .O(state_next[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "COUNT:01,DONE:10,IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT6 #(
    .INIT(64'h40000000FF000000)) 
    \char_index_o[3]_i_1 
       (.I0(\char_index_o[3]_i_2_n_0 ),
        .I1(count_continue_done1),
        .I2(count_continue_done11_in),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\char_index_o[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_10 
       (.I0(max_diff[14]),
        .I1(char_diff[14]),
        .I2(char_diff[15]),
        .I3(max_diff[15]),
        .O(\char_index_o[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_11 
       (.I0(max_diff[12]),
        .I1(char_diff[12]),
        .I2(char_diff[13]),
        .I3(max_diff[13]),
        .O(\char_index_o[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_12 
       (.I0(max_diff[10]),
        .I1(char_diff[10]),
        .I2(char_diff[11]),
        .I3(max_diff[11]),
        .O(\char_index_o[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_13 
       (.I0(max_diff[8]),
        .I1(char_diff[8]),
        .I2(char_diff[9]),
        .I3(max_diff[9]),
        .O(\char_index_o[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_14 
       (.I0(char_diff[15]),
        .I1(max_diff[15]),
        .I2(char_diff[14]),
        .I3(max_diff[14]),
        .O(\char_index_o[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_15 
       (.I0(char_diff[13]),
        .I1(max_diff[13]),
        .I2(char_diff[12]),
        .I3(max_diff[12]),
        .O(\char_index_o[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_16 
       (.I0(char_diff[11]),
        .I1(max_diff[11]),
        .I2(char_diff[10]),
        .I3(max_diff[10]),
        .O(\char_index_o[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_17 
       (.I0(char_diff[9]),
        .I1(max_diff[9]),
        .I2(char_diff[8]),
        .I3(max_diff[8]),
        .O(\char_index_o[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_18 
       (.I0(counter_char[6]),
        .I1(min_counter[6]),
        .I2(counter_char[7]),
        .I3(min_counter[7]),
        .O(\char_index_o[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_19 
       (.I0(counter_char[4]),
        .I1(min_counter[4]),
        .I2(counter_char[5]),
        .I3(min_counter[5]),
        .O(\char_index_o[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \char_index_o[3]_i_2 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(min_continue[3]),
        .I2(\char_index_o[3]_i_7_n_0 ),
        .O(\char_index_o[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_20 
       (.I0(counter_char[2]),
        .I1(min_counter[2]),
        .I2(counter_char[3]),
        .I3(min_counter[3]),
        .O(\char_index_o[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    \char_index_o[3]_i_21 
       (.I0(counter_char[0]),
        .I1(min_counter[0]),
        .I2(counter_char[1]),
        .I3(min_counter[1]),
        .O(\char_index_o[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_22 
       (.I0(counter_char[7]),
        .I1(min_counter[7]),
        .I2(counter_char[6]),
        .I3(min_counter[6]),
        .O(\char_index_o[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_23 
       (.I0(counter_char[5]),
        .I1(min_counter[5]),
        .I2(counter_char[4]),
        .I3(min_counter[4]),
        .O(\char_index_o[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_24 
       (.I0(counter_char[3]),
        .I1(min_counter[3]),
        .I2(counter_char[2]),
        .I3(min_counter[2]),
        .O(\char_index_o[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_25 
       (.I0(counter_char[1]),
        .I1(min_counter[1]),
        .I2(counter_char[0]),
        .I3(min_counter[0]),
        .O(\char_index_o[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_26 
       (.I0(max_diff[6]),
        .I1(char_diff[6]),
        .I2(char_diff[7]),
        .I3(max_diff[7]),
        .O(\char_index_o[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_27 
       (.I0(max_diff[4]),
        .I1(char_diff[4]),
        .I2(char_diff[5]),
        .I3(max_diff[5]),
        .O(\char_index_o[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_28 
       (.I0(max_diff[2]),
        .I1(char_diff[2]),
        .I2(char_diff[3]),
        .I3(max_diff[3]),
        .O(\char_index_o[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \char_index_o[3]_i_29 
       (.I0(max_diff[0]),
        .I1(char_diff[0]),
        .I2(char_diff[1]),
        .I3(max_diff[1]),
        .O(\char_index_o[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \char_index_o[3]_i_3 
       (.I0(char_last[3]),
        .I1(char_index[3]),
        .I2(char_last[2]),
        .I3(char_index[2]),
        .I4(\char_index_o[3]_i_8_n_0 ),
        .O(count_continue_done1));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_30 
       (.I0(char_diff[7]),
        .I1(max_diff[7]),
        .I2(char_diff[6]),
        .I3(max_diff[6]),
        .O(\char_index_o[3]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_31 
       (.I0(char_diff[5]),
        .I1(max_diff[5]),
        .I2(char_diff[4]),
        .I3(max_diff[4]),
        .O(\char_index_o[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_32 
       (.I0(char_diff[3]),
        .I1(max_diff[3]),
        .I2(char_diff[2]),
        .I3(max_diff[2]),
        .O(\char_index_o[3]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_33 
       (.I0(char_diff[1]),
        .I1(max_diff[1]),
        .I2(char_diff[0]),
        .I3(max_diff[0]),
        .O(\char_index_o[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \char_index_o[3]_i_5 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(char_valid),
        .O(\char_index_o[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    \char_index_o[3]_i_7 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(min_continue[2]),
        .I2(min_continue[1]),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(min_continue[0]),
        .I5(\counter_continue_reg_n_0_[0] ),
        .O(\char_index_o[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_o[3]_i_8 
       (.I0(char_index[0]),
        .I1(char_last[0]),
        .I2(char_index[1]),
        .I3(char_last[1]),
        .O(\char_index_o[3]_i_8_n_0 ));
  FDRE \char_index_o_reg[0] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_index_o[0]),
        .R(1'b0));
  FDRE \char_index_o_reg[1] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_index_o[1]),
        .R(1'b0));
  FDRE \char_index_o_reg[2] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_index_o[2]),
        .R(1'b0));
  FDRE \char_index_o_reg[3] 
       (.C(clk),
        .CE(\char_index_o[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_index_o[3]),
        .R(1'b0));
  CARRY4 \char_index_o_reg[3]_i_4 
       (.CI(\char_index_o_reg[3]_i_9_n_0 ),
        .CO({count_continue_done11_in,\char_index_o_reg[3]_i_4_n_1 ,\char_index_o_reg[3]_i_4_n_2 ,\char_index_o_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_10_n_0 ,\char_index_o[3]_i_11_n_0 ,\char_index_o[3]_i_12_n_0 ,\char_index_o[3]_i_13_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_14_n_0 ,\char_index_o[3]_i_15_n_0 ,\char_index_o[3]_i_16_n_0 ,\char_index_o[3]_i_17_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_6 
       (.CI(1'b0),
        .CO({p_0_in,\char_index_o_reg[3]_i_6_n_1 ,\char_index_o_reg[3]_i_6_n_2 ,\char_index_o_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_18_n_0 ,\char_index_o[3]_i_19_n_0 ,\char_index_o[3]_i_20_n_0 ,\char_index_o[3]_i_21_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_22_n_0 ,\char_index_o[3]_i_23_n_0 ,\char_index_o[3]_i_24_n_0 ,\char_index_o[3]_i_25_n_0 }));
  CARRY4 \char_index_o_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\char_index_o_reg[3]_i_9_n_0 ,\char_index_o_reg[3]_i_9_n_1 ,\char_index_o_reg[3]_i_9_n_2 ,\char_index_o_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\char_index_o[3]_i_26_n_0 ,\char_index_o[3]_i_27_n_0 ,\char_index_o[3]_i_28_n_0 ,\char_index_o[3]_i_29_n_0 }),
        .O(\NLW_char_index_o_reg[3]_i_9_O_UNCONNECTED [3:0]),
        .S({\char_index_o[3]_i_30_n_0 ,\char_index_o[3]_i_31_n_0 ,\char_index_o[3]_i_32_n_0 ,\char_index_o[3]_i_33_n_0 }));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    \char_last[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(count_continue_done1),
        .I3(count_continue_done11_in),
        .I4(state_reg[0]),
        .I5(char_valid),
        .O(\char_last[3]_i_1_n_0 ));
  FDRE \char_last_reg[0] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[0]),
        .Q(char_last[0]),
        .R(1'b0));
  FDRE \char_last_reg[1] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[1]),
        .Q(char_last[1]),
        .R(1'b0));
  FDRE \char_last_reg[2] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[2]),
        .Q(char_last[2]),
        .R(1'b0));
  FDRE \char_last_reg[3] 
       (.C(clk),
        .CE(\char_last[3]_i_1_n_0 ),
        .D(char_index[3]),
        .Q(char_last[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    count_continue_done_i_1
       (.I0(state_reg[1]),
        .I1(count_continue_done_i_2_n_0),
        .I2(\char_index_o[3]_i_2_n_0 ),
        .I3(\counter_continue[3]_i_2_n_0 ),
        .I4(count_continue_done_reg_n_0),
        .O(count_continue_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    count_continue_done_i_2
       (.I0(state_reg[0]),
        .I1(count_continue_done11_in),
        .I2(count_continue_done1),
        .O(count_continue_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_continue_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_continue_done_i_1_n_0),
        .Q(count_continue_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFF4CFF00004000)) 
    count_done_i_1
       (.I0(p_0_in),
        .I1(state_reg[0]),
        .I2(char_valid),
        .I3(rst_n),
        .I4(state_reg[1]),
        .I5(count_done_reg_n_0),
        .O(count_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_done_i_1_n_0),
        .Q(count_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[0][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[0][7]_i_2_n_0 ),
        .I5(\counter_char_reg[0]__0 [0]),
        .O(\counter_char[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][1]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78000000)) 
    \counter_char[0][2]_i_1 
       (.I0(counter_char[1]),
        .I1(counter_char[0]),
        .I2(counter_char[2]),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \counter_char[0][3]_i_1 
       (.I0(counter_char[2]),
        .I1(counter_char[0]),
        .I2(counter_char[1]),
        .I3(counter_char[3]),
        .I4(state_reg[0]),
        .I5(p_0_in),
        .O(\counter_char[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_10 
       (.I0(\counter_char_reg[5]__0 [0]),
        .I1(\counter_char_reg[7]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [0]),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_11 
       (.I0(\counter_char_reg[9]__0 [0]),
        .I1(\counter_char_reg[8]__0 [0]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_12 
       (.I0(\counter_char_reg[1]__0 [1]),
        .I1(\counter_char_reg[3]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [1]),
        .I5(\counter_char_reg[2]__0 [1]),
        .O(\counter_char[0][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_13 
       (.I0(\counter_char_reg[5]__0 [1]),
        .I1(\counter_char_reg[7]__0 [1]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [1]),
        .I5(\counter_char_reg[6]__0 [1]),
        .O(\counter_char[0][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_14 
       (.I0(\counter_char_reg[9]__0 [1]),
        .I1(\counter_char_reg[8]__0 [1]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_15 
       (.I0(\counter_char_reg[1]__0 [3]),
        .I1(\counter_char_reg[3]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [3]),
        .I5(\counter_char_reg[2]__0 [3]),
        .O(\counter_char[0][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_16 
       (.I0(\counter_char_reg[5]__0 [3]),
        .I1(\counter_char_reg[7]__0 [3]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [3]),
        .I5(\counter_char_reg[6]__0 [3]),
        .O(\counter_char[0][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_17 
       (.I0(\counter_char_reg[9]__0 [3]),
        .I1(\counter_char_reg[8]__0 [3]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_2 
       (.I0(\counter_char[0][3]_i_6_n_0 ),
        .I1(\counter_char[0][3]_i_7_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_8_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [2]),
        .O(counter_char[2]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_3 
       (.I0(\counter_char[0][3]_i_9_n_0 ),
        .I1(\counter_char[0][3]_i_10_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_11_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(counter_char[0]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_4 
       (.I0(\counter_char[0][3]_i_12_n_0 ),
        .I1(\counter_char[0][3]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [1]),
        .O(counter_char[1]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][3]_i_5 
       (.I0(\counter_char[0][3]_i_15_n_0 ),
        .I1(\counter_char[0][3]_i_16_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][3]_i_17_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [3]),
        .O(counter_char[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_6 
       (.I0(\counter_char_reg[1]__0 [2]),
        .I1(\counter_char_reg[3]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [2]),
        .I5(\counter_char_reg[2]__0 [2]),
        .O(\counter_char[0][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_7 
       (.I0(\counter_char_reg[5]__0 [2]),
        .I1(\counter_char_reg[7]__0 [2]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [2]),
        .I5(\counter_char_reg[6]__0 [2]),
        .O(\counter_char[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][3]_i_8 
       (.I0(\counter_char_reg[9]__0 [2]),
        .I1(\counter_char_reg[8]__0 [2]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][3]_i_9 
       (.I0(\counter_char_reg[1]__0 [0]),
        .I1(\counter_char_reg[3]__0 [0]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [0]),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[0][3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][4]_i_1 
       (.I0(counter_char[4]),
        .I1(\counter_char[0][4]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][4]_i_2 
       (.I0(\counter_char[0][4]_i_4_n_0 ),
        .I1(\counter_char[0][4]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][4]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [4]),
        .O(counter_char[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_char[0][4]_i_3 
       (.I0(counter_char[3]),
        .I1(counter_char[1]),
        .I2(counter_char[0]),
        .I3(counter_char[2]),
        .O(\counter_char[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_4 
       (.I0(\counter_char_reg[1]__0 [4]),
        .I1(\counter_char_reg[3]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [4]),
        .I5(\counter_char_reg[2]__0 [4]),
        .O(\counter_char[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][4]_i_5 
       (.I0(\counter_char_reg[5]__0 [4]),
        .I1(\counter_char_reg[7]__0 [4]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [4]),
        .I5(\counter_char_reg[6]__0 [4]),
        .O(\counter_char[0][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][4]_i_6 
       (.I0(\counter_char_reg[9]__0 [4]),
        .I1(\counter_char_reg[8]__0 [4]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][5]_i_1 
       (.I0(counter_char[5]),
        .I1(\counter_char[0][5]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][5]_i_2 
       (.I0(\counter_char[0][5]_i_4_n_0 ),
        .I1(\counter_char[0][5]_i_5_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][5]_i_6_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [5]),
        .O(counter_char[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_char[0][5]_i_3 
       (.I0(counter_char[4]),
        .I1(counter_char[2]),
        .I2(counter_char[0]),
        .I3(counter_char[1]),
        .I4(counter_char[3]),
        .O(\counter_char[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_4 
       (.I0(\counter_char_reg[1]__0 [5]),
        .I1(\counter_char_reg[3]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [5]),
        .I5(\counter_char_reg[2]__0 [5]),
        .O(\counter_char[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][5]_i_5 
       (.I0(\counter_char_reg[5]__0 [5]),
        .I1(\counter_char_reg[7]__0 [5]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [5]),
        .I5(\counter_char_reg[6]__0 [5]),
        .O(\counter_char[0][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][5]_i_6 
       (.I0(\counter_char_reg[9]__0 [5]),
        .I1(\counter_char_reg[8]__0 [5]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \counter_char[0][6]_i_1 
       (.I0(counter_char[6]),
        .I1(\counter_char[0][7]_i_7_n_0 ),
        .I2(state_reg[0]),
        .I3(p_0_in),
        .O(\counter_char[0][6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[0][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[0][7]_i_2_n_0 ),
        .O(\counter_char[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_10 
       (.I0(\counter_char_reg[9]__0 [7]),
        .I1(\counter_char_reg[8]__0 [7]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_char[0][7]_i_11 
       (.I0(char_index[1]),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .O(\counter_char[0][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_12 
       (.I0(\counter_char_reg[1]__0 [6]),
        .I1(\counter_char_reg[3]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [6]),
        .I5(\counter_char_reg[2]__0 [6]),
        .O(\counter_char[0][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_13 
       (.I0(\counter_char_reg[5]__0 [6]),
        .I1(\counter_char_reg[7]__0 [6]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [6]),
        .I5(\counter_char_reg[6]__0 [6]),
        .O(\counter_char[0][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000AAA0A000CCC0C)) 
    \counter_char[0][7]_i_14 
       (.I0(\counter_char_reg[9]__0 [6]),
        .I1(\counter_char_reg[8]__0 [6]),
        .I2(char_index[2]),
        .I3(char_index[3]),
        .I4(char_index[1]),
        .I5(char_index[0]),
        .O(\counter_char[0][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[0][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[0][7]_i_4_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \counter_char[0][7]_i_3 
       (.I0(counter_char[7]),
        .I1(counter_char[6]),
        .I2(\counter_char[0][7]_i_7_n_0 ),
        .I3(state_reg[0]),
        .I4(p_0_in),
        .O(\counter_char[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter_char[0][7]_i_4 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_5 
       (.I0(\counter_char[0][7]_i_8_n_0 ),
        .I1(\counter_char[0][7]_i_9_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_10_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [7]),
        .O(counter_char[7]));
  LUT6 #(
    .INIT(64'hFCFCFA0AFC0CFA0A)) 
    \counter_char[0][7]_i_6 
       (.I0(\counter_char[0][7]_i_12_n_0 ),
        .I1(\counter_char[0][7]_i_13_n_0 ),
        .I2(char_index[3]),
        .I3(\counter_char[0][7]_i_14_n_0 ),
        .I4(\counter_char[0][7]_i_11_n_0 ),
        .I5(\counter_char_reg[10]__0 [6]),
        .O(counter_char[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_char[0][7]_i_7 
       (.I0(counter_char[5]),
        .I1(counter_char[3]),
        .I2(counter_char[1]),
        .I3(counter_char[0]),
        .I4(counter_char[2]),
        .I5(counter_char[4]),
        .O(\counter_char[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_8 
       (.I0(\counter_char_reg[1]__0 [7]),
        .I1(\counter_char_reg[3]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[0]__0 [7]),
        .I5(\counter_char_reg[2]__0 [7]),
        .O(\counter_char[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \counter_char[0][7]_i_9 
       (.I0(\counter_char_reg[5]__0 [7]),
        .I1(\counter_char_reg[7]__0 [7]),
        .I2(char_index[0]),
        .I3(char_index[1]),
        .I4(\counter_char_reg[4]__0 [7]),
        .I5(\counter_char_reg[6]__0 [7]),
        .O(\counter_char[0][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[10][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[10][7]_i_2_n_0 ),
        .I5(\counter_char_reg[10]__0 [0]),
        .O(\counter_char[10][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[10][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[10][7]_i_2_n_0 ),
        .O(\counter_char[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[10][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[2][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[1][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[1][7]_i_2_n_0 ),
        .I5(\counter_char_reg[1]__0 [0]),
        .O(\counter_char[1][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[1][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[1][7]_i_2_n_0 ),
        .O(\counter_char[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[1][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[1][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[1][7]_i_3 
       (.I0(char_index[0]),
        .I1(char_index[1]),
        .O(\counter_char[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[2][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[2][7]_i_2_n_0 ),
        .I5(\counter_char_reg[2]__0 [0]),
        .O(\counter_char[2][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[2][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[2][7]_i_2_n_0 ),
        .O(\counter_char[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080008)) 
    \counter_char[2][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(\counter_char[2][7]_i_3_n_0 ),
        .I2(char_index[3]),
        .I3(char_index[2]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_char[2][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[3][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[3][7]_i_2_n_0 ),
        .I5(\counter_char_reg[3]__0 [0]),
        .O(\counter_char[3][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[3][7]_i_2_n_0 ),
        .O(\counter_char[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \counter_char[3][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[3][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[3][7]_i_3 
       (.I0(char_index[1]),
        .I1(char_index[0]),
        .O(\counter_char[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[4][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[4][7]_i_2_n_0 ),
        .I5(\counter_char_reg[4]__0 [0]),
        .O(\counter_char[4][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[4][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[4][7]_i_2_n_0 ),
        .O(\counter_char[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[4][7]_i_2 
       (.I0(\counter_char[0][7]_i_4_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[5][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[5][7]_i_2_n_0 ),
        .I5(\counter_char_reg[5]__0 [0]),
        .O(\counter_char[5][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[5][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[5][7]_i_2_n_0 ),
        .O(\counter_char[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[5][7]_i_2 
       (.I0(\counter_char[1][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[6][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[6][7]_i_2_n_0 ),
        .I5(\counter_char_reg[6]__0 [0]),
        .O(\counter_char[6][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[6][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[6][7]_i_2_n_0 ),
        .O(\counter_char[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[6][7]_i_2 
       (.I0(\counter_char[2][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[7][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[7][7]_i_2_n_0 ),
        .I5(\counter_char_reg[7]__0 [0]),
        .O(\counter_char[7][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[7][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[7][7]_i_2_n_0 ),
        .O(\counter_char[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[7][7]_i_2 
       (.I0(\counter_char[3][7]_i_3_n_0 ),
        .I1(char_index[3]),
        .I2(char_index[2]),
        .I3(\char_index_o[3]_i_5_n_0 ),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[8][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[8][7]_i_2_n_0 ),
        .I5(\counter_char_reg[8]__0 [0]),
        .O(\counter_char[8][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[8][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[8][7]_i_2_n_0 ),
        .O(\counter_char[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[8][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[0][7]_i_4_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \counter_char[9][0]_i_1 
       (.I0(state_reg[1]),
        .I1(p_0_in),
        .I2(state_reg[0]),
        .I3(counter_char[0]),
        .I4(\counter_char[9][7]_i_2_n_0 ),
        .I5(\counter_char_reg[9]__0 [0]),
        .O(\counter_char[9][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_char[9][7]_i_1 
       (.I0(state_reg[1]),
        .I1(\counter_char[9][7]_i_2_n_0 ),
        .O(\counter_char[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \counter_char[9][7]_i_2 
       (.I0(\char_index_o[3]_i_5_n_0 ),
        .I1(char_index[2]),
        .I2(\counter_char[1][7]_i_3_n_0 ),
        .I3(char_index[3]),
        .I4(state_reg[0]),
        .I5(rst_n),
        .O(\counter_char[9][7]_i_2_n_0 ));
  FDRE \counter_char_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[0][0]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[0][1] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [1]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][2] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [2]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][3] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [3]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][4] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [4]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][5] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [5]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][6] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[0]__0 [6]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[0][7] 
       (.C(clk),
        .CE(\counter_char[0][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[0]__0 [7]),
        .R(\counter_char[0][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[10][0]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[10][1] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [1]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][2] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [2]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][3] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [3]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][4] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [4]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][5] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [5]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][6] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[10]__0 [6]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[10][7] 
       (.C(clk),
        .CE(\counter_char[10][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[10]__0 [7]),
        .R(\counter_char[10][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[1][0]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[1][1] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [1]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][2] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [2]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][3] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [3]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][4] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [4]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][5] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [5]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][6] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[1]__0 [6]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[1][7] 
       (.C(clk),
        .CE(\counter_char[1][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[1]__0 [7]),
        .R(\counter_char[1][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[2][0]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[2][1] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [1]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][2] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [2]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][3] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [3]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][4] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [4]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][5] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [5]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][6] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[2]__0 [6]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[2][7] 
       (.C(clk),
        .CE(\counter_char[2][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[2]__0 [7]),
        .R(\counter_char[2][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[3][0]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[3][1] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [1]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][2] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [2]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][3] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [3]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][4] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [4]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][5] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [5]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][6] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[3]__0 [6]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[3][7] 
       (.C(clk),
        .CE(\counter_char[3][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[3]__0 [7]),
        .R(\counter_char[3][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[4][0]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[4][1] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [1]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][2] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [2]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][3] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [3]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][4] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [4]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][5] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [5]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][6] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[4]__0 [6]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[4][7] 
       (.C(clk),
        .CE(\counter_char[4][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[4]__0 [7]),
        .R(\counter_char[4][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[5][0]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[5][1] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [1]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][2] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [2]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][3] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [3]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][4] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [4]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][5] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [5]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][6] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[5]__0 [6]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[5][7] 
       (.C(clk),
        .CE(\counter_char[5][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[5]__0 [7]),
        .R(\counter_char[5][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[6][0]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[6][1] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [1]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][2] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [2]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][3] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [3]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][4] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [4]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][5] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [5]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][6] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[6]__0 [6]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[6][7] 
       (.C(clk),
        .CE(\counter_char[6][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[6]__0 [7]),
        .R(\counter_char[6][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[7][0]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[7][1] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [1]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][2] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [2]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][3] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [3]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][4] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [4]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][5] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [5]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][6] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[7]__0 [6]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[7][7] 
       (.C(clk),
        .CE(\counter_char[7][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[7]__0 [7]),
        .R(\counter_char[7][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[8][0]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[8][1] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [1]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][2] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [2]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][3] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [3]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][4] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [4]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][5] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [5]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][6] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[8]__0 [6]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[8][7] 
       (.C(clk),
        .CE(\counter_char[8][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[8]__0 [7]),
        .R(\counter_char[8][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_char[9][0]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [0]),
        .R(1'b0));
  FDRE \counter_char_reg[9][1] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][1]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [1]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][2] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][2]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [2]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][3] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][3]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [3]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][4] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][4]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [4]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][5] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][5]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [5]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][6] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][6]_i_1_n_0 ),
        .Q(\counter_char_reg[9]__0 [6]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  FDRE \counter_char_reg[9][7] 
       (.C(clk),
        .CE(\counter_char[9][7]_i_2_n_0 ),
        .D(\counter_char[0][7]_i_3_n_0 ),
        .Q(\counter_char_reg[9]__0 [7]),
        .R(\counter_char[9][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008888)) 
    \counter_continue[0]_i_1 
       (.I0(count_continue_done11_in),
        .I1(state_reg[0]),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .I4(count_continue_done1),
        .O(\counter_continue[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter_continue[1]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \counter_continue[2]_i_1 
       (.I0(\counter_continue_reg_n_0_[2] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \counter_continue[3]_i_1 
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .O(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h50D0)) 
    \counter_continue[3]_i_2 
       (.I0(state_reg[0]),
        .I1(char_valid),
        .I2(rst_n),
        .I3(state_reg[1]),
        .O(\counter_continue[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \counter_continue[3]_i_3 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(\counter_continue[3]_i_4_n_0 ),
        .O(\counter_continue[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_continue[3]_i_4 
       (.I0(count_continue_done1),
        .I1(count_continue_done11_in),
        .I2(state_reg[0]),
        .I3(\char_index_o[3]_i_2_n_0 ),
        .O(\counter_continue[3]_i_4_n_0 ));
  FDRE \counter_continue_reg[0] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[0]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[0] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[1] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[1]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[1] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[2] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[2]_i_1_n_0 ),
        .Q(\counter_continue_reg_n_0_[2] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  FDRE \counter_continue_reg[3] 
       (.C(clk),
        .CE(\counter_continue[3]_i_2_n_0 ),
        .D(\counter_continue[3]_i_3_n_0 ),
        .Q(\counter_continue_reg_n_0_[3] ),
        .R(\counter_continue[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    recognize_done_i_1
       (.I0(state_reg[1]),
        .I1(rst_n),
        .I2(state_reg[0]),
        .I3(recognize_done),
        .O(recognize_done_i_1_n_0));
  FDRE recognize_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(recognize_done_i_1_n_0),
        .Q(recognize_done),
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
