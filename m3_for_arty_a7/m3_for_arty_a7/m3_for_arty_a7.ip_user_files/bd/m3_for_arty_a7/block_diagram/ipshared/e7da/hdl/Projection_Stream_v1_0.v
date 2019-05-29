
`timescale 1 ns / 1 ps

	module Projection_Stream_v1_0 #
	(
		// Users to add parameters here
		parameter HWIDTH = 640,
		parameter VWIDTH = 480,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface Ctrl_AXI
		parameter integer C_Ctrl_AXI_DATA_WIDTH	= 32,
		parameter integer C_Ctrl_AXI_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface S_AXIS
		parameter integer C_S_AXIS_TDATA_WIDTH	= 8,

		// Parameters of Axi Master Bus Interface M_AXIS
		parameter integer C_M_AXIS_TDATA_WIDTH	= 8,
		parameter integer C_M_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here

		output wire [10*16-1:0] bound_l_p            , // 字符的左边界
		output wire [10*16-1:0] bound_r_p            , // 字符的右边界
		output wire [      3:0] character_num_v      , // 字符个数
		output wire             character_num_v_valid,

		output wire [10*16-1:0] bound_u_p            ,
		output wire [10*16-1:0] bound_d_p            ,
		output wire [      3:0] character_num_h      ,
		output wire             character_num_h_valid,

		output wire [9:0] hcount,
		output wire [9:0] vcount,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface Ctrl_AXI
		input wire  ctrl_axi_aclk,
		input wire  ctrl_axi_aresetn,
		input wire [C_Ctrl_AXI_ADDR_WIDTH-1 : 0] ctrl_axi_awaddr,
		input wire [2 : 0] ctrl_axi_awprot,
		input wire  ctrl_axi_awvalid,
		output wire  ctrl_axi_awready,
		input wire [C_Ctrl_AXI_DATA_WIDTH-1 : 0] ctrl_axi_wdata,
		input wire [(C_Ctrl_AXI_DATA_WIDTH/8)-1 : 0] ctrl_axi_wstrb,
		input wire  ctrl_axi_wvalid,
		output wire  ctrl_axi_wready,
		output wire [1 : 0] ctrl_axi_bresp,
		output wire  ctrl_axi_bvalid,
		input wire  ctrl_axi_bready,
		input wire [C_Ctrl_AXI_ADDR_WIDTH-1 : 0] ctrl_axi_araddr,
		input wire [2 : 0] ctrl_axi_arprot,
		input wire  ctrl_axi_arvalid,
		output wire  ctrl_axi_arready,
		output wire [C_Ctrl_AXI_DATA_WIDTH-1 : 0] ctrl_axi_rdata,
		output wire [1 : 0] ctrl_axi_rresp,
		output wire  ctrl_axi_rvalid,
		input wire  ctrl_axi_rready,

		// Ports of Axi Slave Bus Interface S_AXIS
		input wire  s_axis_aclk,
		input wire  s_axis_aresetn,
		output wire  s_axis_tready,
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] s_axis_tstrb,
		input wire  s_axis_tlast,
		input wire  s_axis_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS
		input wire  m_axis_aclk,
		input wire  m_axis_aresetn,
		output wire  m_axis_tvalid,
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] m_axis_tstrb,
		output wire  m_axis_tlast,
		input wire  m_axis_tready
	);
//
	wire [C_M_AXIS_TDATA_WIDTH-1 : 0] data_read;
	wire data_read_valid;
	wire data_read_last;

	wire [C_M_AXIS_TDATA_WIDTH-1 : 0] data_write;
	wire data_write_valid;
	wire data_write_last;
	wire fifo_rd_en;
	wire fifo_empty;
	wire fifo_full;
	
	wire [      9:0] thresh_width_v;
	wire [      9:0] thresh_width_h;

// Instantiation of Axi Bus Interface Ctrl_AXI
	Projection_Stream_v1_0_Ctrl_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_Ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_Ctrl_AXI_ADDR_WIDTH)
	) Projection_Stream_v1_0_Ctrl_AXI_inst (
		.thresh_width_v       (thresh_width_v),
		.thresh_width_h       (thresh_width_h),
		.S_AXI_ACLK(ctrl_axi_aclk),
		.S_AXI_ARESETN(ctrl_axi_aresetn),
		.S_AXI_AWADDR(ctrl_axi_awaddr),
		.S_AXI_AWPROT(ctrl_axi_awprot),
		.S_AXI_AWVALID(ctrl_axi_awvalid),
		.S_AXI_AWREADY(ctrl_axi_awready),
		.S_AXI_WDATA(ctrl_axi_wdata),
		.S_AXI_WSTRB(ctrl_axi_wstrb),
		.S_AXI_WVALID(ctrl_axi_wvalid),
		.S_AXI_WREADY(ctrl_axi_wready),
		.S_AXI_BRESP(ctrl_axi_bresp),
		.S_AXI_BVALID(ctrl_axi_bvalid),
		.S_AXI_BREADY(ctrl_axi_bready),
		.S_AXI_ARADDR(ctrl_axi_araddr),
		.S_AXI_ARPROT(ctrl_axi_arprot),
		.S_AXI_ARVALID(ctrl_axi_arvalid),
		.S_AXI_ARREADY(ctrl_axi_arready),
		.S_AXI_RDATA(ctrl_axi_rdata),
		.S_AXI_RRESP(ctrl_axi_rresp),
		.S_AXI_RVALID(ctrl_axi_rvalid),
		.S_AXI_RREADY(ctrl_axi_rready)
	);

// Instantiation of Axi Bus Interface S_AXIS
	Projection_Stream_v1_0_S_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S_AXIS_TDATA_WIDTH)
	) Projection_Stream_v1_0_S_AXIS_inst (
		.S_AXIS_ACLK(s_axis_aclk),
		.S_AXIS_ARESETN(s_axis_aresetn),
		.S_AXIS_TREADY(s_axis_tready),
		.S_AXIS_TDATA(s_axis_tdata),
		.S_AXIS_TSTRB(s_axis_tstrb),
		.S_AXIS_TLAST(s_axis_tlast),
		.S_AXIS_TVALID(s_axis_tvalid),
		.data_read(data_read),
		.data_read_valid(data_read_valid),
		.data_read_last(data_read_last),
		.fifo_full(fifo_full)
	);

// Instantiation of Axi Bus Interface M_AXIS
	Projection_Stream_v1_0_M_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_AXIS_START_COUNT)
	) Projection_Stream_v1_0_M_AXIS_inst (
		.M_AXIS_ACLK(m_axis_aclk),
		.M_AXIS_ARESETN(m_axis_aresetn),
		.M_AXIS_TVALID(m_axis_tvalid),
		.M_AXIS_TDATA(m_axis_tdata),
		.M_AXIS_TSTRB(m_axis_tstrb),
		.M_AXIS_TLAST(m_axis_tlast),
		.M_AXIS_TREADY(m_axis_tready),
		.data_write(data_write),
		.data_write_valid(data_write_valid),
		.fifo_rd_en(fifo_rd_en)
	);

	// Add user logic here
	// 

	projection #(
			.HWIDTH(HWIDTH),
			.VWIDTH(VWIDTH)
		) inst_projection (
			.AXIS_ACLK             (s_axis_aclk),
			.AXIS_ARESETN          (s_axis_aresetn),
			.S_AXIS_TDATA          (data_read),
			.S_AXIS_TVALID         (data_read_valid),
			.S_AXIS_TLAST          (data_read_last),
			.thresh_width_v        (thresh_width_v),
			.bound_l_p             (bound_l_p),
			.bound_r_p             (bound_r_p),
			.character_num_v       (character_num_v),
			.character_num_v_valid (character_num_v_valid),
			.thresh_width_h        (thresh_width_h),
			.bound_u_p             (bound_u_p),
			.bound_d_p             (bound_d_p),
			.character_num_h       (character_num_h),
			.character_num_h_valid (character_num_h_valid),
			.hcount                (hcount),
			.vcount                (vcount)
		);


	fifo_generator_0 data_fifo (
	  .clk(s_axis_aclk),      // input wire clk
	  .srst(!s_axis_aresetn),    // input wire srst
	  .din(data_read),      // input wire [7 : 0] din
	  .wr_en(data_read_valid),  // input wire wr_en
	  .rd_en(fifo_rd_en),  // input wire rd_en
	  .dout(data_write),    // output wire [7 : 0] dout
	  .full(fifo_full),    // output wire full
	  .empty(fifo_empty)  // output wire empty
	);

	assign data_write_valid = ~fifo_empty;

	// User logic ends

	endmodule
