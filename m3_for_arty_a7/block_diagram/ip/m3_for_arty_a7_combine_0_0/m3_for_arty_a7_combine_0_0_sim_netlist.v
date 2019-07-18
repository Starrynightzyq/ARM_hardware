// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:50:49 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_combine_0_0/m3_for_arty_a7_combine_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_combine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_combine_0_0,combine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "combine,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_combine_0_0
   (clk,
    rst_n,
    char_index,
    char_diff,
    char_addr,
    char_valid,
    char_index_c,
    char_diff_c,
    char_valid_c);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input [3:0]char_index;
  input [15:0]char_diff;
  input [2:0]char_addr;
  input char_valid;
  output [31:0]char_index_c;
  output [127:0]char_diff_c;
  output char_valid_c;

  wire [2:0]char_addr;
  wire [15:0]char_diff;
  wire [127:0]char_diff_c;
  wire [3:0]char_index;
  wire [31:0]char_index_c;
  wire char_valid;
  wire char_valid_c;
  wire clk;
  wire rst_n;

  m3_for_arty_a7_combine_0_0_combine inst
       (.char_addr(char_addr),
        .char_diff(char_diff),
        .char_diff_c(char_diff_c),
        .char_index(char_index),
        .char_index_c(char_index_c),
        .char_valid(char_valid),
        .char_valid_c(char_valid_c),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "combine" *) 
