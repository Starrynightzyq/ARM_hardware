// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug 15 22:07:41 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_combine_addr_0_0/m3_for_arty_a7_combine_addr_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_combine_addr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_combine_addr_0_0,combine_addr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "combine_addr,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_combine_addr_0_0
   (clk,
    rst_n,
    shift,
    char_index,
    char_diff,
    char_addr,
    char_valid,
    char_index_c,
    char_diff_c,
    char_valid_c);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input [2:0]shift;
  input [3:0]char_index;
  input [15:0]char_diff;
  input [2:0]char_addr;
  input char_valid;
  output [27:0]char_index_c;
  output [111:0]char_diff_c;
  output char_valid_c;

  wire [2:0]char_addr;
  wire [15:0]char_diff;
  wire [111:0]char_diff_c;
  wire [3:0]char_index;
  wire [27:0]char_index_c;
  wire char_valid;
  wire char_valid_c;
  wire clk;
  wire rst_n;
  wire [2:0]shift;

  m3_for_arty_a7_combine_addr_0_0_combine_addr inst
       (.char_addr(char_addr),
        .char_diff(char_diff),
        .char_diff_c(char_diff_c),
        .char_index(char_index),
        .char_index_c(char_index_c),
        .char_valid(char_valid),
        .char_valid_c(char_valid_c),
        .clk(clk),
        .rst_n(rst_n),
        .shift(shift));
endmodule

