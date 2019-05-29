`timescale 1ns / 1ps
`include "array.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/06 18:13:28
// Design Name: 
// Module Name: hist_h
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


module hist_h#(
	parameter HWIDTH = 640,
	parameter VWIDTH = 480
	)(
	input clk,
	input rst,				// active high
	input data_i,
	input data_i_valid,
	// input frame_end,
	input [9:0] hcount,
	input [9:0] vcount,
	input [9:0] thresh_width,
	output [10*16-1:0] bound_u_p,
	output [10*16-1:0] bound_d_p,
	output reg [3:0] character_num,
	output reg character_num_valid
    );

	reg [9:0] sum_h;
	reg [9:0] sum_h_now;
	reg [9:0] sum_h_last;

	reg [9:0] data_addr_1 = 0;
	reg [9:0] data_addr_2 = 0;
	reg [9:0] data_addr_3 = 0;

	reg [9:0] hcount_1 = 0;
	reg [9:0] hcount_2 = 0;
	reg [9:0] hcount_3 = 0;

	reg data_i_valid_1 = 0;
	reg data_i_valid_2 = 0;
	reg data_i_valid_3 = 0;

	reg [9:0] bound_u[15:0];
	reg [9:0] bound_d[15:0];

	// reg flag_up = 0;
	// reg flag_down = 0;

	reg [3:0] character_num_reg;
	reg character_num_valid_1;

	always @(posedge clk) begin
		data_i_valid_1 <= data_i_valid;
		data_i_valid_2 <= data_i_valid_1;
		data_i_valid_3 <= data_i_valid_2;
		data_addr_1 <= vcount;
		data_addr_2 <= data_addr_1;
		data_addr_3 <= data_addr_2;
		hcount_1 <= hcount;
		hcount_2 <= hcount_1;
		hcount_3 <= hcount_2;
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			sum_h <= 10'b0;
		end
		else if (data_i_valid) begin
			if (hcount == 0) begin
				sum_h <= data_i;
			end else begin
				sum_h <= sum_h + data_i;
			end
		end
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			sum_h_now <= 10'b0;
			sum_h_last <= 10'b0;
		end
		else if (data_i_valid_1) begin
			if (hcount_1 == HWIDTH-1) begin
				sum_h_now <= sum_h;
				sum_h_last <= sum_h_now;
			end
		end
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			character_num_reg <= 4'b0;
		end
		else if (data_i_valid_2) begin
			if (hcount_2 == HWIDTH-1) begin
				if (sum_h_last<thresh_width && sum_h_now>thresh_width) begin // 上边界
					bound_u[character_num_reg] <= data_addr_2;
				end
				if (sum_h_last>thresh_width && sum_h_now<thresh_width) begin // 下边界
					bound_d[character_num_reg] <= data_addr_2;
					character_num_reg <= character_num_reg + 1'b1;
				end
			end else if(hcount_2 == 0 && data_addr_2 == 0) begin
				character_num_reg <= 4'b0;
			end
		end
	end


	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			character_num <= 3'b0;
		end
		else if (data_i_valid_3) begin
			if (hcount_3 == HWIDTH-1 && data_addr_3 == VWIDTH-1) begin
				character_num <= character_num_reg;
				character_num_valid_1 <= 1'b1;
			end else begin
				character_num_valid_1 <= 1'b0;
			end
		end
	end

	always @(posedge clk) begin
		character_num_valid <= character_num_valid_1;
	end

	`PACK_ARRAY(10, 16, bound_u, bound_u_p);
	`PACK_ARRAY_1(10, 16, bound_d, bound_d_p);
				
endmodule