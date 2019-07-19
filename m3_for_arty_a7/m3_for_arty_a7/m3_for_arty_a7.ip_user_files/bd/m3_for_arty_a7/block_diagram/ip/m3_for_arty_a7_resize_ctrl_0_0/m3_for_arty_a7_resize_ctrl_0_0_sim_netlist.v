// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 21:49:37 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               V:/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_resize_ctrl_0_0/m3_for_arty_a7_resize_ctrl_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_resize_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_resize_ctrl_0_0,resize_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "resize_ctrl,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_resize_ctrl_0_0
   (clk,
    rst_n,
    bound_x_min_i,
    bound_x_max_i,
    bound_y_min_i,
    bound_y_max_i,
    bound_x_min_addr,
    bound_x_max_addr,
    resize_interrupt,
    bound_x_min_o,
    bound_x_max_o,
    bound_y_min_o,
    bound_y_max_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input [15:0]bound_x_min_i;
  input [15:0]bound_x_max_i;
  input [15:0]bound_y_min_i;
  input [15:0]bound_y_max_i;
  output [2:0]bound_x_min_addr;
  output [2:0]bound_x_max_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 resize_interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resize_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) input resize_interrupt;
  output [15:0]bound_x_min_o;
  output [15:0]bound_x_max_o;
  output [15:0]bound_y_min_o;
  output [15:0]bound_y_max_o;

  wire [15:0]bound_x_max_i;
  wire [15:0]bound_x_max_o;
  wire [2:0]bound_x_min_addr;
  wire [15:0]bound_x_min_i;
  wire [15:0]bound_x_min_o;
  wire [15:0]bound_y_max_i;
  wire [15:0]bound_y_max_o;
  wire [15:0]bound_y_min_i;
  wire [15:0]bound_y_min_o;
  wire clk;
  wire resize_interrupt;
  wire rst_n;

  assign bound_x_max_addr[2:0] = bound_x_min_addr;
  m3_for_arty_a7_resize_ctrl_0_0_resize_ctrl inst
       (.D({bound_x_min_i,bound_x_max_i,bound_y_min_i,bound_y_max_i}),
        .Q(bound_x_min_addr),
        .\bound_x_min_o[15] ({bound_x_min_o,bound_x_max_o,bound_y_min_o,bound_y_max_o}),
        .clk(clk),
        .resize_interrupt(resize_interrupt),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "resize_ctrl" *) 
