`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/04 21:13:57
// Design Name: 
// Module Name: online
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


module online(
	input wire [10-1:0] hcount               ,
	input wire [10-1:0] vcount               ,

	input wire [10-1:0] bound_u_p            ,
	input wire [10-1:0] bound_d_p            ,
	input wire [10-1:0] bound_l_p            , // 字符的左边界
	input wire [10-1:0] bound_r_p            , // 字符的右边界

	input wire          enabled              ,

	output wire			on_line
    );

wire on_lanscape_line;//在横向线段上
wire on_portrait_line;//在纵向线段上

assign on_lanscape_line = ( (hcount <= bound_r_p) && (hcount >= bound_l_p) ) && ( (vcount == bound_u_p) || (vcount == bound_d_p) )?1'b1 : 1'b0;
assign on_portrait_line = ( (vcount <= bound_d_p) && (vcount >= bound_u_p) ) && ( (hcount == bound_l_p) || (hcount == bound_r_p) )?1'b1 : 1'b0;

assign on_line = ( enabled && (on_lanscape_line || on_portrait_line) )?1'b1 : 1'b0;
endmodule
