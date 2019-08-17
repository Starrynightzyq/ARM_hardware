`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/01 16:57:41
// Design Name: 
// Module Name: mux_i
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


module mux_i #(
	parameter [18:0] MAX_ADDR = (640*480)
	)(
    input clk,
    input rst_n,
    // ram signal input
    input [18:0] addr_i,
    input [0:0] data_i,
    input we_i,
    // ram signal output
    output [18:0] addr1_o,
    output [0:0] data1_o,
    output we1_o,
    output [18:0] addr2_o,
    output [0:0] data2_o,
    output we2_o,
    // mux flag
	(*mark_debug = "true"*)output reg mux_flag
    );

	// reg mux_flag;
    (*mark_debug = "true"*)reg [18:0] addr_i_delay = 0;
    reg [0:0] data_i_delay = 0;
	reg we_i_delay = 0;
    reg [18:0] addr_i_delay_1 = 0;
    reg [0:0] data_i_delay_1 = 0;
	reg we_i_delay_1 = 0;
	(*mark_debug = "true"*)wire we_i_f;

	always @(posedge clk) begin
		// if(~rst_n) begin
		// 	addr_i_delay <= 0;
		// 	data_i_delay <= 0;
		// 	we_i_delay <= 0;
		// 	addr_i_delay_1 <= 0;
		// 	data_i_delay_1 <= 0;
		// 	we_i_delay_1 <= 0;
		// end else begin
			addr_i_delay <= addr_i;
			data_i_delay <= data_i;
			we_i_delay <= we_i;
			addr_i_delay_1 <= addr_i_delay;
			data_i_delay_1 <= data_i_delay;
			we_i_delay_1 <= we_i_delay;
		// end
	end
	assign we_i_f = (!we_i) && (we_i_delay);

	always @(posedge clk or negedge rst_n) begin : proc_mux_flag
		if(~rst_n) begin
			mux_flag <= 0;
		end else begin
			if(addr_i_delay == (MAX_ADDR-1)) begin
				if(we_i_f) begin
					mux_flag <= ~mux_flag;
				end
			end
		end
	end

	assign addr1_o = addr_i_delay;
	assign data1_o = data_i_delay;
	assign we1_o = (~mux_flag) ? we_i_delay : 0; // mux_flag 0 , 1 channel

	assign addr2_o = addr_i_delay;
	assign data2_o = data_i_delay;
	assign we2_o = (mux_flag) ? we_i_delay : 0; // mux_flag 1 , 2 channel

endmodule
