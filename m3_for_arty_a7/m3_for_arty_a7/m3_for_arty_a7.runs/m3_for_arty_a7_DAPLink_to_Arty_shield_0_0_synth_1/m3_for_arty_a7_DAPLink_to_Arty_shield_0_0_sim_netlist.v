// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 11 19:34:54 2019
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ m3_for_arty_a7_DAPLink_to_Arty_shield_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_DAPLink_to_Arty_shield_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAPLink_to_Arty_shield
   (shield_41_to_26,
    qspi_xip_ss_o,
    qspi_xip_ck_o,
    ext_spi_clk,
    qspi_xip_q3_t,
    qspi_sel,
    qspi_q3_t,
    qspi_xip_q2_t,
    qspi_q2_t,
    qspi_xip_q1_t,
    qspi_q1_t,
    qspi_xip_q0_t,
    qspi_q0_t,
    qspi_mux_q3_o,
    qspi_mux_q2_o,
    qspi_mux_q1_o,
    qspi_mux_q0_o,
    qspi_xip_q0_o);
  output [3:0]shield_41_to_26;
  input qspi_xip_ss_o;
  input qspi_xip_ck_o;
  input ext_spi_clk;
  input qspi_xip_q3_t;
  input qspi_sel;
  input qspi_q3_t;
  input qspi_xip_q2_t;
  input qspi_q2_t;
  input qspi_xip_q1_t;
  input qspi_q1_t;
  input qspi_xip_q0_t;
  input qspi_q0_t;
  input qspi_mux_q3_o;
  input qspi_mux_q2_o;
  input qspi_mux_q1_o;
  input qspi_mux_q0_o;
  input qspi_xip_q0_o;

  wire EB_command;
  wire EB_command12_in;
  wire EB_command_i_1_n_0;
  wire EB_command_i_3_n_0;
  wire EB_command_i_4_n_0;
  wire [7:0]command;
  wire ext_spi_clk;
  wire [4:0]p_0_in;
  wire [7:7]p_0_out;
  wire qspi_mux_q0_o;
  wire qspi_mux_q1_o;
  wire qspi_mux_q2_o;
  wire qspi_mux_q3_o;
  wire qspi_q0_t;
  wire qspi_q1_t;
  wire qspi_q2_t;
  wire qspi_q3_t;
  wire qspi_sel;
  wire qspi_xip_ck_o;
  wire qspi_xip_mode_bits;
  wire qspi_xip_q0_o;
  wire qspi_xip_q0_t;
  wire qspi_xip_q1_t;
  wire qspi_xip_q2_t;
  wire qspi_xip_q3_t;
  wire qspi_xip_ss_o;
  wire qspi_xip_t_drive;
  wire sck_count0;
  wire \sck_count[2]_i_1_n_0 ;
  wire [4:0]sck_count_reg__0;
  wire [3:0]shield_41_to_26;
  wire \shield_41_to_26[30]_INST_0_i_2_n_0 ;
  wire \shield_41_to_26[31]_INST_0_i_2_n_0 ;
  wire \shield_41_to_26[32]_INST_0_i_2_n_0 ;

  LUT5 #(
    .INIT(32'h0000AAAE)) 
    EB_command_i_1
       (.I0(EB_command),
        .I1(EB_command12_in),
        .I2(EB_command_i_3_n_0),
        .I3(EB_command_i_4_n_0),
        .I4(qspi_xip_ss_o),
        .O(EB_command_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    EB_command_i_2
       (.I0(sck_count_reg__0[3]),
        .I1(sck_count_reg__0[2]),
        .I2(sck_count_reg__0[1]),
        .I3(sck_count_reg__0[0]),
        .I4(sck_count_reg__0[4]),
        .O(EB_command12_in));
  LUT4 #(
    .INIT(16'h7FFF)) 
    EB_command_i_3
       (.I0(command[7]),
        .I1(command[3]),
        .I2(command[0]),
        .I3(command[1]),
        .O(EB_command_i_3_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    EB_command_i_4
       (.I0(command[2]),
        .I1(command[4]),
        .I2(command[5]),
        .I3(command[6]),
        .O(EB_command_i_4_n_0));
  FDRE EB_command_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(EB_command_i_1_n_0),
        .Q(EB_command),
        .R(1'b0));
  FDRE \command_reg[0] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(qspi_xip_q0_o),
        .Q(command[0]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[1] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[0]),
        .Q(command[1]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[2] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[1]),
        .Q(command[2]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[3] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[2]),
        .Q(command[3]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[4] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[3]),
        .Q(command[4]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[5] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[4]),
        .Q(command[5]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[6] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[5]),
        .Q(command[6]),
        .R(qspi_xip_ss_o));
  FDRE \command_reg[7] 
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(command[6]),
        .Q(command[7]),
        .R(qspi_xip_ss_o));
  LUT6 #(
    .INIT(64'h1400000000000000)) 
    qspi_xip_t_drive_i_1
       (.I0(sck_count_reg__0[4]),
        .I1(sck_count_reg__0[1]),
        .I2(sck_count_reg__0[0]),
        .I3(sck_count_reg__0[2]),
        .I4(sck_count_reg__0[3]),
        .I5(EB_command),
        .O(qspi_xip_mode_bits));
  FDRE qspi_xip_t_drive_reg
       (.C(ext_spi_clk),
        .CE(qspi_xip_ck_o),
        .D(qspi_xip_mode_bits),
        .Q(qspi_xip_t_drive),
        .R(qspi_xip_ss_o));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sck_count[0]_i_1 
       (.I0(sck_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sck_count[1]_i_1 
       (.I0(sck_count_reg__0[0]),
        .I1(sck_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sck_count[2]_i_1 
       (.I0(sck_count_reg__0[0]),
        .I1(sck_count_reg__0[1]),
        .I2(sck_count_reg__0[2]),
        .O(\sck_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sck_count[3]_i_1 
       (.I0(sck_count_reg__0[1]),
        .I1(sck_count_reg__0[0]),
        .I2(sck_count_reg__0[2]),
        .I3(sck_count_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \sck_count[4]_i_1 
       (.I0(qspi_xip_ck_o),
        .I1(sck_count_reg__0[2]),
        .I2(sck_count_reg__0[4]),
        .I3(sck_count_reg__0[0]),
        .I4(sck_count_reg__0[1]),
        .I5(sck_count_reg__0[3]),
        .O(sck_count0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sck_count[4]_i_2 
       (.I0(sck_count_reg__0[2]),
        .I1(sck_count_reg__0[0]),
        .I2(sck_count_reg__0[1]),
        .I3(sck_count_reg__0[3]),
        .I4(sck_count_reg__0[4]),
        .O(p_0_in[4]));
  FDRE \sck_count_reg[0] 
       (.C(ext_spi_clk),
        .CE(sck_count0),
        .D(p_0_in[0]),
        .Q(sck_count_reg__0[0]),
        .R(qspi_xip_ss_o));
  FDRE \sck_count_reg[1] 
       (.C(ext_spi_clk),
        .CE(sck_count0),
        .D(p_0_in[1]),
        .Q(sck_count_reg__0[1]),
        .R(qspi_xip_ss_o));
  FDRE \sck_count_reg[2] 
       (.C(ext_spi_clk),
        .CE(sck_count0),
        .D(\sck_count[2]_i_1_n_0 ),
        .Q(sck_count_reg__0[2]),
        .R(qspi_xip_ss_o));
  FDRE \sck_count_reg[3] 
       (.C(ext_spi_clk),
        .CE(sck_count0),
        .D(p_0_in[3]),
        .Q(sck_count_reg__0[3]),
        .R(qspi_xip_ss_o));
  FDRE \sck_count_reg[4] 
       (.C(ext_spi_clk),
        .CE(sck_count0),
        .D(p_0_in[4]),
        .Q(sck_count_reg__0[4]),
        .R(qspi_xip_ss_o));
  LUT2 #(
    .INIT(4'h8)) 
    \shield_41_to_26[30]_INST_0 
       (.I0(qspi_mux_q0_o),
        .I1(\shield_41_to_26[30]_INST_0_i_2_n_0 ),
        .O(shield_41_to_26[0]));
  LUT4 #(
    .INIT(16'h0BFB)) 
    \shield_41_to_26[30]_INST_0_i_2 
       (.I0(qspi_xip_t_drive),
        .I1(qspi_xip_q0_t),
        .I2(qspi_sel),
        .I3(qspi_q0_t),
        .O(\shield_41_to_26[30]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shield_41_to_26[31]_INST_0 
       (.I0(qspi_mux_q1_o),
        .I1(\shield_41_to_26[31]_INST_0_i_2_n_0 ),
        .O(shield_41_to_26[1]));
  LUT4 #(
    .INIT(16'h0BFB)) 
    \shield_41_to_26[31]_INST_0_i_2 
       (.I0(qspi_xip_t_drive),
        .I1(qspi_xip_q1_t),
        .I2(qspi_sel),
        .I3(qspi_q1_t),
        .O(\shield_41_to_26[31]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shield_41_to_26[32]_INST_0 
       (.I0(qspi_mux_q2_o),
        .I1(\shield_41_to_26[32]_INST_0_i_2_n_0 ),
        .O(shield_41_to_26[2]));
  LUT4 #(
    .INIT(16'h0BFB)) 
    \shield_41_to_26[32]_INST_0_i_2 
       (.I0(qspi_xip_t_drive),
        .I1(qspi_xip_q2_t),
        .I2(qspi_sel),
        .I3(qspi_q2_t),
        .O(\shield_41_to_26[32]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shield_41_to_26[33]_INST_0 
       (.I0(qspi_mux_q3_o),
        .I1(p_0_out),
        .O(shield_41_to_26[3]));
  LUT4 #(
    .INIT(16'h0BFB)) 
    \shield_41_to_26[33]_INST_0_i_2 
       (.I0(qspi_xip_t_drive),
        .I1(qspi_xip_q3_t),
        .I2(qspi_sel),
        .I3(qspi_q3_t),
        .O(p_0_out));
endmodule

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_DAPLink_to_Arty_shield_0_0,DAPLink_to_Arty_shield,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "DAPLink_to_Arty_shield,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (shield_41_to_26,
    uart_rxd_axi,
    uart_txd_axi,
    uart_txd_arty,
    uart_rxd_arty,
    DAPLink_fittedn,
    qspi_q0_i,
    qspi_q0_o,
    qspi_q0_t,
    qspi_q1_i,
    qspi_q1_o,
    qspi_q1_t,
    qspi_q2_i,
    qspi_q2_o,
    qspi_q2_t,
    qspi_q3_i,
    qspi_q3_o,
    qspi_q3_t,
    qspi_ck_o,
    qspi_ss_o,
    qspi_xip_q0_i,
    qspi_xip_q0_o,
    qspi_xip_q0_t,
    qspi_xip_q1_i,
    qspi_xip_q1_o,
    qspi_xip_q1_t,
    qspi_xip_q2_i,
    qspi_xip_q2_o,
    qspi_xip_q2_t,
    qspi_xip_q3_i,
    qspi_xip_q3_o,
    qspi_xip_q3_t,
    qspi_xip_ck_o,
    qspi_xip_ss_o,
    qspi_sel,
    ext_spi_clk,
    spi_q0_i,
    spi_q0_o,
    spi_q0_t,
    spi_q1_i,
    spi_q1_o,
    spi_q1_t,
    spi_ck_o,
    spi_ss_o,
    SWDOEN,
    SWDI,
    SWDO,
    SWCLK,
    SWRSTn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 shield TRI_O" *) inout [41:26]shield_41_to_26;
  output uart_rxd_axi;
  input uart_txd_axi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_out TxD" *) output uart_txd_arty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_out RxD" *) input uart_rxd_arty;
  output DAPLink_fittedn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO0_I" *) output qspi_q0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO0_O" *) input qspi_q0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO0_T" *) input qspi_q0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO1_I" *) output qspi_q1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO1_O" *) input qspi_q1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO1_T" *) input qspi_q1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO2_I" *) output qspi_q2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO2_O" *) input qspi_q2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO2_T" *) input qspi_q2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO3_I" *) output qspi_q3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO3_O" *) input qspi_q3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO3_T" *) input qspi_q3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI SCK_O" *) input qspi_ck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI SS_O" *) input qspi_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO0_I" *) output qspi_xip_q0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO0_O" *) input qspi_xip_q0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO0_T" *) input qspi_xip_q0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO1_I" *) output qspi_xip_q1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO1_O" *) input qspi_xip_q1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO1_T" *) input qspi_xip_q1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO2_I" *) output qspi_xip_q2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO2_O" *) input qspi_xip_q2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO2_T" *) input qspi_xip_q2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO3_I" *) output qspi_xip_q3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO3_O" *) input qspi_xip_q3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO3_T" *) input qspi_xip_q3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP SCK_O" *) input qspi_xip_ck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP SS_O" *) input qspi_xip_ss_o;
  input qspi_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ext_spi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_spi_clk, ASSOCIATED_BUSIF QSPI_XIP:QSPI, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /Clocks_and_Resets/clk_wiz_0_clk_out1" *) input ext_spi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO0_I" *) output spi_q0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO0_O" *) input spi_q0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO0_T" *) input spi_q0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO1_I" *) output spi_q1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO1_O" *) input spi_q1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO1_T" *) input spi_q1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI SCK_O" *) input spi_ck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI SS_O" *) input spi_ss_o;
  input SWDOEN;
  output SWDI;
  input SWDO;
  output SWCLK;
  output SWRSTn;

  wire SWDO;
  wire SWDOEN;
  wire ext_spi_clk;
  wire qspi_ck_o;
  wire qspi_mux_q0_o;
  wire qspi_mux_q1_o;
  wire qspi_mux_q2_o;
  wire qspi_mux_q3_o;
  wire qspi_q0_o;
  wire qspi_q0_t;
  wire qspi_q1_o;
  wire qspi_q1_t;
  wire qspi_q2_o;
  wire qspi_q2_t;
  wire qspi_q3_o;
  wire qspi_q3_t;
  wire qspi_sel;
  wire qspi_ss_o;
  wire qspi_xip_ck_o;
  wire qspi_xip_q0_o;
  wire qspi_xip_q0_t;
  wire qspi_xip_q1_o;
  wire qspi_xip_q1_t;
  wire qspi_xip_q2_o;
  wire qspi_xip_q2_t;
  wire qspi_xip_q3_o;
  wire qspi_xip_q3_t;
  wire qspi_xip_ss_o;
  wire [41:27]\^shield_41_to_26 ;
  wire spi_ck_o;
  wire spi_q0_o;
  wire spi_ss_o;
  wire uart_rxd_arty;
  wire uart_rxd_axi;
  wire uart_txd_arty;
  wire uart_txd_axi;

  assign DAPLink_fittedn = shield_41_to_26[34];
  assign SWCLK = shield_41_to_26[41];
  assign SWDI = shield_41_to_26[40];
  assign SWRSTn = shield_41_to_26[39];
  assign qspi_q0_i = shield_41_to_26[30];
  assign qspi_q1_i = shield_41_to_26[31];
  assign qspi_q2_i = shield_41_to_26[32];
  assign qspi_q3_i = shield_41_to_26[33];
  assign qspi_xip_q0_i = shield_41_to_26[30];
  assign qspi_xip_q1_i = shield_41_to_26[31];
  assign qspi_xip_q2_i = shield_41_to_26[32];
  assign qspi_xip_q3_i = shield_41_to_26[33];
  assign shield_41_to_26[29] = spi_ck_o;
  assign shield_41_to_26[28] = spi_q0_o;
  assign shield_41_to_26[26] = spi_ss_o;
  assign spi_q1_i = shield_41_to_26[27];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAPLink_to_Arty_shield inst
       (.ext_spi_clk(ext_spi_clk),
        .qspi_mux_q0_o(qspi_mux_q0_o),
        .qspi_mux_q1_o(qspi_mux_q1_o),
        .qspi_mux_q2_o(qspi_mux_q2_o),
        .qspi_mux_q3_o(qspi_mux_q3_o),
        .qspi_q0_t(qspi_q0_t),
        .qspi_q1_t(qspi_q1_t),
        .qspi_q2_t(qspi_q2_t),
        .qspi_q3_t(qspi_q3_t),
        .qspi_sel(qspi_sel),
        .qspi_xip_ck_o(qspi_xip_ck_o),
        .qspi_xip_q0_o(qspi_xip_q0_o),
        .qspi_xip_q0_t(qspi_xip_q0_t),
        .qspi_xip_q1_t(qspi_xip_q1_t),
        .qspi_xip_q2_t(qspi_xip_q2_t),
        .qspi_xip_q3_t(qspi_xip_q3_t),
        .qspi_xip_ss_o(qspi_xip_ss_o),
        .shield_41_to_26(shield_41_to_26[33:30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shield_41_to_26[30]_INST_0_i_1 
       (.I0(qspi_q0_o),
        .I1(qspi_sel),
        .I2(qspi_xip_q0_o),
        .O(qspi_mux_q0_o));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shield_41_to_26[31]_INST_0_i_1 
       (.I0(qspi_q1_o),
        .I1(qspi_sel),
        .I2(qspi_xip_q1_o),
        .O(qspi_mux_q1_o));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shield_41_to_26[32]_INST_0_i_1 
       (.I0(qspi_q2_o),
        .I1(qspi_sel),
        .I2(qspi_xip_q2_o),
        .O(qspi_mux_q2_o));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shield_41_to_26[33]_INST_0_i_1 
       (.I0(qspi_q3_o),
        .I1(qspi_sel),
        .I2(qspi_xip_q3_o),
        .O(qspi_mux_q3_o));
  LUT3 #(
    .INIT(8'hE4)) 
    \shield_41_to_26[35]_INST_0 
       (.I0(qspi_sel),
        .I1(qspi_xip_ck_o),
        .I2(qspi_ck_o),
        .O(shield_41_to_26[35]));
  LUT3 #(
    .INIT(8'hE4)) 
    \shield_41_to_26[36]_INST_0 
       (.I0(qspi_sel),
        .I1(qspi_xip_ss_o),
        .I2(qspi_ss_o),
        .O(shield_41_to_26[36]));
  LUT2 #(
    .INIT(4'h4)) 
    \shield_41_to_26[37]_INST_0 
       (.I0(shield_41_to_26[34]),
        .I1(uart_txd_axi),
        .O(shield_41_to_26[37]));
  LUT2 #(
    .INIT(4'h8)) 
    \shield_41_to_26[40]_INST_0 
       (.I0(SWDO),
        .I1(SWDOEN),
        .O(shield_41_to_26[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    uart_rxd_axi_INST_0
       (.I0(uart_rxd_arty),
        .I1(shield_41_to_26[34]),
        .I2(shield_41_to_26[38]),
        .O(uart_rxd_axi));
  LUT2 #(
    .INIT(4'hB)) 
    uart_txd_arty_INST_0
       (.I0(uart_txd_axi),
        .I1(shield_41_to_26[34]),
        .O(uart_txd_arty));
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
