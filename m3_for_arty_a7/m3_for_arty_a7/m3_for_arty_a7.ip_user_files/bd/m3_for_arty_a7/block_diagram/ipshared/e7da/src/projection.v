`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/06 10:47:17
// Design Name: 
// Module Name: projection
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


module projection#(
	parameter HWIDTH = 640,
	parameter VWIDTH = 480
	)(
	input AXIS_ACLK,
	input AXIS_ARESETN,

	input [7:0]S_AXIS_TDATA,
	input S_AXIS_TVALID,
	input S_AXIS_TLAST,

	input [9:0] thresh_width_v,
	output [10*16-1:0] bound_l_p,	// 字符的左边界
	output [10*16-1:0] bound_r_p,	// 字符的右边界
	output [3:0] character_num_v,	// 字符个数
	output character_num_v_valid,

	input [9:0] thresh_width_h,
	output [10*16-1:0] bound_u_p,
	output [10*16-1:0] bound_d_p,
	output [3:0] character_num_h,
	output character_num_h_valid,

	output reg [9:0] hcount,
	output reg [9:0] vcount
    );

    wire clk;
    wire rst;
    wire data_i;
    wire data_i_valid;

	// reg [9:0] hcount;
	// reg [9:0] vcount;

	reg data_begin = 0;

	assign clk = AXIS_ACLK;
	assign rst = !AXIS_ARESETN;
	assign data_i = |S_AXIS_TDATA;
	assign data_i_valid = S_AXIS_TVALID;

	always @(posedge clk) begin
		data_begin <= S_AXIS_TLAST;
	end

	always @(posedge clk or posedge rst) begin
		if (rst || data_begin) begin
			// reset
			hcount <= 10'b0;
			vcount <= 10'b0;
		end
		else if (data_i_valid) begin
			if (hcount == HWIDTH-1) begin
				hcount <= 0;
			end else begin
				hcount <= hcount + 1;
			end
			if (vcount == VWIDTH-1 && hcount == HWIDTH-1) begin
				vcount <= 0;
			end else if(hcount ==HWIDTH-1) begin
				vcount <= vcount + 1;
			end
		end
	end

	hist_v u_hist_v_inst (
		.clk(AXIS_ACLK),
		.rst(!AXIS_ARESETN),
		.data_i(data_i),
		.data_i_valid(data_i_valid),
		.hcount(hcount),
		.vcount(vcount),
		.thresh_width(thresh_width_v),
		.bound_l_p(bound_l_p),
		.bound_r_p(bound_r_p),
		.character_num(character_num_v),
		.character_num_valid(character_num_v_valid)
		);

	hist_h u_hist_h_inst (
		.clk(AXIS_ACLK),
		.rst(!AXIS_ARESETN),
		.data_i(data_i),
		.data_i_valid(data_i_valid),
		.hcount(hcount),
		.vcount(vcount),
		.thresh_width(thresh_width_h),
		.bound_u_p(bound_u_p),
		.bound_d_p(bound_d_p),
		.character_num(character_num_h),
		.character_num_valid(character_num_h_valid)
		);

endmodule
