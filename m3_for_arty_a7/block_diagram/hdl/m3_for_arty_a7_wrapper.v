//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Jul 23 14:22:52 2019
//Host        : desktopzyq running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (DDR2_0_addr,
    DDR2_0_ba,
    DDR2_0_cas_n,
    DDR2_0_ck_n,
    DDR2_0_ck_p,
    DDR2_0_cke,
    DDR2_0_cs_n,
    DDR2_0_dm,
    DDR2_0_dq,
    DDR2_0_dqs_n,
    DDR2_0_dqs_p,
    DDR2_0_odt,
    DDR2_0_ras_n,
    DDR2_0_we_n,
    GPIO_lcd,
    SDWIO,
    SWCLK,
    cmos_data,
    cmos_href,
    cmos_iic_scl_io,
    cmos_iic_sda_io,
    cmos_pclk,
    cmos_pwdn_tri_o,
    cmos_rst_tri_o,
    cmos_vsync,
    cmos_xclk_o_0,
    dip_switches_4bits_tri_i,
    led_4bits_tri_io,
    nSRST,
    reset,
    spi_rtl_io0_io,
    spi_rtl_io1_io,
    spi_rtl_sck_io,
    spi_rtl_ss_io,
    sys_clock,
    uart_keyboard_rxd,
    uart_keyboard_txd,
    uart_wifi_rx,
    uart_wifi_tx,
    usb_uart_rxd,
    usb_uart_txd,
    vga_pBlue_0,
    vga_pGreen_0,
    vga_pHSync_0,
    vga_pRed_0,
    vga_pVSync_0);
  output [12:0]DDR2_0_addr;
  output [2:0]DDR2_0_ba;
  output DDR2_0_cas_n;
  output [0:0]DDR2_0_ck_n;
  output [0:0]DDR2_0_ck_p;
  output [0:0]DDR2_0_cke;
  output [0:0]DDR2_0_cs_n;
  output [1:0]DDR2_0_dm;
  inout [15:0]DDR2_0_dq;
  inout [1:0]DDR2_0_dqs_n;
  inout [1:0]DDR2_0_dqs_p;
  output [0:0]DDR2_0_odt;
  output DDR2_0_ras_n;
  output DDR2_0_we_n;
  output [2:0]GPIO_lcd;
  inout [0:0]SDWIO;
  input SWCLK;
  input [7:0]cmos_data;
  input cmos_href;
  inout cmos_iic_scl_io;
  inout cmos_iic_sda_io;
  input cmos_pclk;
  output [0:0]cmos_pwdn_tri_o;
  output [0:0]cmos_rst_tri_o;
  input cmos_vsync;
  output cmos_xclk_o_0;
  input [3:0]dip_switches_4bits_tri_i;
  inout [3:0]led_4bits_tri_io;
  input nSRST;
  input reset;
  inout spi_rtl_io0_io;
  inout spi_rtl_io1_io;
  inout spi_rtl_sck_io;
  inout [1:0]spi_rtl_ss_io;
  input sys_clock;
  input uart_keyboard_rxd;
  output uart_keyboard_txd;
  input uart_wifi_rx;
  output uart_wifi_tx;
  input usb_uart_rxd;
  output usb_uart_txd;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  wire [12:0]DDR2_0_addr;
  wire [2:0]DDR2_0_ba;
  wire DDR2_0_cas_n;
  wire [0:0]DDR2_0_ck_n;
  wire [0:0]DDR2_0_ck_p;
  wire [0:0]DDR2_0_cke;
  wire [0:0]DDR2_0_cs_n;
  wire [1:0]DDR2_0_dm;
  wire [15:0]DDR2_0_dq;
  wire [1:0]DDR2_0_dqs_n;
  wire [1:0]DDR2_0_dqs_p;
  wire [0:0]DDR2_0_odt;
  wire DDR2_0_ras_n;
  wire DDR2_0_we_n;
  wire [2:0]GPIO_lcd;
  wire [0:0]SDWIO;
  wire SWCLK;
  wire [7:0]cmos_data;
  wire cmos_href;
  wire cmos_iic_scl_i;
  wire cmos_iic_scl_io;
  wire cmos_iic_scl_o;
  wire cmos_iic_scl_t;
  wire cmos_iic_sda_i;
  wire cmos_iic_sda_io;
  wire cmos_iic_sda_o;
  wire cmos_iic_sda_t;
  wire cmos_pclk;
  wire [0:0]cmos_pwdn_tri_o;
  wire [0:0]cmos_rst_tri_o;
  wire cmos_vsync;
  wire cmos_xclk_o_0;
  wire [3:0]dip_switches_4bits_tri_i;
  wire [0:0]led_4bits_tri_i_0;
  wire [1:1]led_4bits_tri_i_1;
  wire [2:2]led_4bits_tri_i_2;
  wire [3:3]led_4bits_tri_i_3;
  wire [0:0]led_4bits_tri_io_0;
  wire [1:1]led_4bits_tri_io_1;
  wire [2:2]led_4bits_tri_io_2;
  wire [3:3]led_4bits_tri_io_3;
  wire [0:0]led_4bits_tri_o_0;
  wire [1:1]led_4bits_tri_o_1;
  wire [2:2]led_4bits_tri_o_2;
  wire [3:3]led_4bits_tri_o_3;
  wire [0:0]led_4bits_tri_t_0;
  wire [1:1]led_4bits_tri_t_1;
  wire [2:2]led_4bits_tri_t_2;
  wire [3:3]led_4bits_tri_t_3;
  wire nSRST;
  wire reset;
  wire spi_rtl_io0_i;
  wire spi_rtl_io0_io;
  wire spi_rtl_io0_o;
  wire spi_rtl_io0_t;
  wire spi_rtl_io1_i;
  wire spi_rtl_io1_io;
  wire spi_rtl_io1_o;
  wire spi_rtl_io1_t;
  wire spi_rtl_sck_i;
  wire spi_rtl_sck_io;
  wire spi_rtl_sck_o;
  wire spi_rtl_sck_t;
  wire [0:0]spi_rtl_ss_i_0;
  wire [1:1]spi_rtl_ss_i_1;
  wire [0:0]spi_rtl_ss_io_0;
  wire [1:1]spi_rtl_ss_io_1;
  wire [0:0]spi_rtl_ss_o_0;
  wire [1:1]spi_rtl_ss_o_1;
  wire spi_rtl_ss_t;
  wire sys_clock;
  wire uart_keyboard_rxd;
  wire uart_keyboard_txd;
  wire uart_wifi_rx;
  wire uart_wifi_tx;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire [3:0]vga_pBlue_0;
  wire [3:0]vga_pGreen_0;
  wire vga_pHSync_0;
  wire [3:0]vga_pRed_0;
  wire vga_pVSync_0;

  IOBUF cmos_iic_scl_iobuf
       (.I(cmos_iic_scl_o),
        .IO(cmos_iic_scl_io),
        .O(cmos_iic_scl_i),
        .T(cmos_iic_scl_t));
  IOBUF cmos_iic_sda_iobuf
       (.I(cmos_iic_sda_o),
        .IO(cmos_iic_sda_io),
        .O(cmos_iic_sda_i),
        .T(cmos_iic_sda_t));
  IOBUF led_4bits_tri_iobuf_0
       (.I(led_4bits_tri_o_0),
        .IO(led_4bits_tri_io[0]),
        .O(led_4bits_tri_i_0),
        .T(led_4bits_tri_t_0));
  IOBUF led_4bits_tri_iobuf_1
       (.I(led_4bits_tri_o_1),
        .IO(led_4bits_tri_io[1]),
        .O(led_4bits_tri_i_1),
        .T(led_4bits_tri_t_1));
  IOBUF led_4bits_tri_iobuf_2
       (.I(led_4bits_tri_o_2),
        .IO(led_4bits_tri_io[2]),
        .O(led_4bits_tri_i_2),
        .T(led_4bits_tri_t_2));
  IOBUF led_4bits_tri_iobuf_3
       (.I(led_4bits_tri_o_3),
        .IO(led_4bits_tri_io[3]),
        .O(led_4bits_tri_i_3),
        .T(led_4bits_tri_t_3));
  m3_for_arty_a7 m3_for_arty_a7_i
       (.DDR2_0_addr(DDR2_0_addr),
        .DDR2_0_ba(DDR2_0_ba),
        .DDR2_0_cas_n(DDR2_0_cas_n),
        .DDR2_0_ck_n(DDR2_0_ck_n),
        .DDR2_0_ck_p(DDR2_0_ck_p),
        .DDR2_0_cke(DDR2_0_cke),
        .DDR2_0_cs_n(DDR2_0_cs_n),
        .DDR2_0_dm(DDR2_0_dm),
        .DDR2_0_dq(DDR2_0_dq),
        .DDR2_0_dqs_n(DDR2_0_dqs_n),
        .DDR2_0_dqs_p(DDR2_0_dqs_p),
        .DDR2_0_odt(DDR2_0_odt),
        .DDR2_0_ras_n(DDR2_0_ras_n),
        .DDR2_0_we_n(DDR2_0_we_n),
        .GPIO_lcd(GPIO_lcd),
        .SDWIO(SDWIO),
        .SWCLK(SWCLK),
        .cmos_data(cmos_data),
        .cmos_href(cmos_href),
        .cmos_iic_scl_i(cmos_iic_scl_i),
        .cmos_iic_scl_o(cmos_iic_scl_o),
        .cmos_iic_scl_t(cmos_iic_scl_t),
        .cmos_iic_sda_i(cmos_iic_sda_i),
        .cmos_iic_sda_o(cmos_iic_sda_o),
        .cmos_iic_sda_t(cmos_iic_sda_t),
        .cmos_pclk(cmos_pclk),
        .cmos_pwdn_tri_o(cmos_pwdn_tri_o),
        .cmos_rst_tri_o(cmos_rst_tri_o),
        .cmos_vsync(cmos_vsync),
        .cmos_xclk_o_0(cmos_xclk_o_0),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .led_4bits_tri_i({led_4bits_tri_i_3,led_4bits_tri_i_2,led_4bits_tri_i_1,led_4bits_tri_i_0}),
        .led_4bits_tri_o({led_4bits_tri_o_3,led_4bits_tri_o_2,led_4bits_tri_o_1,led_4bits_tri_o_0}),
        .led_4bits_tri_t({led_4bits_tri_t_3,led_4bits_tri_t_2,led_4bits_tri_t_1,led_4bits_tri_t_0}),
        .nSRST(nSRST),
        .reset(reset),
        .spi_rtl_io0_i(spi_rtl_io0_i),
        .spi_rtl_io0_o(spi_rtl_io0_o),
        .spi_rtl_io0_t(spi_rtl_io0_t),
        .spi_rtl_io1_i(spi_rtl_io1_i),
        .spi_rtl_io1_o(spi_rtl_io1_o),
        .spi_rtl_io1_t(spi_rtl_io1_t),
        .spi_rtl_sck_i(spi_rtl_sck_i),
        .spi_rtl_sck_o(spi_rtl_sck_o),
        .spi_rtl_sck_t(spi_rtl_sck_t),
        .spi_rtl_ss_i({spi_rtl_ss_i_1,spi_rtl_ss_i_0}),
        .spi_rtl_ss_o({spi_rtl_ss_o_1,spi_rtl_ss_o_0}),
        .spi_rtl_ss_t(spi_rtl_ss_t),
        .sys_clock(sys_clock),
        .uart_keyboard_rxd(uart_keyboard_rxd),
        .uart_keyboard_txd(uart_keyboard_txd),
        .uart_wifi_rx(uart_wifi_rx),
        .uart_wifi_tx(uart_wifi_tx),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vga_pBlue_0(vga_pBlue_0),
        .vga_pGreen_0(vga_pGreen_0),
        .vga_pHSync_0(vga_pHSync_0),
        .vga_pRed_0(vga_pRed_0),
        .vga_pVSync_0(vga_pVSync_0));
  IOBUF spi_rtl_io0_iobuf
       (.I(spi_rtl_io0_o),
        .IO(spi_rtl_io0_io),
        .O(spi_rtl_io0_i),
        .T(spi_rtl_io0_t));
  IOBUF spi_rtl_io1_iobuf
       (.I(spi_rtl_io1_o),
        .IO(spi_rtl_io1_io),
        .O(spi_rtl_io1_i),
        .T(spi_rtl_io1_t));
  IOBUF spi_rtl_sck_iobuf
       (.I(spi_rtl_sck_o),
        .IO(spi_rtl_sck_io),
        .O(spi_rtl_sck_i),
        .T(spi_rtl_sck_t));
  IOBUF spi_rtl_ss_iobuf_0
       (.I(spi_rtl_ss_o_0),
        .IO(spi_rtl_ss_io[0]),
        .O(spi_rtl_ss_i_0),
        .T(spi_rtl_ss_t));
  IOBUF spi_rtl_ss_iobuf_1
       (.I(spi_rtl_ss_o_1),
        .IO(spi_rtl_ss_io[1]),
        .O(spi_rtl_ss_i_1),
        .T(spi_rtl_ss_t));
endmodule
