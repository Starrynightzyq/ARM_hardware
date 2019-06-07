`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2019/05/27 22:16:03
// Design Name:
// Module Name: bound_fsm
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


module bound_fsm (
	input clk,
	input rst_n,

	input  [15:0] bound_x_min_i,
	input  [15:0] bound_x_max_i,
	input  [15:0] bound_y_min_i,
	input  [15:0] bound_y_max_i,
	input   bound_y_min_ap_vld_i,
	input   bound_y_max_ap_vld_i,
	input   bound_x_min_ap_vld_i,
	input   bound_x_max_ap_vld_i,

	output reg  [15:0] bound_x_min_o,
	output reg  [15:0] bound_x_max_o,
	output reg  [15:0] bound_y_min_o,
	output reg  [15:0] bound_y_max_o,
	output reg   bound_y_min_ap_vld_o,
	output reg   bound_y_max_ap_vld_o,
	output reg   bound_x_min_ap_vld_o,
	output reg   bound_x_max_ap_vld_o
);
	parameter HWIDTH = 640;
	parameter VWIDTH = 480;

	localparam RESET = 3'h0;
	localparam IDLE = 3'h1;
	localparam WORK = 3'h2;

	wire rst;
	wire data_valid;

	reg [2:0] state_reg = 0;
	reg [2:0] state_next = 0;

	reg  [15:0] bound_x_min_r = 0;
	reg  [15:0] bound_x_max_r = 0;
	reg  [15:0] bound_y_min_r = 0;
	reg  [15:0] bound_y_max_r = 0;
	reg   bound_y_min_ap_vld_r = 0;
	reg   bound_y_max_ap_vld_r = 0;
	reg   bound_x_min_ap_vld_r = 0;
	reg   bound_x_max_ap_vld_r = 0;

	assign rst = !rst_n;
	assign data_valid = bound_y_min_ap_vld_i | bound_y_max_ap_vld_i | bound_x_min_ap_vld_i | bound_x_max_ap_vld_i;

	always @(posedge clk) begin
		bound_x_min_r <= bound_x_min_i;
		bound_x_max_r <= bound_x_max_i;
		bound_y_min_r <= bound_y_min_i;
		bound_y_max_r <= bound_y_max_i;
		bound_y_min_ap_vld_r <= bound_y_min_ap_vld_i;
		bound_y_max_ap_vld_r <= bound_y_max_ap_vld_i;
		bound_x_min_ap_vld_r <= bound_x_min_ap_vld_i;
		bound_x_max_ap_vld_r <= bound_x_max_ap_vld_i;	
	end

	always @(posedge clk or posedge rst) begin : proc_state_reg
		if(rst) begin
			state_reg <= RESET;
		end else begin
			state_reg <= state_next;
		end
	end

	always @(*) begin : proc_state_next
		if(rst) begin
			state_next = RESET;
		end else if(data_valid) begin
			state_next = WORK;
		end else begin
			state_next = state_reg;
		end
	end

	always @(posedge clk) begin
		case (state_reg)
			RESET : begin 
				bound_x_min_o <= 10;
				bound_x_max_o <= HWIDTH-10;
				bound_y_min_o <= 10;
				bound_y_max_o <= VWIDTH-10;
				bound_y_min_ap_vld_o <= 1'b1;
				bound_y_max_ap_vld_o <= 1'b1;
				bound_x_min_ap_vld_o <= 1'b1;
				bound_x_max_ap_vld_o <= 1'b1;
			end
			WORK : begin 
				if(bound_y_min_ap_vld_r) begin
					bound_y_min_o <= bound_y_min_r;
				end
				if(bound_y_max_ap_vld_r) begin
					bound_y_max_o <= bound_y_max_r;
				end
				if(bound_x_min_ap_vld_r) begin
					bound_x_min_o <= bound_x_min_r;
				end
				if(bound_x_max_ap_vld_r) begin
					bound_x_max_o <= bound_x_max_r;
				end
				bound_y_min_ap_vld_o <= 1'b1;
				bound_y_max_ap_vld_o <= 1'b1;
				bound_x_min_ap_vld_o <= 1'b1;
				bound_x_max_ap_vld_o <= 1'b1;				
			end
			default : begin 
				bound_x_min_o <= 10;
				bound_x_max_o <= HWIDTH-10;
				bound_y_min_o <= 10;
				bound_y_max_o <= VWIDTH-10;
				bound_y_min_ap_vld_o <= 1'b1;
				bound_y_max_ap_vld_o <= 1'b1;
				bound_x_min_ap_vld_o <= 1'b1;
				bound_x_max_ap_vld_o <= 1'b1;
			end
		endcase
	end

endmodule
