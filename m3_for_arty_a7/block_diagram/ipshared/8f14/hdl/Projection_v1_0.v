
`timescale 1 ns / 1 ps

	module Projection_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface Ctrl_AXI
		parameter integer C_Ctrl_AXI_DATA_WIDTH	= 32,
		parameter integer C_Ctrl_AXI_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface S_AXI
		parameter integer C_S_AXI_TDATA_WIDTH	= 8,

		// Parameters of Axi Master Bus Interface M_AXI
		parameter integer C_M_AXI_TDATA_WIDTH	= 8
		// parameter integer C_M_AXI_START_COUNT	= 32
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

		// Ports of Axi Slave Bus Interface S_AXI
		input wire  s_axi_aclk,
		input wire  s_axi_aresetn,
		output wire  s_axi_tready,
		input wire [C_S_AXI_TDATA_WIDTH-1 : 0] s_axi_tdata,
		input wire [(C_S_AXI_TDATA_WIDTH/8)-1 : 0] s_axi_tstrb,
		input wire  s_axi_tlast,
		input wire  s_axi_tvalid,

		// Ports of Axi Master Bus Interface M_AXI
		input wire  m_axi_aclk,
		input wire  m_axi_aresetn,
		output wire  m_axi_tvalid,
		output wire [C_M_AXI_TDATA_WIDTH-1 : 0] m_axi_tdata,
		output wire [(C_M_AXI_TDATA_WIDTH/8)-1 : 0] m_axi_tstrb,
		output wire  m_axi_tlast,
		input wire  m_axi_tready
	);
// Instantiation of Axi Bus Interface Ctrl_AXI
	Projection_v1_0_Ctrl_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_Ctrl_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_Ctrl_AXI_ADDR_WIDTH)
	) Projection_v1_0_Ctrl_AXI_inst (
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
/*
// Instantiation of Axi Bus Interface S_AXI
	Projection_v1_0_S_AXI # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S_AXI_TDATA_WIDTH)
	) Projection_v1_0_S_AXI_inst (
		.S_AXIS_ACLK(s_axi_aclk),
		.S_AXIS_ARESETN(s_axi_aresetn),
		.S_AXIS_TREADY(s_axi_tready),
		.S_AXIS_TDATA(s_axi_tdata),
		.S_AXIS_TSTRB(s_axi_tstrb),
		.S_AXIS_TLAST(s_axi_tlast),
		.S_AXIS_TVALID(s_axi_tvalid)
	);

// Instantiation of Axi Bus Interface M_AXI
	Projection_v1_0_M_AXI # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_AXI_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_AXI_START_COUNT)
	) Projection_v1_0_M_AXI_inst (
		.M_AXIS_ACLK(m_axi_aclk),
		.M_AXIS_ARESETN(m_axi_aresetn),
		.M_AXIS_TVALID(m_axi_tvalid),
		.M_AXIS_TDATA(m_axi_tdata),
		.M_AXIS_TSTRB(m_axi_tstrb),
		.M_AXIS_TLAST(m_axi_tlast),
		.M_AXIS_TREADY(m_axi_tready)
	);
*/
	// Add user logic here
	
	wire [      9:0] thresh_width_v       ;
	wire [      9:0] thresh_width_h       ;

	Projection # 
	(
		.HWIDTH(640),
		.VWIDTH(480)
	)(
		.AXIS_ACLK            (m_axi_aclk),
		.AXIS_ARESETN         (m_axi_aresetn),

		.S_AXIS_TDATA         (s_axi_tdata),
		.S_AXIS_TVALID        (s_axi_tvalid),
		.S_AXIS_TUSER         (s_axi_tstrb),
		.S_AXIS_TLAST         (s_axi_tlast),
		.S_AXIS_TREADY        (s_axi_tready),

		.M_AXIS_TDATA         (m_axi_tdata),
		.M_AXIS_TVALID        (m_axi_tvalid),
		.M_AXIS_TUSER         (m_axi_tstrb),
		.M_AXIS_TLAST         (m_axi_tlast),
		.M_AXIS_TREADY        (m_axi_tready),

		.thresh_width_v       (thresh_width_v),
		.thresh_width_h       (thresh_width_h),

		.bound_l_p            (bound_l_p),
		.bound_r_p            (bound_r_p),
		.character_num_v      (character_num_v),
		.character_num_v_valid(character_num_v_valid),  

		.bound_u_p            (bound_u_p),
		.bound_d_p            (bound_d_p),
		.character_num_h      (character_num_h),
		.character_num_h_valid(character_num_h_valid),

		.hcount(hcount),
		.vcount(vcount)
	);

	// User logic ends

	endmodule
