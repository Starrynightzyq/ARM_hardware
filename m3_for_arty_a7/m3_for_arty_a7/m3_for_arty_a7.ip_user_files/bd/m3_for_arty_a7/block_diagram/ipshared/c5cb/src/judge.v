`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/12 19:05:49
// Design Name: 
// Module Name: judge
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


module judge (
	input             clk           ,
	input             rst_n         ,
	/* 控制信号 */
	input  [    15:0] max_diff      , // 最大误差值
	input  [     3:0] min_continue  , // 最小连续
	input  [     7:0] min_counter   , // 最小计数值
	/* input signals */
	input  [ 8*4-1:0] char_index_c  , // 识别到的数字*8
	input  [8*16-1:0] char_diff_c   , // 误差*8
	input             char_valid_c  , //
	/* output signals */
	output reg [ 5*4-1:0] char_index_co  , // 识别到的数字*8
	output reg            char_valid_co    // 一张车欧识别完成的信号
);

	wire [ 5*4-1:0] char_index_now;
	wire [ 0:0] char_valid_now;
	reg [ 5*4-1:0] char_index_last;

	judge_all inst_judge_all
		(
			.clk           (clk),
			.rst_n         (rst_n),
			.max_diff      (max_diff),
			.min_continue  (min_continue),
			.min_counter   (min_counter),
			.char_index_c  (char_index_c),
			.char_diff_c   (char_diff_c),
			.char_valid_c  (char_valid_c),
			.char_index_co (char_index_now),
			.char_valid_co (char_valid_now)
		);

	always @(posedge clk or negedge rst_n) begin : proc_char_index_co
		if(~rst_n) begin
			char_index_co <= 0;
			char_valid_co <= 0;
			char_index_last <= 0;
		end else begin
			if(char_valid_now) begin
				if(char_index_last != char_index_now) begin
					char_index_co <= char_index_now;
					char_valid_co <= char_valid_now;
					char_index_last <= char_index_now;
				end else begin 
					char_valid_co <= 0;
				end
			end else begin 
				char_valid_co <= 0;
			end
		end
	end

endmodule
