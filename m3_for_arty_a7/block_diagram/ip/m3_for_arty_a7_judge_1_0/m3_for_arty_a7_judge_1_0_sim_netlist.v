// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Jul 23 14:20:01 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top m3_for_arty_a7_judge_1_0 -prefix
//               m3_for_arty_a7_judge_1_0_ m3_for_arty_a7_judge_1_0_sim_netlist.v
// Design      : m3_for_arty_a7_judge_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_judge_1_0_judge
   (char_valid_co,
    SR,
    D,
    s_axi_aclk,
    char_valid_c,
    s_axi_aresetn,
    Q,
    axi_araddr,
    \slv_reg2_reg[19] ,
    \slv_reg0_reg[19] ,
    char_index_c);
  output char_valid_co;
  output [0:0]SR;
  output [19:0]D;
  input s_axi_aclk;
  input char_valid_c;
  input s_axi_aresetn;
  input [19:0]Q;
  input [1:0]axi_araddr;
  input [19:0]\slv_reg2_reg[19] ;
  input [19:0]\slv_reg0_reg[19] ;
  input [19:0]char_index_c;

  wire [19:0]D;
  wire [19:0]Q;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [19:0]char_index_c;
  wire [19:0]char_index_co;
  wire char_index_co0_carry__0_n_1;
  wire char_index_co0_carry__0_n_2;
  wire char_index_co0_carry__0_n_3;
  wire char_index_co0_carry_n_0;
  wire char_index_co0_carry_n_1;
  wire char_index_co0_carry_n_2;
  wire char_index_co0_carry_n_3;
  wire [19:0]char_index_last;
  wire char_valid_c;
  wire char_valid_co;
  wire inst_judge_all_n_0;
  wire inst_judge_all_n_1;
  wire inst_judge_all_n_2;
  wire inst_judge_all_n_25;
  wire inst_judge_all_n_26;
  wire inst_judge_all_n_27;
  wire inst_judge_all_n_3;
  wire inst_judge_all_n_4;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [19:0]\slv_reg0_reg[19] ;
  wire [19:0]\slv_reg2_reg[19] ;
  wire [3:0]NLW_char_index_co0_carry_O_UNCONNECTED;
  wire [3:3]NLW_char_index_co0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_char_index_co0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(char_index_last[0]),
        .I1(Q[0]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [0]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(char_index_last[10]),
        .I1(Q[10]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [10]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(char_index_last[11]),
        .I1(Q[11]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [11]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(char_index_last[12]),
        .I1(Q[12]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [12]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(char_index_last[13]),
        .I1(Q[13]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [13]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(char_index_last[14]),
        .I1(Q[14]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [14]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(char_index_last[15]),
        .I1(Q[15]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [15]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(char_index_last[16]),
        .I1(Q[16]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [16]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(char_index_last[17]),
        .I1(Q[17]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [17]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(char_index_last[18]),
        .I1(Q[18]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [18]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(char_index_last[19]),
        .I1(Q[19]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [19]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(char_index_last[1]),
        .I1(Q[1]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [1]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(char_index_last[2]),
        .I1(Q[2]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [2]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(char_index_last[3]),
        .I1(Q[3]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [3]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(char_index_last[4]),
        .I1(Q[4]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [4]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(char_index_last[5]),
        .I1(Q[5]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [5]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(char_index_last[6]),
        .I1(Q[6]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [6]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(char_index_last[7]),
        .I1(Q[7]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [7]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(char_index_last[8]),
        .I1(Q[8]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [8]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(char_index_last[9]),
        .I1(Q[9]),
        .I2(axi_araddr[0]),
        .I3(\slv_reg2_reg[19] [9]),
        .I4(axi_araddr[1]),
        .I5(\slv_reg0_reg[19] [9]),
        .O(D[9]));
  CARRY4 char_index_co0_carry
       (.CI(1'b0),
        .CO({char_index_co0_carry_n_0,char_index_co0_carry_n_1,char_index_co0_carry_n_2,char_index_co0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_char_index_co0_carry_O_UNCONNECTED[3:0]),
        .S({inst_judge_all_n_1,inst_judge_all_n_2,inst_judge_all_n_3,inst_judge_all_n_4}));
  CARRY4 char_index_co0_carry__0
       (.CI(char_index_co0_carry_n_0),
        .CO({NLW_char_index_co0_carry__0_CO_UNCONNECTED[3],char_index_co0_carry__0_n_1,char_index_co0_carry__0_n_2,char_index_co0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_char_index_co0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,inst_judge_all_n_25,inst_judge_all_n_26,inst_judge_all_n_27}));
  FDCE \char_index_co_reg[0] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[0]),
        .Q(char_index_last[0]));
  FDCE \char_index_co_reg[10] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[10]),
        .Q(char_index_last[10]));
  FDCE \char_index_co_reg[11] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[11]),
        .Q(char_index_last[11]));
  FDCE \char_index_co_reg[12] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[12]),
        .Q(char_index_last[12]));
  FDCE \char_index_co_reg[13] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[13]),
        .Q(char_index_last[13]));
  FDCE \char_index_co_reg[14] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[14]),
        .Q(char_index_last[14]));
  FDCE \char_index_co_reg[15] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[15]),
        .Q(char_index_last[15]));
  FDCE \char_index_co_reg[16] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[16]),
        .Q(char_index_last[16]));
  FDCE \char_index_co_reg[17] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[17]),
        .Q(char_index_last[17]));
  FDCE \char_index_co_reg[18] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[18]),
        .Q(char_index_last[18]));
  FDCE \char_index_co_reg[19] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[19]),
        .Q(char_index_last[19]));
  FDCE \char_index_co_reg[1] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[1]),
        .Q(char_index_last[1]));
  FDCE \char_index_co_reg[2] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[2]),
        .Q(char_index_last[2]));
  FDCE \char_index_co_reg[3] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[3]),
        .Q(char_index_last[3]));
  FDCE \char_index_co_reg[4] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[4]),
        .Q(char_index_last[4]));
  FDCE \char_index_co_reg[5] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[5]),
        .Q(char_index_last[5]));
  FDCE \char_index_co_reg[6] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[6]),
        .Q(char_index_last[6]));
  FDCE \char_index_co_reg[7] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[7]),
        .Q(char_index_last[7]));
  FDCE \char_index_co_reg[8] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[8]),
        .Q(char_index_last[8]));
  FDCE \char_index_co_reg[9] 
       (.C(s_axi_aclk),
        .CE(inst_judge_all_n_0),
        .CLR(SR),
        .D(char_index_co[9]),
        .Q(char_index_last[9]));
  FDCE char_valid_co_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(inst_judge_all_n_0),
        .Q(char_valid_co));
  m3_for_arty_a7_judge_1_0_judge_all inst_judge_all
       (.CO(char_index_co0_carry__0_n_1),
        .E(inst_judge_all_n_0),
        .\FSM_sequential_state_reg_reg[1]_0 (SR),
        .Q(Q[3:0]),
        .S({inst_judge_all_n_1,inst_judge_all_n_2,inst_judge_all_n_3,inst_judge_all_n_4}),
        .char_index_c(char_index_c),
        .\char_index_co_reg[19]_0 (char_index_co),
        .\char_index_co_reg[19]_1 (char_index_last),
        .char_valid_c(char_valid_c),
        .char_valid_co_reg({inst_judge_all_n_25,inst_judge_all_n_26,inst_judge_all_n_27}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
endmodule

module m3_for_arty_a7_judge_1_0_judge_all
   (E,
    S,
    \char_index_co_reg[19]_0 ,
    char_valid_co_reg,
    \FSM_sequential_state_reg_reg[1]_0 ,
    s_axi_aclk,
    char_valid_c,
    s_axi_aresetn,
    CO,
    Q,
    \char_index_co_reg[19]_1 ,
    char_index_c);
  output [0:0]E;
  output [3:0]S;
  output [19:0]\char_index_co_reg[19]_0 ;
  output [2:0]char_valid_co_reg;
  output \FSM_sequential_state_reg_reg[1]_0 ;
  input s_axi_aclk;
  input char_valid_c;
  input s_axi_aresetn;
  input [0:0]CO;
  input [3:0]Q;
  input [19:0]\char_index_co_reg[19]_1 ;
  input [19:0]char_index_c;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire [3:0]Q;
  wire [3:0]S;
  wire [19:0]char_index_c;
  wire \char_index_co[19]_i_1_n_0 ;
  wire [19:0]\char_index_co_reg[19]_0 ;
  wire [19:0]\char_index_co_reg[19]_1 ;
  wire char_valid_c;
  wire [2:0]char_valid_co_reg;
  wire char_valid_now;
  wire count_continue_done_i_1_n_0;
  wire count_continue_done_reg_n_0;
  wire [7:0]counter_continue;
  wire \counter_continue0_inferred__0/i__carry_n_0 ;
  wire \counter_continue0_inferred__0/i__carry_n_1 ;
  wire \counter_continue0_inferred__0/i__carry_n_2 ;
  wire \counter_continue0_inferred__0/i__carry_n_3 ;
  wire \counter_continue[4]_i_2_n_0 ;
  wire \counter_continue[5]_i_2_n_0 ;
  wire \counter_continue[7]_i_1_n_0 ;
  wire \counter_continue[7]_i_3_n_0 ;
  wire \counter_continue_reg_n_0_[0] ;
  wire \counter_continue_reg_n_0_[1] ;
  wire \counter_continue_reg_n_0_[2] ;
  wire \counter_continue_reg_n_0_[3] ;
  wire \counter_continue_reg_n_0_[4] ;
  wire \counter_continue_reg_n_0_[5] ;
  wire \counter_continue_reg_n_0_[6] ;
  wire \counter_continue_reg_n_0_[7] ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire recognize_done_i_1_n_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire [3:0]\NLW_counter_continue0_inferred__0/i__carry_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(count_continue_done_reg_n_0),
        .I2(state_reg[1]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(count_continue_done_reg_n_0),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,COUNT:01,DONE:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "IDLE:00,COUNT:01,DONE:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    char_index_co0_carry__0_i_1
       (.I0(\char_index_co_reg[19]_1 [18]),
        .I1(\char_index_co_reg[19]_0 [18]),
        .I2(\char_index_co_reg[19]_1 [19]),
        .I3(\char_index_co_reg[19]_0 [19]),
        .O(char_valid_co_reg[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_index_co0_carry__0_i_2
       (.I0(\char_index_co_reg[19]_1 [15]),
        .I1(\char_index_co_reg[19]_0 [15]),
        .I2(\char_index_co_reg[19]_0 [17]),
        .I3(\char_index_co_reg[19]_1 [17]),
        .I4(\char_index_co_reg[19]_0 [16]),
        .I5(\char_index_co_reg[19]_1 [16]),
        .O(char_valid_co_reg[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_index_co0_carry__0_i_3
       (.I0(\char_index_co_reg[19]_1 [12]),
        .I1(\char_index_co_reg[19]_0 [12]),
        .I2(\char_index_co_reg[19]_0 [14]),
        .I3(\char_index_co_reg[19]_1 [14]),
        .I4(\char_index_co_reg[19]_0 [13]),
        .I5(\char_index_co_reg[19]_1 [13]),
        .O(char_valid_co_reg[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_index_co0_carry_i_1
       (.I0(\char_index_co_reg[19]_1 [9]),
        .I1(\char_index_co_reg[19]_0 [9]),
        .I2(\char_index_co_reg[19]_0 [11]),
        .I3(\char_index_co_reg[19]_1 [11]),
        .I4(\char_index_co_reg[19]_0 [10]),
        .I5(\char_index_co_reg[19]_1 [10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_index_co0_carry_i_2
       (.I0(\char_index_co_reg[19]_1 [6]),
        .I1(\char_index_co_reg[19]_0 [6]),
        .I2(\char_index_co_reg[19]_0 [8]),
        .I3(\char_index_co_reg[19]_1 [8]),
        .I4(\char_index_co_reg[19]_0 [7]),
        .I5(\char_index_co_reg[19]_1 [7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_index_co0_carry_i_3
       (.I0(\char_index_co_reg[19]_1 [3]),
        .I1(\char_index_co_reg[19]_0 [3]),
        .I2(\char_index_co_reg[19]_0 [5]),
        .I3(\char_index_co_reg[19]_1 [5]),
        .I4(\char_index_co_reg[19]_0 [4]),
        .I5(\char_index_co_reg[19]_1 [4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    char_index_co0_carry_i_4
       (.I0(\char_index_co_reg[19]_1 [0]),
        .I1(\char_index_co_reg[19]_0 [0]),
        .I2(\char_index_co_reg[19]_0 [2]),
        .I3(\char_index_co_reg[19]_1 [2]),
        .I4(\char_index_co_reg[19]_0 [1]),
        .I5(\char_index_co_reg[19]_1 [1]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h20)) 
    \char_index_co[19]_i_1 
       (.I0(s_axi_aresetn),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .O(\char_index_co[19]_i_1_n_0 ));
  FDRE \char_index_co_reg[0] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[0]),
        .Q(\char_index_co_reg[19]_0 [0]),
        .R(1'b0));
  FDRE \char_index_co_reg[10] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[10]),
        .Q(\char_index_co_reg[19]_0 [10]),
        .R(1'b0));
  FDRE \char_index_co_reg[11] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[11]),
        .Q(\char_index_co_reg[19]_0 [11]),
        .R(1'b0));
  FDRE \char_index_co_reg[12] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[12]),
        .Q(\char_index_co_reg[19]_0 [12]),
        .R(1'b0));
  FDRE \char_index_co_reg[13] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[13]),
        .Q(\char_index_co_reg[19]_0 [13]),
        .R(1'b0));
  FDRE \char_index_co_reg[14] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[14]),
        .Q(\char_index_co_reg[19]_0 [14]),
        .R(1'b0));
  FDRE \char_index_co_reg[15] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[15]),
        .Q(\char_index_co_reg[19]_0 [15]),
        .R(1'b0));
  FDRE \char_index_co_reg[16] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[16]),
        .Q(\char_index_co_reg[19]_0 [16]),
        .R(1'b0));
  FDRE \char_index_co_reg[17] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[17]),
        .Q(\char_index_co_reg[19]_0 [17]),
        .R(1'b0));
  FDRE \char_index_co_reg[18] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[18]),
        .Q(\char_index_co_reg[19]_0 [18]),
        .R(1'b0));
  FDRE \char_index_co_reg[19] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[19]),
        .Q(\char_index_co_reg[19]_0 [19]),
        .R(1'b0));
  FDRE \char_index_co_reg[1] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[1]),
        .Q(\char_index_co_reg[19]_0 [1]),
        .R(1'b0));
  FDRE \char_index_co_reg[2] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[2]),
        .Q(\char_index_co_reg[19]_0 [2]),
        .R(1'b0));
  FDRE \char_index_co_reg[3] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[3]),
        .Q(\char_index_co_reg[19]_0 [3]),
        .R(1'b0));
  FDRE \char_index_co_reg[4] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[4]),
        .Q(\char_index_co_reg[19]_0 [4]),
        .R(1'b0));
  FDRE \char_index_co_reg[5] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[5]),
        .Q(\char_index_co_reg[19]_0 [5]),
        .R(1'b0));
  FDRE \char_index_co_reg[6] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[6]),
        .Q(\char_index_co_reg[19]_0 [6]),
        .R(1'b0));
  FDRE \char_index_co_reg[7] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[7]),
        .Q(\char_index_co_reg[19]_0 [7]),
        .R(1'b0));
  FDRE \char_index_co_reg[8] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[8]),
        .Q(\char_index_co_reg[19]_0 [8]),
        .R(1'b0));
  FDRE \char_index_co_reg[9] 
       (.C(s_axi_aclk),
        .CE(\char_index_co[19]_i_1_n_0 ),
        .D(char_index_c[9]),
        .Q(\char_index_co_reg[19]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    char_valid_co_i_1
       (.I0(char_valid_now),
        .I1(CO),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    char_valid_co_i_2
       (.I0(s_axi_aresetn),
        .O(\FSM_sequential_state_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF7FF333304000000)) 
    count_continue_done_i_1
       (.I0(\counter_continue0_inferred__0/i__carry_n_0 ),
        .I1(s_axi_aresetn),
        .I2(state_reg[1]),
        .I3(char_valid_c),
        .I4(state_reg[0]),
        .I5(count_continue_done_reg_n_0),
        .O(count_continue_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_continue_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count_continue_done_i_1_n_0),
        .Q(count_continue_done_reg_n_0),
        .R(1'b0));
  CARRY4 \counter_continue0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counter_continue0_inferred__0/i__carry_n_0 ,\counter_continue0_inferred__0/i__carry_n_1 ,\counter_continue0_inferred__0/i__carry_n_2 ,\counter_continue0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0}),
        .O(\NLW_counter_continue0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  LUT3 #(
    .INIT(8'h02)) 
    \counter_continue[0]_i_1 
       (.I0(state_reg[0]),
        .I1(\counter_continue_reg_n_0_[0] ),
        .I2(state_reg[1]),
        .O(counter_continue[0]));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_continue[1]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(counter_continue[1]));
  LUT5 #(
    .INIT(32'h00007800)) 
    \counter_continue[2]_i_1 
       (.I0(\counter_continue_reg_n_0_[0] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[2] ),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .O(counter_continue[2]));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \counter_continue[3]_i_1 
       (.I0(\counter_continue_reg_n_0_[1] ),
        .I1(\counter_continue_reg_n_0_[0] ),
        .I2(\counter_continue_reg_n_0_[2] ),
        .I3(\counter_continue_reg_n_0_[3] ),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(counter_continue[3]));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_continue[4]_i_1 
       (.I0(\counter_continue[4]_i_2_n_0 ),
        .I1(\counter_continue_reg_n_0_[4] ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(counter_continue[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_continue[4]_i_2 
       (.I0(\counter_continue_reg_n_0_[3] ),
        .I1(\counter_continue_reg_n_0_[1] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[2] ),
        .O(\counter_continue[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_continue[5]_i_1 
       (.I0(\counter_continue[5]_i_2_n_0 ),
        .I1(\counter_continue_reg_n_0_[5] ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(counter_continue[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_continue[5]_i_2 
       (.I0(\counter_continue_reg_n_0_[4] ),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[0] ),
        .I3(\counter_continue_reg_n_0_[1] ),
        .I4(\counter_continue_reg_n_0_[3] ),
        .O(\counter_continue[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_continue[6]_i_1 
       (.I0(\counter_continue[7]_i_3_n_0 ),
        .I1(\counter_continue_reg_n_0_[6] ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(counter_continue[6]));
  LUT4 #(
    .INIT(16'h55D5)) 
    \counter_continue[7]_i_1 
       (.I0(state_reg[0]),
        .I1(char_valid_c),
        .I2(\counter_continue0_inferred__0/i__carry_n_0 ),
        .I3(state_reg[1]),
        .O(\counter_continue[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \counter_continue[7]_i_2 
       (.I0(\counter_continue[7]_i_3_n_0 ),
        .I1(\counter_continue_reg_n_0_[6] ),
        .I2(\counter_continue_reg_n_0_[7] ),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .O(counter_continue[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_continue[7]_i_3 
       (.I0(\counter_continue_reg_n_0_[5] ),
        .I1(\counter_continue_reg_n_0_[3] ),
        .I2(\counter_continue_reg_n_0_[1] ),
        .I3(\counter_continue_reg_n_0_[0] ),
        .I4(\counter_continue_reg_n_0_[2] ),
        .I5(\counter_continue_reg_n_0_[4] ),
        .O(\counter_continue[7]_i_3_n_0 ));
  FDCE \counter_continue_reg[0] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[0]),
        .Q(\counter_continue_reg_n_0_[0] ));
  FDCE \counter_continue_reg[1] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[1]),
        .Q(\counter_continue_reg_n_0_[1] ));
  FDCE \counter_continue_reg[2] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[2]),
        .Q(\counter_continue_reg_n_0_[2] ));
  FDCE \counter_continue_reg[3] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[3]),
        .Q(\counter_continue_reg_n_0_[3] ));
  FDCE \counter_continue_reg[4] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[4]),
        .Q(\counter_continue_reg_n_0_[4] ));
  FDCE \counter_continue_reg[5] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[5]),
        .Q(\counter_continue_reg_n_0_[5] ));
  FDCE \counter_continue_reg[6] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[6]),
        .Q(\counter_continue_reg_n_0_[6] ));
  FDCE \counter_continue_reg[7] 
       (.C(s_axi_aclk),
        .CE(\counter_continue[7]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg_reg[1]_0 ),
        .D(counter_continue[7]),
        .Q(\counter_continue_reg_n_0_[7] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(Q[2]),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(\counter_continue_reg_n_0_[3] ),
        .I3(Q[3]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(Q[0]),
        .I1(\counter_continue_reg_n_0_[0] ),
        .I2(\counter_continue_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(\counter_continue_reg_n_0_[6] ),
        .I1(\counter_continue_reg_n_0_[7] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(\counter_continue_reg_n_0_[4] ),
        .I1(\counter_continue_reg_n_0_[5] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(Q[2]),
        .I1(\counter_continue_reg_n_0_[2] ),
        .I2(Q[3]),
        .I3(\counter_continue_reg_n_0_[3] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(Q[0]),
        .I1(\counter_continue_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\counter_continue_reg_n_0_[1] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    recognize_done_i_1
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_axi_aresetn),
        .I3(char_valid_now),
        .O(recognize_done_i_1_n_0));
  FDRE recognize_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(recognize_done_i_1_n_0),
        .Q(char_valid_now),
        .R(1'b0));
endmodule

module m3_for_arty_a7_judge_1_0_judge_v1_0
   (S_AXI_AWREADY,
    char_valid_co,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    char_index_c,
    s_axi_araddr,
    s_axi_arvalid,
    char_valid_c,
    s_axi_aresetn,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_rready);
  output S_AXI_AWREADY;
  output char_valid_co;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [19:0]char_index_c;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input char_valid_c;
  input s_axi_aresetn;
  input [3:0]s_axi_wstrb;
  input s_axi_bready;
  input s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [19:0]char_index_c;
  wire char_valid_c;
  wire char_valid_co;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  m3_for_arty_a7_judge_1_0_judge_v1_0_S_AXI judge_v1_0_S_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .char_index_c(char_index_c),
        .char_valid_c(char_valid_c),
        .char_valid_co(char_valid_co),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module m3_for_arty_a7_judge_1_0_judge_v1_0_S_AXI
   (S_AXI_AWREADY,
    char_valid_co,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    char_index_c,
    s_axi_araddr,
    s_axi_arvalid,
    char_valid_c,
    s_axi_aresetn,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_rready);
  output S_AXI_AWREADY;
  output char_valid_co;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [19:0]char_index_c;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input char_valid_c;
  input s_axi_aresetn;
  input [3:0]s_axi_wstrb;
  input s_axi_bready;
  input s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [19:0]char_index_c;
  wire char_valid_c;
  wire char_valid_co;
  wire inst_judge_n_1;
  wire [3:0]min_continue;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(inst_judge_n_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(inst_judge_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(inst_judge_n_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(inst_judge_n_1));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(inst_judge_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(inst_judge_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(inst_judge_n_1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(inst_judge_n_1));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[31]),
        .O(reg_data_out[31]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(inst_judge_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(inst_judge_n_1));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(inst_judge_n_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(inst_judge_n_1));
  m3_for_arty_a7_judge_1_0_judge inst_judge
       (.D(reg_data_out[19:0]),
        .Q({\slv_reg1_reg_n_0_[19] ,\slv_reg1_reg_n_0_[18] ,\slv_reg1_reg_n_0_[17] ,\slv_reg1_reg_n_0_[16] ,\slv_reg1_reg_n_0_[15] ,\slv_reg1_reg_n_0_[14] ,\slv_reg1_reg_n_0_[13] ,\slv_reg1_reg_n_0_[12] ,\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,min_continue}),
        .SR(inst_judge_n_1),
        .axi_araddr(axi_araddr),
        .char_index_c(char_index_c),
        .char_valid_c(char_valid_c),
        .char_valid_co(char_valid_co),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\slv_reg0_reg[19] (slv_reg0[19:0]),
        .\slv_reg2_reg[19] (slv_reg2[19:0]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(inst_judge_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(inst_judge_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(min_continue[0]),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(min_continue[1]),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(min_continue[2]),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(min_continue[3]),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(inst_judge_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(inst_judge_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(inst_judge_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(inst_judge_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_judge_1_0,judge_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "judge_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_judge_1_0
   (char_index_c,
    char_diff_c,
    char_valid_c,
    char_valid_co,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn);
  input [31:0]char_index_c;
  input [127:0]char_diff_c;
  input char_valid_c;
  output char_valid_co;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire \<const0> ;
  wire [31:0]char_index_c;
  wire char_valid_c;
  wire char_valid_co;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  m3_for_arty_a7_judge_1_0_judge_v1_0 inst
       (.S_AXI_ARREADY(s_axi_arready),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(s_axi_wready),
        .char_index_c(char_index_c[31:12]),
        .char_valid_c(char_valid_c),
        .char_valid_co(char_valid_co),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
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
