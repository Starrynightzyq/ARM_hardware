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


module combine_addr #(
	parameter [2:0] CHAR0_ADDR_BASE = 3'd0,
	parameter [2:0] CHAR1_ADDR_BASE = 3'd1,
	parameter [2:0] CHAR2_ADDR_BASE = 3'd2,
	parameter [2:0] CHAR3_ADDR_BASE = 3'd3,
	parameter [2:0] CHAR4_ADDR_BASE = 3'd4,
	parameter [2:0] CHAR5_ADDR_BASE = 3'd5,
	parameter [2:0] CHAR6_ADDR_BASE = 3'd6
	)(
	input             clk         ,
	input             rst_n       ,

	/* 偏移量控制 */
	input [2:0] shift,

	/* input signal */
	input  [     3:0] char_index  ,
	input  [    15:0] char_diff   ,
	input  [     2:0] char_addr   ,
	input             char_valid  ,

	/* output signal */
	output [ 7*4-1:0] char_index_c, // 28
	output [7*16-1:0] char_diff_c , // 28*16
	output            char_valid_c
);


	reg [3:0] char_index_reg[6:0];
	reg [15:0] char_diff_reg[6:0];
	reg [2:0] char_addr_reg[6:0];
	reg char_valid_reg;

	reg [ 3:0] char_index_delay = 'd0;
	reg [15:0] char_diff_delay  = 'd0;
	reg [ 2:0] char_addr_delay  = 'd0;
	reg        char_valid_delay = 'd0;
	reg        char_valid_delay_1 = 'd0;
	wire char_valid_r;

	reg [3:0] CHAR0_ADDR;
	reg [3:0] CHAR1_ADDR;
	reg [3:0] CHAR2_ADDR;
	reg [3:0] CHAR3_ADDR;
	reg [3:0] CHAR4_ADDR;
	reg [3:0] CHAR5_ADDR;
	reg [3:0] CHAR6_ADDR;


	wire [3:0] CHAR0_ADDR_TEMP = CHAR0_ADDR_BASE + shift;
	wire [3:0] CHAR1_ADDR_TEMP = CHAR1_ADDR_BASE + shift;
	wire [3:0] CHAR2_ADDR_TEMP = CHAR2_ADDR_BASE + shift;
	wire [3:0] CHAR3_ADDR_TEMP = CHAR3_ADDR_BASE + shift;
	wire [3:0] CHAR4_ADDR_TEMP = CHAR4_ADDR_BASE + shift;
	wire [3:0] CHAR5_ADDR_TEMP = CHAR5_ADDR_BASE + shift;
	wire [3:0] CHAR6_ADDR_TEMP = CHAR6_ADDR_BASE + shift;

	always @(posedge clk or negedge rst_n) begin : proc_CHAR
		if(~rst_n) begin
			CHAR0_ADDR <= CHAR0_ADDR_BASE;
			CHAR1_ADDR <= CHAR1_ADDR_BASE;
			CHAR2_ADDR <= CHAR2_ADDR_BASE;
			CHAR3_ADDR <= CHAR3_ADDR_BASE;
			CHAR4_ADDR <= CHAR4_ADDR_BASE;
			CHAR5_ADDR <= CHAR5_ADDR_BASE;
			CHAR6_ADDR <= CHAR6_ADDR_BASE;
		end else begin
			if(CHAR0_ADDR_TEMP >= 7) begin
				CHAR0_ADDR <= CHAR0_ADDR_TEMP - 7;
			end else begin 
				CHAR0_ADDR <= CHAR0_ADDR_TEMP;
			end

			if(CHAR1_ADDR_TEMP >= 7) begin
				CHAR1_ADDR <= CHAR1_ADDR_TEMP - 7;
			end else begin 
				CHAR1_ADDR <= CHAR1_ADDR_TEMP;
			end

			if(CHAR2_ADDR_TEMP >= 7) begin
				CHAR2_ADDR <= CHAR2_ADDR_TEMP - 7;
			end else begin 
				CHAR2_ADDR <= CHAR2_ADDR_TEMP;
			end
			
			if(CHAR3_ADDR_TEMP >= 7) begin
				CHAR3_ADDR <= CHAR3_ADDR_TEMP - 7;
			end else begin 
				CHAR3_ADDR <= CHAR3_ADDR_TEMP;
			end

			if(CHAR4_ADDR_TEMP >= 7) begin
				CHAR4_ADDR <= CHAR4_ADDR_TEMP - 7;
			end else begin 
				CHAR4_ADDR <= CHAR4_ADDR_TEMP;
			end
			
			if(CHAR5_ADDR_TEMP >= 7) begin
				CHAR5_ADDR <= CHAR5_ADDR_TEMP - 7;
			end else begin 
				CHAR5_ADDR <= CHAR5_ADDR_TEMP;
			end
			
			if(CHAR6_ADDR_TEMP >= 7) begin
				CHAR6_ADDR <= CHAR6_ADDR_TEMP - 7;
			end else begin 
				CHAR6_ADDR <= CHAR6_ADDR_TEMP;
			end
		end
	end

	always @(posedge clk) begin
		char_index_delay <= char_index;
		char_diff_delay  <= char_diff;
		char_addr_delay  <= char_addr;
		char_valid_delay <= char_valid;
	end

	always @(posedge clk) begin
		char_valid_delay_1 <= char_valid_delay;
	end

	assign char_valid_r = (char_valid_delay) && (!char_valid_delay_1);

	always @(posedge clk) begin
		case (char_addr_delay)
			CHAR0_ADDR : begin 
				char_index_reg[0] <= char_index_delay;
				char_diff_reg[0] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR1_ADDR : begin 
				char_index_reg[1] <= char_index_delay;
				char_diff_reg[1] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR2_ADDR : begin 
				char_index_reg[2] <= char_index_delay;
				char_diff_reg[2] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR3_ADDR : begin 
				char_index_reg[3] <= char_index_delay;
				char_diff_reg[3] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR4_ADDR : begin 
				char_index_reg[4] <= char_index_delay;
				char_diff_reg[4] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR5_ADDR : begin 
				char_index_reg[5] <= char_index_delay;
				char_diff_reg[5] <= char_diff_delay;
				char_valid_reg <= 'b0;
			end
			CHAR6_ADDR : begin 
				char_index_reg[6] <= char_index_delay;
				char_diff_reg[6] <= char_diff_delay;
				char_valid_reg <= char_valid_r;
			end
			default : begin 
				char_valid_reg <= 1'b0;
			end
		endcase
	end

	assign char_index_c = {char_index_reg[6],char_index_reg[5],char_index_reg[4],char_index_reg[3],char_index_reg[2],char_index_reg[1],char_index_reg[0]};

	assign char_diff_c = {char_diff_reg[6],char_diff_reg[5],char_diff_reg[4],char_diff_reg[3],char_diff_reg[2],char_diff_reg[1],char_diff_reg[0]};

	assign char_valid_c = char_valid_reg;

endmodule
