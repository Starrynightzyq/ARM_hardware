
`timescale 1ns / 1ps

	module Projection #
	(
		parameter HWIDTH = 640,
		parameter VWIDTH = 480
	) 
	(
		input  wire             AXIS_ACLK            ,
		input  wire             AXIS_ARESETN         ,
		input  wire [      7:0] S_AXIS_TDATA         ,
		input  wire             S_AXIS_TVALID        ,
		input  wire             S_AXIS_TUSER         ,
		input  wire             S_AXIS_TLAST         ,
		output wire             S_AXIS_TREADY        ,
		output reg  [      7:0] M_AXIS_TDATA         ,
		output reg              M_AXIS_TVALID        ,
		output reg              M_AXIS_TUSER         ,
		output reg              M_AXIS_TLAST         ,
		input  wire             M_AXIS_TREADY        ,
		input  wire [      9:0] thresh_width_v       ,
		output wire [10*16-1:0] bound_l_p            , // 字符的左边界
		output wire [10*16-1:0] bound_r_p            , // 字符的右边界
		output wire [      3:0] character_num_v      , // 字符个数
		output wire             character_num_v_valid,
		input  wire [      9:0] thresh_width_h       ,
		output wire [10*16-1:0] bound_u_p            ,
		output wire [10*16-1:0] bound_d_p            ,
		output wire [      3:0] character_num_h      ,
		output wire             character_num_h_valid,
		
		output reg [9:0] hcount,
		output reg [9:0] vcount
	);

	wire clk   ;
	wire rst   ;
	wire data_i;

	// reg [9:0] hcount;
	// reg [9:0] vcount;

	reg data_begin = 0;

	assign clk    = AXIS_ACLK;
	assign rst    = !AXIS_ARESETN;
	assign data_i = &S_AXIS_TDATA;

	always @(posedge clk) begin
		data_begin <= S_AXIS_TLAST;
	end

	always @(posedge clk or posedge rst) begin
		if (rst || data_begin) begin
			// reset
			hcount <= 10'b0;
			vcount <= 10'b0;
		end
		else if (S_AXIS_TVALID) begin
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
		.clk                (AXIS_ACLK            ),
		.rst                (!AXIS_ARESETN        ),
		.data_i             (data_i               ),
		.data_i_valid       (S_AXIS_TVALID        ),
		.hcount             (hcount               ),
		.vcount             (vcount               ),
		.thresh_width       (thresh_width_v       ),
		.bound_l_p          (bound_l_p            ),
		.bound_r_p          (bound_r_p            ),
		.character_num      (character_num_v      ),
		.character_num_valid(character_num_v_valid)
	);

	hist_h u_hist_h_inst (
		.clk                (AXIS_ACLK            ),
		.rst                (!AXIS_ARESETN        ),
		.data_i             (data_i               ),
		.data_i_valid       (S_AXIS_TVALID        ),
		.hcount             (hcount               ),
		.vcount             (vcount               ),
		.thresh_width       (thresh_width_h       ),
		.bound_u_p          (bound_u_p            ),
		.bound_d_p          (bound_d_p            ),
		.character_num      (character_num_h      ),
		.character_num_valid(character_num_h_valid)
	);

	always @(posedge clk) begin
		M_AXIS_TDATA  <= S_AXIS_TDATA;
		M_AXIS_TVALID <= S_AXIS_TVALID;
		M_AXIS_TUSER  <= S_AXIS_TUSER;
		M_AXIS_TLAST  <= S_AXIS_TLAST;
	end

	assign S_AXIS_TREADY = M_AXIS_TREADY;

	endmodule