module m3_for_arty_a7_combine_0_0_combine
   (char_index_c,
    char_diff_c,
    char_valid_c,
    clk,
    rst_n,
    char_addr,
    char_valid,
    char_index,
    char_diff);
  output [31:0]char_index_c;
  output [127:0]char_diff_c;
  output char_valid_c;
  input clk;
  input rst_n;
  input [2:0]char_addr;
  input char_valid;
  input [3:0]char_index;
  input [15:0]char_diff;

  wire \FSM_sequential_state_now[0]_i_1_n_0 ;
  wire \FSM_sequential_state_now[0]_i_2_n_0 ;
  wire \FSM_sequential_state_now[0]_i_3_n_0 ;
  wire \FSM_sequential_state_now[0]_i_4_n_0 ;
  wire \FSM_sequential_state_now[0]_i_5_n_0 ;
  wire \FSM_sequential_state_now[1]_i_1_n_0 ;
  wire \FSM_sequential_state_now[1]_i_2_n_0 ;
  wire \FSM_sequential_state_now[2]_i_1_n_0 ;
  wire \FSM_sequential_state_now[2]_i_2_n_0 ;
  wire \FSM_sequential_state_now[2]_i_3_n_0 ;
  wire \FSM_sequential_state_now[2]_i_4_n_0 ;
  wire \FSM_sequential_state_now[3]_i_1_n_0 ;
  wire \FSM_sequential_state_now[3]_i_2_n_0 ;
  wire \FSM_sequential_state_now[3]_i_3_n_0 ;
  wire \FSM_sequential_state_now[3]_i_4_n_0 ;
  wire \FSM_sequential_state_now[4]_i_1_n_0 ;
  wire \FSM_sequential_state_now[4]_i_2_n_0 ;
  wire [2:0]char_addr;
  wire [2:0]char_addr_delay;
  wire [15:0]char_diff;
  wire [127:0]char_diff_c;
  wire [15:0]char_diff_delay;
  wire [3:0]char_index;
  wire [31:0]char_index_c;
  wire [3:0]char_index_delay;
  wire char_index_reg;
  wire \char_index_reg[0][3]_i_1_n_0 ;
  wire \char_index_reg[1][3]_i_1_n_0 ;
  wire \char_index_reg[2][3]_i_1_n_0 ;
  wire \char_index_reg[3][3]_i_1_n_0 ;
  wire \char_index_reg[4][3]_i_1_n_0 ;
  wire \char_index_reg[5][3]_i_1_n_0 ;
  wire \char_index_reg[6][3]_i_1_n_0 ;
  wire char_valid;
  wire char_valid_c;
  wire char_valid_delay;
  wire char_valid_reg;
  wire clk;
  wire rst_n;
  (* RTL_KEEP = "yes" *) wire [4:0]state_now;

  LUT6 #(
    .INIT(64'hFF02020200000000)) 
    \FSM_sequential_state_now[0]_i_1 
       (.I0(\FSM_sequential_state_now[0]_i_2_n_0 ),
        .I1(state_now[4]),
        .I2(\FSM_sequential_state_now[0]_i_3_n_0 ),
        .I3(\FSM_sequential_state_now[0]_i_4_n_0 ),
        .I4(\FSM_sequential_state_now[0]_i_5_n_0 ),
        .I5(rst_n),
        .O(\FSM_sequential_state_now[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1284000000001280)) 
    \FSM_sequential_state_now[0]_i_2 
       (.I0(state_now[3]),
        .I1(char_addr_delay[1]),
        .I2(char_addr_delay[2]),
        .I3(state_now[2]),
        .I4(char_addr_delay[0]),
        .I5(state_now[1]),
        .O(\FSM_sequential_state_now[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_now[0]_i_3 
       (.I0(state_now[0]),
        .I1(char_valid_delay),
        .O(\FSM_sequential_state_now[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000020)) 
    \FSM_sequential_state_now[0]_i_4 
       (.I0(char_valid_delay),
        .I1(char_addr_delay[2]),
        .I2(char_addr_delay[1]),
        .I3(char_addr_delay[0]),
        .I4(state_now[0]),
        .I5(state_now[4]),
        .O(\FSM_sequential_state_now[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state_now[0]_i_5 
       (.I0(state_now[1]),
        .I1(state_now[2]),
        .I2(state_now[3]),
        .O(\FSM_sequential_state_now[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000222220222020)) 
    \FSM_sequential_state_now[1]_i_1 
       (.I0(rst_n),
        .I1(state_now[4]),
        .I2(\FSM_sequential_state_now[1]_i_2_n_0 ),
        .I3(char_valid_delay),
        .I4(state_now[1]),
        .I5(state_now[0]),
        .O(\FSM_sequential_state_now[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008800008000080)) 
    \FSM_sequential_state_now[1]_i_2 
       (.I0(char_addr_delay[0]),
        .I1(state_now[1]),
        .I2(char_addr_delay[1]),
        .I3(state_now[3]),
        .I4(state_now[2]),
        .I5(char_addr_delay[2]),
        .O(\FSM_sequential_state_now[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8088880080808000)) 
    \FSM_sequential_state_now[2]_i_1 
       (.I0(\FSM_sequential_state_now[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_now[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_now[2]_i_4_n_0 ),
        .I3(state_now[2]),
        .I4(state_now[1]),
        .I5(state_now[0]),
        .O(\FSM_sequential_state_now[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF9FFFF)) 
    \FSM_sequential_state_now[2]_i_2 
       (.I0(char_addr_delay[0]),
        .I1(state_now[1]),
        .I2(char_addr_delay[1]),
        .I3(state_now[0]),
        .I4(char_valid_delay),
        .O(\FSM_sequential_state_now[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_now[2]_i_3 
       (.I0(rst_n),
        .I1(state_now[4]),
        .O(\FSM_sequential_state_now[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404040404444404)) 
    \FSM_sequential_state_now[2]_i_4 
       (.I0(state_now[0]),
        .I1(state_now[2]),
        .I2(char_valid_delay),
        .I3(state_now[3]),
        .I4(char_addr_delay[2]),
        .I5(char_addr_delay[1]),
        .O(\FSM_sequential_state_now[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA200000A0)) 
    \FSM_sequential_state_now[3]_i_1 
       (.I0(\FSM_sequential_state_now[3]_i_2_n_0 ),
        .I1(state_now[0]),
        .I2(\FSM_sequential_state_now[3]_i_3_n_0 ),
        .I3(state_now[1]),
        .I4(char_addr_delay[0]),
        .I5(\FSM_sequential_state_now[3]_i_4_n_0 ),
        .O(\FSM_sequential_state_now[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EAAA00000000)) 
    \FSM_sequential_state_now[3]_i_2 
       (.I0(state_now[3]),
        .I1(state_now[2]),
        .I2(state_now[0]),
        .I3(state_now[1]),
        .I4(state_now[4]),
        .I5(rst_n),
        .O(\FSM_sequential_state_now[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \FSM_sequential_state_now[3]_i_3 
       (.I0(char_addr_delay[1]),
        .I1(char_addr_delay[2]),
        .I2(state_now[2]),
        .O(\FSM_sequential_state_now[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h53F3A0F3)) 
    \FSM_sequential_state_now[3]_i_4 
       (.I0(state_now[2]),
        .I1(char_valid_delay),
        .I2(state_now[0]),
        .I3(state_now[1]),
        .I4(state_now[3]),
        .O(\FSM_sequential_state_now[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001800000000000)) 
    \FSM_sequential_state_now[4]_i_1 
       (.I0(state_now[1]),
        .I1(state_now[2]),
        .I2(state_now[3]),
        .I3(state_now[0]),
        .I4(state_now[4]),
        .I5(rst_n),
        .O(\FSM_sequential_state_now[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state_now[4]_i_2 
       (.I0(rst_n),
        .O(\FSM_sequential_state_now[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHAR6:01110,CHAR6_V:01101,CHAR5:01100,CHAR1_V:00011,DONE:10001,CHAR0:00010,CHAR7:10000,CHAR0_V:00001,CHAR5_V:01011,IDLE:00000,CHAR4:01010,CHAR3_V:00111,CHAR2:00110,CHAR4_V:01001,CHAR3:01000,CHAR2_V:00101,CHAR1:00100,CHAR7_V:01111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[4]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[0]_i_1_n_0 ),
        .Q(state_now[0]));
  (* FSM_ENCODED_STATES = "CHAR6:01110,CHAR6_V:01101,CHAR5:01100,CHAR1_V:00011,DONE:10001,CHAR0:00010,CHAR7:10000,CHAR0_V:00001,CHAR5_V:01011,IDLE:00000,CHAR4:01010,CHAR3_V:00111,CHAR2:00110,CHAR4_V:01001,CHAR3:01000,CHAR2_V:00101,CHAR1:00100,CHAR7_V:01111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[4]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[1]_i_1_n_0 ),
        .Q(state_now[1]));
  (* FSM_ENCODED_STATES = "CHAR6:01110,CHAR6_V:01101,CHAR5:01100,CHAR1_V:00011,DONE:10001,CHAR0:00010,CHAR7:10000,CHAR0_V:00001,CHAR5_V:01011,IDLE:00000,CHAR4:01010,CHAR3_V:00111,CHAR2:00110,CHAR4_V:01001,CHAR3:01000,CHAR2_V:00101,CHAR1:00100,CHAR7_V:01111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[4]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[2]_i_1_n_0 ),
        .Q(state_now[2]));
  (* FSM_ENCODED_STATES = "CHAR6:01110,CHAR6_V:01101,CHAR5:01100,CHAR1_V:00011,DONE:10001,CHAR0:00010,CHAR7:10000,CHAR0_V:00001,CHAR5_V:01011,IDLE:00000,CHAR4:01010,CHAR3_V:00111,CHAR2:00110,CHAR4_V:01001,CHAR3:01000,CHAR2_V:00101,CHAR1:00100,CHAR7_V:01111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[4]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[3]_i_1_n_0 ),
        .Q(state_now[3]));
  (* FSM_ENCODED_STATES = "CHAR6:01110,CHAR6_V:01101,CHAR5:01100,CHAR1_V:00011,DONE:10001,CHAR0:00010,CHAR7:10000,CHAR0_V:00001,CHAR5_V:01011,IDLE:00000,CHAR4:01010,CHAR3_V:00111,CHAR2:00110,CHAR4_V:01001,CHAR3:01000,CHAR2_V:00101,CHAR1:00100,CHAR7_V:01111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_now_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_now[4]_i_2_n_0 ),
        .D(\FSM_sequential_state_now[4]_i_1_n_0 ),
        .Q(state_now[4]));
  FDRE #(
    .INIT(1'b0)) 
    \char_addr_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(char_addr[0]),
        .Q(char_addr_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_addr_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(char_addr[1]),
        .Q(char_addr_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_addr_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(char_addr[2]),
        .Q(char_addr_delay[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[0]),
        .Q(char_diff_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[10]),
        .Q(char_diff_delay[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[11]),
        .Q(char_diff_delay[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[12]),
        .Q(char_diff_delay[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[13]),
        .Q(char_diff_delay[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[14]),
        .Q(char_diff_delay[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[15]),
        .Q(char_diff_delay[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[1]),
        .Q(char_diff_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[2]),
        .Q(char_diff_delay[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[3]),
        .Q(char_diff_delay[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[4]),
        .Q(char_diff_delay[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[5]),
        .Q(char_diff_delay[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[6]),
        .Q(char_diff_delay[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[7]),
        .Q(char_diff_delay[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[8]),
        .Q(char_diff_delay[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_diff_delay_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(char_diff[9]),
        .Q(char_diff_delay[9]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][0] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[0]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][10] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[10]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][11] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[11]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][12] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[12]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][13] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[13]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][14] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[14]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][15] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[15]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][1] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[1]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][2] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[2]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][3] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[3]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][4] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[4]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][5] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[5]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][6] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[6]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][7] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[7]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][8] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[8]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[0][9] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[9]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][0] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[16]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][10] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[26]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][11] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[27]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][12] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[28]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][13] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[29]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][14] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[30]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][15] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[31]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][1] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[17]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][2] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[18]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][3] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[19]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][4] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[20]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][5] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[21]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][6] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[22]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][7] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[23]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][8] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[24]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[1][9] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[25]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][0] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[32]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][10] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[42]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][11] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[43]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][12] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[44]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][13] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[45]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][14] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[46]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][15] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[47]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][1] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[33]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][2] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[34]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][3] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[35]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][4] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[36]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][5] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[37]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][6] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[38]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][7] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[39]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][8] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[40]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[2][9] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[41]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][0] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[48]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][10] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[58]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][11] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[59]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][12] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[60]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][13] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[61]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][14] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[62]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][15] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[63]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][1] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[49]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][2] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[50]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][3] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[51]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][4] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[52]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][5] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[53]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][6] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[54]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][7] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[55]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][8] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[56]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[3][9] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[57]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][0] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[64]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][10] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[74]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][11] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[75]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][12] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[76]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][13] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[77]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][14] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[78]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][15] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[79]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][1] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[65]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][2] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[66]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][3] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[67]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][4] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[68]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][5] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[69]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][6] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[70]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][7] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[71]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][8] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[72]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[4][9] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[73]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][0] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[80]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][10] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[90]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][11] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[91]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][12] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[92]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][13] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[93]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][14] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[94]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][15] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[95]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][1] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[81]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][2] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[82]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][3] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[83]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][4] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[84]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][5] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[85]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][6] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[86]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][7] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[87]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][8] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[88]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[5][9] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[89]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][0] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[96]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][10] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[106]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][11] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[107]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][12] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[108]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][13] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[109]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][14] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[110]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][15] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[111]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][1] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[97]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][2] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[98]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][3] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[99]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][4] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[100]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][5] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[101]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][6] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[102]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][7] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[103]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][8] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[104]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][9] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[105]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][0] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[112]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][10] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[122]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][11] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[123]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][12] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[124]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][13] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[125]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][14] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[126]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][15] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[127]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][1] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[113]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][2] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[114]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][3] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[115]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][4] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[116]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][5] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[117]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][6] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[118]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][7] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[119]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][8] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[120]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[7][9] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index[0]),
        .Q(char_index_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index[1]),
        .Q(char_index_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index[2]),
        .Q(char_index_delay[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \char_index_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(char_index[3]),
        .Q(char_index_delay[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \char_index_reg[0][3]_i_1 
       (.I0(state_now[4]),
        .I1(state_now[0]),
        .I2(state_now[3]),
        .I3(state_now[2]),
        .I4(state_now[1]),
        .O(\char_index_reg[0][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \char_index_reg[1][3]_i_1 
       (.I0(state_now[2]),
        .I1(state_now[3]),
        .I2(state_now[4]),
        .I3(state_now[0]),
        .I4(state_now[1]),
        .O(\char_index_reg[1][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \char_index_reg[2][3]_i_1 
       (.I0(state_now[4]),
        .I1(state_now[0]),
        .I2(state_now[1]),
        .I3(state_now[3]),
        .I4(state_now[2]),
        .O(\char_index_reg[2][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \char_index_reg[3][3]_i_1 
       (.I0(state_now[4]),
        .I1(state_now[1]),
        .I2(state_now[0]),
        .I3(state_now[3]),
        .I4(state_now[2]),
        .O(\char_index_reg[3][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \char_index_reg[4][3]_i_1 
       (.I0(state_now[0]),
        .I1(state_now[3]),
        .I2(state_now[4]),
        .I3(state_now[1]),
        .I4(state_now[2]),
        .O(\char_index_reg[4][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \char_index_reg[5][3]_i_1 
       (.I0(state_now[2]),
        .I1(state_now[1]),
        .I2(state_now[0]),
        .I3(state_now[4]),
        .I4(state_now[3]),
        .O(\char_index_reg[5][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \char_index_reg[6][3]_i_1 
       (.I0(state_now[2]),
        .I1(state_now[3]),
        .I2(state_now[4]),
        .I3(state_now[1]),
        .I4(state_now[0]),
        .O(\char_index_reg[6][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \char_index_reg[7][3]_i_1 
       (.I0(state_now[1]),
        .I1(state_now[0]),
        .I2(state_now[2]),
        .I3(state_now[4]),
        .I4(state_now[3]),
        .O(char_index_reg));
  FDRE \char_index_reg_reg[0][0] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[0]),
        .R(1'b0));
  FDRE \char_index_reg_reg[0][1] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[1]),
        .R(1'b0));
  FDRE \char_index_reg_reg[0][2] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[2]),
        .R(1'b0));
  FDRE \char_index_reg_reg[0][3] 
       (.C(clk),
        .CE(\char_index_reg[0][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[3]),
        .R(1'b0));
  FDRE \char_index_reg_reg[1][0] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[4]),
        .R(1'b0));
  FDRE \char_index_reg_reg[1][1] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[5]),
        .R(1'b0));
  FDRE \char_index_reg_reg[1][2] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[6]),
        .R(1'b0));
  FDRE \char_index_reg_reg[1][3] 
       (.C(clk),
        .CE(\char_index_reg[1][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[7]),
        .R(1'b0));
  FDRE \char_index_reg_reg[2][0] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[8]),
        .R(1'b0));
  FDRE \char_index_reg_reg[2][1] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[9]),
        .R(1'b0));
  FDRE \char_index_reg_reg[2][2] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[10]),
        .R(1'b0));
  FDRE \char_index_reg_reg[2][3] 
       (.C(clk),
        .CE(\char_index_reg[2][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[11]),
        .R(1'b0));
  FDRE \char_index_reg_reg[3][0] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[12]),
        .R(1'b0));
  FDRE \char_index_reg_reg[3][1] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[13]),
        .R(1'b0));
  FDRE \char_index_reg_reg[3][2] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[14]),
        .R(1'b0));
  FDRE \char_index_reg_reg[3][3] 
       (.C(clk),
        .CE(\char_index_reg[3][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[15]),
        .R(1'b0));
  FDRE \char_index_reg_reg[4][0] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[16]),
        .R(1'b0));
  FDRE \char_index_reg_reg[4][1] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[17]),
        .R(1'b0));
  FDRE \char_index_reg_reg[4][2] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[18]),
        .R(1'b0));
  FDRE \char_index_reg_reg[4][3] 
       (.C(clk),
        .CE(\char_index_reg[4][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[19]),
        .R(1'b0));
  FDRE \char_index_reg_reg[5][0] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[20]),
        .R(1'b0));
  FDRE \char_index_reg_reg[5][1] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[21]),
        .R(1'b0));
  FDRE \char_index_reg_reg[5][2] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[22]),
        .R(1'b0));
  FDRE \char_index_reg_reg[5][3] 
       (.C(clk),
        .CE(\char_index_reg[5][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[23]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][0] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_index_delay[0]),
        .Q(char_index_c[24]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][1] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_index_delay[1]),
        .Q(char_index_c[25]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][2] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_index_delay[2]),
        .Q(char_index_c[26]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][3] 
       (.C(clk),
        .CE(\char_index_reg[6][3]_i_1_n_0 ),
        .D(char_index_delay[3]),
        .Q(char_index_c[27]),
        .R(1'b0));
  FDRE \char_index_reg_reg[7][0] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_index_delay[0]),
        .Q(char_index_c[28]),
        .R(1'b0));
  FDRE \char_index_reg_reg[7][1] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_index_delay[1]),
        .Q(char_index_c[29]),
        .R(1'b0));
  FDRE \char_index_reg_reg[7][2] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_index_delay[2]),
        .Q(char_index_c[30]),
        .R(1'b0));
  FDRE \char_index_reg_reg[7][3] 
       (.C(clk),
        .CE(char_index_reg),
        .D(char_index_delay[3]),
        .Q(char_index_c[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    char_valid_delay_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid),
        .Q(char_valid_delay),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000008)) 
    char_valid_reg_i_1
       (.I0(state_now[4]),
        .I1(state_now[0]),
        .I2(state_now[3]),
        .I3(state_now[2]),
        .I4(state_now[1]),
        .O(char_valid_reg));
  FDRE char_valid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid_reg),
        .Q(char_valid_c),
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
