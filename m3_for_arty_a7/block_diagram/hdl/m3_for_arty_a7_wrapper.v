//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu May  9 17:36:03 2019
//Host        : DESKTOP-A56TUCA running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (DAPLink_tri_o,
    DDR2_0_addr,
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
    TDI,
    TDO,
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
    nTRST,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_io2_io,
    qspi_flash_io3_io,
    qspi_flash_ss_io,
    reset,
    sys_clock,
    temp_sensor_scl_io,
    temp_sensor_sda_io,
    usb_uart_rxd,
    usb_uart_txd,
    vga_pBlue_0,
    vga_pGreen_0,
    vga_pHSync_0,
    vga_pRed_0,
    vga_pVSync_0);
  inout [15:0]DAPLink_tri_o;
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
  input TDI;
  inout [0:0]TDO;
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
  input nTRST;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout qspi_flash_io2_io;
  inout qspi_flash_io3_io;
  inout qspi_flash_ss_io;
  input reset;
  input sys_clock;
  inout temp_sensor_scl_io;
  inout temp_sensor_sda_io;
  input usb_uart_rxd;
  output usb_uart_txd;
  output [3:0]vga_pBlue_0;
  output [3:0]vga_pGreen_0;
  output vga_pHSync_0;
  output [3:0]vga_pRed_0;
  output vga_pVSync_0;

  wire [15:0]DAPLink_tri_o;
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
  wire TDI;
  wire [0:0]TDO;
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
  wire nTRST;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire qspi_flash_io2_i;
  wire qspi_flash_io2_io;
  wire qspi_flash_io2_o;
  wire qspi_flash_io2_t;
  wire qspi_flash_io3_i;
  wire qspi_flash_io3_io;
  wire qspi_flash_io3_o;
  wire qspi_flash_io3_t;
  wire qspi_flash_ss_i;
  wire qspi_flash_ss_io;
  wire qspi_flash_ss_o;
  wire qspi_flash_ss_t;
  wire reset;
  wire sys_clock;
  wire temp_sensor_scl_i;
  wire temp_sensor_scl_io;
  wire temp_sensor_scl_o;
  wire temp_sensor_scl_t;
  wire temp_sensor_sda_i;
  wire temp_sensor_sda_io;
  wire temp_sensor_sda_o;
  wire temp_sensor_sda_t;
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
       (.DAPLink_tri_o(DAPLink_tri_o),
        .DDR2_0_addr(DDR2_0_addr),
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
        .TDI(TDI),
        .TDO(TDO),
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
        .nTRST(nTRST),
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_io2_i(qspi_flash_io2_i),
        .qspi_flash_io2_o(qspi_flash_io2_o),
        .qspi_flash_io2_t(qspi_flash_io2_t),
        .qspi_flash_io3_i(qspi_flash_io3_i),
        .qspi_flash_io3_o(qspi_flash_io3_o),
        .qspi_flash_io3_t(qspi_flash_io3_t),
        .qspi_flash_ss_i(qspi_flash_ss_i),
        .qspi_flash_ss_o(qspi_flash_ss_o),
        .qspi_flash_ss_t(qspi_flash_ss_t),
        .reset(reset),
        .sys_clock(sys_clock),
        .temp_sensor_scl_i(temp_sensor_scl_i),
        .temp_sensor_scl_o(temp_sensor_scl_o),
        .temp_sensor_scl_t(temp_sensor_scl_t),
        .temp_sensor_sda_i(temp_sensor_sda_i),
        .temp_sensor_sda_o(temp_sensor_sda_o),
        .temp_sensor_sda_t(temp_sensor_sda_t),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vga_pBlue_0(vga_pBlue_0),
        .vga_pGreen_0(vga_pGreen_0),
        .vga_pHSync_0(vga_pHSync_0),
        .vga_pRed_0(vga_pRed_0),
        .vga_pVSync_0(vga_pVSync_0));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_io2_iobuf
       (.I(qspi_flash_io2_o),
        .IO(qspi_flash_io2_io),
        .O(qspi_flash_io2_i),
        .T(qspi_flash_io2_t));
  IOBUF qspi_flash_io3_iobuf
       (.I(qspi_flash_io3_o),
        .IO(qspi_flash_io3_io),
        .O(qspi_flash_io3_i),
        .T(qspi_flash_io3_t));
  IOBUF qspi_flash_ss_iobuf
       (.I(qspi_flash_ss_o),
        .IO(qspi_flash_ss_io),
        .O(qspi_flash_ss_i),
        .T(qspi_flash_ss_t));
  IOBUF temp_sensor_scl_iobuf
       (.I(temp_sensor_scl_o),
        .IO(temp_sensor_scl_io),
        .O(temp_sensor_scl_i),
        .T(temp_sensor_scl_t));
  IOBUF temp_sensor_sda_iobuf
       (.I(temp_sensor_sda_o),
        .IO(temp_sensor_sda_io),
        .O(temp_sensor_sda_i),
        .T(temp_sensor_sda_t));
endmodule
