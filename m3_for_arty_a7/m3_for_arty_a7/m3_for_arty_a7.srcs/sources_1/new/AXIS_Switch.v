`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/12 12:18:09
// Design Name: 
// Module Name: AXIS_Switch
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

/*
24 S0 original video;
8  S1 video after threshold;
8  S2 viado after projection;
8  S3 video after display;

24 M0 threshold input;
8  M1 projection input;
8  M2 display input;
24 M3 global output;
 */

module AXIS_Switch #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// AXI4Stream sink: Data Width
		parameter integer C_S0_AXIS_TDATA_WIDTH	= 24,
		parameter integer C_S1_AXIS_TDATA_WIDTH	= 8,
		parameter integer C_S2_AXIS_TDATA_WIDTH	= 8,
		parameter integer C_S3_AXIS_TDATA_WIDTH	= 8,

		// Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		parameter integer C_M0_AXIS_TDATA_WIDTH	= 24,
		parameter integer C_M1_AXIS_TDATA_WIDTH	= 8,
		parameter integer C_M2_AXIS_TDATA_WIDTH	= 8,
		parameter integer C_M3_AXIS_TDATA_WIDTH	= 24
	)
	(
		input wire [3:0] switch,

		// AXI4Stream sink: Clock
		input wire  S0_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S0_AXIS_ARESETN,
		// Ready to accept data in
		output reg  S0_AXIS_TREADY,
		// Data in
		input wire [C_S0_AXIS_TDATA_WIDTH-1 : 0] S0_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S0_AXIS_TDATA_WIDTH/8)-1 : 0] S0_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S0_AXIS_TLAST,
		// Data is in valid
		input wire  S0_AXIS_TVALID,	

		// AXI4Stream sink: Clock
		input wire  S1_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S1_AXIS_ARESETN,
		// Ready to accept data in
		output reg  S1_AXIS_TREADY,
		// Data in
		input wire [C_S1_AXIS_TDATA_WIDTH-1 : 0] S1_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S1_AXIS_TDATA_WIDTH/8)-1 : 0] S1_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S1_AXIS_TLAST,
		// Data is in valid
		input wire  S1_AXIS_TVALID,

		// AXI4Stream sink: Clock
		input wire  S2_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S2_AXIS_ARESETN,
		// Ready to accept data in
		output reg  S2_AXIS_TREADY,
		// Data in
		input wire [C_S2_AXIS_TDATA_WIDTH-1 : 0] S2_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S2_AXIS_TDATA_WIDTH/8)-1 : 0] S2_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S2_AXIS_TLAST,
		// Data is in valid
		input wire  S2_AXIS_TVALID,

		// AXI4Stream sink: Clock
		input wire  S3_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S3_AXIS_ARESETN,
		// Ready to accept data in
		output reg  S3_AXIS_TREADY,
		// Data in
		input wire [C_S3_AXIS_TDATA_WIDTH-1 : 0] S3_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S3_AXIS_TDATA_WIDTH/8)-1 : 0] S3_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S3_AXIS_TLAST,
		// Data is in valid
		input wire  S3_AXIS_TVALID,

		// Global ports
		input wire  M0_AXIS_ACLK,
		// 
		input wire  M0_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		output reg  M0_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output reg [C_M0_AXIS_TDATA_WIDTH-1 : 0] M0_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output reg [(C_M0_AXIS_TDATA_WIDTH/8)-1 : 0] M0_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output reg  M0_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M0_AXIS_TREADY,

		// Global ports
		input wire  M1_AXIS_ACLK,
		// 
		input wire  M1_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		output reg  M1_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output reg [C_M1_AXIS_TDATA_WIDTH-1 : 0] M1_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output reg [(C_M1_AXIS_TDATA_WIDTH/8)-1 : 0] M1_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output reg  M1_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M1_AXIS_TREADY,

		// Global ports
		input wire  M2_AXIS_ACLK,
		// 
		input wire  M2_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		output reg  M2_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output reg [C_M2_AXIS_TDATA_WIDTH-1 : 0] M2_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output reg [(C_M2_AXIS_TDATA_WIDTH/8)-1 : 0] M2_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output reg  M2_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M2_AXIS_TREADY,

		// Global ports
		input wire  M3_AXIS_ACLK,
		// 
		input wire  M3_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		output reg  M3_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output reg [C_M3_AXIS_TDATA_WIDTH-1 : 0] M3_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output reg [(C_M3_AXIS_TDATA_WIDTH/8)-1 : 0] M3_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output reg  M3_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M3_AXIS_TREADY
    );

	always @(posedge M3_AXIS_ACLK) begin
		case (switch)
			0 : begin /* all image process */
				S0_AXIS_TREADY <= M0_AXIS_TREADY;
				M0_AXIS_TVALID <= S0_AXIS_TVALID;
				M0_AXIS_TDATA  <= S0_AXIS_TDATA;
				M0_AXIS_TSTRB  <= S0_AXIS_TSTRB;
				M0_AXIS_TLAST  <= S0_AXIS_TLAST;

				S1_AXIS_TREADY <= M1_AXIS_TREADY;
				M1_AXIS_TVALID <= S1_AXIS_TVALID;
				M1_AXIS_TDATA  <= S1_AXIS_TDATA;
				M1_AXIS_TSTRB  <= S1_AXIS_TSTRB;
				M1_AXIS_TLAST  <= S1_AXIS_TLAST;

				S2_AXIS_TREADY <= M2_AXIS_TREADY;
				M2_AXIS_TVALID <= S2_AXIS_TVALID;
				M2_AXIS_TDATA  <= S2_AXIS_TDATA;
				M2_AXIS_TSTRB  <= S2_AXIS_TSTRB;
				M2_AXIS_TLAST  <= S2_AXIS_TLAST;

				S3_AXIS_TREADY <= M3_AXIS_TREADY;
				M3_AXIS_TVALID <= S3_AXIS_TVALID;
				M3_AXIS_TDATA  <= {S3_AXIS_TDATA, S3_AXIS_TDATA, S3_AXIS_TDATA};
				M3_AXIS_TSTRB  <= {S3_AXIS_TSTRB, S3_AXIS_TDATA, S3_AXIS_TDATA};
				M3_AXIS_TLAST  <= S3_AXIS_TLAST;
			end

			1 : begin /* no image process */
				S0_AXIS_TREADY <= M3_AXIS_TREADY;
				M0_AXIS_TVALID <= S3_AXIS_TVALID;
				M0_AXIS_TDATA  <= S3_AXIS_TDATA;
				M0_AXIS_TSTRB  <= S3_AXIS_TSTRB;
				M0_AXIS_TLAST  <= S3_AXIS_TLAST;

				S1_AXIS_TREADY <= M1_AXIS_TREADY;
				M1_AXIS_TVALID <= S1_AXIS_TVALID;
				M1_AXIS_TDATA  <= S1_AXIS_TDATA;
				M1_AXIS_TSTRB  <= S1_AXIS_TSTRB;
				M1_AXIS_TLAST  <= S1_AXIS_TLAST;

				S2_AXIS_TREADY <= M2_AXIS_TREADY;
				M2_AXIS_TVALID <= S2_AXIS_TVALID;
				M2_AXIS_TDATA  <= S2_AXIS_TDATA;
				M2_AXIS_TSTRB  <= S2_AXIS_TSTRB;
				M2_AXIS_TLAST  <= S2_AXIS_TLAST;

				S3_AXIS_TREADY <= M0_AXIS_TREADY;
				M3_AXIS_TVALID <= S0_AXIS_TVALID;
				M3_AXIS_TDATA  <= S0_AXIS_TDATA;
				M3_AXIS_TSTRB  <= S0_AXIS_TSTRB;
				M3_AXIS_TLAST  <= S0_AXIS_TLAST;
			end

			2 : begin /* only threshold */
				S0_AXIS_TREADY <= M0_AXIS_TREADY;
				M0_AXIS_TVALID <= S0_AXIS_TVALID;
				M0_AXIS_TDATA  <= S0_AXIS_TDATA;
				M0_AXIS_TSTRB  <= S0_AXIS_TSTRB;
				M0_AXIS_TLAST  <= S0_AXIS_TLAST;

				S1_AXIS_TREADY <= M3_AXIS_TREADY;
				M1_AXIS_TVALID <= S3_AXIS_TVALID;
				M1_AXIS_TDATA  <= S3_AXIS_TDATA;
				M1_AXIS_TSTRB  <= S3_AXIS_TSTRB;
				M1_AXIS_TLAST  <= S3_AXIS_TLAST;

				S2_AXIS_TREADY <= M2_AXIS_TREADY;
				M2_AXIS_TVALID <= S2_AXIS_TVALID;
				M2_AXIS_TDATA  <= S2_AXIS_TDATA;
				M2_AXIS_TSTRB  <= S2_AXIS_TSTRB;
				M2_AXIS_TLAST  <= S2_AXIS_TLAST;

				S3_AXIS_TREADY <= M1_AXIS_TREADY;
				M3_AXIS_TVALID <= S1_AXIS_TVALID;
				M3_AXIS_TDATA  <= {S1_AXIS_TDATA, S1_AXIS_TDATA, S1_AXIS_TDATA};
				M3_AXIS_TSTRB  <= {S1_AXIS_TSTRB, S1_AXIS_TSTRB, S1_AXIS_TSTRB};
				M3_AXIS_TLAST  <= S1_AXIS_TLAST;
			end

			default : begin
				S0_AXIS_TREADY <= M0_AXIS_TREADY;
				M0_AXIS_TVALID <= S0_AXIS_TVALID;
				M0_AXIS_TDATA  <= S0_AXIS_TDATA;
				M0_AXIS_TSTRB  <= S0_AXIS_TSTRB;
				M0_AXIS_TLAST  <= S0_AXIS_TLAST;

				S1_AXIS_TREADY <= M1_AXIS_TREADY;
				M1_AXIS_TVALID <= S1_AXIS_TVALID;
				M1_AXIS_TDATA  <= S1_AXIS_TDATA;
				M1_AXIS_TSTRB  <= S1_AXIS_TSTRB;
				M1_AXIS_TLAST  <= S1_AXIS_TLAST;

				S2_AXIS_TREADY <= M2_AXIS_TREADY;
				M2_AXIS_TVALID <= S2_AXIS_TVALID;
				M2_AXIS_TDATA  <= S2_AXIS_TDATA;
				M2_AXIS_TSTRB  <= S2_AXIS_TSTRB;
				M2_AXIS_TLAST  <= S2_AXIS_TLAST;

				S3_AXIS_TREADY <= M3_AXIS_TREADY;
				M3_AXIS_TVALID <= S3_AXIS_TVALID;
				M3_AXIS_TDATA  <= S3_AXIS_TDATA;
				M3_AXIS_TSTRB  <= S3_AXIS_TSTRB;
				M3_AXIS_TLAST  <= S3_AXIS_TLAST;
			end
		endcase
	end
endmodule
