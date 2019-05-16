`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/01 17:14:17
// Design Name: 
// Module Name: display_top
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


module display_top(
		input  wire             AXIS_ACLK            ,
		input  wire             AXIS_ARESETN         ,

		input wire  [      7:0] S_AXIS_TDATA         ,
		input wire              S_AXIS_TVALID        ,
		input wire              S_AXIS_TUSER         ,
		input wire              S_AXIS_TLAST         ,
		output reg              S_AXIS_TREADY        ,

		input wire [10*16-1:0] bound_l_p            , // 字符的左边界
		input wire [10*16-1:0] bound_r_p            , // 字符的右边界
		input wire [      3:0] character_num_v      , // 字符个数
		input wire             character_num_v_valid,
		
		input wire [10*16-1:0] bound_u_p            ,
		input wire [10*16-1:0] bound_d_p            ,
		input wire [      3:0] character_num_h      ,
		input wire             character_num_h_valid,

		input wire [      9:0] hcount               ,
		input wire [      9:0] vcount               ,

		output reg  [      7:0] M_AXIS_TDATA         ,
		output reg              M_AXIS_TVALID        ,
		output reg              M_AXIS_TUSER         ,
		output reg              M_AXIS_TLAST         ,
		input wire              M_AXIS_TREADY        
    );

parameter color = 8'b11100000;

wire enabled_1,  enabled_2,  enabled_3,  enabled_4 ,
	 enabled_5,  enabled_6,  enabled_7,  enabled_8 ,
	 enabled_9,  enabled_10, enabled_11, enabled_12,
	 enabled_13, enabled_14, enabled_15, enabled_16;

assign enabled_1  = (character_num_h_valid && character_num_v_valid && (character_num_h>=1)  && (character_num_v>=1) );
assign enabled_2  = (character_num_h_valid && character_num_v_valid && (character_num_h>=2)  && (character_num_v>=2) );
assign enabled_3  = (character_num_h_valid && character_num_v_valid && (character_num_h>=3)  && (character_num_v>=3) );
assign enabled_4  = (character_num_h_valid && character_num_v_valid && (character_num_h>=4)  && (character_num_v>=4) );
assign enabled_5  = (character_num_h_valid && character_num_v_valid && (character_num_h>=5)  && (character_num_v>=5) );
assign enabled_6  = (character_num_h_valid && character_num_v_valid && (character_num_h>=6)  && (character_num_v>=6) );
assign enabled_7  = (character_num_h_valid && character_num_v_valid && (character_num_h>=7)  && (character_num_v>=7) );
assign enabled_8  = (character_num_h_valid && character_num_v_valid && (character_num_h>=8)  && (character_num_v>=8) );
assign enabled_9  = (character_num_h_valid && character_num_v_valid && (character_num_h>=9)  && (character_num_v>=9) );
assign enabled_10 = (character_num_h_valid && character_num_v_valid && (character_num_h>=10) && (character_num_v>=10));
assign enabled_11 = (character_num_h_valid && character_num_v_valid && (character_num_h>=11) && (character_num_v>=11));
assign enabled_12 = (character_num_h_valid && character_num_v_valid && (character_num_h>=12) && (character_num_v>=12));
assign enabled_13 = (character_num_h_valid && character_num_v_valid && (character_num_h>=13) && (character_num_v>=13));
assign enabled_14 = (character_num_h_valid && character_num_v_valid && (character_num_h>=14) && (character_num_v>=14));
assign enabled_15 = (character_num_h_valid && character_num_v_valid && (character_num_h>=15) && (character_num_v>=15));
assign enabled_16 = (character_num_h_valid && character_num_v_valid && (character_num_h>=16) && (character_num_v>=16));

wire on_line_1,  on_line_2,  on_line_3,  on_line_4 , 
	 on_line_5,  on_line_6,  on_line_7,  on_line_8 ,
	 on_line_9,  on_line_10, on_line_11, on_line_12,
	 on_line_13, on_line_14, on_line_15, on_line_16;

online U1 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[1*10-1 : 0*10]), .bound_d_p(bound_d_p[1*10-1 : 0*10]), .bound_l_p(bound_l_p[1*10-1 : 0*10]), .bound_r_p(bound_r_p[1*10-1 : 0*10]), .enabled(enabled_1),  .on_line(on_line_1) );
online U2 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[2*10-1 : 1*10]), .bound_d_p(bound_d_p[2*10-1 : 1*10]), .bound_l_p(bound_l_p[2*10-1 : 1*10]), .bound_r_p(bound_r_p[2*10-1 : 1*10]), .enabled(enabled_2),  .on_line(on_line_2) );
online U3 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[3*10-1 : 2*10]), .bound_d_p(bound_d_p[3*10-1 : 2*10]), .bound_l_p(bound_l_p[3*10-1 : 2*10]), .bound_r_p(bound_r_p[3*10-1 : 2*10]), .enabled(enabled_3),  .on_line(on_line_3) );
online U4 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[4*10-1 : 3*10]), .bound_d_p(bound_d_p[4*10-1 : 3*10]), .bound_l_p(bound_l_p[4*10-1 : 3*10]), .bound_r_p(bound_r_p[4*10-1 : 3*10]), .enabled(enabled_4),  .on_line(on_line_4) );
online U5 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[5*10-1 : 4*10]), .bound_d_p(bound_d_p[5*10-1 : 4*10]), .bound_l_p(bound_l_p[5*10-1 : 4*10]), .bound_r_p(bound_r_p[5*10-1 : 4*10]), .enabled(enabled_5),  .on_line(on_line_5) );
online U6 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[6*10-1 : 5*10]), .bound_d_p(bound_d_p[6*10-1 : 5*10]), .bound_l_p(bound_l_p[6*10-1 : 5*10]), .bound_r_p(bound_r_p[6*10-1 : 5*10]), .enabled(enabled_6),  .on_line(on_line_6) );
online U7 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[7*10-1 : 6*10]), .bound_d_p(bound_d_p[7*10-1 : 6*10]), .bound_l_p(bound_l_p[7*10-1 : 6*10]), .bound_r_p(bound_r_p[7*10-1 : 6*10]), .enabled(enabled_7),  .on_line(on_line_7) );
online U8 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[8*10-1 : 7*10]), .bound_d_p(bound_d_p[8*10-1 : 7*10]), .bound_l_p(bound_l_p[8*10-1 : 7*10]), .bound_r_p(bound_r_p[8*10-1 : 7*10]), .enabled(enabled_8),  .on_line(on_line_8) );
online U9 (.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[9*10-1 : 8*10]), .bound_d_p(bound_d_p[9*10-1 : 8*10]), .bound_l_p(bound_l_p[9*10-1 : 8*10]), .bound_r_p(bound_r_p[9*10-1 : 8*10]), .enabled(enabled_9),  .on_line(on_line_9) );
online U10(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[10*10-1: 9*10]), .bound_d_p(bound_d_p[10*10-1: 9*10]), .bound_l_p(bound_l_p[10*10-1: 9*10]), .bound_r_p(bound_r_p[10*10-1: 9*10]), .enabled(enabled_10), .on_line(on_line_10));
online U11(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[11*10-1:10*10]), .bound_d_p(bound_d_p[11*10-1:10*10]), .bound_l_p(bound_l_p[11*10-1:10*10]), .bound_r_p(bound_r_p[11*10-1:10*10]), .enabled(enabled_11), .on_line(on_line_11));
online U12(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[12*10-1:11*10]), .bound_d_p(bound_d_p[12*10-1:11*10]), .bound_l_p(bound_l_p[12*10-1:11*10]), .bound_r_p(bound_r_p[12*10-1:11*10]), .enabled(enabled_12), .on_line(on_line_12));
online U13(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[13*10-1:12*10]), .bound_d_p(bound_d_p[13*10-1:12*10]), .bound_l_p(bound_l_p[13*10-1:12*10]), .bound_r_p(bound_r_p[13*10-1:12*10]), .enabled(enabled_13), .on_line(on_line_13));
online U14(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[14*10-1:13*10]), .bound_d_p(bound_d_p[14*10-1:13*10]), .bound_l_p(bound_l_p[14*10-1:13*10]), .bound_r_p(bound_r_p[14*10-1:13*10]), .enabled(enabled_14), .on_line(on_line_14));
online U15(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[15*10-1:14*10]), .bound_d_p(bound_d_p[15*10-1:14*10]), .bound_l_p(bound_l_p[15*10-1:14*10]), .bound_r_p(bound_r_p[15*10-1:14*10]), .enabled(enabled_15), .on_line(on_line_15));
online U16(.hcount(hcount), .vcount(vcount), .bound_u_p(bound_u_p[16*10-1:15*10]), .bound_d_p(bound_d_p[16*10-1:15*10]), .bound_l_p(bound_l_p[16*10-1:15*10]), .bound_r_p(bound_r_p[16*10-1:15*10]), .enabled(enabled_16), .on_line(on_line_16));

wire on_line;
assign on_line = (on_line_1 || on_line_2 || on_line_3 || on_line_4 || on_line_5 || on_line_6 || on_line_7 || on_line_8 || on_line_9 || on_line_10 || on_line_11 || on_line_12 || on_line_13 || on_line_14 || on_line_15 || on_line_16);

always @(posedge AXIS_ACLK or negedge AXIS_ARESETN) begin
	if (!AXIS_ARESETN) begin
		// reset
		M_AXIS_TDATA  <= (S_AXIS_TVALID)? S_AXIS_TDATA : 0;
		M_AXIS_TVALID <= 0;
	end else if (on_line==1) begin     //在框线上
		M_AXIS_TDATA <= color;
		M_AXIS_TVALID <= 1;
	end else begin                  //不在框线上
		M_AXIS_TDATA <= (S_AXIS_TVALID)? S_AXIS_TDATA :0;
		M_AXIS_TVALID <= S_AXIS_TVALID;
	end
end


always @(posedge AXIS_ACLK) begin
	S_AXIS_TREADY <= M_AXIS_TREADY;
	M_AXIS_TLAST  <= S_AXIS_TLAST;
	M_AXIS_TUSER  <= S_AXIS_TUSER;
end

endmodule
