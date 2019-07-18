`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/04 17:12:37
// Design Name: 
// Module Name: sort
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


module sort(
	input clk,
	input rst_n,

	input wire diff_sum_0_ap_vld,
	input wire diff_sum_1_ap_vld,
	input wire diff_sum_2_ap_vld,
	input wire diff_sum_3_ap_vld,
	input wire diff_sum_4_ap_vld,
	input wire diff_sum_5_ap_vld,
	input wire diff_sum_6_ap_vld,
	input wire diff_sum_7_ap_vld,
	input wire diff_sum_8_ap_vld,
	input wire diff_sum_9_ap_vld,
	input wire diff_sum_10_ap_vld,
	
	input wire [15:0]diff_sum_0,
	input wire [15:0]diff_sum_1,
	input wire [15:0]diff_sum_2,
	input wire [15:0]diff_sum_3,
	input wire [15:0]diff_sum_4,
	input wire [15:0]diff_sum_5,
	input wire [15:0]diff_sum_6,
	input wire [15:0]diff_sum_7,
	input wire [15:0]diff_sum_8,
	input wire [15:0]diff_sum_9,
	input wire [15:0]diff_sum_10,

	output [3:0]char_index,
	output [15:0] char_diff,
	output interrupt
    );

	reg [15:0]diff_sum_0_r;
	reg diff_sum_0_ap_vld_r;
	reg [15:0]diff_sum_1_r;
	reg diff_sum_1_ap_vld_r;
	reg [15:0]diff_sum_2_r;
	reg diff_sum_2_ap_vld_r;
	reg [15:0]diff_sum_3_r;
	reg diff_sum_3_ap_vld_r;
	reg [15:0]diff_sum_4_r;
	reg diff_sum_4_ap_vld_r;
	reg [15:0]diff_sum_5_r;
	reg diff_sum_5_ap_vld_r;
	reg [15:0]diff_sum_6_r;
	reg diff_sum_6_ap_vld_r;
	reg [15:0]diff_sum_7_r;
	reg diff_sum_7_ap_vld_r;
	reg [15:0]diff_sum_8_r;
	reg diff_sum_8_ap_vld_r;
	reg [15:0]diff_sum_9_r;
	reg diff_sum_9_ap_vld_r;
	reg [15:0]diff_sum_10_r;
	reg diff_sum_10_ap_vld_r;

	wire din_vld;
	wire [10:0]din_vld_pack;
	reg din_vld_1_r = 1'b0;
	reg din_vld_2_r = 1'b0;
	reg din_vld_3_r = 1'b0;
	reg din_vld_4_r = 1'b0;
	reg din_vld_5_r = 1'b0;
	reg din_vld_6_r = 1'b0;

	reg [15:0] min1_1 = 'b0;
	reg [15:0] min1_2 = 'b0;
	reg [15:0] min1_3 = 'b0;
	reg [15:0] min1_4 = 'b0;
	reg [15:0] min1_5 = 'b0;
	reg [15:0] min1_6 = 'b0;

	reg [15:0] min2_1 = 'b0;
	reg [15:0] min2_2 = 'b0;
	reg [15:0] min2_3 = 'b0;

	reg [15:0] min3_1 = 'b0;
	reg [15:0] min3_2 = 'b0;

	reg [15:0] min4_1 = 'b0;

	reg [3:0] min1_1_index = 'b0;
	reg [3:0] min1_2_index = 'b0;
	reg [3:0] min1_3_index = 'b0;
	reg [3:0] min1_4_index = 'b0;
	reg [3:0] min1_5_index = 'b0;
	reg [3:0] min1_6_index = 'b0;

	reg [3:0] min2_1_index = 'b0;
	reg [3:0] min2_2_index = 'b0;
	reg [3:0] min2_3_index = 'b0;

	reg [3:0] min3_1_index = 'b0;
	reg [3:0] min3_2_index = 'b0;

	reg [3:0] min4_1_index = 'b0;

	assign din_vld_pack = {diff_sum_0_ap_vld,
		diff_sum_1_ap_vld,
		diff_sum_2_ap_vld,
		diff_sum_3_ap_vld,
		diff_sum_4_ap_vld,
		diff_sum_5_ap_vld,
		diff_sum_6_ap_vld,
		diff_sum_7_ap_vld,
		diff_sum_8_ap_vld,
		diff_sum_9_ap_vld,
		diff_sum_10_ap_vld};
	assign din_vld = &din_vld_pack;

	always @(posedge clk) begin
		din_vld_1_r <= din_vld;
		din_vld_2_r <= din_vld_1_r;
		din_vld_3_r <= din_vld_2_r;
		din_vld_4_r <= din_vld_3_r;
		din_vld_5_r <= din_vld_4_r;
		din_vld_6_r <= din_vld_5_r;
	end

	always @(posedge clk or negedge rst_n) begin : proc_
		if(~rst_n) begin
			diff_sum_0_r <= 'b0;
			diff_sum_1_r <= 'b0;
			diff_sum_2_r <= 'b0;
			diff_sum_3_r <= 'b0;
			diff_sum_4_r <= 'b0;
			diff_sum_5_r <= 'b0;
			diff_sum_6_r <= 'b0;
			diff_sum_7_r <= 'b0;
			diff_sum_8_r <= 'b0;
			diff_sum_9_r <= 'b0;
			diff_sum_10_r <= 'b0;
		end else if(din_vld) begin
			diff_sum_0_r <= diff_sum_0;
			diff_sum_1_r <= diff_sum_1;
			diff_sum_2_r <= diff_sum_2;
			diff_sum_3_r <= diff_sum_3;
			diff_sum_4_r <= diff_sum_4;
			diff_sum_5_r <= diff_sum_5;
			diff_sum_6_r <= diff_sum_6;
			diff_sum_7_r <= diff_sum_7;
			diff_sum_8_r <= diff_sum_8;
			diff_sum_9_r <= diff_sum_9;
			diff_sum_10_r <= diff_sum_10;
		end
	end

	// 1
	always @(posedge clk) begin
		if(diff_sum_0_r < diff_sum_1_r) begin
			min1_1 <= diff_sum_0_r;
			min1_1_index <= 4'h0;
		end else begin 
			min1_1 <= diff_sum_1_r;
			min1_1_index <= 4'h1;
		end
	end

	always @(posedge clk) begin
		if(diff_sum_2_r < diff_sum_3_r) begin
			min1_2 <= diff_sum_2_r;
			min1_2_index <= 4'h2;
		end else begin 
			min1_2 <= diff_sum_3_r;
			min1_2_index <= 4'h3;
		end
	end

	always @(posedge clk) begin
		if(diff_sum_4_r < diff_sum_5_r) begin
			min1_3 <= diff_sum_4_r;
			min1_3_index <= 4'h4;
		end else begin 
			min1_3 <= diff_sum_5_r;
			min1_3_index <= 4'h5;
		end
	end

	always @(posedge clk) begin
		if(diff_sum_6_r < diff_sum_7_r) begin
			min1_4 <= diff_sum_6_r;
			min1_4_index <= 4'h6;
		end else begin 
			min1_4 <= diff_sum_7_r;
			min1_4_index <= 4'h7;
		end
	end

	always @(posedge clk) begin
		if(diff_sum_8_r < diff_sum_9_r) begin
			min1_5 <= diff_sum_8_r;
			min1_5_index <= 4'h8;
		end else begin 
			min1_5 <= diff_sum_9_r;
			min1_5_index <= 4'h9;
		end
	end

	always @(posedge clk) begin
		min1_6 <= diff_sum_10_r;
		min1_6_index <= 4'hA;
	end

	// 2
	always @(posedge clk) begin
		if(min1_1 < min1_2) begin
			min2_1 <= min1_1;
			min2_1_index <= min1_1_index;
		end else begin 
			min2_1 <= min1_2;
			min2_1_index <= min1_2_index;
		end
	end

	always @(posedge clk) begin
		if(min1_3 < min1_4) begin
			min2_2 <= min1_3;
			min2_2_index <= min1_3_index;
		end else begin 
			min2_2 <= min1_4;
			min2_2_index <= min1_4_index;
		end
	end

	always @(posedge clk) begin
		if(min1_5 < min1_6) begin
			min2_3 <= min1_5;
			min2_3_index <= min1_5_index;
		end else begin 
			min2_3 <= min1_6;
			min2_3_index <= min1_6_index;
		end
	end

	// 3	
	always @(posedge clk) begin
		if(min2_1 < min2_2) begin
			min3_1       <= min2_1;
			min3_1_index <= min2_1_index;
		end else begin
			min3_1       <= min2_2;
			min3_1_index <= min2_2_index;
		end
	end

	always @(posedge clk) begin
		min3_2       <= min2_3;
		min3_2_index <= min2_3_index;
	end

	// 4
	always @(posedge clk) begin
		if(min3_1 < min3_2) begin
			min4_1 <= min3_1;
			min4_1_index <= min3_1_index;
		end else begin 
			min4_1 <= min3_2;
			min4_1_index <= min3_2_index;
		end
	end

	assign char_diff = min4_1;
	assign char_index = min4_1_index;
	assign interrupt = din_vld_5_r;

endmodule
