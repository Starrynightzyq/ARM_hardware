// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 11 19:34:54 2019
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ m3_for_arty_a7_DAPLink_to_Arty_shield_0_0_stub.v
// Design      : m3_for_arty_a7_DAPLink_to_Arty_shield_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DAPLink_to_Arty_shield,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(shield_41_to_26, uart_rxd_axi, uart_txd_axi, 
  uart_txd_arty, uart_rxd_arty, DAPLink_fittedn, qspi_q0_i, qspi_q0_o, qspi_q0_t, qspi_q1_i, 
  qspi_q1_o, qspi_q1_t, qspi_q2_i, qspi_q2_o, qspi_q2_t, qspi_q3_i, qspi_q3_o, qspi_q3_t, 
  qspi_ck_o, qspi_ss_o, qspi_xip_q0_i, qspi_xip_q0_o, qspi_xip_q0_t, qspi_xip_q1_i, 
  qspi_xip_q1_o, qspi_xip_q1_t, qspi_xip_q2_i, qspi_xip_q2_o, qspi_xip_q2_t, qspi_xip_q3_i, 
  qspi_xip_q3_o, qspi_xip_q3_t, qspi_xip_ck_o, qspi_xip_ss_o, qspi_sel, ext_spi_clk, spi_q0_i, 
  spi_q0_o, spi_q0_t, spi_q1_i, spi_q1_o, spi_q1_t, spi_ck_o, spi_ss_o, SWDOEN, SWDI, SWDO, SWCLK, 
  SWRSTn)
/* synthesis syn_black_box black_box_pad_pin="shield_41_to_26[41:26],uart_rxd_axi,uart_txd_axi,uart_txd_arty,uart_rxd_arty,DAPLink_fittedn,qspi_q0_i,qspi_q0_o,qspi_q0_t,qspi_q1_i,qspi_q1_o,qspi_q1_t,qspi_q2_i,qspi_q2_o,qspi_q2_t,qspi_q3_i,qspi_q3_o,qspi_q3_t,qspi_ck_o,qspi_ss_o,qspi_xip_q0_i,qspi_xip_q0_o,qspi_xip_q0_t,qspi_xip_q1_i,qspi_xip_q1_o,qspi_xip_q1_t,qspi_xip_q2_i,qspi_xip_q2_o,qspi_xip_q2_t,qspi_xip_q3_i,qspi_xip_q3_o,qspi_xip_q3_t,qspi_xip_ck_o,qspi_xip_ss_o,qspi_sel,ext_spi_clk,spi_q0_i,spi_q0_o,spi_q0_t,spi_q1_i,spi_q1_o,spi_q1_t,spi_ck_o,spi_ss_o,SWDOEN,SWDI,SWDO,SWCLK,SWRSTn" */;
  inout [41:26]shield_41_to_26;
  output uart_rxd_axi;
  input uart_txd_axi;
  output uart_txd_arty;
  input uart_rxd_arty;
  output DAPLink_fittedn;
  output qspi_q0_i;
  input qspi_q0_o;
  input qspi_q0_t;
  output qspi_q1_i;
  input qspi_q1_o;
  input qspi_q1_t;
  output qspi_q2_i;
  input qspi_q2_o;
  input qspi_q2_t;
  output qspi_q3_i;
  input qspi_q3_o;
  input qspi_q3_t;
  input qspi_ck_o;
  input qspi_ss_o;
  output qspi_xip_q0_i;
  input qspi_xip_q0_o;
  input qspi_xip_q0_t;
  output qspi_xip_q1_i;
  input qspi_xip_q1_o;
  input qspi_xip_q1_t;
  output qspi_xip_q2_i;
  input qspi_xip_q2_o;
  input qspi_xip_q2_t;
  output qspi_xip_q3_i;
  input qspi_xip_q3_o;
  input qspi_xip_q3_t;
  input qspi_xip_ck_o;
  input qspi_xip_ss_o;
  input qspi_sel;
  input ext_spi_clk;
  output spi_q0_i;
  input spi_q0_o;
  input spi_q0_t;
  output spi_q1_i;
  input spi_q1_o;
  input spi_q1_t;
  input spi_ck_o;
  input spi_ss_o;
  input SWDOEN;
  output SWDI;
  input SWDO;
  output SWCLK;
  output SWRSTn;
endmodule
