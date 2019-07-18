// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:47:55 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_bound_fsm_0_0/m3_for_arty_a7_bound_fsm_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_bound_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_bound_fsm_0_0,bound_fsm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bound_fsm,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_bound_fsm_0_0
   (clk,
    rst_n,
    bound_x_min_i,
    bound_x_max_i,
    bound_y_min_i,
    bound_y_max_i,
    bound_y_min_ap_vld_i,
    bound_y_max_ap_vld_i,
    bound_x_min_ap_vld_i,
    bound_x_max_ap_vld_i,
    bound_x_min_o,
    bound_x_max_o,
    bound_y_min_o,
    bound_y_max_o,
    bound_y_min_ap_vld_o,
    bound_y_max_ap_vld_o,
    bound_x_min_ap_vld_o,
    bound_x_max_ap_vld_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input [15:0]bound_x_min_i;
  input [15:0]bound_x_max_i;
  input [15:0]bound_y_min_i;
  input [15:0]bound_y_max_i;
  input bound_y_min_ap_vld_i;
  input bound_y_max_ap_vld_i;
  input bound_x_min_ap_vld_i;
  input bound_x_max_ap_vld_i;
  output [15:0]bound_x_min_o;
  output [15:0]bound_x_max_o;
  output [15:0]bound_y_min_o;
  output [15:0]bound_y_max_o;
  output bound_y_min_ap_vld_o;
  output bound_y_max_ap_vld_o;
  output bound_x_min_ap_vld_o;
  output bound_x_max_ap_vld_o;

  wire \<const1> ;
  wire bound_x_max_ap_vld_i;
  wire [15:0]bound_x_max_i;
  wire [15:0]bound_x_max_o;
  wire bound_x_min_ap_vld_i;
  wire [15:0]bound_x_min_i;
  wire [15:0]bound_x_min_o;
  wire bound_y_max_ap_vld_i;
  wire [15:0]bound_y_max_i;
  wire [15:0]bound_y_max_o;
  wire bound_y_min_ap_vld_i;
  wire [15:0]bound_y_min_i;
  wire [15:0]bound_y_min_o;
  wire clk;
  wire rst_n;

  assign bound_x_max_ap_vld_o = \<const1> ;
  assign bound_x_min_ap_vld_o = \<const1> ;
  assign bound_y_max_ap_vld_o = \<const1> ;
  assign bound_y_min_ap_vld_o = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  m3_for_arty_a7_bound_fsm_0_0_bound_fsm inst
       (.bound_x_max_ap_vld_i(bound_x_max_ap_vld_i),
        .bound_x_max_i(bound_x_max_i),
        .bound_x_max_o(bound_x_max_o),
        .bound_x_min_ap_vld_i(bound_x_min_ap_vld_i),
        .bound_x_min_i(bound_x_min_i),
        .bound_x_min_o(bound_x_min_o),
        .bound_y_max_ap_vld_i(bound_y_max_ap_vld_i),
        .bound_y_max_i(bound_y_max_i),
        .bound_y_max_o(bound_y_max_o),
        .bound_y_min_ap_vld_i(bound_y_min_ap_vld_i),
        .bound_y_min_i(bound_y_min_i),
        .bound_y_min_o(bound_y_min_o),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "bound_fsm" *) 
module m3_for_arty_a7_bound_fsm_0_0_bound_fsm
   (bound_x_min_o,
    bound_x_max_o,
    bound_y_min_o,
    bound_y_max_o,
    bound_x_min_ap_vld_i,
    clk,
    bound_x_min_i,
    bound_x_max_ap_vld_i,
    bound_x_max_i,
    bound_y_min_ap_vld_i,
    bound_y_min_i,
    bound_y_max_ap_vld_i,
    bound_y_max_i,
    rst_n);
  output [15:0]bound_x_min_o;
  output [15:0]bound_x_max_o;
  output [15:0]bound_y_min_o;
  output [15:0]bound_y_max_o;
  input bound_x_min_ap_vld_i;
  input clk;
  input [15:0]bound_x_min_i;
  input bound_x_max_ap_vld_i;
  input [15:0]bound_x_max_i;
  input bound_y_min_ap_vld_i;
  input [15:0]bound_y_min_i;
  input bound_y_max_ap_vld_i;
  input [15:0]bound_y_max_i;
  input rst_n;

  wire bound_x_max_ap_vld_i;
  wire bound_x_max_ap_vld_r;
  wire [15:0]bound_x_max_i;
  wire [15:0]bound_x_max_o;
  wire \bound_x_max_o[0]_i_1_n_0 ;
  wire \bound_x_max_o[10]_i_1_n_0 ;
  wire \bound_x_max_o[11]_i_1_n_0 ;
  wire \bound_x_max_o[12]_i_1_n_0 ;
  wire \bound_x_max_o[13]_i_1_n_0 ;
  wire \bound_x_max_o[14]_i_1_n_0 ;
  wire \bound_x_max_o[15]_i_1_n_0 ;
  wire \bound_x_max_o[15]_i_2_n_0 ;
  wire \bound_x_max_o[3]_i_1_n_0 ;
  wire \bound_x_max_o[7]_i_1_n_0 ;
  wire \bound_x_max_o[8]_i_1_n_0 ;
  wire \bound_x_max_o[9]_i_1_n_0 ;
  wire [15:0]bound_x_max_r;
  wire bound_x_min_ap_vld_i;
  wire bound_x_min_ap_vld_r;
  wire [15:0]bound_x_min_i;
  wire [15:0]bound_x_min_o;
  wire \bound_x_min_o[0]_i_1_n_0 ;
  wire \bound_x_min_o[10]_i_1_n_0 ;
  wire \bound_x_min_o[11]_i_1_n_0 ;
  wire \bound_x_min_o[12]_i_1_n_0 ;
  wire \bound_x_min_o[13]_i_1_n_0 ;
  wire \bound_x_min_o[14]_i_1_n_0 ;
  wire \bound_x_min_o[15]_i_1_n_0 ;
  wire \bound_x_min_o[15]_i_2_n_0 ;
  wire \bound_x_min_o[1]_i_1_n_0 ;
  wire \bound_x_min_o[2]_i_1_n_0 ;
  wire \bound_x_min_o[3]_i_1_n_0 ;
  wire \bound_x_min_o[4]_i_1_n_0 ;
  wire \bound_x_min_o[5]_i_1_n_0 ;
  wire \bound_x_min_o[6]_i_1_n_0 ;
  wire \bound_x_min_o[7]_i_1_n_0 ;
  wire \bound_x_min_o[8]_i_1_n_0 ;
  wire \bound_x_min_o[9]_i_1_n_0 ;
  wire [15:0]bound_x_min_r;
  wire bound_y_max_ap_vld_i;
  wire bound_y_max_ap_vld_r;
  wire [15:0]bound_y_max_i;
  wire [15:0]bound_y_max_o;
  wire \bound_y_max_o[0]_i_1_n_0 ;
  wire \bound_y_max_o[10]_i_1_n_0 ;
  wire \bound_y_max_o[11]_i_1_n_0 ;
  wire \bound_y_max_o[12]_i_1_n_0 ;
  wire \bound_y_max_o[13]_i_1_n_0 ;
  wire \bound_y_max_o[14]_i_1_n_0 ;
  wire \bound_y_max_o[15]_i_1_n_0 ;
  wire \bound_y_max_o[15]_i_2_n_0 ;
  wire \bound_y_max_o[3]_i_1_n_0 ;
  wire \bound_y_max_o[5]_i_1_n_0 ;
  wire \bound_y_max_o[9]_i_1_n_0 ;
  wire [15:0]bound_y_max_r;
  wire bound_y_min_ap_vld_i;
  wire bound_y_min_ap_vld_r;
  wire [15:0]bound_y_min_i;
  wire [15:0]bound_y_min_o;
  wire \bound_y_min_o[0]_i_1_n_0 ;
  wire \bound_y_min_o[10]_i_1_n_0 ;
  wire \bound_y_min_o[11]_i_1_n_0 ;
  wire \bound_y_min_o[12]_i_1_n_0 ;
  wire \bound_y_min_o[13]_i_1_n_0 ;
  wire \bound_y_min_o[14]_i_1_n_0 ;
  wire \bound_y_min_o[15]_i_1_n_0 ;
  wire \bound_y_min_o[15]_i_2_n_0 ;
  wire \bound_y_min_o[1]_i_1_n_0 ;
  wire \bound_y_min_o[2]_i_1_n_0 ;
  wire \bound_y_min_o[3]_i_1_n_0 ;
  wire \bound_y_min_o[4]_i_1_n_0 ;
  wire \bound_y_min_o[5]_i_1_n_0 ;
  wire \bound_y_min_o[6]_i_1_n_0 ;
  wire \bound_y_min_o[7]_i_1_n_0 ;
  wire \bound_y_min_o[8]_i_1_n_0 ;
  wire \bound_y_min_o[9]_i_1_n_0 ;
  wire [15:0]bound_y_min_r;
  wire clk;
  wire rst;
  wire rst_n;
  wire [1:1]state_reg;
  wire \state_reg[1]_i_1_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    bound_x_max_ap_vld_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_ap_vld_i),
        .Q(bound_x_max_ap_vld_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[0]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[0]),
        .O(\bound_x_max_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[10]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[10]),
        .O(\bound_x_max_o[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[11]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[11]),
        .O(\bound_x_max_o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[12]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[12]),
        .O(\bound_x_max_o[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[13]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[13]),
        .O(\bound_x_max_o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[14]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[14]),
        .O(\bound_x_max_o[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bound_x_max_o[15]_i_1 
       (.I0(bound_x_max_ap_vld_r),
        .I1(state_reg),
        .O(\bound_x_max_o[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[15]_i_2 
       (.I0(state_reg),
        .I1(bound_x_max_r[15]),
        .O(\bound_x_max_o[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[3]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[3]),
        .O(\bound_x_max_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[7]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[7]),
        .O(\bound_x_max_o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_max_o[8]_i_1 
       (.I0(state_reg),
        .I1(bound_x_max_r[8]),
        .O(\bound_x_max_o[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bound_x_max_o[9]_i_1 
       (.I0(state_reg),
        .O(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE \bound_x_max_o_reg[0] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[0]_i_1_n_0 ),
        .Q(bound_x_max_o[0]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[10] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[10]_i_1_n_0 ),
        .Q(bound_x_max_o[10]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[11] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[11]_i_1_n_0 ),
        .Q(bound_x_max_o[11]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[12] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[12]_i_1_n_0 ),
        .Q(bound_x_max_o[12]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[13] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[13]_i_1_n_0 ),
        .Q(bound_x_max_o[13]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[14] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[14]_i_1_n_0 ),
        .Q(bound_x_max_o[14]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[15] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[15]_i_2_n_0 ),
        .Q(bound_x_max_o[15]),
        .R(1'b0));
  FDSE \bound_x_max_o_reg[1] 
       (.C(clk),
        .CE(bound_x_max_ap_vld_r),
        .D(bound_x_max_r[1]),
        .Q(bound_x_max_o[1]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDSE \bound_x_max_o_reg[2] 
       (.C(clk),
        .CE(bound_x_max_ap_vld_r),
        .D(bound_x_max_r[2]),
        .Q(bound_x_max_o[2]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE \bound_x_max_o_reg[3] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[3]_i_1_n_0 ),
        .Q(bound_x_max_o[3]),
        .R(1'b0));
  FDSE \bound_x_max_o_reg[4] 
       (.C(clk),
        .CE(bound_x_max_ap_vld_r),
        .D(bound_x_max_r[4]),
        .Q(bound_x_max_o[4]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDSE \bound_x_max_o_reg[5] 
       (.C(clk),
        .CE(bound_x_max_ap_vld_r),
        .D(bound_x_max_r[5]),
        .Q(bound_x_max_o[5]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDSE \bound_x_max_o_reg[6] 
       (.C(clk),
        .CE(bound_x_max_ap_vld_r),
        .D(bound_x_max_r[6]),
        .Q(bound_x_max_o[6]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE \bound_x_max_o_reg[7] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[7]_i_1_n_0 ),
        .Q(bound_x_max_o[7]),
        .R(1'b0));
  FDRE \bound_x_max_o_reg[8] 
       (.C(clk),
        .CE(\bound_x_max_o[15]_i_1_n_0 ),
        .D(\bound_x_max_o[8]_i_1_n_0 ),
        .Q(bound_x_max_o[8]),
        .R(1'b0));
  FDSE \bound_x_max_o_reg[9] 
       (.C(clk),
        .CE(bound_x_max_ap_vld_r),
        .D(bound_x_max_r[9]),
        .Q(bound_x_max_o[9]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[0]),
        .Q(bound_x_max_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[10]),
        .Q(bound_x_max_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[11]),
        .Q(bound_x_max_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[12]),
        .Q(bound_x_max_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[13]),
        .Q(bound_x_max_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[14]),
        .Q(bound_x_max_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[15]),
        .Q(bound_x_max_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[1]),
        .Q(bound_x_max_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[2]),
        .Q(bound_x_max_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[3]),
        .Q(bound_x_max_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[4]),
        .Q(bound_x_max_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[5]),
        .Q(bound_x_max_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[6]),
        .Q(bound_x_max_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[7]),
        .Q(bound_x_max_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[8]),
        .Q(bound_x_max_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_max_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_max_i[9]),
        .Q(bound_x_max_r[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bound_x_min_ap_vld_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_ap_vld_i),
        .Q(bound_x_min_ap_vld_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[0]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[0]),
        .O(\bound_x_min_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[10]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[10]),
        .O(\bound_x_min_o[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[11]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[11]),
        .O(\bound_x_min_o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[12]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[12]),
        .O(\bound_x_min_o[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[13]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[13]),
        .O(\bound_x_min_o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[14]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[14]),
        .O(\bound_x_min_o[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bound_x_min_o[15]_i_1 
       (.I0(bound_x_min_ap_vld_r),
        .I1(state_reg),
        .O(\bound_x_min_o[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[15]_i_2 
       (.I0(state_reg),
        .I1(bound_x_min_r[15]),
        .O(\bound_x_min_o[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bound_x_min_o[1]_i_1 
       (.I0(bound_x_min_r[1]),
        .I1(state_reg),
        .O(\bound_x_min_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[2]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[2]),
        .O(\bound_x_min_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bound_x_min_o[3]_i_1 
       (.I0(bound_x_min_r[3]),
        .I1(state_reg),
        .O(\bound_x_min_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[4]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[4]),
        .O(\bound_x_min_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[5]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[5]),
        .O(\bound_x_min_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[6]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[6]),
        .O(\bound_x_min_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[7]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[7]),
        .O(\bound_x_min_o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[8]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[8]),
        .O(\bound_x_min_o[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_x_min_o[9]_i_1 
       (.I0(state_reg),
        .I1(bound_x_min_r[9]),
        .O(\bound_x_min_o[9]_i_1_n_0 ));
  FDRE \bound_x_min_o_reg[0] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[0]_i_1_n_0 ),
        .Q(bound_x_min_o[0]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[10] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[10]_i_1_n_0 ),
        .Q(bound_x_min_o[10]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[11] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[11]_i_1_n_0 ),
        .Q(bound_x_min_o[11]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[12] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[12]_i_1_n_0 ),
        .Q(bound_x_min_o[12]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[13] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[13]_i_1_n_0 ),
        .Q(bound_x_min_o[13]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[14] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[14]_i_1_n_0 ),
        .Q(bound_x_min_o[14]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[15] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[15]_i_2_n_0 ),
        .Q(bound_x_min_o[15]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[1] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[1]_i_1_n_0 ),
        .Q(bound_x_min_o[1]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[2] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[2]_i_1_n_0 ),
        .Q(bound_x_min_o[2]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[3] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[3]_i_1_n_0 ),
        .Q(bound_x_min_o[3]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[4] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[4]_i_1_n_0 ),
        .Q(bound_x_min_o[4]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[5] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[5]_i_1_n_0 ),
        .Q(bound_x_min_o[5]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[6] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[6]_i_1_n_0 ),
        .Q(bound_x_min_o[6]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[7] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[7]_i_1_n_0 ),
        .Q(bound_x_min_o[7]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[8] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[8]_i_1_n_0 ),
        .Q(bound_x_min_o[8]),
        .R(1'b0));
  FDRE \bound_x_min_o_reg[9] 
       (.C(clk),
        .CE(\bound_x_min_o[15]_i_1_n_0 ),
        .D(\bound_x_min_o[9]_i_1_n_0 ),
        .Q(bound_x_min_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[0]),
        .Q(bound_x_min_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[10]),
        .Q(bound_x_min_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[11]),
        .Q(bound_x_min_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[12]),
        .Q(bound_x_min_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[13]),
        .Q(bound_x_min_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[14]),
        .Q(bound_x_min_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[15]),
        .Q(bound_x_min_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[1]),
        .Q(bound_x_min_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[2]),
        .Q(bound_x_min_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[3]),
        .Q(bound_x_min_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[4]),
        .Q(bound_x_min_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[5]),
        .Q(bound_x_min_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[6]),
        .Q(bound_x_min_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[7]),
        .Q(bound_x_min_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[8]),
        .Q(bound_x_min_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_x_min_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_x_min_i[9]),
        .Q(bound_x_min_r[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bound_y_max_ap_vld_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_ap_vld_i),
        .Q(bound_y_max_ap_vld_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[0]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[0]),
        .O(\bound_y_max_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[10]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[10]),
        .O(\bound_y_max_o[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[11]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[11]),
        .O(\bound_y_max_o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[12]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[12]),
        .O(\bound_y_max_o[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[13]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[13]),
        .O(\bound_y_max_o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[14]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[14]),
        .O(\bound_y_max_o[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bound_y_max_o[15]_i_1 
       (.I0(bound_y_max_ap_vld_r),
        .I1(state_reg),
        .O(\bound_y_max_o[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[15]_i_2 
       (.I0(state_reg),
        .I1(bound_y_max_r[15]),
        .O(\bound_y_max_o[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[3]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[3]),
        .O(\bound_y_max_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[5]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[5]),
        .O(\bound_y_max_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_max_o[9]_i_1 
       (.I0(state_reg),
        .I1(bound_y_max_r[9]),
        .O(\bound_y_max_o[9]_i_1_n_0 ));
  FDRE \bound_y_max_o_reg[0] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[0]_i_1_n_0 ),
        .Q(bound_y_max_o[0]),
        .R(1'b0));
  FDRE \bound_y_max_o_reg[10] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[10]_i_1_n_0 ),
        .Q(bound_y_max_o[10]),
        .R(1'b0));
  FDRE \bound_y_max_o_reg[11] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[11]_i_1_n_0 ),
        .Q(bound_y_max_o[11]),
        .R(1'b0));
  FDRE \bound_y_max_o_reg[12] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[12]_i_1_n_0 ),
        .Q(bound_y_max_o[12]),
        .R(1'b0));
  FDRE \bound_y_max_o_reg[13] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[13]_i_1_n_0 ),
        .Q(bound_y_max_o[13]),
        .R(1'b0));
  FDRE \bound_y_max_o_reg[14] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[14]_i_1_n_0 ),
        .Q(bound_y_max_o[14]),
        .R(1'b0));
  FDRE \bound_y_max_o_reg[15] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[15]_i_2_n_0 ),
        .Q(bound_y_max_o[15]),
        .R(1'b0));
  FDSE \bound_y_max_o_reg[1] 
       (.C(clk),
        .CE(bound_y_max_ap_vld_r),
        .D(bound_y_max_r[1]),
        .Q(bound_y_max_o[1]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDSE \bound_y_max_o_reg[2] 
       (.C(clk),
        .CE(bound_y_max_ap_vld_r),
        .D(bound_y_max_r[2]),
        .Q(bound_y_max_o[2]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE \bound_y_max_o_reg[3] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[3]_i_1_n_0 ),
        .Q(bound_y_max_o[3]),
        .R(1'b0));
  FDSE \bound_y_max_o_reg[4] 
       (.C(clk),
        .CE(bound_y_max_ap_vld_r),
        .D(bound_y_max_r[4]),
        .Q(bound_y_max_o[4]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE \bound_y_max_o_reg[5] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[5]_i_1_n_0 ),
        .Q(bound_y_max_o[5]),
        .R(1'b0));
  FDSE \bound_y_max_o_reg[6] 
       (.C(clk),
        .CE(bound_y_max_ap_vld_r),
        .D(bound_y_max_r[6]),
        .Q(bound_y_max_o[6]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDSE \bound_y_max_o_reg[7] 
       (.C(clk),
        .CE(bound_y_max_ap_vld_r),
        .D(bound_y_max_r[7]),
        .Q(bound_y_max_o[7]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDSE \bound_y_max_o_reg[8] 
       (.C(clk),
        .CE(bound_y_max_ap_vld_r),
        .D(bound_y_max_r[8]),
        .Q(bound_y_max_o[8]),
        .S(\bound_x_max_o[9]_i_1_n_0 ));
  FDRE \bound_y_max_o_reg[9] 
       (.C(clk),
        .CE(\bound_y_max_o[15]_i_1_n_0 ),
        .D(\bound_y_max_o[9]_i_1_n_0 ),
        .Q(bound_y_max_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[0]),
        .Q(bound_y_max_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[10]),
        .Q(bound_y_max_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[11]),
        .Q(bound_y_max_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[12]),
        .Q(bound_y_max_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[13]),
        .Q(bound_y_max_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[14]),
        .Q(bound_y_max_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[15]),
        .Q(bound_y_max_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[1]),
        .Q(bound_y_max_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[2]),
        .Q(bound_y_max_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[3]),
        .Q(bound_y_max_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[4]),
        .Q(bound_y_max_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[5]),
        .Q(bound_y_max_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[6]),
        .Q(bound_y_max_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[7]),
        .Q(bound_y_max_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[8]),
        .Q(bound_y_max_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_max_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_max_i[9]),
        .Q(bound_y_max_r[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bound_y_min_ap_vld_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_ap_vld_i),
        .Q(bound_y_min_ap_vld_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[0]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[0]),
        .O(\bound_y_min_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[10]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[10]),
        .O(\bound_y_min_o[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[11]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[11]),
        .O(\bound_y_min_o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[12]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[12]),
        .O(\bound_y_min_o[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[13]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[13]),
        .O(\bound_y_min_o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[14]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[14]),
        .O(\bound_y_min_o[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bound_y_min_o[15]_i_1 
       (.I0(bound_y_min_ap_vld_r),
        .I1(state_reg),
        .O(\bound_y_min_o[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[15]_i_2 
       (.I0(state_reg),
        .I1(bound_y_min_r[15]),
        .O(\bound_y_min_o[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bound_y_min_o[1]_i_1 
       (.I0(bound_y_min_r[1]),
        .I1(state_reg),
        .O(\bound_y_min_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[2]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[2]),
        .O(\bound_y_min_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bound_y_min_o[3]_i_1 
       (.I0(bound_y_min_r[3]),
        .I1(state_reg),
        .O(\bound_y_min_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[4]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[4]),
        .O(\bound_y_min_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[5]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[5]),
        .O(\bound_y_min_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[6]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[6]),
        .O(\bound_y_min_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[7]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[7]),
        .O(\bound_y_min_o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[8]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[8]),
        .O(\bound_y_min_o[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bound_y_min_o[9]_i_1 
       (.I0(state_reg),
        .I1(bound_y_min_r[9]),
        .O(\bound_y_min_o[9]_i_1_n_0 ));
  FDRE \bound_y_min_o_reg[0] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[0]_i_1_n_0 ),
        .Q(bound_y_min_o[0]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[10] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[10]_i_1_n_0 ),
        .Q(bound_y_min_o[10]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[11] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[11]_i_1_n_0 ),
        .Q(bound_y_min_o[11]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[12] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[12]_i_1_n_0 ),
        .Q(bound_y_min_o[12]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[13] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[13]_i_1_n_0 ),
        .Q(bound_y_min_o[13]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[14] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[14]_i_1_n_0 ),
        .Q(bound_y_min_o[14]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[15] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[15]_i_2_n_0 ),
        .Q(bound_y_min_o[15]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[1] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[1]_i_1_n_0 ),
        .Q(bound_y_min_o[1]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[2] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[2]_i_1_n_0 ),
        .Q(bound_y_min_o[2]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[3] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[3]_i_1_n_0 ),
        .Q(bound_y_min_o[3]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[4] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[4]_i_1_n_0 ),
        .Q(bound_y_min_o[4]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[5] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[5]_i_1_n_0 ),
        .Q(bound_y_min_o[5]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[6] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[6]_i_1_n_0 ),
        .Q(bound_y_min_o[6]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[7] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[7]_i_1_n_0 ),
        .Q(bound_y_min_o[7]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[8] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[8]_i_1_n_0 ),
        .Q(bound_y_min_o[8]),
        .R(1'b0));
  FDRE \bound_y_min_o_reg[9] 
       (.C(clk),
        .CE(\bound_y_min_o[15]_i_1_n_0 ),
        .D(\bound_y_min_o[9]_i_1_n_0 ),
        .Q(bound_y_min_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[0]),
        .Q(bound_y_min_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[10]),
        .Q(bound_y_min_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[11]),
        .Q(bound_y_min_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[12]),
        .Q(bound_y_min_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[13]),
        .Q(bound_y_min_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[14]),
        .Q(bound_y_min_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[15]),
        .Q(bound_y_min_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[1]),
        .Q(bound_y_min_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[2]),
        .Q(bound_y_min_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[3]),
        .Q(bound_y_min_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[4]),
        .Q(bound_y_min_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[5]),
        .Q(bound_y_min_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[6]),
        .Q(bound_y_min_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[7]),
        .Q(bound_y_min_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[8]),
        .Q(bound_y_min_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bound_y_min_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(bound_y_min_i[9]),
        .Q(bound_y_min_r[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \state_reg[1]_i_1 
       (.I0(bound_x_min_ap_vld_i),
        .I1(bound_y_max_ap_vld_i),
        .I2(bound_y_min_ap_vld_i),
        .I3(bound_x_max_ap_vld_i),
        .I4(rst_n),
        .I5(state_reg),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state_reg[1]_i_2 
       (.I0(rst_n),
        .O(rst));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\state_reg[1]_i_1_n_0 ),
        .Q(state_reg));
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
