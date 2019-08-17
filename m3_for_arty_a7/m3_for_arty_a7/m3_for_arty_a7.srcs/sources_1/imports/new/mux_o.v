`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/01 16:57:41
// Design Name: 
// Module Name: mux_o
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


module mux_o(
    input clk,
    input rst_n,
 	// ram read signal
 	input [18:0] addr_rd,
 	output [0:0] data_rd,
    // mux flag
	input mux_flag,
    // ram signal input
    input [0:0] data1_i,
    input [0:0] data2_i,
    // ram signal output
    output [18:0] addr_o
    );

	assign addr_o = addr_rd;
	assign data_rd = mux_flag ? data1_i : data2_i; // mux_flag 1 , 1 channel; mux_flag 0 , 2 channel

endmodule