module m3_for_arty_a7_resize_ctrl_0_0_resize_ctrl
   (Q,
    \bound_x_min_o[15] ,
    resize_interrupt,
    clk,
    D,
    rst_n);
  output [2:0]Q;
  output [63:0]\bound_x_min_o[15] ;
  input resize_interrupt;
  input clk;
  input [63:0]D;
  input rst_n;

  wire [63:0]D;
  wire [2:0]Q;
  wire [63:0]\bound_x_min_o[15] ;
  wire \character_index[0]_i_1_n_0 ;
  wire \character_index[1]_i_1_n_0 ;
  wire \character_index[2]_i_2_n_0 ;
  wire character_index_n_0;
  wire clk;
  wire ram_i_pack_r;
  wire ram_i_pack_r1;
  wire ram_i_pack_r10_in;
  wire ram_i_pack_r1__7_carry__0_i_1_n_0;
  wire ram_i_pack_r1__7_carry__0_i_2_n_0;
  wire ram_i_pack_r1__7_carry__0_i_3_n_0;
  wire ram_i_pack_r1__7_carry__0_i_4_n_0;
  wire ram_i_pack_r1__7_carry__0_i_5_n_0;
  wire ram_i_pack_r1__7_carry__0_i_6_n_0;
  wire ram_i_pack_r1__7_carry__0_i_7_n_0;
  wire ram_i_pack_r1__7_carry__0_i_8_n_0;
  wire ram_i_pack_r1__7_carry__0_n_1;
  wire ram_i_pack_r1__7_carry__0_n_2;
  wire ram_i_pack_r1__7_carry__0_n_3;
  wire ram_i_pack_r1__7_carry_i_1_n_0;
  wire ram_i_pack_r1__7_carry_i_2_n_0;
  wire ram_i_pack_r1__7_carry_i_3_n_0;
  wire ram_i_pack_r1__7_carry_i_4_n_0;
  wire ram_i_pack_r1__7_carry_i_5_n_0;
  wire ram_i_pack_r1__7_carry_i_6_n_0;
  wire ram_i_pack_r1__7_carry_i_7_n_0;
  wire ram_i_pack_r1__7_carry_i_8_n_0;
  wire ram_i_pack_r1__7_carry_n_0;
  wire ram_i_pack_r1__7_carry_n_1;
  wire ram_i_pack_r1__7_carry_n_2;
  wire ram_i_pack_r1__7_carry_n_3;
  wire ram_i_pack_r1_carry__0_i_1_n_0;
  wire ram_i_pack_r1_carry__0_i_2_n_0;
  wire ram_i_pack_r1_carry__0_i_3_n_0;
  wire ram_i_pack_r1_carry__0_i_4_n_0;
  wire ram_i_pack_r1_carry__0_i_5_n_0;
  wire ram_i_pack_r1_carry__0_i_6_n_0;
  wire ram_i_pack_r1_carry__0_i_7_n_0;
  wire ram_i_pack_r1_carry__0_i_8_n_0;
  wire ram_i_pack_r1_carry__0_n_1;
  wire ram_i_pack_r1_carry__0_n_2;
  wire ram_i_pack_r1_carry__0_n_3;
  wire ram_i_pack_r1_carry_i_1_n_0;
  wire ram_i_pack_r1_carry_i_2_n_0;
  wire ram_i_pack_r1_carry_i_3_n_0;
  wire ram_i_pack_r1_carry_i_4_n_0;
  wire ram_i_pack_r1_carry_i_5_n_0;
  wire ram_i_pack_r1_carry_i_6_n_0;
  wire ram_i_pack_r1_carry_i_7_n_0;
  wire ram_i_pack_r1_carry_i_8_n_0;
  wire ram_i_pack_r1_carry_n_0;
  wire ram_i_pack_r1_carry_n_1;
  wire ram_i_pack_r1_carry_n_2;
  wire ram_i_pack_r1_carry_n_3;
  wire resize_end_r1;
  wire resize_end_r2;
  wire resize_interrupt;
  wire resize_interrupt_p;
  wire resize_interrupt_r0;
  wire rst_n;
  wire [3:0]NLW_ram_i_pack_r1__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_ram_i_pack_r1__7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ram_i_pack_r1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ram_i_pack_r1_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h80)) 
    \/i_ 
       (.I0(resize_end_r2),
        .I1(ram_i_pack_r1),
        .I2(ram_i_pack_r10_in),
        .O(ram_i_pack_r));
  LUT3 #(
    .INIT(8'h6A)) 
    character_index
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(character_index_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB3)) 
    \character_index[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\character_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \character_index[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\character_index[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \character_index[2]_i_1 
       (.I0(resize_interrupt),
        .I1(resize_interrupt_r0),
        .O(resize_interrupt_p));
  LUT1 #(
    .INIT(2'h1)) 
    \character_index[2]_i_2 
       (.I0(rst_n),
        .O(\character_index[2]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \character_index_reg[0] 
       (.C(clk),
        .CE(resize_interrupt_p),
        .D(\character_index[0]_i_1_n_0 ),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b0)) 
    \character_index_reg[1] 
       (.C(clk),
        .CE(resize_interrupt_p),
        .D(\character_index[1]_i_1_n_0 ),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \character_index_reg[2] 
       (.C(clk),
        .CE(resize_interrupt_p),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(character_index_n_0),
        .Q(Q[2]));
  CARRY4 ram_i_pack_r1__7_carry
       (.CI(1'b0),
        .CO({ram_i_pack_r1__7_carry_n_0,ram_i_pack_r1__7_carry_n_1,ram_i_pack_r1__7_carry_n_2,ram_i_pack_r1__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ram_i_pack_r1__7_carry_i_1_n_0,ram_i_pack_r1__7_carry_i_2_n_0,ram_i_pack_r1__7_carry_i_3_n_0,ram_i_pack_r1__7_carry_i_4_n_0}),
        .O(NLW_ram_i_pack_r1__7_carry_O_UNCONNECTED[3:0]),
        .S({ram_i_pack_r1__7_carry_i_5_n_0,ram_i_pack_r1__7_carry_i_6_n_0,ram_i_pack_r1__7_carry_i_7_n_0,ram_i_pack_r1__7_carry_i_8_n_0}));
  CARRY4 ram_i_pack_r1__7_carry__0
       (.CI(ram_i_pack_r1__7_carry_n_0),
        .CO({ram_i_pack_r10_in,ram_i_pack_r1__7_carry__0_n_1,ram_i_pack_r1__7_carry__0_n_2,ram_i_pack_r1__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ram_i_pack_r1__7_carry__0_i_1_n_0,ram_i_pack_r1__7_carry__0_i_2_n_0,ram_i_pack_r1__7_carry__0_i_3_n_0,ram_i_pack_r1__7_carry__0_i_4_n_0}),
        .O(NLW_ram_i_pack_r1__7_carry__0_O_UNCONNECTED[3:0]),
        .S({ram_i_pack_r1__7_carry__0_i_5_n_0,ram_i_pack_r1__7_carry__0_i_6_n_0,ram_i_pack_r1__7_carry__0_i_7_n_0,ram_i_pack_r1__7_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry__0_i_1
       (.I0(D[46]),
        .I1(D[62]),
        .I2(D[63]),
        .I3(D[47]),
        .O(ram_i_pack_r1__7_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry__0_i_2
       (.I0(D[44]),
        .I1(D[60]),
        .I2(D[61]),
        .I3(D[45]),
        .O(ram_i_pack_r1__7_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry__0_i_3
       (.I0(D[42]),
        .I1(D[58]),
        .I2(D[59]),
        .I3(D[43]),
        .O(ram_i_pack_r1__7_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry__0_i_4
       (.I0(D[40]),
        .I1(D[56]),
        .I2(D[57]),
        .I3(D[41]),
        .O(ram_i_pack_r1__7_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry__0_i_5
       (.I0(D[46]),
        .I1(D[62]),
        .I2(D[47]),
        .I3(D[63]),
        .O(ram_i_pack_r1__7_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry__0_i_6
       (.I0(D[44]),
        .I1(D[60]),
        .I2(D[45]),
        .I3(D[61]),
        .O(ram_i_pack_r1__7_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry__0_i_7
       (.I0(D[42]),
        .I1(D[58]),
        .I2(D[43]),
        .I3(D[59]),
        .O(ram_i_pack_r1__7_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry__0_i_8
       (.I0(D[40]),
        .I1(D[56]),
        .I2(D[41]),
        .I3(D[57]),
        .O(ram_i_pack_r1__7_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry_i_1
       (.I0(D[38]),
        .I1(D[54]),
        .I2(D[55]),
        .I3(D[39]),
        .O(ram_i_pack_r1__7_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry_i_2
       (.I0(D[36]),
        .I1(D[52]),
        .I2(D[53]),
        .I3(D[37]),
        .O(ram_i_pack_r1__7_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry_i_3
       (.I0(D[34]),
        .I1(D[50]),
        .I2(D[51]),
        .I3(D[35]),
        .O(ram_i_pack_r1__7_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1__7_carry_i_4
       (.I0(D[32]),
        .I1(D[48]),
        .I2(D[49]),
        .I3(D[33]),
        .O(ram_i_pack_r1__7_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry_i_5
       (.I0(D[38]),
        .I1(D[54]),
        .I2(D[39]),
        .I3(D[55]),
        .O(ram_i_pack_r1__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry_i_6
       (.I0(D[36]),
        .I1(D[52]),
        .I2(D[37]),
        .I3(D[53]),
        .O(ram_i_pack_r1__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry_i_7
       (.I0(D[34]),
        .I1(D[50]),
        .I2(D[35]),
        .I3(D[51]),
        .O(ram_i_pack_r1__7_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1__7_carry_i_8
       (.I0(D[32]),
        .I1(D[48]),
        .I2(D[33]),
        .I3(D[49]),
        .O(ram_i_pack_r1__7_carry_i_8_n_0));
  CARRY4 ram_i_pack_r1_carry
       (.CI(1'b0),
        .CO({ram_i_pack_r1_carry_n_0,ram_i_pack_r1_carry_n_1,ram_i_pack_r1_carry_n_2,ram_i_pack_r1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ram_i_pack_r1_carry_i_1_n_0,ram_i_pack_r1_carry_i_2_n_0,ram_i_pack_r1_carry_i_3_n_0,ram_i_pack_r1_carry_i_4_n_0}),
        .O(NLW_ram_i_pack_r1_carry_O_UNCONNECTED[3:0]),
        .S({ram_i_pack_r1_carry_i_5_n_0,ram_i_pack_r1_carry_i_6_n_0,ram_i_pack_r1_carry_i_7_n_0,ram_i_pack_r1_carry_i_8_n_0}));
  CARRY4 ram_i_pack_r1_carry__0
       (.CI(ram_i_pack_r1_carry_n_0),
        .CO({ram_i_pack_r1,ram_i_pack_r1_carry__0_n_1,ram_i_pack_r1_carry__0_n_2,ram_i_pack_r1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ram_i_pack_r1_carry__0_i_1_n_0,ram_i_pack_r1_carry__0_i_2_n_0,ram_i_pack_r1_carry__0_i_3_n_0,ram_i_pack_r1_carry__0_i_4_n_0}),
        .O(NLW_ram_i_pack_r1_carry__0_O_UNCONNECTED[3:0]),
        .S({ram_i_pack_r1_carry__0_i_5_n_0,ram_i_pack_r1_carry__0_i_6_n_0,ram_i_pack_r1_carry__0_i_7_n_0,ram_i_pack_r1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry__0_i_1
       (.I0(D[14]),
        .I1(D[30]),
        .I2(D[31]),
        .I3(D[15]),
        .O(ram_i_pack_r1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry__0_i_2
       (.I0(D[12]),
        .I1(D[28]),
        .I2(D[29]),
        .I3(D[13]),
        .O(ram_i_pack_r1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry__0_i_3
       (.I0(D[10]),
        .I1(D[26]),
        .I2(D[27]),
        .I3(D[11]),
        .O(ram_i_pack_r1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry__0_i_4
       (.I0(D[8]),
        .I1(D[24]),
        .I2(D[25]),
        .I3(D[9]),
        .O(ram_i_pack_r1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry__0_i_5
       (.I0(D[14]),
        .I1(D[30]),
        .I2(D[15]),
        .I3(D[31]),
        .O(ram_i_pack_r1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry__0_i_6
       (.I0(D[12]),
        .I1(D[28]),
        .I2(D[13]),
        .I3(D[29]),
        .O(ram_i_pack_r1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry__0_i_7
       (.I0(D[10]),
        .I1(D[26]),
        .I2(D[11]),
        .I3(D[27]),
        .O(ram_i_pack_r1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry__0_i_8
       (.I0(D[8]),
        .I1(D[24]),
        .I2(D[9]),
        .I3(D[25]),
        .O(ram_i_pack_r1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry_i_1
       (.I0(D[6]),
        .I1(D[22]),
        .I2(D[23]),
        .I3(D[7]),
        .O(ram_i_pack_r1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry_i_2
       (.I0(D[4]),
        .I1(D[20]),
        .I2(D[21]),
        .I3(D[5]),
        .O(ram_i_pack_r1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry_i_3
       (.I0(D[2]),
        .I1(D[18]),
        .I2(D[19]),
        .I3(D[3]),
        .O(ram_i_pack_r1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ram_i_pack_r1_carry_i_4
       (.I0(D[0]),
        .I1(D[16]),
        .I2(D[17]),
        .I3(D[1]),
        .O(ram_i_pack_r1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry_i_5
       (.I0(D[6]),
        .I1(D[22]),
        .I2(D[7]),
        .I3(D[23]),
        .O(ram_i_pack_r1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry_i_6
       (.I0(D[4]),
        .I1(D[20]),
        .I2(D[5]),
        .I3(D[21]),
        .O(ram_i_pack_r1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry_i_7
       (.I0(D[2]),
        .I1(D[18]),
        .I2(D[3]),
        .I3(D[19]),
        .O(ram_i_pack_r1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_i_pack_r1_carry_i_8
       (.I0(D[0]),
        .I1(D[16]),
        .I2(D[1]),
        .I3(D[17]),
        .O(ram_i_pack_r1_carry_i_8_n_0));
  FDCE \ram_i_pack_r_reg[0] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[0]),
        .Q(\bound_x_min_o[15] [0]));
  FDCE \ram_i_pack_r_reg[10] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[10]),
        .Q(\bound_x_min_o[15] [10]));
  FDCE \ram_i_pack_r_reg[11] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[11]),
        .Q(\bound_x_min_o[15] [11]));
  FDCE \ram_i_pack_r_reg[12] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[12]),
        .Q(\bound_x_min_o[15] [12]));
  FDCE \ram_i_pack_r_reg[13] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[13]),
        .Q(\bound_x_min_o[15] [13]));
  FDCE \ram_i_pack_r_reg[14] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[14]),
        .Q(\bound_x_min_o[15] [14]));
  FDCE \ram_i_pack_r_reg[15] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[15]),
        .Q(\bound_x_min_o[15] [15]));
  FDCE \ram_i_pack_r_reg[16] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[16]),
        .Q(\bound_x_min_o[15] [16]));
  FDCE \ram_i_pack_r_reg[17] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[17]),
        .Q(\bound_x_min_o[15] [17]));
  FDPE \ram_i_pack_r_reg[18] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[18]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [18]));
  FDCE \ram_i_pack_r_reg[19] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[19]),
        .Q(\bound_x_min_o[15] [19]));
  FDCE \ram_i_pack_r_reg[1] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[1]),
        .Q(\bound_x_min_o[15] [1]));
  FDCE \ram_i_pack_r_reg[20] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[20]),
        .Q(\bound_x_min_o[15] [20]));
  FDPE \ram_i_pack_r_reg[21] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[21]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [21]));
  FDPE \ram_i_pack_r_reg[22] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[22]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [22]));
  FDCE \ram_i_pack_r_reg[23] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[23]),
        .Q(\bound_x_min_o[15] [23]));
  FDCE \ram_i_pack_r_reg[24] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[24]),
        .Q(\bound_x_min_o[15] [24]));
  FDCE \ram_i_pack_r_reg[25] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[25]),
        .Q(\bound_x_min_o[15] [25]));
  FDCE \ram_i_pack_r_reg[26] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[26]),
        .Q(\bound_x_min_o[15] [26]));
  FDCE \ram_i_pack_r_reg[27] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[27]),
        .Q(\bound_x_min_o[15] [27]));
  FDCE \ram_i_pack_r_reg[28] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[28]),
        .Q(\bound_x_min_o[15] [28]));
  FDCE \ram_i_pack_r_reg[29] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[29]),
        .Q(\bound_x_min_o[15] [29]));
  FDPE \ram_i_pack_r_reg[2] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[2]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [2]));
  FDCE \ram_i_pack_r_reg[30] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[30]),
        .Q(\bound_x_min_o[15] [30]));
  FDCE \ram_i_pack_r_reg[31] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[31]),
        .Q(\bound_x_min_o[15] [31]));
  FDCE \ram_i_pack_r_reg[32] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[32]),
        .Q(\bound_x_min_o[15] [32]));
  FDCE \ram_i_pack_r_reg[33] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[33]),
        .Q(\bound_x_min_o[15] [33]));
  FDPE \ram_i_pack_r_reg[34] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[34]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [34]));
  FDPE \ram_i_pack_r_reg[35] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[35]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [35]));
  FDCE \ram_i_pack_r_reg[36] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[36]),
        .Q(\bound_x_min_o[15] [36]));
  FDPE \ram_i_pack_r_reg[37] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[37]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [37]));
  FDCE \ram_i_pack_r_reg[38] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[38]),
        .Q(\bound_x_min_o[15] [38]));
  FDCE \ram_i_pack_r_reg[39] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[39]),
        .Q(\bound_x_min_o[15] [39]));
  FDPE \ram_i_pack_r_reg[3] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[3]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [3]));
  FDPE \ram_i_pack_r_reg[40] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[40]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [40]));
  FDCE \ram_i_pack_r_reg[41] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[41]),
        .Q(\bound_x_min_o[15] [41]));
  FDCE \ram_i_pack_r_reg[42] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[42]),
        .Q(\bound_x_min_o[15] [42]));
  FDCE \ram_i_pack_r_reg[43] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[43]),
        .Q(\bound_x_min_o[15] [43]));
  FDCE \ram_i_pack_r_reg[44] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[44]),
        .Q(\bound_x_min_o[15] [44]));
  FDCE \ram_i_pack_r_reg[45] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[45]),
        .Q(\bound_x_min_o[15] [45]));
  FDCE \ram_i_pack_r_reg[46] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[46]),
        .Q(\bound_x_min_o[15] [46]));
  FDCE \ram_i_pack_r_reg[47] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[47]),
        .Q(\bound_x_min_o[15] [47]));
  FDCE \ram_i_pack_r_reg[48] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[48]),
        .Q(\bound_x_min_o[15] [48]));
  FDCE \ram_i_pack_r_reg[49] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[49]),
        .Q(\bound_x_min_o[15] [49]));
  FDCE \ram_i_pack_r_reg[4] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[4]),
        .Q(\bound_x_min_o[15] [4]));
  FDPE \ram_i_pack_r_reg[50] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[50]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [50]));
  FDCE \ram_i_pack_r_reg[51] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[51]),
        .Q(\bound_x_min_o[15] [51]));
  FDCE \ram_i_pack_r_reg[52] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[52]),
        .Q(\bound_x_min_o[15] [52]));
  FDPE \ram_i_pack_r_reg[53] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[53]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [53]));
  FDPE \ram_i_pack_r_reg[54] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[54]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [54]));
  FDCE \ram_i_pack_r_reg[55] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[55]),
        .Q(\bound_x_min_o[15] [55]));
  FDCE \ram_i_pack_r_reg[56] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[56]),
        .Q(\bound_x_min_o[15] [56]));
  FDCE \ram_i_pack_r_reg[57] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[57]),
        .Q(\bound_x_min_o[15] [57]));
  FDCE \ram_i_pack_r_reg[58] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[58]),
        .Q(\bound_x_min_o[15] [58]));
  FDCE \ram_i_pack_r_reg[59] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[59]),
        .Q(\bound_x_min_o[15] [59]));
  FDPE \ram_i_pack_r_reg[5] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[5]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [5]));
  FDCE \ram_i_pack_r_reg[60] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[60]),
        .Q(\bound_x_min_o[15] [60]));
  FDCE \ram_i_pack_r_reg[61] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[61]),
        .Q(\bound_x_min_o[15] [61]));
  FDCE \ram_i_pack_r_reg[62] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[62]),
        .Q(\bound_x_min_o[15] [62]));
  FDCE \ram_i_pack_r_reg[63] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[63]),
        .Q(\bound_x_min_o[15] [63]));
  FDCE \ram_i_pack_r_reg[6] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[6]),
        .Q(\bound_x_min_o[15] [6]));
  FDCE \ram_i_pack_r_reg[7] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[7]),
        .Q(\bound_x_min_o[15] [7]));
  FDPE \ram_i_pack_r_reg[8] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .D(D[8]),
        .PRE(\character_index[2]_i_2_n_0 ),
        .Q(\bound_x_min_o[15] [8]));
  FDCE \ram_i_pack_r_reg[9] 
       (.C(clk),
        .CE(ram_i_pack_r),
        .CLR(\character_index[2]_i_2_n_0 ),
        .D(D[9]),
        .Q(\bound_x_min_o[15] [9]));
  FDRE #(
    .INIT(1'b0)) 
    resize_end_r1_reg
       (.C(clk),
        .CE(1'b1),
        .D(resize_interrupt_p),
        .Q(resize_end_r1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    resize_end_r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(resize_end_r1),
        .Q(resize_end_r2),
        .R(1'b0));
  FDRE resize_interrupt_r0_reg
       (.C(clk),
        .CE(1'b1),
        .D(resize_interrupt),
        .Q(resize_interrupt_r0),
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
