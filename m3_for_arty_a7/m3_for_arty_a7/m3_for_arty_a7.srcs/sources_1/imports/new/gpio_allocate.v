`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/13 14:46:40
// Design Name: 
// Module Name: gpio_allocate
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


module gpio_allocate (
	input  [27:0] gpio_input  ,
	output [15:0] max_diff    , // 最大误差值
	output [ 3:0] min_continue, // 最小连续
	output [ 7:0] min_counter   // 最小计数值
);

	assign {max_diff, min_continue, min_counter} = gpio_input;
endmodule