(* ORIG_REF_NAME = "combine_addr" *) 
module m3_for_arty_a7_combine_addr_0_0_combine_addr
   (char_index_c,
    char_diff_c,
    char_valid_c,
    shift,
    clk,
    char_addr,
    char_index,
    char_diff,
    char_valid,
    rst_n);
  output [27:0]char_index_c;
  output [111:0]char_diff_c;
  output char_valid_c;
  input [2:0]shift;
  input clk;
  input [2:0]char_addr;
  input [3:0]char_index;
  input [15:0]char_diff;
  input char_valid;
  input rst_n;

  wire [2:0]CHAR0_ADDR;
  wire \CHAR0_ADDR[0]_i_1_n_0 ;
  wire \CHAR0_ADDR[1]_i_1_n_0 ;
  wire \CHAR0_ADDR[2]_i_1_n_0 ;
  wire [2:0]CHAR1_ADDR;
  wire \CHAR1_ADDR[0]_i_1_n_0 ;
  wire \CHAR1_ADDR[1]_i_1_n_0 ;
  wire \CHAR1_ADDR[2]_i_1_n_0 ;
  wire [2:0]CHAR2_ADDR;
  wire \CHAR2_ADDR[0]_i_1_n_0 ;
  wire \CHAR2_ADDR[1]_i_1_n_0 ;
  wire \CHAR2_ADDR[2]_i_1_n_0 ;
  wire [2:0]CHAR3_ADDR;
  wire \CHAR3_ADDR[0]_i_1_n_0 ;
  wire \CHAR3_ADDR[1]_i_1_n_0 ;
  wire \CHAR3_ADDR[2]_i_1_n_0 ;
  wire [2:0]CHAR4_ADDR;
  wire \CHAR4_ADDR[0]_i_1_n_0 ;
  wire \CHAR4_ADDR[1]_i_1_n_0 ;
  wire \CHAR4_ADDR[2]_i_1_n_0 ;
  wire [2:0]CHAR5_ADDR;
  wire \CHAR5_ADDR[0]_i_1_n_0 ;
  wire \CHAR5_ADDR[1]_i_1_n_0 ;
  wire \CHAR5_ADDR[2]_i_1_n_0 ;
  wire [2:0]CHAR6_ADDR;
  wire \CHAR6_ADDR[0]_i_1_n_0 ;
  wire \CHAR6_ADDR[1]_i_1_n_0 ;
  wire \CHAR6_ADDR[2]_i_1_n_0 ;
  wire \CHAR6_ADDR[2]_i_2_n_0 ;
  wire [2:0]char_addr;
  wire [2:0]char_addr_delay;
  wire [15:0]char_diff;
  wire [111:0]char_diff_c;
  wire [15:0]char_diff_delay;
  wire char_diff_reg;
  wire [3:0]char_index;
  wire [27:0]char_index_c;
  wire [3:0]char_index_delay;
  wire \char_index_reg[0][3]_i_1_n_0 ;
  wire \char_index_reg[0][3]_i_2_n_0 ;
  wire \char_index_reg[1][3]_i_1_n_0 ;
  wire \char_index_reg[2][3]_i_1_n_0 ;
  wire \char_index_reg[3][3]_i_1_n_0 ;
  wire \char_index_reg[4][3]_i_1_n_0 ;
  wire \char_index_reg[5][3]_i_1_n_0 ;
  wire \char_index_reg[5][3]_i_2_n_0 ;
  wire \char_index_reg[6][3]_i_2_n_0 ;
  wire \char_index_reg[6][3]_i_3_n_0 ;
  wire \char_index_reg[6][3]_i_4_n_0 ;
  wire \char_index_reg[6][3]_i_5_n_0 ;
  wire \char_index_reg[6][3]_i_6_n_0 ;
  wire \char_index_reg[6][3]_i_7_n_0 ;
  wire \char_index_reg[6][3]_i_8_n_0 ;
  wire \char_index_reg[6][3]_i_9_n_0 ;
  wire char_valid;
  wire char_valid_c;
  wire char_valid_delay;
  wire char_valid_delay_1;
  wire char_valid_reg_i_1_n_0;
  wire char_valid_reg_i_2_n_0;
  wire char_valid_reg_i_3_n_0;
  wire clk;
  wire rst_n;
  wire [2:0]shift;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \CHAR0_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\CHAR0_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \CHAR0_ADDR[1]_i_1 
       (.I0(shift[1]),
        .I1(shift[2]),
        .I2(shift[0]),
        .O(\CHAR0_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    \CHAR0_ADDR[2]_i_1 
       (.I0(shift[1]),
        .I1(shift[2]),
        .I2(shift[0]),
        .O(\CHAR0_ADDR[2]_i_1_n_0 ));
  FDCE \CHAR0_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR0_ADDR[0]_i_1_n_0 ),
        .Q(CHAR0_ADDR[0]));
  FDCE \CHAR0_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR0_ADDR[1]_i_1_n_0 ),
        .Q(CHAR0_ADDR[1]));
  FDCE \CHAR0_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR0_ADDR[2]_i_1_n_0 ),
        .Q(CHAR0_ADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \CHAR1_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\CHAR1_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \CHAR1_ADDR[1]_i_1 
       (.I0(shift[0]),
        .I1(shift[1]),
        .I2(shift[2]),
        .O(\CHAR1_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \CHAR1_ADDR[2]_i_1 
       (.I0(shift[0]),
        .I1(shift[1]),
        .I2(shift[2]),
        .O(\CHAR1_ADDR[2]_i_1_n_0 ));
  FDPE \CHAR1_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR1_ADDR[0]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR1_ADDR[0]));
  FDCE \CHAR1_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR1_ADDR[1]_i_1_n_0 ),
        .Q(CHAR1_ADDR[1]));
  FDCE \CHAR1_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR1_ADDR[2]_i_1_n_0 ),
        .Q(CHAR1_ADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \CHAR2_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\CHAR2_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \CHAR2_ADDR[1]_i_1 
       (.I0(shift[1]),
        .I1(shift[0]),
        .I2(shift[2]),
        .O(\CHAR2_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    \CHAR2_ADDR[2]_i_1 
       (.I0(shift[1]),
        .I1(shift[0]),
        .I2(shift[2]),
        .O(\CHAR2_ADDR[2]_i_1_n_0 ));
  FDCE \CHAR2_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR2_ADDR[0]_i_1_n_0 ),
        .Q(CHAR2_ADDR[0]));
  FDPE \CHAR2_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR2_ADDR[1]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR2_ADDR[1]));
  FDCE \CHAR2_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR2_ADDR[2]_i_1_n_0 ),
        .Q(CHAR2_ADDR[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \CHAR3_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[0]),
        .O(\CHAR3_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hC9)) 
    \CHAR3_ADDR[1]_i_1 
       (.I0(shift[0]),
        .I1(shift[1]),
        .I2(shift[2]),
        .O(\CHAR3_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \CHAR3_ADDR[2]_i_1 
       (.I0(shift[0]),
        .I1(shift[1]),
        .I2(shift[2]),
        .O(\CHAR3_ADDR[2]_i_1_n_0 ));
  FDPE \CHAR3_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR3_ADDR[0]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR3_ADDR[0]));
  FDPE \CHAR3_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR3_ADDR[1]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR3_ADDR[1]));
  FDCE \CHAR3_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR3_ADDR[2]_i_1_n_0 ),
        .Q(CHAR3_ADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    \CHAR4_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\CHAR4_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \CHAR4_ADDR[1]_i_1 
       (.I0(shift[1]),
        .I1(shift[2]),
        .I2(shift[0]),
        .O(\CHAR4_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h93)) 
    \CHAR4_ADDR[2]_i_1 
       (.I0(shift[1]),
        .I1(shift[2]),
        .I2(shift[0]),
        .O(\CHAR4_ADDR[2]_i_1_n_0 ));
  FDCE \CHAR4_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR4_ADDR[0]_i_1_n_0 ),
        .Q(CHAR4_ADDR[0]));
  FDCE \CHAR4_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR4_ADDR[1]_i_1_n_0 ),
        .Q(CHAR4_ADDR[1]));
  FDPE \CHAR4_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR4_ADDR[2]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR4_ADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \CHAR5_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\CHAR5_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \CHAR5_ADDR[1]_i_1 
       (.I0(shift[0]),
        .I1(shift[1]),
        .I2(shift[2]),
        .O(\CHAR5_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \CHAR5_ADDR[2]_i_1 
       (.I0(shift[1]),
        .I1(shift[2]),
        .O(\CHAR5_ADDR[2]_i_1_n_0 ));
  FDPE \CHAR5_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR5_ADDR[0]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR5_ADDR[0]));
  FDCE \CHAR5_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR5_ADDR[1]_i_1_n_0 ),
        .Q(CHAR5_ADDR[1]));
  FDPE \CHAR5_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR5_ADDR[2]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR5_ADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \CHAR6_ADDR[0]_i_1 
       (.I0(shift[2]),
        .I1(shift[1]),
        .I2(shift[0]),
        .O(\CHAR6_ADDR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \CHAR6_ADDR[1]_i_1 
       (.I0(shift[1]),
        .I1(shift[0]),
        .O(\CHAR6_ADDR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hC9)) 
    \CHAR6_ADDR[2]_i_1 
       (.I0(shift[1]),
        .I1(shift[2]),
        .I2(shift[0]),
        .O(\CHAR6_ADDR[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CHAR6_ADDR[2]_i_2 
       (.I0(rst_n),
        .O(\CHAR6_ADDR[2]_i_2_n_0 ));
  FDCE \CHAR6_ADDR_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\CHAR6_ADDR[2]_i_2_n_0 ),
        .D(\CHAR6_ADDR[0]_i_1_n_0 ),
        .Q(CHAR6_ADDR[0]));
  FDPE \CHAR6_ADDR_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR6_ADDR[1]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR6_ADDR[1]));
  FDPE \CHAR6_ADDR_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\CHAR6_ADDR[2]_i_1_n_0 ),
        .PRE(\CHAR6_ADDR[2]_i_2_n_0 ),
        .Q(CHAR6_ADDR[2]));
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
        .CE(char_diff_reg),
        .D(char_diff_delay[0]),
        .Q(char_diff_c[96]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][10] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[10]),
        .Q(char_diff_c[106]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][11] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[11]),
        .Q(char_diff_c[107]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][12] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[12]),
        .Q(char_diff_c[108]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][13] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[13]),
        .Q(char_diff_c[109]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][14] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[14]),
        .Q(char_diff_c[110]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][15] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[15]),
        .Q(char_diff_c[111]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][1] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[1]),
        .Q(char_diff_c[97]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][2] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[2]),
        .Q(char_diff_c[98]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][3] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[3]),
        .Q(char_diff_c[99]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][4] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[4]),
        .Q(char_diff_c[100]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][5] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[5]),
        .Q(char_diff_c[101]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][6] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[6]),
        .Q(char_diff_c[102]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][7] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[7]),
        .Q(char_diff_c[103]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][8] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[8]),
        .Q(char_diff_c[104]),
        .R(1'b0));
  FDRE \char_diff_reg_reg[6][9] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_diff_delay[9]),
        .Q(char_diff_c[105]),
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
  LUT3 #(
    .INIT(8'h82)) 
    \char_index_reg[0][3]_i_1 
       (.I0(\char_index_reg[0][3]_i_2_n_0 ),
        .I1(char_addr_delay[2]),
        .I2(CHAR0_ADDR[2]),
        .O(\char_index_reg[0][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_reg[0][3]_i_2 
       (.I0(CHAR0_ADDR[1]),
        .I1(char_addr_delay[1]),
        .I2(CHAR0_ADDR[0]),
        .I3(char_addr_delay[0]),
        .O(\char_index_reg[0][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \char_index_reg[1][3]_i_1 
       (.I0(\char_index_reg[6][3]_i_4_n_0 ),
        .I1(\char_index_reg[0][3]_i_1_n_0 ),
        .O(\char_index_reg[1][3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \char_index_reg[2][3]_i_1 
       (.I0(\char_index_reg[6][3]_i_4_n_0 ),
        .I1(\char_index_reg[0][3]_i_1_n_0 ),
        .I2(\char_index_reg[6][3]_i_2_n_0 ),
        .O(\char_index_reg[2][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \char_index_reg[3][3]_i_1 
       (.I0(\char_index_reg[6][3]_i_4_n_0 ),
        .I1(\char_index_reg[0][3]_i_1_n_0 ),
        .I2(\char_index_reg[6][3]_i_3_n_0 ),
        .I3(\char_index_reg[6][3]_i_2_n_0 ),
        .O(\char_index_reg[3][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \char_index_reg[4][3]_i_1 
       (.I0(\char_index_reg[6][3]_i_6_n_0 ),
        .I1(\char_index_reg[6][3]_i_2_n_0 ),
        .I2(\char_index_reg[6][3]_i_3_n_0 ),
        .I3(\char_index_reg[0][3]_i_1_n_0 ),
        .I4(\char_index_reg[6][3]_i_4_n_0 ),
        .O(\char_index_reg[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \char_index_reg[5][3]_i_1 
       (.I0(\char_index_reg[6][3]_i_2_n_0 ),
        .I1(\char_index_reg[6][3]_i_3_n_0 ),
        .I2(\char_index_reg[0][3]_i_1_n_0 ),
        .I3(\char_index_reg[6][3]_i_4_n_0 ),
        .I4(\char_index_reg[5][3]_i_2_n_0 ),
        .I5(\char_index_reg[6][3]_i_6_n_0 ),
        .O(\char_index_reg[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \char_index_reg[5][3]_i_2 
       (.I0(\char_index_reg[6][3]_i_8_n_0 ),
        .I1(char_addr_delay[2]),
        .I2(CHAR5_ADDR[2]),
        .O(\char_index_reg[5][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \char_index_reg[6][3]_i_1 
       (.I0(\char_index_reg[6][3]_i_2_n_0 ),
        .I1(\char_index_reg[6][3]_i_3_n_0 ),
        .I2(\char_index_reg[0][3]_i_1_n_0 ),
        .I3(\char_index_reg[6][3]_i_4_n_0 ),
        .I4(\char_index_reg[6][3]_i_5_n_0 ),
        .I5(\char_index_reg[6][3]_i_6_n_0 ),
        .O(char_diff_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \char_index_reg[6][3]_i_2 
       (.I0(CHAR2_ADDR[1]),
        .I1(char_addr_delay[1]),
        .I2(CHAR2_ADDR[0]),
        .I3(char_addr_delay[0]),
        .I4(char_addr_delay[2]),
        .I5(CHAR2_ADDR[2]),
        .O(\char_index_reg[6][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \char_index_reg[6][3]_i_3 
       (.I0(CHAR3_ADDR[1]),
        .I1(char_addr_delay[1]),
        .I2(CHAR3_ADDR[0]),
        .I3(char_addr_delay[0]),
        .I4(char_addr_delay[2]),
        .I5(CHAR3_ADDR[2]),
        .O(\char_index_reg[6][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \char_index_reg[6][3]_i_4 
       (.I0(\char_index_reg[6][3]_i_7_n_0 ),
        .I1(CHAR1_ADDR[2]),
        .I2(char_addr_delay[2]),
        .O(\char_index_reg[6][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFE766)) 
    \char_index_reg[6][3]_i_5 
       (.I0(CHAR6_ADDR[2]),
        .I1(char_addr_delay[2]),
        .I2(CHAR5_ADDR[2]),
        .I3(\char_index_reg[6][3]_i_8_n_0 ),
        .I4(\char_index_reg[6][3]_i_9_n_0 ),
        .O(\char_index_reg[6][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \char_index_reg[6][3]_i_6 
       (.I0(CHAR4_ADDR[1]),
        .I1(char_addr_delay[1]),
        .I2(CHAR4_ADDR[0]),
        .I3(char_addr_delay[0]),
        .I4(char_addr_delay[2]),
        .I5(CHAR4_ADDR[2]),
        .O(\char_index_reg[6][3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_reg[6][3]_i_7 
       (.I0(char_addr_delay[1]),
        .I1(CHAR1_ADDR[1]),
        .I2(char_addr_delay[0]),
        .I3(CHAR1_ADDR[0]),
        .O(\char_index_reg[6][3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \char_index_reg[6][3]_i_8 
       (.I0(CHAR5_ADDR[1]),
        .I1(char_addr_delay[1]),
        .I2(CHAR5_ADDR[0]),
        .I3(char_addr_delay[0]),
        .O(\char_index_reg[6][3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \char_index_reg[6][3]_i_9 
       (.I0(CHAR6_ADDR[1]),
        .I1(char_addr_delay[1]),
        .I2(CHAR6_ADDR[0]),
        .I3(char_addr_delay[0]),
        .O(\char_index_reg[6][3]_i_9_n_0 ));
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
        .CE(char_diff_reg),
        .D(char_index_delay[0]),
        .Q(char_index_c[24]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][1] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_index_delay[1]),
        .Q(char_index_c[25]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][2] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_index_delay[2]),
        .Q(char_index_c[26]),
        .R(1'b0));
  FDRE \char_index_reg_reg[6][3] 
       (.C(clk),
        .CE(char_diff_reg),
        .D(char_index_delay[3]),
        .Q(char_index_c[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    char_valid_delay_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid_delay),
        .Q(char_valid_delay_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    char_valid_delay_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid),
        .Q(char_valid_delay),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    char_valid_reg_i_1
       (.I0(\char_index_reg[6][3]_i_2_n_0 ),
        .I1(\char_index_reg[6][3]_i_3_n_0 ),
        .I2(char_valid_reg_i_2_n_0),
        .I3(\char_index_reg[6][3]_i_6_n_0 ),
        .I4(char_valid_reg_i_3_n_0),
        .I5(\char_index_reg[6][3]_i_5_n_0 ),
        .O(char_valid_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h42665AFF)) 
    char_valid_reg_i_2
       (.I0(char_addr_delay[2]),
        .I1(CHAR1_ADDR[2]),
        .I2(CHAR0_ADDR[2]),
        .I3(\char_index_reg[0][3]_i_2_n_0 ),
        .I4(\char_index_reg[6][3]_i_7_n_0 ),
        .O(char_valid_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    char_valid_reg_i_3
       (.I0(char_valid_delay_1),
        .I1(char_valid_delay),
        .O(char_valid_reg_i_3_n_0));
  FDRE char_valid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_valid_reg_i_1_n_0),
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
