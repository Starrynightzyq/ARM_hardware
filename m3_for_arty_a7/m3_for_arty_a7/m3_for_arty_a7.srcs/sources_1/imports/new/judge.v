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

	reg all_done; // 一张车牌中所有字符识别完成
	reg [ 5*4-1:0] char_index_co_last = 0; // 上次识别到的数字*8
	wire [ 5*4-1:0] char_index_co_now; // 上次识别到的数字*8

	reg         char_valid   = 0;
	reg  [ 3:0] char_index_0    ;
	reg  [ 3:0] char_index_1    ;
	reg  [ 3:0] char_index_2    ;
	reg  [ 3:0] char_index_3    ;
	reg  [ 3:0] char_index_4    ;
	reg  [ 3:0] char_index_5    ;
	reg  [ 3:0] char_index_6    ;
	reg  [ 3:0] char_index_7    ;
	reg  [15:0] char_diff_0     ;
	reg  [15:0] char_diff_1     ;
	reg  [15:0] char_diff_2     ;
	reg  [15:0] char_diff_3     ;
	reg  [15:0] char_diff_4     ;
	reg  [15:0] char_diff_5     ;
	reg  [15:0] char_diff_6     ;
	reg  [15:0] char_diff_7     ;

	wire [3:0]  char_index_o_0  ;
	wire [3:0]  char_index_o_1  ;
	wire [3:0]  char_index_o_2  ;
	wire [3:0]  char_index_o_3  ;
	wire [3:0]  char_index_o_4  ;
	wire [3:0]  char_index_o_5  ;
	wire [3:0]  char_index_o_6  ;
	wire [3:0]  char_index_o_7  ;
	wire        recognize_done_0;
	wire        recognize_done_1;
	wire        recognize_done_2;
	(*mark_debug = "true"*) wire        recognize_done_3;
	(*mark_debug = "true"*) wire        recognize_done_4;
	(*mark_debug = "true"*) wire        recognize_done_5;
	(*mark_debug = "true"*) wire        recognize_done_6;
	(*mark_debug = "true"*) wire        recognize_done_7;

	reg [1:0] state_reg;
	reg [1:0] state_next;

	wire recognize_done_and;
	wire recognize_done_or;

	localparam IDLE = 2'h0;
	localparam RECOGN = 2'h1;
	localparam DONE = 2'h2;

	assign recognize_done_and = recognize_done_3 & recognize_done_4 & recognize_done_5 & recognize_done_6 & recognize_done_7;
	assign recognize_done_or = recognize_done_3 | recognize_done_4 | recognize_done_5 | recognize_done_6 | recognize_done_7;
	assign char_index_co_now = {char_index_o_7, char_index_o_6, char_index_o_5, char_index_o_4, char_index_o_3};

	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			char_index_0 <= 4'b0;
			char_index_1 <= 4'b0;
			char_index_2 <= 4'b0;
			char_index_3 <= 4'b0;
			char_index_4 <= 4'b0;
			char_index_5 <= 4'b0;
			char_index_6 <= 4'b0;
			char_index_7 <= 4'b0;

			char_diff_0 <= 'b0;
			char_diff_1 <= 'b0;
			char_diff_2 <= 'b0;
			char_diff_3 <= 'b0;
			char_diff_4 <= 'b0;
			char_diff_5 <= 'b0;
			char_diff_6 <= 'b0;
			char_diff_7 <= 'b0;
		end else if(char_valid_c) begin
			char_index_0 <= char_index_c[3:0];
			char_index_1 <= char_index_c[7:4];
			char_index_2 <= char_index_c[11:8];
			char_index_3 <= char_index_c[15:12];
			char_index_4 <= char_index_c[19:16];
			char_index_5 <= char_index_c[23:20];
			char_index_6 <= char_index_c[27:24];
			char_index_7 <= char_index_c[31:28];

			char_diff_0 <= char_diff_c[0+15:0];
			char_diff_1 <= char_diff_c[16+15:16];
			char_diff_2 <= char_diff_c[32+15:32];
			char_diff_3 <= char_diff_c[48+15:48];
			char_diff_4 <= char_diff_c[64+15:64];
			char_diff_5 <= char_diff_c[80+15:80];
			char_diff_6 <= char_diff_c[96+15:96];
			char_diff_7 <= char_diff_c[112+15:112];
		end
	end

	always @(posedge clk) begin
		char_valid <= char_valid_c;
	end
/*
	judge_one inst_judge_one_0
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_0),
			.char_diff      (char_diff_0),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_0),
			.recognize_done (recognize_done_0)
		);

	judge_one inst_judge_one_1
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_1),
			.char_diff      (char_diff_1),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_1),
			.recognize_done (recognize_done_1)
		);

	judge_one inst_judge_one_2
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_2),
			.char_diff      (char_diff_2),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_2),
			.recognize_done (recognize_done_2)
		);
*/
	judge_one inst_judge_one_3
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_3),
			.char_diff      (char_diff_3),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_3),
			.recognize_done (recognize_done_3)
		);

	judge_one inst_judge_one_4
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_4),
			.char_diff      (char_diff_4),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_4),
			.recognize_done (recognize_done_4)
		);

	judge_one inst_judge_one_5
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_5),
			.char_diff      (char_diff_5),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_5),
			.recognize_done (recognize_done_5)
		);

	judge_one inst_judge_one_6
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_6),
			.char_diff      (char_diff_6),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_6),
			.recognize_done (recognize_done_6)
		);

	judge_one inst_judge_one_7
		(
			.clk            (clk),
			.rst_n          (rst_n),

			.max_diff       (max_diff),
			.min_continue   (min_continue),
			.min_counter    (min_counter),

			.char_index     (char_index_7),
			.char_diff      (char_diff_7),
			.char_valid     (char_valid),

			.all_done       (all_done),

			.char_index_o   (char_index_o_7),
			.recognize_done (recognize_done_7)
		);

	always @(posedge clk or negedge rst_n) begin : proc_state_reg
		if(~rst_n) begin
			state_reg <= IDLE;
		end else begin
			state_reg <= state_next;
		end
	end

	always @(*) begin : proc_state_next
		case (state_reg)
			IDLE : begin 
				state_next = RECOGN;
			end
			RECOGN : begin 
				if(recognize_done_and) begin
					state_next = DONE;
				end else begin 
					state_next = RECOGN;
				end
			end
			DONE : begin 
				state_next = IDLE;
			end
			default : state_next = IDLE;
		endcase
	end

	always @(posedge clk or negedge rst_n) begin : proc_output
		if(~rst_n) begin
			char_index_co <= 'b0;
			char_valid_co <= 'b0;
		end else begin
			case (state_reg)
				IDLE : begin 
					char_valid_co <= 'b0;
					all_done <= 1'b1;
				end
				RECOGN : begin 
					char_valid_co <= 'b0;
					all_done <= 1'b0;
				end
				DONE : begin 
					char_index_co <= char_index_co_now;
					all_done <= 1'b1;
					if(char_index_co_last != char_index_co_now) begin
						char_valid_co <= 'b1;
						char_index_co_last <= char_index_co_now;
					end else begin 
						char_valid_co <= 'b0;
					end
				end
				default : begin 
					char_valid_co <= 'b0;
					all_done <= 1'b0;
				end
			endcase
		end
	end

endmodule
