// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Arm.com:user:DAPLink_to_Arty_shield:1.0
// IP Revision: 7

(* X_CORE_INFO = "DAPLink_to_Arty_shield,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_DAPLink_to_Arty_shield_0_0,DAPLink_to_Arty_shield,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_DAPLink_to_Arty_shield_0_0 (
  shield_41_to_26,
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
  SWRSTn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 shield TRI_O" *)
inout wire [41 : 26] shield_41_to_26;
output wire uart_rxd_axi;
input wire uart_txd_axi;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_out TxD" *)
output wire uart_txd_arty;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_out RxD" *)
input wire uart_rxd_arty;
output wire DAPLink_fittedn;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO0_I" *)
output wire qspi_q0_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO0_O" *)
input wire qspi_q0_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO0_T" *)
input wire qspi_q0_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO1_I" *)
output wire qspi_q1_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO1_O" *)
input wire qspi_q1_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO1_T" *)
input wire qspi_q1_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO2_I" *)
output wire qspi_q2_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO2_O" *)
input wire qspi_q2_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO2_T" *)
input wire qspi_q2_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO3_I" *)
output wire qspi_q3_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO3_O" *)
input wire qspi_q3_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI IO3_T" *)
input wire qspi_q3_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI SCK_O" *)
input wire qspi_ck_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI SS_O" *)
input wire qspi_ss_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO0_I" *)
output wire qspi_xip_q0_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO0_O" *)
input wire qspi_xip_q0_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO0_T" *)
input wire qspi_xip_q0_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO1_I" *)
output wire qspi_xip_q1_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO1_O" *)
input wire qspi_xip_q1_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO1_T" *)
input wire qspi_xip_q1_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO2_I" *)
output wire qspi_xip_q2_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO2_O" *)
input wire qspi_xip_q2_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO2_T" *)
input wire qspi_xip_q2_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO3_I" *)
output wire qspi_xip_q3_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO3_O" *)
input wire qspi_xip_q3_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP IO3_T" *)
input wire qspi_xip_q3_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP SCK_O" *)
input wire qspi_xip_ck_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 QSPI_XIP SS_O" *)
input wire qspi_xip_ss_o;
input wire qspi_sel;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_spi_clk, ASSOCIATED_BUSIF QSPI_XIP:QSPI, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /Clocks_and_Resets/clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ext_spi_clk CLK" *)
input wire ext_spi_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO0_I" *)
output wire spi_q0_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO0_O" *)
input wire spi_q0_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO0_T" *)
input wire spi_q0_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO1_I" *)
output wire spi_q1_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO1_O" *)
input wire spi_q1_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI IO1_T" *)
input wire spi_q1_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI SCK_O" *)
input wire spi_ck_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI SS_O" *)
input wire spi_ss_o;
input wire SWDOEN;
output wire SWDI;
input wire SWDO;
output wire SWCLK;
output wire SWRSTn;

  DAPLink_to_Arty_shield inst (
    .shield_41_to_26(shield_41_to_26),
    .uart_rxd_axi(uart_rxd_axi),
    .uart_txd_axi(uart_txd_axi),
    .uart_txd_arty(uart_txd_arty),
    .uart_rxd_arty(uart_rxd_arty),
    .DAPLink_fittedn(DAPLink_fittedn),
    .qspi_q0_i(qspi_q0_i),
    .qspi_q0_o(qspi_q0_o),
    .qspi_q0_t(qspi_q0_t),
    .qspi_q1_i(qspi_q1_i),
    .qspi_q1_o(qspi_q1_o),
    .qspi_q1_t(qspi_q1_t),
    .qspi_q2_i(qspi_q2_i),
    .qspi_q2_o(qspi_q2_o),
    .qspi_q2_t(qspi_q2_t),
    .qspi_q3_i(qspi_q3_i),
    .qspi_q3_o(qspi_q3_o),
    .qspi_q3_t(qspi_q3_t),
    .qspi_ck_o(qspi_ck_o),
    .qspi_ss_o(qspi_ss_o),
    .qspi_xip_q0_i(qspi_xip_q0_i),
    .qspi_xip_q0_o(qspi_xip_q0_o),
    .qspi_xip_q0_t(qspi_xip_q0_t),
    .qspi_xip_q1_i(qspi_xip_q1_i),
    .qspi_xip_q1_o(qspi_xip_q1_o),
    .qspi_xip_q1_t(qspi_xip_q1_t),
    .qspi_xip_q2_i(qspi_xip_q2_i),
    .qspi_xip_q2_o(qspi_xip_q2_o),
    .qspi_xip_q2_t(qspi_xip_q2_t),
    .qspi_xip_q3_i(qspi_xip_q3_i),
    .qspi_xip_q3_o(qspi_xip_q3_o),
    .qspi_xip_q3_t(qspi_xip_q3_t),
    .qspi_xip_ck_o(qspi_xip_ck_o),
    .qspi_xip_ss_o(qspi_xip_ss_o),
    .qspi_sel(qspi_sel),
    .ext_spi_clk(ext_spi_clk),
    .spi_q0_i(spi_q0_i),
    .spi_q0_o(spi_q0_o),
    .spi_q0_t(spi_q0_t),
    .spi_q1_i(spi_q1_i),
    .spi_q1_o(spi_q1_o),
    .spi_q1_t(spi_q1_t),
    .spi_ck_o(spi_ck_o),
    .spi_ss_o(spi_ss_o),
    .SWDOEN(SWDOEN),
    .SWDI(SWDI),
    .SWDO(SWDO),
    .SWCLK(SWCLK),
    .SWRSTn(SWRSTn)
  );
endmodule
