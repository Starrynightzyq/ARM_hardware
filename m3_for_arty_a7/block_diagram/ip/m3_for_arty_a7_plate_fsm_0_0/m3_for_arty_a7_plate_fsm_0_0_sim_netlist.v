// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jun  9 22:11:54 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               v:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_plate_fsm_0_0/m3_for_arty_a7_plate_fsm_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_plate_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_plate_fsm_0_0,plate_fsm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "plate_fsm,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_plate_fsm_0_0
   (clk,
    rst_n,
    char_index_c_i,
    char_diff_c_i,
    char_valid_c_i,
    char_index_c_o,
    char_diff_c_o,
    char_valid_c_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN m3_for_arty_a7_mig_7series_0_1_ui_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input [31:0]char_index_c_i;
  input [127:0]char_diff_c_i;
  input char_valid_c_i;
  output [31:0]char_index_c_o;
  output [127:0]char_diff_c_o;
  output char_valid_c_o;

  wire [127:0]char_diff_c_i;
  wire [127:0]char_diff_c_o;
  wire [31:0]char_index_c_i;
  wire [31:0]char_index_c_o;
  wire char_valid_c_i;
  wire char_valid_c_o;
  wire clk;
  wire rst_n;

  m3_for_arty_a7_plate_fsm_0_0_plate_fsm inst
       (.char_diff_c_i(char_diff_c_i),
        .char_diff_c_o(char_diff_c_o),
        .char_index_c_i(char_index_c_i),
        .char_index_c_o(char_index_c_o),
        .char_valid_c_i(char_valid_c_i),
        .char_valid_c_o(char_valid_c_o),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "plate_fsm" *) 
module m3_for_arty_a7_plate_fsm_0_0_plate_fsm
   (char_index_c_o,
    char_diff_c_o,
    char_valid_c_o,
    clk,
    rst_n,
    char_valid_c_i,
    char_index_c_i,
    char_diff_c_i);
  output [31:0]char_index_c_o;
  output [127:0]char_diff_c_o;
  output char_valid_c_o;
  input clk;
  input rst_n;
  input char_valid_c_i;
  input [31:0]char_index_c_i;
  input [127:0]char_diff_c_i;

  wire \FSM_sequential_state_now[0]_i_1_n_0 ;
  wire \FSM_sequential_state_now[1]_i_1_n_0 ;
  wire \FSM_sequential_state_now[1]_i_2_n_0 ;
  wire [127:0]char_diff_c_delay;
  wire [127:0]char_diff_c_i;
  wire [127:0]char_diff_c_o;
  wire \char_index_c_delay_reg_n_0_[0] ;
  wire \char_index_c_delay_reg_n_0_[10] ;
  wire \char_index_c_delay_reg_n_0_[11] ;
  wire \char_index_c_delay_reg_n_0_[1] ;
  wire \char_index_c_delay_reg_n_0_[2] ;
  wire \char_index_c_delay_reg_n_0_[3] ;
  wire \char_index_c_delay_reg_n_0_[4] ;
  wire \char_index_c_delay_reg_n_0_[5] ;
  wire \char_index_c_delay_reg_n_0_[6] ;
  wire \char_index_c_delay_reg_n_0_[7] ;
  wire \char_index_c_delay_reg_n_0_[8] ;
  wire \char_index_c_delay_reg_n_0_[9] ;
  wire [31:0]char_index_c_i;
  wire [31:0]char_index_c_o;
  wire \char_index_c_reg[31]_i_1_n_0 ;
  wire char_valid_c_delay;
  wire char_valid_c_i;
  wire char_valid_c_o;
  wire clk;
  wire count_diff;
  wire count_diff1;
  wire count_diff1_carry__0_i_1_n_0;
  wire count_diff1_carry__0_i_2_n_0;
  wire count_diff1_carry__0_i_3_n_0;
  wire count_diff1_carry__0_n_2;
  wire count_diff1_carry__0_n_3;
  wire count_diff1_carry_i_1_n_0;
  wire count_diff1_carry_i_2_n_0;
  wire count_diff1_carry_i_3_n_0;
  wire count_diff1_carry_i_4_n_0;
  wire count_diff1_carry_n_0;
  wire count_diff1_carry_n_1;
  wire count_diff1_carry_n_2;
  wire count_diff1_carry_n_3;
  wire count_diff_i_1_n_0;
  wire count_done_i_1_n_0;
  wire count_done_i_2_n_0;
  wire count_done_i_3_n_0;
  wire count_done_reg_n_0;
  wire [3:0]counter;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [19:0]p_0_in;
  wire [19:0]p_1_in;
  wire rst_n;
  (* RTL_KEEP = "yes" *) wire [1:0]state_now;
  wire [3:0]NLW_count_diff1_carry_O_UNCONNECTED;
  wire [3:3]NLW_count_diff1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_count_diff1_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0011000000F00000)) 
    \FSM_sequential_state_now[0]_i_1 
       (.I0(count_diff),
        .I1(count_done_reg_n_0),
        .I2(char_valid_c_delay),
        .I3(state_now[1]),
        .I4(rst_n),
        .I5(state_now[0]),
        .O(\FSM_sequential_state_now[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_state_now[1]_i_1 
       (.I0(count_done_reg_n_0),
        .I1(rst_n),
        .I2(state_now[1]),
        .I3(state_now[0]),
        .O(\FSM_sequential_state_now[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_now[1]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_now[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "DONE:10,IDLE:00,COUNT_FSM:01" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[1]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[0]_i_1_n_0 ),
        .Q(state_now[0]));
  (* FSM_ENCODED_STATES = "DONE:10,IDLE:00,COUNT_FSM:01" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[1]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[1]_i_1_n_0 ),
        .Q(state_now[1]));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[0]),
        .Q(char_diff_c_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[100]),
        .Q(char_diff_c_delay[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[101]),
        .Q(char_diff_c_delay[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[102]),
        .Q(char_diff_c_delay[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[103]),
        .Q(char_diff_c_delay[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[104]),
        .Q(char_diff_c_delay[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[105]),
        .Q(char_diff_c_delay[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[106]),
        .Q(char_diff_c_delay[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[107]),
        .Q(char_diff_c_delay[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[108]),
        .Q(char_diff_c_delay[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[109]),
        .Q(char_diff_c_delay[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[10]),
        .Q(char_diff_c_delay[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[110]),
        .Q(char_diff_c_delay[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[111]),
        .Q(char_diff_c_delay[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[112]),
        .Q(char_diff_c_delay[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[113]),
        .Q(char_diff_c_delay[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[114]),
        .Q(char_diff_c_delay[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[115]),
        .Q(char_diff_c_delay[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[116]),
        .Q(char_diff_c_delay[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[117]),
        .Q(char_diff_c_delay[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[118]),
        .Q(char_diff_c_delay[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[119]),
        .Q(char_diff_c_delay[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[11]),
        .Q(char_diff_c_delay[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[120]),
        .Q(char_diff_c_delay[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[121]),
        .Q(char_diff_c_delay[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[122]),
        .Q(char_diff_c_delay[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[123]),
        .Q(char_diff_c_delay[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[124]),
        .Q(char_diff_c_delay[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[125]),
        .Q(char_diff_c_delay[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[126]),
        .Q(char_diff_c_delay[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[127]),
        .Q(char_diff_c_delay[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[12]),
        .Q(char_diff_c_delay[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[13]),
        .Q(char_diff_c_delay[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[14]),
        .Q(char_diff_c_delay[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[15]),
        .Q(char_diff_c_delay[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[16]),
        .Q(char_diff_c_delay[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[17]),
        .Q(char_diff_c_delay[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[18]),
        .Q(char_diff_c_delay[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[19]),
        .Q(char_diff_c_delay[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[1]),
        .Q(char_diff_c_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[20]),
        .Q(char_diff_c_delay[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[21]),
        .Q(char_diff_c_delay[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[22]),
        .Q(char_diff_c_delay[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[23]),
        .Q(char_diff_c_delay[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[24]),
        .Q(char_diff_c_delay[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[25]),
        .Q(char_diff_c_delay[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[26]),
        .Q(char_diff_c_delay[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[27]),
        .Q(char_diff_c_delay[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[28]),
        .Q(char_diff_c_delay[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[29]),
        .Q(char_diff_c_delay[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[2]),
        .Q(char_diff_c_delay[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[30]),
        .Q(char_diff_c_delay[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[31]),
        .Q(char_diff_c_delay[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[32]),
        .Q(char_diff_c_delay[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[33]),
        .Q(char_diff_c_delay[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[34]),
        .Q(char_diff_c_delay[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[35]),
        .Q(char_diff_c_delay[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[36]),
        .Q(char_diff_c_delay[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[37]),
        .Q(char_diff_c_delay[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[38]),
        .Q(char_diff_c_delay[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[39]),
        .Q(char_diff_c_delay[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[3]),
        .Q(char_diff_c_delay[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[40]),
        .Q(char_diff_c_delay[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[41]),
        .Q(char_diff_c_delay[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[42]),
        .Q(char_diff_c_delay[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[43]),
        .Q(char_diff_c_delay[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[44]),
        .Q(char_diff_c_delay[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[45]),
        .Q(char_diff_c_delay[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[46]),
        .Q(char_diff_c_delay[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[47]),
        .Q(char_diff_c_delay[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[48]),
        .Q(char_diff_c_delay[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[49]),
        .Q(char_diff_c_delay[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[4]),
        .Q(char_diff_c_delay[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[50]),
        .Q(char_diff_c_delay[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[51]),
        .Q(char_diff_c_delay[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[52]),
        .Q(char_diff_c_delay[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[53]),
        .Q(char_diff_c_delay[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[54]),
        .Q(char_diff_c_delay[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[55]),
        .Q(char_diff_c_delay[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[56]),
        .Q(char_diff_c_delay[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[57]),
        .Q(char_diff_c_delay[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[58]),
        .Q(char_diff_c_delay[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[59]),
        .Q(char_diff_c_delay[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[5]),
        .Q(char_diff_c_delay[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[60]),
        .Q(char_diff_c_delay[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[61]),
        .Q(char_diff_c_delay[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[62]),
        .Q(char_diff_c_delay[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[63]),
        .Q(char_diff_c_delay[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[64]),
        .Q(char_diff_c_delay[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[65]),
        .Q(char_diff_c_delay[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[66]),
        .Q(char_diff_c_delay[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[67]),
        .Q(char_diff_c_delay[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[68]),
        .Q(char_diff_c_delay[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[69]),
        .Q(char_diff_c_delay[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[6]),
        .Q(char_diff_c_delay[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[70]),
        .Q(char_diff_c_delay[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[71]),
        .Q(char_diff_c_delay[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[72]),
        .Q(char_diff_c_delay[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[73]),
        .Q(char_diff_c_delay[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[74]),
        .Q(char_diff_c_delay[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[75]),
        .Q(char_diff_c_delay[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[76]),
        .Q(char_diff_c_delay[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[77]),
        .Q(char_diff_c_delay[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[78]),
        .Q(char_diff_c_delay[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[79]),
        .Q(char_diff_c_delay[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[7]),
        .Q(char_diff_c_delay[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[80]),
        .Q(char_diff_c_delay[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[81]),
        .Q(char_diff_c_delay[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[82]),
        .Q(char_diff_c_delay[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[83]),
        .Q(char_diff_c_delay[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[84]),
        .Q(char_diff_c_delay[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[85]),
        .Q(char_diff_c_delay[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[86]),
        .Q(char_diff_c_delay[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[87]),
        .Q(char_diff_c_delay[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[88]),
        .Q(char_diff_c_delay[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[89]),
        .Q(char_diff_c_delay[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[8]),
        .Q(char_diff_c_delay[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[90]),
        .Q(char_diff_c_delay[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[91]),
        .Q(char_diff_c_delay[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[92]),
        .Q(char_diff_c_delay[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[93]),
        .Q(char_diff_c_delay[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[94]),
        .Q(char_diff_c_delay[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[95]),
        .Q(char_diff_c_delay[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[96]),
        .Q(char_diff_c_delay[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[97]),
        .Q(char_diff_c_delay[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[98]),
        .Q(char_diff_c_delay[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[99]),
        .Q(char_diff_c_delay[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_delay_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff_c_i[9]),
        .Q(char_diff_c_delay[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[0] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[0]),
        .Q(char_diff_c_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[100] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[100]),
        .Q(char_diff_c_o[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[101] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[101]),
        .Q(char_diff_c_o[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[102] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[102]),
        .Q(char_diff_c_o[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[103] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[103]),
        .Q(char_diff_c_o[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[104] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[104]),
        .Q(char_diff_c_o[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[105] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[105]),
        .Q(char_diff_c_o[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[106] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[106]),
        .Q(char_diff_c_o[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[107] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[107]),
        .Q(char_diff_c_o[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[108] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[108]),
        .Q(char_diff_c_o[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[109] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[109]),
        .Q(char_diff_c_o[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[10] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[10]),
        .Q(char_diff_c_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[110] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[110]),
        .Q(char_diff_c_o[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[111] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[111]),
        .Q(char_diff_c_o[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[112] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[112]),
        .Q(char_diff_c_o[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[113] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[113]),
        .Q(char_diff_c_o[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[114] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[114]),
        .Q(char_diff_c_o[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[115] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[115]),
        .Q(char_diff_c_o[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[116] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[116]),
        .Q(char_diff_c_o[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[117] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[117]),
        .Q(char_diff_c_o[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[118] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[118]),
        .Q(char_diff_c_o[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[119] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[119]),
        .Q(char_diff_c_o[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[11] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[11]),
        .Q(char_diff_c_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[120] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[120]),
        .Q(char_diff_c_o[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[121] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[121]),
        .Q(char_diff_c_o[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[122] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[122]),
        .Q(char_diff_c_o[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[123] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[123]),
        .Q(char_diff_c_o[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[124] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[124]),
        .Q(char_diff_c_o[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[125] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[125]),
        .Q(char_diff_c_o[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[126] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[126]),
        .Q(char_diff_c_o[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[127] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[127]),
        .Q(char_diff_c_o[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[12] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[12]),
        .Q(char_diff_c_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[13] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[13]),
        .Q(char_diff_c_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[14] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[14]),
        .Q(char_diff_c_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[15] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[15]),
        .Q(char_diff_c_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[16] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[16]),
        .Q(char_diff_c_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[17] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[17]),
        .Q(char_diff_c_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[18] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[18]),
        .Q(char_diff_c_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[19] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[19]),
        .Q(char_diff_c_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[1] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[1]),
        .Q(char_diff_c_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[20] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[20]),
        .Q(char_diff_c_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[21] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[21]),
        .Q(char_diff_c_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[22] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[22]),
        .Q(char_diff_c_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[23] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[23]),
        .Q(char_diff_c_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[24] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[24]),
        .Q(char_diff_c_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[25] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[25]),
        .Q(char_diff_c_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[26] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[26]),
        .Q(char_diff_c_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[27] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[27]),
        .Q(char_diff_c_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[28] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[28]),
        .Q(char_diff_c_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[29] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[29]),
        .Q(char_diff_c_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[2] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[2]),
        .Q(char_diff_c_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[30] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[30]),
        .Q(char_diff_c_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[31] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[31]),
        .Q(char_diff_c_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[32] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[32]),
        .Q(char_diff_c_o[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[33] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[33]),
        .Q(char_diff_c_o[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[34] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[34]),
        .Q(char_diff_c_o[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[35] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[35]),
        .Q(char_diff_c_o[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[36] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[36]),
        .Q(char_diff_c_o[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[37] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[37]),
        .Q(char_diff_c_o[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[38] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[38]),
        .Q(char_diff_c_o[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[39] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[39]),
        .Q(char_diff_c_o[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[3] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[3]),
        .Q(char_diff_c_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[40] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[40]),
        .Q(char_diff_c_o[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[41] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[41]),
        .Q(char_diff_c_o[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[42] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[42]),
        .Q(char_diff_c_o[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[43] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[43]),
        .Q(char_diff_c_o[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[44] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[44]),
        .Q(char_diff_c_o[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[45] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[45]),
        .Q(char_diff_c_o[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[46] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[46]),
        .Q(char_diff_c_o[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[47] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[47]),
        .Q(char_diff_c_o[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[48] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[48]),
        .Q(char_diff_c_o[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[49] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[49]),
        .Q(char_diff_c_o[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[4] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[4]),
        .Q(char_diff_c_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[50] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[50]),
        .Q(char_diff_c_o[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[51] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[51]),
        .Q(char_diff_c_o[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[52] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[52]),
        .Q(char_diff_c_o[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[53] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[53]),
        .Q(char_diff_c_o[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[54] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[54]),
        .Q(char_diff_c_o[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[55] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[55]),
        .Q(char_diff_c_o[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[56] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[56]),
        .Q(char_diff_c_o[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[57] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[57]),
        .Q(char_diff_c_o[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[58] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[58]),
        .Q(char_diff_c_o[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[59] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[59]),
        .Q(char_diff_c_o[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[5] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[5]),
        .Q(char_diff_c_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[60] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[60]),
        .Q(char_diff_c_o[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[61] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[61]),
        .Q(char_diff_c_o[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[62] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[62]),
        .Q(char_diff_c_o[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[63] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[63]),
        .Q(char_diff_c_o[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[64] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[64]),
        .Q(char_diff_c_o[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[65] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[65]),
        .Q(char_diff_c_o[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[66] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[66]),
        .Q(char_diff_c_o[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[67] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[67]),
        .Q(char_diff_c_o[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[68] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[68]),
        .Q(char_diff_c_o[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[69] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[69]),
        .Q(char_diff_c_o[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[6] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[6]),
        .Q(char_diff_c_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[70] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[70]),
        .Q(char_diff_c_o[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[71] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[71]),
        .Q(char_diff_c_o[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[72] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[72]),
        .Q(char_diff_c_o[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[73] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[73]),
        .Q(char_diff_c_o[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[74] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[74]),
        .Q(char_diff_c_o[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[75] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[75]),
        .Q(char_diff_c_o[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[76] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[76]),
        .Q(char_diff_c_o[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[77] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[77]),
        .Q(char_diff_c_o[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[78] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[78]),
        .Q(char_diff_c_o[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[79] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[79]),
        .Q(char_diff_c_o[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[7] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[7]),
        .Q(char_diff_c_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[80] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[80]),
        .Q(char_diff_c_o[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[81] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[81]),
        .Q(char_diff_c_o[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[82] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[82]),
        .Q(char_diff_c_o[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[83] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[83]),
        .Q(char_diff_c_o[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[84] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[84]),
        .Q(char_diff_c_o[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[85] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[85]),
        .Q(char_diff_c_o[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[86] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[86]),
        .Q(char_diff_c_o[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[87] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[87]),
        .Q(char_diff_c_o[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[88] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[88]),
        .Q(char_diff_c_o[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[89] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[89]),
        .Q(char_diff_c_o[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[8] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[8]),
        .Q(char_diff_c_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[90] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[90]),
        .Q(char_diff_c_o[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[91] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[91]),
        .Q(char_diff_c_o[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[92] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[92]),
        .Q(char_diff_c_o[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[93] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[93]),
        .Q(char_diff_c_o[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[94] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[94]),
        .Q(char_diff_c_o[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[95] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[95]),
        .Q(char_diff_c_o[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[96] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[96]),
        .Q(char_diff_c_o[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[97] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[97]),
        .Q(char_diff_c_o[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[98] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[98]),
        .Q(char_diff_c_o[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[99] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[99]),
        .Q(char_diff_c_o[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_c_reg_reg[9] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(char_diff_c_delay[9]),
        .Q(char_diff_c_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[0]),
        .Q(\char_index_c_delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[10]),
        .Q(\char_index_c_delay_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[11]),
        .Q(\char_index_c_delay_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[12]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[13]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[14]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[15]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[16]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[17]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[18]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[19]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[1]),
        .Q(\char_index_c_delay_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[20]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[21]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[22]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[23]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[24]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[25]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[26]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[27]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[28]),
        .Q(p_0_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[29]),
        .Q(p_0_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[2]),
        .Q(\char_index_c_delay_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[30]),
        .Q(p_0_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[31]),
        .Q(p_0_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[3]),
        .Q(\char_index_c_delay_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[4]),
        .Q(\char_index_c_delay_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[5]),
        .Q(\char_index_c_delay_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[6]),
        .Q(\char_index_c_delay_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[7]),
        .Q(\char_index_c_delay_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[8]),
        .Q(\char_index_c_delay_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_delay_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index_c_i[9]),
        .Q(\char_index_c_delay_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[12] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[13] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[14] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[15] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[16] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[17] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[18] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[19] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[20] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[8]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[21] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[9]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[22] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[10]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[23] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[11]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[24] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[12]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[25] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[13]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[26] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[14]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[27] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[15]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[28] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[16]),
        .Q(p_1_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[29] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[17]),
        .Q(p_1_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[30] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[18]),
        .Q(p_1_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_last_reg[31] 
       (.C(clk),
        .CE(char_valid_c_delay),
        .D(p_0_in[19]),
        .Q(p_1_in[19]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \char_index_c_reg[31]_i_1 
       (.I0(state_now[1]),
        .I1(state_now[0]),
        .O(\char_index_c_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[0] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[0] ),
        .Q(char_index_c_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[10] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[10] ),
        .Q(char_index_c_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[11] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[11] ),
        .Q(char_index_c_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[12] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(char_index_c_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[13] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(char_index_c_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[14] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(char_index_c_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[15] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(char_index_c_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[16] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(char_index_c_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[17] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(char_index_c_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[18] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(char_index_c_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[19] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(char_index_c_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[1] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[1] ),
        .Q(char_index_c_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[20] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(char_index_c_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[21] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(char_index_c_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[22] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(char_index_c_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[23] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(char_index_c_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[24] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(char_index_c_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[25] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(char_index_c_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[26] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(char_index_c_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[27] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(char_index_c_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[28] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(char_index_c_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[29] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(char_index_c_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[2] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[2] ),
        .Q(char_index_c_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[30] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(char_index_c_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[31] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(char_index_c_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[3] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[3] ),
        .Q(char_index_c_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[4] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[4] ),
        .Q(char_index_c_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[5] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[5] ),
        .Q(char_index_c_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[6] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[6] ),
        .Q(char_index_c_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[7] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[7] ),
        .Q(char_index_c_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[8] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[8] ),
        .Q(char_index_c_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_c_reg_reg[9] 
       (.C(clk),
        .CE(\char_index_c_reg[31]_i_1_n_0 ),
        .D(\char_index_c_delay_reg_n_0_[9] ),
        .Q(char_index_c_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    char_valid_c_delay_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid_c_i),
        .Q(char_valid_c_delay),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    char_valid_c_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(\char_index_c_reg[31]_i_1_n_0 ),
        .Q(char_valid_c_o),
        .R(1'b0));
  CARRY4 count_diff1_carry
       (.CI(1'b0),
        .CO({count_diff1_carry_n_0,count_diff1_carry_n_1,count_diff1_carry_n_2,count_diff1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count_diff1_carry_O_UNCONNECTED[3:0]),
        .S({count_diff1_carry_i_1_n_0,count_diff1_carry_i_2_n_0,count_diff1_carry_i_3_n_0,count_diff1_carry_i_4_n_0}));
  CARRY4 count_diff1_carry__0
       (.CI(count_diff1_carry_n_0),
        .CO({NLW_count_diff1_carry__0_CO_UNCONNECTED[3],count_diff1,count_diff1_carry__0_n_2,count_diff1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count_diff1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,count_diff1_carry__0_i_1_n_0,count_diff1_carry__0_i_2_n_0,count_diff1_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count_diff1_carry__0_i_1
       (.I0(p_0_in[19]),
        .I1(p_1_in[19]),
        .I2(p_0_in[18]),
        .I3(p_1_in[18]),
        .O(count_diff1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_diff1_carry__0_i_2
       (.I0(p_0_in[17]),
        .I1(p_1_in[17]),
        .I2(p_0_in[16]),
        .I3(p_1_in[16]),
        .I4(p_1_in[15]),
        .I5(p_0_in[15]),
        .O(count_diff1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_diff1_carry__0_i_3
       (.I0(p_0_in[14]),
        .I1(p_1_in[14]),
        .I2(p_0_in[13]),
        .I3(p_1_in[13]),
        .I4(p_1_in[12]),
        .I5(p_0_in[12]),
        .O(count_diff1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_diff1_carry_i_1
       (.I0(p_0_in[11]),
        .I1(p_1_in[11]),
        .I2(p_0_in[10]),
        .I3(p_1_in[10]),
        .I4(p_1_in[9]),
        .I5(p_0_in[9]),
        .O(count_diff1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_diff1_carry_i_2
       (.I0(p_0_in[8]),
        .I1(p_1_in[8]),
        .I2(p_0_in[7]),
        .I3(p_1_in[7]),
        .I4(p_1_in[6]),
        .I5(p_0_in[6]),
        .O(count_diff1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_diff1_carry_i_3
       (.I0(p_0_in[5]),
        .I1(p_1_in[5]),
        .I2(p_0_in[4]),
        .I3(p_1_in[4]),
        .I4(p_1_in[3]),
        .I5(p_0_in[3]),
        .O(count_diff1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_diff1_carry_i_4
       (.I0(p_0_in[2]),
        .I1(p_1_in[2]),
        .I2(p_0_in[1]),
        .I3(p_1_in[1]),
        .I4(p_1_in[0]),
        .I5(p_0_in[0]),
        .O(count_diff1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hF0400040)) 
    count_diff_i_1
       (.I0(count_diff1),
        .I1(char_valid_c_delay),
        .I2(state_now[0]),
        .I3(state_now[1]),
        .I4(count_diff),
        .O(count_diff_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_diff_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_diff_i_1_n_0),
        .Q(count_diff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00080000000800)) 
    count_done_i_1
       (.I0(count_diff1),
        .I1(count_done_i_2_n_0),
        .I2(count_done_i_3_n_0),
        .I3(state_now[0]),
        .I4(state_now[1]),
        .I5(count_done_reg_n_0),
        .O(count_done_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count_done_i_2
       (.I0(char_valid_c_delay),
        .I1(\counter_reg_n_0_[0] ),
        .O(count_done_i_2_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    count_done_i_3
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(count_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(count_done_i_1_n_0),
        .Q(count_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4040400040404040)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(count_diff1),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(counter[0]));
  LUT5 #(
    .INIT(32'h00006000)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(count_diff1),
        .I3(state_now[0]),
        .I4(state_now[1]),
        .O(counter[1]));
  LUT6 #(
    .INIT(64'h00C0C080C0000000)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(count_diff1),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[0] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(counter[2]));
  LUT3 #(
    .INIT(8'h4F)) 
    \counter[3]_i_1 
       (.I0(state_now[1]),
        .I1(char_valid_c_delay),
        .I2(state_now[0]),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \counter[3]_i_2 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(count_diff1),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(counter[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[3]_i_3 
       (.I0(state_now[0]),
        .I1(state_now[1]),
        .O(\counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ),
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
