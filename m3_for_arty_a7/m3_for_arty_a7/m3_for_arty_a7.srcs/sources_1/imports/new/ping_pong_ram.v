`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/01 16:56:16
// Design Name: 
// Module Name: ping_pong_ram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ping_pong_ram #(
	parameter [18:0] MAX_ADDR = (640*480)
	)(
	input  wire        clk  ,
	input  wire        rst_n,
	input  wire [18:0] addra,
	input  wire [ 0:0] dina ,
	input  wire [ 0:0] wea  ,
	input  wire [18:0] addrb,
	output wire [ 0:0] doutb
);

	wire mux_flag;
	wire [18:0] addra1;
	wire dina1;
	wire wea1;
	wire [18:0] addra2;
	wire dina2;
	wire wea2;
	wire [18:0] addrb_o;
	wire doutb1;
	wire doutb2;

	mux_i #(
			.MAX_ADDR(MAX_ADDR)
		) inst_mux_i (
			.clk      (clk),
			.rst_n    (rst_n),
			// ram signal input
			.addr_i   (addra),
			.data_i   (dina),
			.we_i     (wea),
			// ram signal output
			.addr1_o  (addra1),
			.data1_o  (dina1),
			.we1_o    (wea1),

			.addr2_o  (addra2),
			.data2_o  (dina2),
			.we2_o    (wea2),
			// mux flag
			.mux_flag (mux_flag)
		);

	mux_o inst_mux_o
		(
			.clk      (clk),
			.rst_n    (rst_n),
			// ram read signal
			.addr_rd  (addrb),
			.data_rd  (doutb),
			// mux flag
			.mux_flag (mux_flag),
			// ram signal input
			.data1_i  (doutb1),
			.data2_i  (doutb2),
			// ram signal output
			.addr_o   (addrb_o)
		);

	buffer_ram buffer_ram_1 (
		.clka (clk ), // input wire clka
		.wea  (wea1  ), // input wire [0 : 0] wea
		.addra(addra1), // input wire [18 : 0] addra
		.dina (dina1 ), // input wire [0 : 0] dina
		.clkb (clk ), // input wire clkb
		.addrb(addrb_o), // input wire [18 : 0] addrb
		.doutb(doutb1)  // output wire [0 : 0] doutb
	);

	buffer_ram buffer_ram_2 (
		.clka (clk ), // input wire clka
		.wea  (wea2  ), // input wire [0 : 0] wea
		.addra(addra2), // input wire [18 : 0] addra
		.dina (dina2 ), // input wire [0 : 0] dina
		.clkb (clk ), // input wire clkb
		.addrb(addrb_o), // input wire [18 : 0] addrb
		.doutb(doutb2)  // output wire [0 : 0] doutb
	);

endmodule
