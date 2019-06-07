// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  7 22:51:44 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               V:/hardware_t/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_tri_io_buf_0_0/m3_for_arty_a7_tri_io_buf_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_tri_io_buf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_tri_io_buf_0_0,tri_io_buf,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tri_io_buf,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_tri_io_buf_0_0
   (din,
    oen_N,
    io_pad,
    dout);
  input [0:0]din;
  input oen_N;
  inout [0:0]io_pad;
  output [0:0]dout;

  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [0:0]din;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [0:0]dout;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [0:0]io_pad;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire oen_N;

  m3_for_arty_a7_tri_io_buf_0_0_tri_io_buf inst
       (.din(din),
        .dout(dout),
        .io_pad(io_pad),
        .oen_N(oen_N));
endmodule

(* ORIG_REF_NAME = "tri_io_buf" *) 
module m3_for_arty_a7_tri_io_buf_0_0_tri_io_buf
   (dout,
    io_pad,
    din,
    oen_N);
  output [0:0]dout;
  inout [0:0]io_pad;
  input [0:0]din;
  input oen_N;

  wire [0:0]din;
  wire [0:0]dout;
  wire [0:0]io_pad;
  wire oen_N;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \genblk1[0].IOBUF_inst 
       (.I(din),
        .IO(io_pad),
        .O(dout),
        .T(oen_N));
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
