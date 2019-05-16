`timescale 1ns / 1ps
`include "array.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/06 10:48:03
// Design Name: 
// Module Name: hist
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 垂直投影
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hist_v#(
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
	output [10*16-1:0] bound_l_p,	// 字符的左边界
	output [10*16-1:0] bound_r_p,	// 字符的右边界
	output reg [3:0] character_num,	// 字符个数
	output reg character_num_valid
    );

	wire  [0 : 0] wea;
	wire  [9 : 0] addra;
	wire  [9 : 0] dina;
	wire  [9 : 0] addrb;
	wire  [9 : 0] doutb;

	blk_mem_gen_0 sum_v (
	  .clka(clk),    // input wire clka
	  .wea(wea),      // input wire [0 : 0] wea
	  .addra(addra),  // input wire [9 : 0] addra
	  .dina(dina),    // input wire [9 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(addrb),  // input wire [9 : 0] addrb
	  .doutb(doutb)  // output wire [9 : 0] doutb
	);

	reg data_i_1 = 1'b0;	// data_i delay 1 clk
	reg data_i_valid_1 = 1'b0;
	reg data_i_valid_2 = 1'b0;

	reg [9:0] sum;
	reg [9:0] sum_1;
	reg [9:0] hcount_1 = 10'b0;
	reg [9:0] hcount_2 = 10'b0;
	reg [9:0] vcount_1 = 10'b0;
	reg [9:0] vcount_2 = 10'b0;

	reg flag = 0;
	reg flag_1 = 0;
	wire flag_up;
	wire flag_down;

	wire [9:0] sum_addr;
	wire sum_valid;
	wire [9:0] sum_addr_v;

	reg [9:0] sum_addr_1 = 0;
	reg sum_valid_1 = 0;
	reg [9:0] sum_addr_v_1 = 0;

	reg [9:0] sum_addr_2 = 0;
	reg sum_valid_2 = 0;
	reg [9:0] sum_addr_v_2 = 0;

	reg [9:0] bound_l[15:0];
	reg [9:0] bound_r[15:0];

	reg [3:0] character_num_reg;

	reg character_num_valid_1;

	assign sum_addr = hcount_2;
	assign sum_valid = data_i_valid_2;
	assign sum_addr_v = vcount_2;

	// always @(posedge clk or posedge rst) begin
	// 	if (rst) begin
	// 		// reset
	// 		addrb <= 10'b0;
	// 	end
	// 	else begin
	// 		addrb <= hcount;
	// 	end
	// end
	assign addrb = hcount;

	always @(posedge clk) begin
		data_i_1 <= data_i;
		data_i_valid_1 <= data_i_valid;
		data_i_valid_2 <= data_i_valid_1;
		hcount_1 <= hcount;
		hcount_2 <= hcount_1;
		vcount_1 <= vcount;
		vcount_2 <= vcount_1;
		sum_addr_1 <= sum_addr;
		sum_addr_2 <= sum_addr_1;
		sum_valid_1 <= sum_valid;
		sum_valid_2 <= sum_valid_1;
		sum_addr_v_1 <= sum_addr_v;
		sum_addr_v_2 <= sum_addr_v_1;
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			sum <= 10'b0;
		end
		else if (data_i_valid_1) begin
			if (vcount == 10'b0) begin
				sum <= data_i_1;
			end else begin	
				sum <= data_i_1 + doutb;
			end
		end
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			sum_1 <= 10'b0;
		end
		else if (data_i_valid_2) begin
			sum_1 <= sum;
		end
	end

	assign dina = sum;
	assign wea = data_i_valid_2;
	assign addra = hcount_2;

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			flag <= 1'b0;
		end else if (sum_valid) begin
			if (sum_addr_v == VWIDTH-1) begin
				if (sum >= thresh_width) begin
					flag <= 1'b1;
				end else begin
					flag <= 1'b0;
				end
			end else begin
				flag <= 1'b0;
			end
		end
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			flag_1 <= 1'b0;
		end
		else if (sum_valid) begin
			flag_1 <= flag;
		end
	end

	assign flag_up = (!flag_1)&(flag);
	assign flag_down = (flag_1)&(!flag);

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			character_num_reg <= 4'b0;
		end
		else if (sum_valid_2) begin
			if (sum_addr_v_2 == VWIDTH-1) begin
				if (flag_up) begin
					bound_l[character_num_reg] <= sum_addr_2;
				end
				if (flag_down) begin
					bound_r[character_num_reg] <= sum_addr_2;
					character_num_reg <= character_num_reg + 4'b1;
				end
			end else begin
				character_num_reg <= 4'b0;
			end
		end
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			character_num <= 3'b0;
		end
		else if (sum_valid_2) begin
			if (sum_addr_v_2 == VWIDTH-1 && sum_addr_2 == HWIDTH-1) begin
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

	`PACK_ARRAY(10, 16, bound_l, bound_l_p);
	`PACK_ARRAY_1(10, 16, bound_r, bound_r_p);
				
endmodule
