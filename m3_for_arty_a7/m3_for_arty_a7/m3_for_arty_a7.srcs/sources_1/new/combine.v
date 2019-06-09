`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/09 13:39:26
// Design Name: 
// Module Name: combine
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


module combine#(
	parameter MAX_DIFF = 50
	) (
	input             clk         ,
	input             rst_n       ,

	/* input signal */
	input  [     3:0] char_index  ,
	input  [    15:0] char_diff   ,
	input  [     2:0] char_addr   ,
	input             char_valid  ,

	/* output signal */
	output [ 8*4-1:0] char_index_c, // 32
	output [8*16-1:0] char_diff_c , // 32*4
	output            char_valid_c
);

	localparam IDLE    = 5'd0;
	localparam CHAR0_V = 5'd1;
	localparam CHAR0   = 5'd2;
	localparam CHAR1_V = 5'd3;
	localparam CHAR1   = 5'd4;
	localparam CHAR2_V = 5'd5;
	localparam CHAR2   = 5'd6;
	localparam CHAR3_V = 5'd7;
	localparam CHAR3   = 5'd8;
	localparam CHAR4_V = 5'd9;
	localparam CHAR4   = 5'd10;
	localparam CHAR5_V = 5'd11;
	localparam CHAR5   = 5'd12;
	localparam CHAR6_V = 5'd13;
	localparam CHAR6   = 5'd14;
	localparam CHAR7_V = 5'd15;
	localparam CHAR7   = 5'd16;
	localparam DONE    = 5'd17;

	reg [3:0] char_index_reg[7:0];
	reg [15:0] char_diff_reg[7:0];
	reg [2:0] char_addr_reg[7:0];
	reg char_valid_reg;

	reg [ 3:0] char_index_delay = 'd0;
	reg [15:0] char_diff_delay  = 'd0;
	reg [ 2:0] char_addr_delay  = 'd0;
	reg        char_valid_delay = 'd0;

	reg [4:0] state_now;
	reg [4:0] state_next;

	always @(posedge clk) begin
		char_index_delay <= char_index;
		char_diff_delay  <= char_diff;
		char_addr_delay  <= char_addr;
		char_valid_delay <= char_valid;
	end

	always @(posedge clk or negedge rst_n) begin : proc_state_now
		if(~rst_n) begin
			state_now <= IDLE;
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
					if(char_valid_delay) begin
						if(char_addr_delay == 'd2) begin
							state_next = CHAR0_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR0_V : begin 
					state_next = CHAR0;
				end
				CHAR0 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd3) begin
							state_next = CHAR1_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR1_V : begin 
					state_next = CHAR1;
				end
				CHAR1 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd4) begin
							state_next = CHAR2_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR2_V : begin 
					if(char_diff_delay < MAX_DIFF) begin
						state_next = CHAR2;
					end else begin 
						state_next = IDLE;
					end
				end
				CHAR2 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd5) begin
							state_next = CHAR3_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR3_V : begin 
					state_next = CHAR3;
				end
				CHAR3 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd6) begin
							state_next = CHAR4_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR4_V : begin 
					state_next = CHAR4;
				end
				CHAR4 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd7) begin
							state_next = CHAR5_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR5_V : begin 
					state_next = CHAR5;
				end
				CHAR5 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd0) begin
							state_next = CHAR6_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR6_V : begin 
					state_next = CHAR6;
				end
				CHAR6 : begin 
					if(char_valid_delay) begin
						if(char_addr_delay == 'd1) begin
							state_next = CHAR7_V;
						end else begin 
							state_next = IDLE;
						end
					end else begin 
						state_next = state_now;
					end
				end
				CHAR7_V : begin 
					state_next = CHAR7;
				end
				CHAR7 : begin 
					state_next = DONE;
				end
				DONE : begin 
					state_next = IDLE;
				end
				default : state_next = IDLE;
			endcase
		end
	end

	always @(posedge clk) begin : proc_output
		case (state_now)
			CHAR0_V : begin 
				char_index_reg[0] <= char_index_delay;
				char_diff_reg[0] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR1_V : begin 
				char_index_reg[1] <= char_index_delay;
				char_diff_reg[1] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR2_V : begin 
				char_index_reg[2] <= char_index_delay;
				char_diff_reg[2] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR3_V : begin 
				char_index_reg[3] <= char_index_delay;
				char_diff_reg[3] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR4_V : begin 
				char_index_reg[4] <= char_index_delay;
				char_diff_reg[4] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR5_V : begin 
				char_index_reg[5] <= char_index_delay;
				char_diff_reg[5] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR6_V : begin 
				char_index_reg[6] <= char_index_delay;
				char_diff_reg[6] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR7_V : begin 
				char_index_reg[7] <= char_index_delay;
				char_diff_reg[7] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			DONE : begin 
				char_valid_reg <= 'b1;
			end
			default : begin 
				char_valid_reg <= 1'b0;
			end
		endcase
	end

	assign char_index_c = {char_index_reg[7],char_index_reg[6],char_index_reg[5],char_index_reg[4],char_index_reg[3],char_index_reg[2],char_index_reg[1],char_index_reg[0]};

	assign char_diff_c = {char_diff_reg[7],char_diff_reg[6],char_diff_reg[5],char_diff_reg[4],char_diff_reg[3],char_diff_reg[2],char_diff_reg[1],char_diff_reg[0]};

	assign char_valid_c = char_valid_reg;

endmodule
