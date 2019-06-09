`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2019/06/09 13:38:56
// Design Name:
// Module Name: plate_fsm
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


module plate_fsm #(parameter FSM_COUNT_NUM = 5) (
	input             clk           ,
	input             rst_n         ,
	/* input signal */
	input  [ 8*4-1:0] char_index_c_i, // 32
	input  [8*16-1:0] char_diff_c_i , // 32*4
	input             char_valid_c_i,
	/* output signal */
	output [ 8*4-1:0] char_index_c_o, // 32
	output [8*16-1:0] char_diff_c_o , // 32*4
	output            char_valid_c_o
);
	localparam IDLE = 2'h0;
	localparam COUNT_FSM = 2'h1;
	localparam DONE = 2'h3;

	reg [8*4-1:0]  char_index_c_delay = 'b0;
	reg [8*16-1:0] char_diff_c_delay  = 'b0;
	reg            char_valid_c_delay = 'b0;

	reg [8*4-1:0]  char_index_c_last = 'b0;
	reg            char_valid_c_last = 'b0;

	reg [ 8*4-1:0] char_index_c_reg = 'b0;
	reg [8*16-1:0] char_diff_c_reg  = 'b0;
	reg            char_valid_c_reg = 'b0;

	reg [1:0] state_now;
	reg [1:0] state_next;

	reg count_done = 'b0;
	reg count_diff = 'b0;
	reg [3:0] counter = 'b0;

	always @(posedge clk) begin
		char_index_c_delay <= char_index_c_i;
		char_diff_c_delay  <= char_diff_c_i;
		char_valid_c_delay <= char_valid_c_i;
	end

	always @(posedge clk) begin
		if(char_valid_c_delay) begin
			char_index_c_last <= char_index_c_delay;
		end
		char_valid_c_last <= char_valid_c_delay;
	end

	always @(posedge clk or negedge rst_n) begin : proc_state_now
		if(~rst_n) begin
			state_now <= 0;
		end else begin
			state_now <= state_next;
		end
	end

	always @(*) begin : proc_state_next
		if(~rst_n) begin
			state_next = IDLE;
		end else begin
			case (state_now)
				IDLE : begin 
					if(char_valid_c_delay) begin
						state_next = COUNT_FSM;
					end else begin 
						state_next = IDLE;
					end
				end
				COUNT_FSM : begin 
					if(count_done) begin
						state_next = DONE;
					end else if(count_diff) begin
						state_next = IDLE;
					end else begin 
						state_next = state_now;
					end
				end
				DONE : begin 
					state_next = IDLE;
				end
				default : state_next = IDLE;
			endcase
		end
	end

	always @(posedge clk) begin
		case (state_now)
			IDLE : begin 
				char_valid_c_reg <= 1'b0;
				count_diff <= 'b0;
				count_done <= 'b0;
				counter <= 'b0;
			end
			COUNT_FSM : begin 
				char_valid_c_reg <= 1'b0;
				count_diff <= 'b0;
				count_done <= 'b0;

				if(char_valid_c_delay) begin
					if(char_index_c_last[8*4-1:3*4] == char_index_c_delay[8*4-1:3*4]) begin
						if(counter == (FSM_COUNT_NUM-1)) begin
							counter <= 'b0;
							count_done <= 'b1;
						end else begin 
							counter <= counter + 'b1;
						end
						count_diff = 'b0;
					end else begin 
						counter <= 'b0;
						count_diff <= 'b1;
					end
				end
			end
			DONE : begin 
				char_valid_c_reg <= 1'b1;
				char_index_c_reg <= char_index_c_delay;
				char_diff_c_reg <= char_diff_c_delay;
				count_diff <= 'b0;
				count_done <= 'b0;
				counter <= 'b0;
			end
			default : char_valid_c_reg <= 1'b0;
		endcase
	end

	assign char_index_c_o = char_index_c_reg;
	assign char_diff_c_o = char_diff_c_reg;
	assign char_valid_c_o = char_valid_c_reg;

endmodule
