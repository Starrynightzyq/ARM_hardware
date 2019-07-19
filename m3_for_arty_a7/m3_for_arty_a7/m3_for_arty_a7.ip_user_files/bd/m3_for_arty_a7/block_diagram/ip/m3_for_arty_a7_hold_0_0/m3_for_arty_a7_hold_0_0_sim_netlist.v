// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 13:48:43 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_hold_0_0/m3_for_arty_a7_hold_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_hold_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_hold_0_0,hold,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hold,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_hold_0_0
   (clk,
    rst_n,
    trick_i,
    trick_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  input trick_i;
  output trick_o;

  wire clk;
  wire rst_n;
  wire trick_i;
  wire trick_o;

  m3_for_arty_a7_hold_0_0_hold inst
       (.clk(clk),
        .rst_n(rst_n),
        .trick_i(trick_i),
        .trick_o(trick_o));
endmodule

(* ORIG_REF_NAME = "hold" *) 
module m3_for_arty_a7_hold_0_0_hold
   (trick_o,
    clk,
    trick_i,
    rst_n);
  output trick_o;
  input clk;
  input trick_i;
  input rst_n;

  wire clk;
  wire count_done;
  wire count_done0;
  wire [5:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire rst_n;
  wire rst_p;
  wire state_next;
  wire state_reg;
  wire trick_i;
  wire trick_o;

  LUT6 #(
    .INIT(64'h0000000004000000)) 
    count_done_i_1
       (.I0(counter[0]),
        .I1(state_reg),
        .I2(counter[1]),
        .I3(counter[4]),
        .I4(counter[5]),
        .I5(\counter[5]_i_2_n_0 ),
        .O(count_done0));
  FDCE #(
    .INIT(1'b0)) 
    count_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(count_done0),
        .Q(count_done));
  LUT6 #(
    .INIT(64'h00000000EFFF0000)) 
    \counter[0]_i_1 
       (.I0(counter[1]),
        .I1(\counter[5]_i_2_n_0 ),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(state_reg),
        .I5(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(state_reg),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF03A0A000000000)) 
    \counter[2]_i_1 
       (.I0(counter[0]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(\counter[3]_i_2_n_0 ),
        .I4(counter[2]),
        .I5(state_reg),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888CCCCC0000000)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(state_reg),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .I5(counter[3]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0FF7)) 
    \counter[3]_i_2 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF3D00C000000000)) 
    \counter[4]_i_1 
       (.I0(counter[5]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(\counter[5]_i_2_n_0 ),
        .I4(counter[4]),
        .I5(state_reg),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA002880AA00)) 
    \counter[5]_i_1 
       (.I0(state_reg),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(\counter[5]_i_2_n_0 ),
        .O(\counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[5]_i_2 
       (.I0(counter[2]),
        .I1(counter[3]),
        .O(\counter[5]_i_2_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  LUT3 #(
    .INIT(8'h74)) 
    state_reg_i_1
       (.I0(count_done),
        .I1(state_reg),
        .I2(trick_i),
        .O(state_next));
  FDCE state_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(state_next),
        .Q(state_reg));
  LUT1 #(
    .INIT(2'h1)) 
    trick_o_i_1
       (.I0(rst_n),
        .O(rst_p));
  FDCE trick_o_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_p),
        .D(state_reg),
        .Q(trick_o));
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
