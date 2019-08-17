// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 14 10:05:18 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_axis2ram_0_0/m3_for_arty_a7_axis2ram_0_0_sim_netlist.v
// Design      : m3_for_arty_a7_axis2ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_axis2ram_0_0,axis2ram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "axis2ram,Vivado 2018.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module m3_for_arty_a7_axis2ram_0_0
   (output_r_ce0,
    output_r_we0,
    input_r_TVALID,
    input_r_TREADY,
    input_r_TDATA,
    input_r_TKEEP,
    input_r_TSTRB,
    input_r_TUSER,
    input_r_TLAST,
    input_r_TID,
    input_r_TDEST,
    output_r_address0,
    output_r_d0,
    output_r_q0,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_ready,
    ap_idle);
  output output_r_ce0;
  output output_r_we0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TVALID" *) input input_r_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TREADY" *) output input_r_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDATA" *) input [7:0]input_r_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TKEEP" *) input [0:0]input_r_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TSTRB" *) input [0:0]input_r_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TUSER" *) input [0:0]input_r_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TLAST" *) input [0:0]input_r_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TID" *) input [0:0]input_r_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_r TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_r, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input [0:0]input_r_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 output_r_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_r_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 19} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [18:0]output_r_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 output_r_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_r_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [0:0]output_r_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 output_r_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_r_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [0:0]output_r_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF input_r, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_idle;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [7:0]input_r_TDATA;
  wire [0:0]input_r_TDEST;
  wire [0:0]input_r_TID;
  wire [0:0]input_r_TKEEP;
  wire [0:0]input_r_TLAST;
  wire input_r_TREADY;
  wire [0:0]input_r_TSTRB;
  wire [0:0]input_r_TUSER;
  wire input_r_TVALID;
  wire [18:0]output_r_address0;
  wire output_r_ce0;
  wire [0:0]output_r_d0;
  wire [0:0]output_r_q0;
  wire output_r_we0;

  m3_for_arty_a7_axis2ram_0_0_axis2ram inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .input_r_TDATA(input_r_TDATA),
        .input_r_TDEST(input_r_TDEST),
        .input_r_TID(input_r_TID),
        .input_r_TKEEP(input_r_TKEEP),
        .input_r_TLAST(input_r_TLAST),
        .input_r_TREADY(input_r_TREADY),
        .input_r_TSTRB(input_r_TSTRB),
        .input_r_TUSER(input_r_TUSER),
        .input_r_TVALID(input_r_TVALID),
        .output_r_address0(output_r_address0),
        .output_r_ce0(output_r_ce0),
        .output_r_d0(output_r_d0),
        .output_r_q0(output_r_q0),
        .output_r_we0(output_r_we0));
endmodule

(* ORIG_REF_NAME = "AXIvideo2Mat" *) 
module m3_for_arty_a7_axis2ram_0_0_AXIvideo2Mat
   (ap_rst_n_inv,
    input_r_TREADY,
    start_once_reg,
    Q,
    ap_ready,
    \ap_CS_fsm_reg[1]_0 ,
    \mOutPtr_reg[1] ,
    E,
    \mOutPtr_reg[0] ,
    shiftReg_ce,
    D,
    ap_clk,
    ap_rst_n,
    mat2vector_U0_ap_start,
    img_0_cols_V_c5_empty_n,
    img_0_rows_V_c4_empty_n,
    \ap_CS_fsm_reg[0]_0 ,
    ap_start,
    img_0_rows_V_c_full_n,
    img_0_cols_V_c_full_n,
    img_0_rows_V_c_empty_n,
    img_0_cols_V_c5_full_n,
    img_0_rows_V_c4_full_n,
    img_0_cols_V_c_empty_n,
    start_for_mat2vector_U0_full_n,
    input_r_TVALID,
    img_0_data_stream_0_full_n,
    input_r_TLAST,
    input_r_TUSER,
    input_r_TDATA);
  output ap_rst_n_inv;
  output input_r_TREADY;
  output start_once_reg;
  output [0:0]Q;
  output ap_ready;
  output \ap_CS_fsm_reg[1]_0 ;
  output \mOutPtr_reg[1] ;
  output [0:0]E;
  output \mOutPtr_reg[0] ;
  output shiftReg_ce;
  output [7:0]D;
  input ap_clk;
  input ap_rst_n;
  input mat2vector_U0_ap_start;
  input img_0_cols_V_c5_empty_n;
  input img_0_rows_V_c4_empty_n;
  input [0:0]\ap_CS_fsm_reg[0]_0 ;
  input ap_start;
  input img_0_rows_V_c_full_n;
  input img_0_cols_V_c_full_n;
  input img_0_rows_V_c_empty_n;
  input img_0_cols_V_c5_full_n;
  input img_0_rows_V_c4_full_n;
  input img_0_cols_V_c_empty_n;
  input start_for_mat2vector_U0_full_n;
  input input_r_TVALID;
  input img_0_data_stream_0_full_n;
  input [0:0]input_r_TLAST;
  input [0:0]input_r_TUSER;
  input [7:0]input_r_TDATA;

  wire AXI_video_strm_V_data_V_0_ack_in;
  wire [7:0]AXI_video_strm_V_data_V_0_data_out;
  wire AXI_video_strm_V_data_V_0_load_A;
  wire AXI_video_strm_V_data_V_0_load_B;
  wire [7:0]AXI_video_strm_V_data_V_0_payload_A;
  wire [7:0]AXI_video_strm_V_data_V_0_payload_B;
  wire AXI_video_strm_V_data_V_0_sel;
  wire AXI_video_strm_V_data_V_0_sel0;
  wire AXI_video_strm_V_data_V_0_sel2;
  wire AXI_video_strm_V_data_V_0_sel_rd_i_1_n_0;
  wire AXI_video_strm_V_data_V_0_sel_wr;
  wire AXI_video_strm_V_data_V_0_sel_wr_i_1_n_0;
  wire [1:1]AXI_video_strm_V_data_V_0_state;
  wire \AXI_video_strm_V_data_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ;
  wire [1:1]AXI_video_strm_V_dest_V_0_state;
  wire \AXI_video_strm_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_dest_V_0_state[1]_i_4_n_0 ;
  wire \AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ;
  wire AXI_video_strm_V_last_V_0_ack_in;
  wire AXI_video_strm_V_last_V_0_data_out;
  wire AXI_video_strm_V_last_V_0_payload_A;
  wire \AXI_video_strm_V_last_V_0_payload_A[0]_i_1_n_0 ;
  wire AXI_video_strm_V_last_V_0_payload_B;
  wire \AXI_video_strm_V_last_V_0_payload_B[0]_i_1_n_0 ;
  wire AXI_video_strm_V_last_V_0_sel;
  wire AXI_video_strm_V_last_V_0_sel_rd_i_1_n_0;
  wire AXI_video_strm_V_last_V_0_sel_wr;
  wire AXI_video_strm_V_last_V_0_sel_wr_i_1_n_0;
  wire [1:1]AXI_video_strm_V_last_V_0_state;
  wire \AXI_video_strm_V_last_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ;
  wire AXI_video_strm_V_user_V_0_ack_in;
  wire AXI_video_strm_V_user_V_0_payload_A;
  wire \AXI_video_strm_V_user_V_0_payload_A[0]_i_1_n_0 ;
  wire AXI_video_strm_V_user_V_0_payload_B;
  wire \AXI_video_strm_V_user_V_0_payload_B[0]_i_1_n_0 ;
  wire AXI_video_strm_V_user_V_0_sel;
  wire AXI_video_strm_V_user_V_0_sel_rd_i_1_n_0;
  wire AXI_video_strm_V_user_V_0_sel_wr;
  wire AXI_video_strm_V_user_V_0_sel_wr_i_1_n_0;
  wire [1:1]AXI_video_strm_V_user_V_0_state;
  wire \AXI_video_strm_V_user_V_0_state[0]_i_1_n_0 ;
  wire \AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire ap_CS_fsm_pp1_stage0;
  wire ap_CS_fsm_pp2_stage0;
  wire [0:0]\ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state7;
  wire [7:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_2_n_0;
  wire ap_enable_reg_pp1_iter1_reg_n_0;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp2_iter0_i_1_n_0;
  wire ap_enable_reg_pp2_iter0_i_2_n_0;
  wire ap_enable_reg_pp2_iter1_i_1_n_0;
  wire ap_enable_reg_pp2_iter1_reg_n_0;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [7:0]axi_data_V1_i_reg_215;
  wire \axi_data_V1_i_reg_215[0]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[1]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[2]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[3]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[4]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[5]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[6]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_215[7]_i_1_n_0 ;
  wire [7:0]axi_data_V_1_i_reg_270;
  wire \axi_data_V_1_i_reg_270[0]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[1]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[2]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[3]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[4]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[5]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[6]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_270[7]_i_1_n_0 ;
  wire [7:0]axi_data_V_3_i_reg_330;
  wire \axi_data_V_3_i_reg_330[0]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[1]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[2]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[3]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[4]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[5]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[6]_i_1_n_0 ;
  wire \axi_data_V_3_i_reg_330[7]_i_1_n_0 ;
  wire axi_last_V1_i_reg_205;
  wire \axi_last_V1_i_reg_205[0]_i_1_n_0 ;
  wire axi_last_V_3_i_reg_318;
  wire \axi_last_V_3_i_reg_318[0]_i_1_n_0 ;
  wire brmerge_i_reg_453;
  wire \brmerge_i_reg_453[0]_i_1_n_0 ;
  wire \brmerge_i_reg_453[0]_i_2_n_0 ;
  wire \brmerge_i_reg_453[0]_i_3_n_0 ;
  wire \brmerge_i_reg_453[0]_i_4_n_0 ;
  wire \eol_2_i_reg_307[0]_i_1_n_0 ;
  wire \eol_2_i_reg_307[0]_i_2_n_0 ;
  wire \eol_2_i_reg_307_reg_n_0_[0] ;
  wire eol_i_reg_247;
  wire \eol_i_reg_247_reg_n_0_[0] ;
  wire \eol_reg_259[0]_i_1_n_0 ;
  wire \eol_reg_259[0]_i_2_n_0 ;
  wire \eol_reg_259_reg_n_0_[0] ;
  wire exitcond2_i_fu_369_p2;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_0 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_1 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_2 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_3 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry__1_n_2 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry__1_n_3 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry_n_0 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry_n_1 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry_n_2 ;
  wire \exitcond2_i_fu_369_p2_inferred__0/i__carry_n_3 ;
  wire exitcond_i_fu_380_p2;
  wire exitcond_i_fu_380_p2_carry__0_i_1_n_0;
  wire exitcond_i_fu_380_p2_carry__0_i_2_n_0;
  wire exitcond_i_fu_380_p2_carry__0_i_3_n_0;
  wire exitcond_i_fu_380_p2_carry__0_i_4_n_0;
  wire exitcond_i_fu_380_p2_carry__0_n_0;
  wire exitcond_i_fu_380_p2_carry__0_n_1;
  wire exitcond_i_fu_380_p2_carry__0_n_2;
  wire exitcond_i_fu_380_p2_carry__0_n_3;
  wire exitcond_i_fu_380_p2_carry__1_i_1_n_0;
  wire exitcond_i_fu_380_p2_carry__1_i_2_n_0;
  wire exitcond_i_fu_380_p2_carry__1_i_3_n_0;
  wire exitcond_i_fu_380_p2_carry__1_n_2;
  wire exitcond_i_fu_380_p2_carry__1_n_3;
  wire exitcond_i_fu_380_p2_carry_i_1_n_0;
  wire exitcond_i_fu_380_p2_carry_i_2_n_0;
  wire exitcond_i_fu_380_p2_carry_i_3_n_0;
  wire exitcond_i_fu_380_p2_carry_i_4_n_0;
  wire exitcond_i_fu_380_p2_carry_n_0;
  wire exitcond_i_fu_380_p2_carry_n_1;
  wire exitcond_i_fu_380_p2_carry_n_2;
  wire exitcond_i_fu_380_p2_carry_n_3;
  wire exitcond_i_reg_4440;
  wire \exitcond_i_reg_444[0]_i_1_n_0 ;
  wire \exitcond_i_reg_444_reg_n_0_[0] ;
  wire [31:0]i_V_fu_374_p2;
  wire [31:0]i_V_reg_439;
  wire \i_V_reg_439_reg[12]_i_1_n_0 ;
  wire \i_V_reg_439_reg[12]_i_1_n_1 ;
  wire \i_V_reg_439_reg[12]_i_1_n_2 ;
  wire \i_V_reg_439_reg[12]_i_1_n_3 ;
  wire \i_V_reg_439_reg[16]_i_1_n_0 ;
  wire \i_V_reg_439_reg[16]_i_1_n_1 ;
  wire \i_V_reg_439_reg[16]_i_1_n_2 ;
  wire \i_V_reg_439_reg[16]_i_1_n_3 ;
  wire \i_V_reg_439_reg[20]_i_1_n_0 ;
  wire \i_V_reg_439_reg[20]_i_1_n_1 ;
  wire \i_V_reg_439_reg[20]_i_1_n_2 ;
  wire \i_V_reg_439_reg[20]_i_1_n_3 ;
  wire \i_V_reg_439_reg[24]_i_1_n_0 ;
  wire \i_V_reg_439_reg[24]_i_1_n_1 ;
  wire \i_V_reg_439_reg[24]_i_1_n_2 ;
  wire \i_V_reg_439_reg[24]_i_1_n_3 ;
  wire \i_V_reg_439_reg[28]_i_1_n_0 ;
  wire \i_V_reg_439_reg[28]_i_1_n_1 ;
  wire \i_V_reg_439_reg[28]_i_1_n_2 ;
  wire \i_V_reg_439_reg[28]_i_1_n_3 ;
  wire \i_V_reg_439_reg[31]_i_1_n_2 ;
  wire \i_V_reg_439_reg[31]_i_1_n_3 ;
  wire \i_V_reg_439_reg[4]_i_1_n_0 ;
  wire \i_V_reg_439_reg[4]_i_1_n_1 ;
  wire \i_V_reg_439_reg[4]_i_1_n_2 ;
  wire \i_V_reg_439_reg[4]_i_1_n_3 ;
  wire \i_V_reg_439_reg[8]_i_1_n_0 ;
  wire \i_V_reg_439_reg[8]_i_1_n_1 ;
  wire \i_V_reg_439_reg[8]_i_1_n_2 ;
  wire \i_V_reg_439_reg[8]_i_1_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire img_0_cols_V_c5_empty_n;
  wire img_0_cols_V_c5_full_n;
  wire img_0_cols_V_c_empty_n;
  wire img_0_cols_V_c_full_n;
  wire img_0_data_stream_0_full_n;
  wire img_0_rows_V_c4_empty_n;
  wire img_0_rows_V_c4_full_n;
  wire img_0_rows_V_c_empty_n;
  wire img_0_rows_V_c_full_n;
  wire [7:0]input_r_TDATA;
  wire [0:0]input_r_TLAST;
  wire input_r_TREADY;
  wire [0:0]input_r_TUSER;
  wire input_r_TVALID;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire mat2vector_U0_ap_start;
  wire shiftReg_ce;
  wire sof_1_i_fu_148;
  wire sof_1_i_fu_1480;
  wire \sof_1_i_fu_148[0]_i_1_n_0 ;
  wire start_for_mat2vector_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire t_V_2_reg_236;
  wire \t_V_2_reg_236[0]_i_4_n_0 ;
  wire [31:0]t_V_2_reg_236_reg;
  wire \t_V_2_reg_236_reg[0]_i_3_n_0 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_1 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_2 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_3 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_4 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_5 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_6 ;
  wire \t_V_2_reg_236_reg[0]_i_3_n_7 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_0 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[12]_i_1_n_7 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_0 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[16]_i_1_n_7 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_0 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[20]_i_1_n_7 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_0 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[24]_i_1_n_7 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[28]_i_1_n_7 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_0 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[4]_i_1_n_7 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_0 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_1 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_2 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_3 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_4 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_5 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_6 ;
  wire \t_V_2_reg_236_reg[8]_i_1_n_7 ;
  wire [31:0]t_V_reg_225;
  wire [7:0]tmp_data_V_reg_415;
  wire tmp_last_V_reg_423;
  wire [3:0]\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_exitcond_i_fu_380_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_380_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_exitcond_i_fu_380_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_380_p2_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_i_V_reg_439_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_439_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_t_V_2_reg_236_reg[28]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h45)) 
    \AXI_video_strm_V_data_V_0_payload_A[7]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_sel_wr),
        .I1(AXI_video_strm_V_data_V_0_ack_in),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .O(AXI_video_strm_V_data_V_0_load_A));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[0]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[1]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[2]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[3]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[4]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[5]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[6]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_A),
        .D(input_r_TDATA[7]),
        .Q(AXI_video_strm_V_data_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \AXI_video_strm_V_data_V_0_payload_B[7]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_sel_wr),
        .I1(AXI_video_strm_V_data_V_0_ack_in),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .O(AXI_video_strm_V_data_V_0_load_B));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[0]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[1]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[2]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[3]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[4]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[5]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[6]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \AXI_video_strm_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_load_B),
        .D(input_r_TDATA[7]),
        .Q(AXI_video_strm_V_data_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    AXI_video_strm_V_data_V_0_sel_rd_i_1
       (.I0(AXI_video_strm_V_data_V_0_sel0),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .O(AXI_video_strm_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_data_V_0_sel_rd_i_1_n_0),
        .Q(AXI_video_strm_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_data_V_0_sel_wr_i_1
       (.I0(AXI_video_strm_V_data_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_data_V_0_sel_wr),
        .O(AXI_video_strm_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_data_V_0_sel_wr_i_1_n_0),
        .Q(AXI_video_strm_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8A80AA80)) 
    \AXI_video_strm_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_data_V_0_ack_in),
        .I3(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_data_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_data_V_0_state[1]_i_1 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(AXI_video_strm_V_data_V_0_ack_in),
        .O(AXI_video_strm_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_data_V_0_state),
        .Q(AXI_video_strm_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hB0A0F000)) 
    \AXI_video_strm_V_dest_V_0_state[0]_i_1 
       (.I0(input_r_TVALID),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(ap_rst_n),
        .I3(\AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ),
        .I4(input_r_TREADY),
        .O(\AXI_video_strm_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_2 
       (.I0(\AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(input_r_TREADY),
        .O(AXI_video_strm_V_dest_V_0_state));
  LUT5 #(
    .INIT(32'hFFF4F4F4)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_3 
       (.I0(brmerge_i_reg_453),
        .I1(shiftReg_ce),
        .I2(\AXI_video_strm_V_dest_V_0_state[1]_i_4_n_0 ),
        .I3(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I4(ap_CS_fsm_state2),
        .O(AXI_video_strm_V_data_V_0_sel0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \AXI_video_strm_V_dest_V_0_state[1]_i_4 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(\eol_2_i_reg_307_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp2_iter1_reg_n_0),
        .O(\AXI_video_strm_V_dest_V_0_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_dest_V_0_state),
        .Q(input_r_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \AXI_video_strm_V_last_V_0_payload_A[0]_i_1 
       (.I0(input_r_TLAST),
        .I1(AXI_video_strm_V_last_V_0_sel_wr),
        .I2(AXI_video_strm_V_last_V_0_ack_in),
        .I3(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\AXI_video_strm_V_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \AXI_video_strm_V_last_V_0_payload_B[0]_i_1 
       (.I0(input_r_TLAST),
        .I1(AXI_video_strm_V_last_V_0_sel_wr),
        .I2(AXI_video_strm_V_last_V_0_ack_in),
        .I3(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_last_V_0_payload_B),
        .O(\AXI_video_strm_V_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_last_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_last_V_0_sel_rd_i_1
       (.I0(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(AXI_video_strm_V_last_V_0_sel),
        .O(AXI_video_strm_V_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_last_V_0_sel_rd_i_1_n_0),
        .Q(AXI_video_strm_V_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_last_V_0_sel_wr_i_1
       (.I0(input_r_TVALID),
        .I1(AXI_video_strm_V_last_V_0_ack_in),
        .I2(AXI_video_strm_V_last_V_0_sel_wr),
        .O(AXI_video_strm_V_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_last_V_0_sel_wr_i_1_n_0),
        .Q(AXI_video_strm_V_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8A80AA80)) 
    \AXI_video_strm_V_last_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_last_V_0_ack_in),
        .I3(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_last_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_last_V_0_state[1]_i_1 
       (.I0(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(AXI_video_strm_V_last_V_0_ack_in),
        .O(AXI_video_strm_V_last_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_last_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_last_V_0_state),
        .Q(AXI_video_strm_V_last_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \AXI_video_strm_V_user_V_0_payload_A[0]_i_1 
       (.I0(input_r_TUSER),
        .I1(AXI_video_strm_V_user_V_0_sel_wr),
        .I2(AXI_video_strm_V_user_V_0_ack_in),
        .I3(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_user_V_0_payload_A),
        .O(\AXI_video_strm_V_user_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_user_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \AXI_video_strm_V_user_V_0_payload_B[0]_i_1 
       (.I0(input_r_TUSER),
        .I1(AXI_video_strm_V_user_V_0_sel_wr),
        .I2(AXI_video_strm_V_user_V_0_ack_in),
        .I3(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_user_V_0_payload_B),
        .O(\AXI_video_strm_V_user_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AXI_video_strm_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AXI_video_strm_V_user_V_0_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_user_V_0_sel_rd_i_1
       (.I0(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(AXI_video_strm_V_user_V_0_sel),
        .O(AXI_video_strm_V_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_user_V_0_sel_rd_i_1_n_0),
        .Q(AXI_video_strm_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AXI_video_strm_V_user_V_0_sel_wr_i_1
       (.I0(AXI_video_strm_V_user_V_0_ack_in),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_user_V_0_sel_wr),
        .O(AXI_video_strm_V_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AXI_video_strm_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_user_V_0_sel_wr_i_1_n_0),
        .Q(AXI_video_strm_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h8A80AA80)) 
    \AXI_video_strm_V_user_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(input_r_TVALID),
        .I2(AXI_video_strm_V_user_V_0_ack_in),
        .I3(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I4(AXI_video_strm_V_data_V_0_sel0),
        .O(\AXI_video_strm_V_user_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \AXI_video_strm_V_user_V_0_state[1]_i_1 
       (.I0(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .I1(AXI_video_strm_V_data_V_0_sel0),
        .I2(input_r_TVALID),
        .I3(AXI_video_strm_V_user_V_0_ack_in),
        .O(AXI_video_strm_V_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AXI_video_strm_V_user_V_0_state[0]_i_1_n_0 ),
        .Q(\AXI_video_strm_V_user_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AXI_video_strm_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXI_video_strm_V_user_V_0_state),
        .Q(AXI_video_strm_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][0]_i_1 
       (.I0(axi_data_V_1_i_reg_270[0]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[0]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][1]_i_1 
       (.I0(axi_data_V_1_i_reg_270[1]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[1]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][2]_i_1 
       (.I0(axi_data_V_1_i_reg_270[2]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[2]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][3]_i_1 
       (.I0(axi_data_V_1_i_reg_270[3]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[3]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][4]_i_1 
       (.I0(axi_data_V_1_i_reg_270[4]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[4]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][5]_i_1 
       (.I0(axi_data_V_1_i_reg_270[5]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[5]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][6]_i_1 
       (.I0(axi_data_V_1_i_reg_270[6]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[6]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(brmerge_i_reg_453),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(img_0_data_stream_0_full_n),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp1_iter1_reg_n_0),
        .O(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(axi_data_V_1_i_reg_270[7]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_payload_B[7]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(exitcond2_i_fu_369_p2),
        .I1(ap_CS_fsm_state4),
        .I2(\ap_CS_fsm[0]_i_2_n_0 ),
        .I3(Q),
        .O(ap_NS_fsm[0]));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(\mOutPtr_reg[0] ),
        .I1(img_0_cols_V_c_empty_n),
        .I2(img_0_rows_V_c4_full_n),
        .I3(img_0_cols_V_c5_full_n),
        .I4(img_0_rows_V_c_empty_n),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEEEEEEEAEEE)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(ap_CS_fsm_state2),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AXI_video_strm_V_user_V_0_payload_A),
        .I4(AXI_video_strm_V_user_V_0_sel),
        .I5(AXI_video_strm_V_user_V_0_payload_B),
        .O(ap_NS_fsm[1]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AXI_video_strm_V_user_V_0_payload_A),
        .I3(AXI_video_strm_V_user_V_0_sel),
        .I4(AXI_video_strm_V_user_V_0_payload_B),
        .O(ap_NS_fsm[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state10),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(exitcond2_i_fu_369_p2),
        .I1(ap_CS_fsm_state4),
        .I2(exitcond_i_reg_4440),
        .I3(ap_enable_reg_pp1_iter1_reg_n_0),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[4]));
  LUT3 #(
    .INIT(8'h08)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(exitcond_i_reg_4440),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(ap_enable_reg_pp1_iter0),
        .O(ap_NS_fsm[5]));
  LUT6 #(
    .INIT(64'hAAAA8880AAAAAAAA)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(img_0_data_stream_0_full_n),
        .I2(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I3(brmerge_i_reg_453),
        .I4(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp1_iter1_reg_n_0),
        .O(exitcond_i_reg_4440));
  LUT6 #(
    .INIT(64'hFFAAFFAAABAAFFAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(\eol_2_i_reg_307_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(ap_enable_reg_pp2_iter1_reg_n_0),
        .I5(ap_enable_reg_pp2_iter0),
        .O(ap_NS_fsm[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000E000)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(\eol_2_i_reg_307_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp2_stage0),
        .I3(ap_enable_reg_pp2_iter1_reg_n_0),
        .I4(ap_enable_reg_pp2_iter0),
        .O(ap_NS_fsm[7]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_pp2_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7777070000000000)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(exitcond_i_fu_380_p2),
        .I1(exitcond_i_reg_4440),
        .I2(exitcond2_i_fu_369_p2),
        .I3(ap_CS_fsm_state4),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp1_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD0FFD00000000000)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(ap_CS_fsm_state4),
        .I1(exitcond2_i_fu_369_p2),
        .I2(ap_enable_reg_pp1_iter1_reg_n_0),
        .I3(ap_enable_reg_pp1_iter1_i_2_n_0),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp1_iter1_i_1_n_0));
  LUT5 #(
    .INIT(32'h00022222)) 
    ap_enable_reg_pp1_iter1_i_2
       (.I0(ap_enable_reg_pp1_iter1_reg_n_0),
        .I1(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I2(brmerge_i_reg_453),
        .I3(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I4(img_0_data_stream_0_full_n),
        .O(ap_enable_reg_pp1_iter1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000001F3F3F3F)) 
    ap_enable_reg_pp2_iter0_i_1
       (.I0(ap_enable_reg_pp2_iter1_reg_n_0),
        .I1(\eol_2_i_reg_307_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp2_stage0),
        .I3(AXI_video_strm_V_last_V_0_data_out),
        .I4(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp2_iter0_i_2_n_0),
        .O(ap_enable_reg_pp2_iter0_i_1_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    ap_enable_reg_pp2_iter0_i_2
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp2_iter0),
        .I2(ap_CS_fsm_state7),
        .O(ap_enable_reg_pp2_iter0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFDF001000000000)) 
    ap_enable_reg_pp2_iter1_i_1
       (.I0(ap_CS_fsm_state7),
        .I1(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp2_iter1_reg_n_0),
        .I3(\eol_2_i_reg_307_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp2_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp2_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter1_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state4),
        .I1(exitcond2_i_fu_369_p2),
        .O(ap_ready));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[0]_i_1 
       (.I0(tmp_data_V_reg_415[0]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[0]),
        .O(\axi_data_V1_i_reg_215[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[1]_i_1 
       (.I0(tmp_data_V_reg_415[1]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[1]),
        .O(\axi_data_V1_i_reg_215[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[2]_i_1 
       (.I0(tmp_data_V_reg_415[2]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[2]),
        .O(\axi_data_V1_i_reg_215[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[3]_i_1 
       (.I0(tmp_data_V_reg_415[3]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[3]),
        .O(\axi_data_V1_i_reg_215[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[4]_i_1 
       (.I0(tmp_data_V_reg_415[4]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[4]),
        .O(\axi_data_V1_i_reg_215[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[5]_i_1 
       (.I0(tmp_data_V_reg_415[5]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[5]),
        .O(\axi_data_V1_i_reg_215[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[6]_i_1 
       (.I0(tmp_data_V_reg_415[6]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[6]),
        .O(\axi_data_V1_i_reg_215[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_215[7]_i_1 
       (.I0(tmp_data_V_reg_415[7]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_330[7]),
        .O(\axi_data_V1_i_reg_215[7]_i_1_n_0 ));
  FDRE \axi_data_V1_i_reg_215_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[0]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[0]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[1]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[1]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[2]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[2]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[3]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[3]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[4]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[4]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[5]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[5]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[6]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[6]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_215_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_215[7]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_215[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[0]_i_1 
       (.I0(axi_data_V_1_i_reg_270[0]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[0]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[0]),
        .O(\axi_data_V_1_i_reg_270[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[1]_i_1 
       (.I0(axi_data_V_1_i_reg_270[1]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[1]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[1]),
        .O(\axi_data_V_1_i_reg_270[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[2]_i_1 
       (.I0(axi_data_V_1_i_reg_270[2]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[2]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[2]),
        .O(\axi_data_V_1_i_reg_270[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[3]_i_1 
       (.I0(axi_data_V_1_i_reg_270[3]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[3]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[3]),
        .O(\axi_data_V_1_i_reg_270[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[4]_i_1 
       (.I0(axi_data_V_1_i_reg_270[4]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[4]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[4]),
        .O(\axi_data_V_1_i_reg_270[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[5]_i_1 
       (.I0(axi_data_V_1_i_reg_270[5]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[5]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[5]),
        .O(\axi_data_V_1_i_reg_270[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[6]_i_1 
       (.I0(axi_data_V_1_i_reg_270[6]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[6]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[6]),
        .O(\axi_data_V_1_i_reg_270[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_data_V_1_i_reg_270[7]_i_1 
       (.I0(axi_data_V_1_i_reg_270[7]),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_data_V_0_data_out[7]),
        .I3(shiftReg_ce),
        .I4(axi_data_V1_i_reg_215[7]),
        .O(\axi_data_V_1_i_reg_270[7]_i_1_n_0 ));
  FDRE \axi_data_V_1_i_reg_270_reg[0] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[0]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[0]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[1] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[1]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[1]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[2] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[2]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[2]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[3] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[3]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[3]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[4] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[4]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[4]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[5] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[5]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[5]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[6] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[6]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[6]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_270_reg[7] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_270[7]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_270[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[0]_i_1 
       (.I0(axi_data_V_1_i_reg_270[0]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[0]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[0]),
        .O(\axi_data_V_3_i_reg_330[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[1]_i_1 
       (.I0(axi_data_V_1_i_reg_270[1]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[1]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[1]),
        .O(\axi_data_V_3_i_reg_330[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[2]_i_1 
       (.I0(axi_data_V_1_i_reg_270[2]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[2]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[2]),
        .O(\axi_data_V_3_i_reg_330[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[3]_i_1 
       (.I0(axi_data_V_1_i_reg_270[3]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[3]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[3]),
        .O(\axi_data_V_3_i_reg_330[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[4]_i_1 
       (.I0(axi_data_V_1_i_reg_270[4]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[4]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[4]),
        .O(\axi_data_V_3_i_reg_330[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[5]_i_1 
       (.I0(axi_data_V_1_i_reg_270[5]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[5]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[5]),
        .O(\axi_data_V_3_i_reg_330[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[6]_i_1 
       (.I0(axi_data_V_1_i_reg_270[6]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[6]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[6]),
        .O(\axi_data_V_3_i_reg_330[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_data_V_3_i_reg_330[7]_i_1 
       (.I0(axi_data_V_1_i_reg_270[7]),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_data_V_0_payload_B[7]),
        .I3(AXI_video_strm_V_data_V_0_sel),
        .I4(AXI_video_strm_V_data_V_0_payload_A[7]),
        .O(\axi_data_V_3_i_reg_330[7]_i_1_n_0 ));
  FDRE \axi_data_V_3_i_reg_330_reg[0] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[0]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[0]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[1] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[1]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[1]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[2] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[2]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[2]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[3] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[3]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[3]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[4] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[4]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[4]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[5] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[5]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[5]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[6] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[6]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[6]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_330_reg[7] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_data_V_3_i_reg_330[7]_i_1_n_0 ),
        .Q(axi_data_V_3_i_reg_330[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V1_i_reg_205[0]_i_1 
       (.I0(tmp_last_V_reg_423),
        .I1(ap_CS_fsm_state3),
        .I2(axi_last_V_3_i_reg_318),
        .O(\axi_last_V1_i_reg_205[0]_i_1_n_0 ));
  FDRE \axi_last_V1_i_reg_205_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_last_V1_i_reg_205[0]_i_1_n_0 ),
        .Q(axi_last_V1_i_reg_205),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_last_V_3_i_reg_318[0]_i_1 
       (.I0(\eol_reg_259_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(AXI_video_strm_V_last_V_0_sel),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\axi_last_V_3_i_reg_318[0]_i_1_n_0 ));
  FDRE \axi_last_V_3_i_reg_318_reg[0] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\axi_last_V_3_i_reg_318[0]_i_1_n_0 ),
        .Q(axi_last_V_3_i_reg_318),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFCAFFFFFFCA0000)) 
    \brmerge_i_reg_453[0]_i_1 
       (.I0(\brmerge_i_reg_453[0]_i_2_n_0 ),
        .I1(\eol_i_reg_247_reg_n_0_[0] ),
        .I2(\brmerge_i_reg_453[0]_i_3_n_0 ),
        .I3(sof_1_i_fu_148),
        .I4(\brmerge_i_reg_453[0]_i_4_n_0 ),
        .I5(brmerge_i_reg_453),
        .O(\brmerge_i_reg_453[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \brmerge_i_reg_453[0]_i_2 
       (.I0(\eol_reg_259_reg_n_0_[0] ),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(AXI_video_strm_V_last_V_0_sel),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\brmerge_i_reg_453[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \brmerge_i_reg_453[0]_i_3 
       (.I0(ap_enable_reg_pp1_iter1_reg_n_0),
        .I1(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp1_stage0),
        .O(\brmerge_i_reg_453[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \brmerge_i_reg_453[0]_i_4 
       (.I0(exitcond_i_fu_380_p2),
        .I1(exitcond_i_reg_4440),
        .O(\brmerge_i_reg_453[0]_i_4_n_0 ));
  FDRE \brmerge_i_reg_453_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\brmerge_i_reg_453[0]_i_1_n_0 ),
        .Q(brmerge_i_reg_453),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \eol_2_i_reg_307[0]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(ap_enable_reg_pp2_iter1_reg_n_0),
        .I2(\eol_2_i_reg_307_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .O(\eol_2_i_reg_307[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \eol_2_i_reg_307[0]_i_2 
       (.I0(\eol_i_reg_247_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state7),
        .I2(AXI_video_strm_V_last_V_0_payload_B),
        .I3(AXI_video_strm_V_last_V_0_sel),
        .I4(AXI_video_strm_V_last_V_0_payload_A),
        .O(\eol_2_i_reg_307[0]_i_2_n_0 ));
  FDRE \eol_2_i_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(\eol_2_i_reg_307[0]_i_1_n_0 ),
        .D(\eol_2_i_reg_307[0]_i_2_n_0 ),
        .Q(\eol_2_i_reg_307_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \eol_i_reg_247[0]_i_1 
       (.I0(shiftReg_ce),
        .I1(AXI_video_strm_V_last_V_0_payload_A),
        .I2(AXI_video_strm_V_last_V_0_sel),
        .I3(AXI_video_strm_V_last_V_0_payload_B),
        .I4(brmerge_i_reg_453),
        .I5(\eol_reg_259_reg_n_0_[0] ),
        .O(eol_i_reg_247));
  FDRE \eol_i_reg_247_reg[0] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(eol_i_reg_247),
        .Q(\eol_i_reg_247_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \eol_reg_259[0]_i_1 
       (.I0(exitcond2_i_fu_369_p2),
        .I1(ap_CS_fsm_state4),
        .I2(shiftReg_ce),
        .O(\eol_reg_259[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \eol_reg_259[0]_i_2 
       (.I0(\eol_reg_259_reg_n_0_[0] ),
        .I1(brmerge_i_reg_453),
        .I2(AXI_video_strm_V_last_V_0_data_out),
        .I3(shiftReg_ce),
        .I4(axi_last_V1_i_reg_205),
        .O(\eol_reg_259[0]_i_2_n_0 ));
  FDRE \eol_reg_259_reg[0] 
       (.C(ap_clk),
        .CE(\eol_reg_259[0]_i_1_n_0 ),
        .D(\eol_reg_259[0]_i_2_n_0 ),
        .Q(\eol_reg_259_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \exitcond2_i_fu_369_p2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\exitcond2_i_fu_369_p2_inferred__0/i__carry_n_0 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry_n_1 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry_n_2 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \exitcond2_i_fu_369_p2_inferred__0/i__carry__0 
       (.CI(\exitcond2_i_fu_369_p2_inferred__0/i__carry_n_0 ),
        .CO({\exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_0 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_1 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_2 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \exitcond2_i_fu_369_p2_inferred__0/i__carry__1 
       (.CI(\exitcond2_i_fu_369_p2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry__1_CO_UNCONNECTED [3],exitcond2_i_fu_369_p2,\exitcond2_i_fu_369_p2_inferred__0/i__carry__1_n_2 ,\exitcond2_i_fu_369_p2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond2_i_fu_369_p2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  CARRY4 exitcond_i_fu_380_p2_carry
       (.CI(1'b0),
        .CO({exitcond_i_fu_380_p2_carry_n_0,exitcond_i_fu_380_p2_carry_n_1,exitcond_i_fu_380_p2_carry_n_2,exitcond_i_fu_380_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_380_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_380_p2_carry_i_1_n_0,exitcond_i_fu_380_p2_carry_i_2_n_0,exitcond_i_fu_380_p2_carry_i_3_n_0,exitcond_i_fu_380_p2_carry_i_4_n_0}));
  CARRY4 exitcond_i_fu_380_p2_carry__0
       (.CI(exitcond_i_fu_380_p2_carry_n_0),
        .CO({exitcond_i_fu_380_p2_carry__0_n_0,exitcond_i_fu_380_p2_carry__0_n_1,exitcond_i_fu_380_p2_carry__0_n_2,exitcond_i_fu_380_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_380_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_380_p2_carry__0_i_1_n_0,exitcond_i_fu_380_p2_carry__0_i_2_n_0,exitcond_i_fu_380_p2_carry__0_i_3_n_0,exitcond_i_fu_380_p2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry__0_i_1
       (.I0(t_V_2_reg_236_reg[23]),
        .I1(t_V_2_reg_236_reg[22]),
        .I2(t_V_2_reg_236_reg[21]),
        .O(exitcond_i_fu_380_p2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry__0_i_2
       (.I0(t_V_2_reg_236_reg[20]),
        .I1(t_V_2_reg_236_reg[19]),
        .I2(t_V_2_reg_236_reg[18]),
        .O(exitcond_i_fu_380_p2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry__0_i_3
       (.I0(t_V_2_reg_236_reg[17]),
        .I1(t_V_2_reg_236_reg[16]),
        .I2(t_V_2_reg_236_reg[15]),
        .O(exitcond_i_fu_380_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry__0_i_4
       (.I0(t_V_2_reg_236_reg[14]),
        .I1(t_V_2_reg_236_reg[13]),
        .I2(t_V_2_reg_236_reg[12]),
        .O(exitcond_i_fu_380_p2_carry__0_i_4_n_0));
  CARRY4 exitcond_i_fu_380_p2_carry__1
       (.CI(exitcond_i_fu_380_p2_carry__0_n_0),
        .CO({NLW_exitcond_i_fu_380_p2_carry__1_CO_UNCONNECTED[3],exitcond_i_fu_380_p2,exitcond_i_fu_380_p2_carry__1_n_2,exitcond_i_fu_380_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_380_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,exitcond_i_fu_380_p2_carry__1_i_1_n_0,exitcond_i_fu_380_p2_carry__1_i_2_n_0,exitcond_i_fu_380_p2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    exitcond_i_fu_380_p2_carry__1_i_1
       (.I0(t_V_2_reg_236_reg[30]),
        .I1(t_V_2_reg_236_reg[31]),
        .O(exitcond_i_fu_380_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry__1_i_2
       (.I0(t_V_2_reg_236_reg[29]),
        .I1(t_V_2_reg_236_reg[28]),
        .I2(t_V_2_reg_236_reg[27]),
        .O(exitcond_i_fu_380_p2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry__1_i_3
       (.I0(t_V_2_reg_236_reg[26]),
        .I1(t_V_2_reg_236_reg[25]),
        .I2(t_V_2_reg_236_reg[24]),
        .O(exitcond_i_fu_380_p2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond_i_fu_380_p2_carry_i_1
       (.I0(t_V_2_reg_236_reg[10]),
        .I1(t_V_2_reg_236_reg[9]),
        .I2(t_V_2_reg_236_reg[11]),
        .O(exitcond_i_fu_380_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond_i_fu_380_p2_carry_i_2
       (.I0(t_V_2_reg_236_reg[6]),
        .I1(t_V_2_reg_236_reg[7]),
        .I2(t_V_2_reg_236_reg[8]),
        .O(exitcond_i_fu_380_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry_i_3
       (.I0(t_V_2_reg_236_reg[5]),
        .I1(t_V_2_reg_236_reg[4]),
        .I2(t_V_2_reg_236_reg[3]),
        .O(exitcond_i_fu_380_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_380_p2_carry_i_4
       (.I0(t_V_2_reg_236_reg[0]),
        .I1(t_V_2_reg_236_reg[2]),
        .I2(t_V_2_reg_236_reg[1]),
        .O(exitcond_i_fu_380_p2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exitcond_i_reg_444[0]_i_1 
       (.I0(exitcond_i_fu_380_p2),
        .I1(exitcond_i_reg_4440),
        .I2(\exitcond_i_reg_444_reg_n_0_[0] ),
        .O(\exitcond_i_reg_444[0]_i_1_n_0 ));
  FDRE \exitcond_i_reg_444_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_i_reg_444[0]_i_1_n_0 ),
        .Q(\exitcond_i_reg_444_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_439[0]_i_1 
       (.I0(t_V_reg_225[0]),
        .O(i_V_fu_374_p2[0]));
  FDRE \i_V_reg_439_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[0]),
        .Q(i_V_reg_439[0]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[10]),
        .Q(i_V_reg_439[10]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[11]),
        .Q(i_V_reg_439[11]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[12]),
        .Q(i_V_reg_439[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[12]_i_1 
       (.CI(\i_V_reg_439_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[12]_i_1_n_0 ,\i_V_reg_439_reg[12]_i_1_n_1 ,\i_V_reg_439_reg[12]_i_1_n_2 ,\i_V_reg_439_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[12:9]),
        .S(t_V_reg_225[12:9]));
  FDRE \i_V_reg_439_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[13]),
        .Q(i_V_reg_439[13]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[14]),
        .Q(i_V_reg_439[14]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[15]),
        .Q(i_V_reg_439[15]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[16]),
        .Q(i_V_reg_439[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[16]_i_1 
       (.CI(\i_V_reg_439_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[16]_i_1_n_0 ,\i_V_reg_439_reg[16]_i_1_n_1 ,\i_V_reg_439_reg[16]_i_1_n_2 ,\i_V_reg_439_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[16:13]),
        .S(t_V_reg_225[16:13]));
  FDRE \i_V_reg_439_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[17]),
        .Q(i_V_reg_439[17]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[18]),
        .Q(i_V_reg_439[18]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[19]),
        .Q(i_V_reg_439[19]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[1]),
        .Q(i_V_reg_439[1]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[20]),
        .Q(i_V_reg_439[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[20]_i_1 
       (.CI(\i_V_reg_439_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[20]_i_1_n_0 ,\i_V_reg_439_reg[20]_i_1_n_1 ,\i_V_reg_439_reg[20]_i_1_n_2 ,\i_V_reg_439_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[20:17]),
        .S(t_V_reg_225[20:17]));
  FDRE \i_V_reg_439_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[21]),
        .Q(i_V_reg_439[21]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[22]),
        .Q(i_V_reg_439[22]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[23]),
        .Q(i_V_reg_439[23]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[24]),
        .Q(i_V_reg_439[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[24]_i_1 
       (.CI(\i_V_reg_439_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[24]_i_1_n_0 ,\i_V_reg_439_reg[24]_i_1_n_1 ,\i_V_reg_439_reg[24]_i_1_n_2 ,\i_V_reg_439_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[24:21]),
        .S(t_V_reg_225[24:21]));
  FDRE \i_V_reg_439_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[25]),
        .Q(i_V_reg_439[25]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[26]),
        .Q(i_V_reg_439[26]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[27]),
        .Q(i_V_reg_439[27]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[28]),
        .Q(i_V_reg_439[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[28]_i_1 
       (.CI(\i_V_reg_439_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[28]_i_1_n_0 ,\i_V_reg_439_reg[28]_i_1_n_1 ,\i_V_reg_439_reg[28]_i_1_n_2 ,\i_V_reg_439_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[28:25]),
        .S(t_V_reg_225[28:25]));
  FDRE \i_V_reg_439_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[29]),
        .Q(i_V_reg_439[29]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[2]),
        .Q(i_V_reg_439[2]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[30]),
        .Q(i_V_reg_439[30]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[31]),
        .Q(i_V_reg_439[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[31]_i_1 
       (.CI(\i_V_reg_439_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_439_reg[31]_i_1_CO_UNCONNECTED [3:2],\i_V_reg_439_reg[31]_i_1_n_2 ,\i_V_reg_439_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_439_reg[31]_i_1_O_UNCONNECTED [3],i_V_fu_374_p2[31:29]}),
        .S({1'b0,t_V_reg_225[31:29]}));
  FDRE \i_V_reg_439_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[3]),
        .Q(i_V_reg_439[3]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[4]),
        .Q(i_V_reg_439[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_439_reg[4]_i_1_n_0 ,\i_V_reg_439_reg[4]_i_1_n_1 ,\i_V_reg_439_reg[4]_i_1_n_2 ,\i_V_reg_439_reg[4]_i_1_n_3 }),
        .CYINIT(t_V_reg_225[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[4:1]),
        .S(t_V_reg_225[4:1]));
  FDRE \i_V_reg_439_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[5]),
        .Q(i_V_reg_439[5]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[6]),
        .Q(i_V_reg_439[6]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[7]),
        .Q(i_V_reg_439[7]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[8]),
        .Q(i_V_reg_439[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[8]_i_1 
       (.CI(\i_V_reg_439_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[8]_i_1_n_0 ,\i_V_reg_439_reg[8]_i_1_n_1 ,\i_V_reg_439_reg[8]_i_1_n_2 ,\i_V_reg_439_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_374_p2[8:5]),
        .S(t_V_reg_225[8:5]));
  FDRE \i_V_reg_439_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_374_p2[9]),
        .Q(i_V_reg_439[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1
       (.I0(t_V_reg_225[23]),
        .I1(t_V_reg_225[22]),
        .I2(t_V_reg_225[21]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2
       (.I0(t_V_reg_225[20]),
        .I1(t_V_reg_225[19]),
        .I2(t_V_reg_225[18]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3
       (.I0(t_V_reg_225[17]),
        .I1(t_V_reg_225[16]),
        .I2(t_V_reg_225[15]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4
       (.I0(t_V_reg_225[14]),
        .I1(t_V_reg_225[13]),
        .I2(t_V_reg_225[12]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(t_V_reg_225[30]),
        .I1(t_V_reg_225[31]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2
       (.I0(t_V_reg_225[29]),
        .I1(t_V_reg_225[28]),
        .I2(t_V_reg_225[27]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3
       (.I0(t_V_reg_225[26]),
        .I1(t_V_reg_225[25]),
        .I2(t_V_reg_225[24]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1
       (.I0(t_V_reg_225[11]),
        .I1(t_V_reg_225[10]),
        .I2(t_V_reg_225[9]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_2
       (.I0(t_V_reg_225[6]),
        .I1(t_V_reg_225[8]),
        .I2(t_V_reg_225[7]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_3
       (.I0(t_V_reg_225[3]),
        .I1(t_V_reg_225[5]),
        .I2(t_V_reg_225[4]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4
       (.I0(t_V_reg_225[0]),
        .I1(t_V_reg_225[2]),
        .I2(t_V_reg_225[1]),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \mOutPtr[0]_i_2 
       (.I0(start_once_reg),
        .I1(start_for_mat2vector_U0_full_n),
        .I2(ap_start),
        .O(\mOutPtr_reg[0] ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(ap_start),
        .I2(img_0_rows_V_c_full_n),
        .I3(img_0_cols_V_c_full_n),
        .O(E));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \mOutPtr[1]_i_3 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(mat2vector_U0_ap_start),
        .I2(img_0_cols_V_c5_empty_n),
        .I3(img_0_rows_V_c4_empty_n),
        .I4(\ap_CS_fsm_reg[0]_0 ),
        .O(\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mOutPtr[1]_i_3__0 
       (.I0(Q),
        .I1(img_0_rows_V_c_empty_n),
        .I2(img_0_cols_V_c5_full_n),
        .I3(img_0_rows_V_c4_full_n),
        .I4(img_0_cols_V_c_empty_n),
        .I5(\mOutPtr_reg[0] ),
        .O(\ap_CS_fsm_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7F7F700)) 
    \sof_1_i_fu_148[0]_i_1 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(exitcond_i_reg_4440),
        .I2(exitcond_i_fu_380_p2),
        .I3(sof_1_i_fu_148),
        .I4(ap_CS_fsm_state3),
        .O(\sof_1_i_fu_148[0]_i_1_n_0 ));
  FDRE \sof_1_i_fu_148_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sof_1_i_fu_148[0]_i_1_n_0 ),
        .Q(sof_1_i_fu_148),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77777000)) 
    start_once_reg_i_1
       (.I0(exitcond2_i_fu_369_p2),
        .I1(ap_CS_fsm_state4),
        .I2(ap_start),
        .I3(start_for_mat2vector_U0_full_n),
        .I4(start_once_reg),
        .O(start_once_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_0),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00F70000)) 
    \t_V_2_reg_236[0]_i_1 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(exitcond_i_reg_4440),
        .I2(exitcond_i_fu_380_p2),
        .I3(exitcond2_i_fu_369_p2),
        .I4(ap_CS_fsm_state4),
        .O(t_V_2_reg_236));
  LUT3 #(
    .INIT(8'h08)) 
    \t_V_2_reg_236[0]_i_2 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(exitcond_i_reg_4440),
        .I2(exitcond_i_fu_380_p2),
        .O(sof_1_i_fu_1480));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_2_reg_236[0]_i_4 
       (.I0(t_V_2_reg_236_reg[0]),
        .O(\t_V_2_reg_236[0]_i_4_n_0 ));
  FDRE \t_V_2_reg_236_reg[0] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[0]_i_3_n_7 ),
        .Q(t_V_2_reg_236_reg[0]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_2_reg_236_reg[0]_i_3_n_0 ,\t_V_2_reg_236_reg[0]_i_3_n_1 ,\t_V_2_reg_236_reg[0]_i_3_n_2 ,\t_V_2_reg_236_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_2_reg_236_reg[0]_i_3_n_4 ,\t_V_2_reg_236_reg[0]_i_3_n_5 ,\t_V_2_reg_236_reg[0]_i_3_n_6 ,\t_V_2_reg_236_reg[0]_i_3_n_7 }),
        .S({t_V_2_reg_236_reg[3:1],\t_V_2_reg_236[0]_i_4_n_0 }));
  FDRE \t_V_2_reg_236_reg[10] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[8]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[10]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[11] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[8]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[11]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[12] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[12]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[12]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[12]_i_1 
       (.CI(\t_V_2_reg_236_reg[8]_i_1_n_0 ),
        .CO({\t_V_2_reg_236_reg[12]_i_1_n_0 ,\t_V_2_reg_236_reg[12]_i_1_n_1 ,\t_V_2_reg_236_reg[12]_i_1_n_2 ,\t_V_2_reg_236_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[12]_i_1_n_4 ,\t_V_2_reg_236_reg[12]_i_1_n_5 ,\t_V_2_reg_236_reg[12]_i_1_n_6 ,\t_V_2_reg_236_reg[12]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[15:12]));
  FDRE \t_V_2_reg_236_reg[13] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[12]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[13]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[14] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[12]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[14]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[15] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[12]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[15]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[16] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[16]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[16]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[16]_i_1 
       (.CI(\t_V_2_reg_236_reg[12]_i_1_n_0 ),
        .CO({\t_V_2_reg_236_reg[16]_i_1_n_0 ,\t_V_2_reg_236_reg[16]_i_1_n_1 ,\t_V_2_reg_236_reg[16]_i_1_n_2 ,\t_V_2_reg_236_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[16]_i_1_n_4 ,\t_V_2_reg_236_reg[16]_i_1_n_5 ,\t_V_2_reg_236_reg[16]_i_1_n_6 ,\t_V_2_reg_236_reg[16]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[19:16]));
  FDRE \t_V_2_reg_236_reg[17] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[16]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[17]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[18] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[16]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[18]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[19] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[16]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[19]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[1] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[0]_i_3_n_6 ),
        .Q(t_V_2_reg_236_reg[1]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[20] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[20]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[20]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[20]_i_1 
       (.CI(\t_V_2_reg_236_reg[16]_i_1_n_0 ),
        .CO({\t_V_2_reg_236_reg[20]_i_1_n_0 ,\t_V_2_reg_236_reg[20]_i_1_n_1 ,\t_V_2_reg_236_reg[20]_i_1_n_2 ,\t_V_2_reg_236_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[20]_i_1_n_4 ,\t_V_2_reg_236_reg[20]_i_1_n_5 ,\t_V_2_reg_236_reg[20]_i_1_n_6 ,\t_V_2_reg_236_reg[20]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[23:20]));
  FDRE \t_V_2_reg_236_reg[21] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[20]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[21]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[22] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[20]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[22]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[23] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[20]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[23]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[24] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[24]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[24]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[24]_i_1 
       (.CI(\t_V_2_reg_236_reg[20]_i_1_n_0 ),
        .CO({\t_V_2_reg_236_reg[24]_i_1_n_0 ,\t_V_2_reg_236_reg[24]_i_1_n_1 ,\t_V_2_reg_236_reg[24]_i_1_n_2 ,\t_V_2_reg_236_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[24]_i_1_n_4 ,\t_V_2_reg_236_reg[24]_i_1_n_5 ,\t_V_2_reg_236_reg[24]_i_1_n_6 ,\t_V_2_reg_236_reg[24]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[27:24]));
  FDRE \t_V_2_reg_236_reg[25] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[24]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[25]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[26] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[24]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[26]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[27] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[24]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[27]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[28] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[28]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[28]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[28]_i_1 
       (.CI(\t_V_2_reg_236_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_2_reg_236_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_2_reg_236_reg[28]_i_1_n_1 ,\t_V_2_reg_236_reg[28]_i_1_n_2 ,\t_V_2_reg_236_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[28]_i_1_n_4 ,\t_V_2_reg_236_reg[28]_i_1_n_5 ,\t_V_2_reg_236_reg[28]_i_1_n_6 ,\t_V_2_reg_236_reg[28]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[31:28]));
  FDRE \t_V_2_reg_236_reg[29] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[28]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[29]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[2] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[0]_i_3_n_5 ),
        .Q(t_V_2_reg_236_reg[2]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[30] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[28]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[30]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[31] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[28]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[31]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[3] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[0]_i_3_n_4 ),
        .Q(t_V_2_reg_236_reg[3]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[4] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[4]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[4]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[4]_i_1 
       (.CI(\t_V_2_reg_236_reg[0]_i_3_n_0 ),
        .CO({\t_V_2_reg_236_reg[4]_i_1_n_0 ,\t_V_2_reg_236_reg[4]_i_1_n_1 ,\t_V_2_reg_236_reg[4]_i_1_n_2 ,\t_V_2_reg_236_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[4]_i_1_n_4 ,\t_V_2_reg_236_reg[4]_i_1_n_5 ,\t_V_2_reg_236_reg[4]_i_1_n_6 ,\t_V_2_reg_236_reg[4]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[7:4]));
  FDRE \t_V_2_reg_236_reg[5] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[4]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[5]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[6] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[4]_i_1_n_5 ),
        .Q(t_V_2_reg_236_reg[6]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[7] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[4]_i_1_n_4 ),
        .Q(t_V_2_reg_236_reg[7]),
        .R(t_V_2_reg_236));
  FDRE \t_V_2_reg_236_reg[8] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[8]_i_1_n_7 ),
        .Q(t_V_2_reg_236_reg[8]),
        .R(t_V_2_reg_236));
  CARRY4 \t_V_2_reg_236_reg[8]_i_1 
       (.CI(\t_V_2_reg_236_reg[4]_i_1_n_0 ),
        .CO({\t_V_2_reg_236_reg[8]_i_1_n_0 ,\t_V_2_reg_236_reg[8]_i_1_n_1 ,\t_V_2_reg_236_reg[8]_i_1_n_2 ,\t_V_2_reg_236_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_236_reg[8]_i_1_n_4 ,\t_V_2_reg_236_reg[8]_i_1_n_5 ,\t_V_2_reg_236_reg[8]_i_1_n_6 ,\t_V_2_reg_236_reg[8]_i_1_n_7 }),
        .S(t_V_2_reg_236_reg[11:8]));
  FDRE \t_V_2_reg_236_reg[9] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1480),
        .D(\t_V_2_reg_236_reg[8]_i_1_n_6 ),
        .Q(t_V_2_reg_236_reg[9]),
        .R(t_V_2_reg_236));
  FDRE \t_V_reg_225_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[0]),
        .Q(t_V_reg_225[0]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[10]),
        .Q(t_V_reg_225[10]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[11]),
        .Q(t_V_reg_225[11]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[12]),
        .Q(t_V_reg_225[12]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[13]),
        .Q(t_V_reg_225[13]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[14]),
        .Q(t_V_reg_225[14]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[15]),
        .Q(t_V_reg_225[15]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[16]),
        .Q(t_V_reg_225[16]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[17]),
        .Q(t_V_reg_225[17]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[18]),
        .Q(t_V_reg_225[18]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[19]),
        .Q(t_V_reg_225[19]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[1]),
        .Q(t_V_reg_225[1]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[20]),
        .Q(t_V_reg_225[20]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[21]),
        .Q(t_V_reg_225[21]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[22]),
        .Q(t_V_reg_225[22]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[23]),
        .Q(t_V_reg_225[23]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[24]),
        .Q(t_V_reg_225[24]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[25]),
        .Q(t_V_reg_225[25]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[26]),
        .Q(t_V_reg_225[26]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[27]),
        .Q(t_V_reg_225[27]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[28]),
        .Q(t_V_reg_225[28]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[29]),
        .Q(t_V_reg_225[29]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[2]),
        .Q(t_V_reg_225[2]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[30]),
        .Q(t_V_reg_225[30]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[31]),
        .Q(t_V_reg_225[31]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[3]),
        .Q(t_V_reg_225[3]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[4]),
        .Q(t_V_reg_225[4]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[5]),
        .Q(t_V_reg_225[5]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[6]),
        .Q(t_V_reg_225[6]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[7]),
        .Q(t_V_reg_225[7]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[8]),
        .Q(t_V_reg_225[8]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_225_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_V_reg_439[9]),
        .Q(t_V_reg_225[9]),
        .R(ap_CS_fsm_state3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[0]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[0]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[0]),
        .O(AXI_video_strm_V_data_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[1]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[1]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[1]),
        .O(AXI_video_strm_V_data_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[2]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[2]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[2]),
        .O(AXI_video_strm_V_data_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[3]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[3]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[3]),
        .O(AXI_video_strm_V_data_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[4]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[4]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[4]),
        .O(AXI_video_strm_V_data_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[5]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[5]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[5]),
        .O(AXI_video_strm_V_data_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[6]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[6]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[6]),
        .O(AXI_video_strm_V_data_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_reg_415[7]_i_1 
       (.I0(AXI_video_strm_V_data_V_0_payload_B[7]),
        .I1(AXI_video_strm_V_data_V_0_sel),
        .I2(AXI_video_strm_V_data_V_0_payload_A[7]),
        .O(AXI_video_strm_V_data_V_0_data_out[7]));
  FDRE \tmp_data_V_reg_415_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[0]),
        .Q(tmp_data_V_reg_415[0]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[1] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[1]),
        .Q(tmp_data_V_reg_415[1]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[2] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[2]),
        .Q(tmp_data_V_reg_415[2]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[3] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[3]),
        .Q(tmp_data_V_reg_415[3]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[4] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[4]),
        .Q(tmp_data_V_reg_415[4]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[5] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[5]),
        .Q(tmp_data_V_reg_415[5]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[6] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[6]),
        .Q(tmp_data_V_reg_415[6]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[7] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_data_V_0_data_out[7]),
        .Q(tmp_data_V_reg_415[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_last_V_reg_423[0]_i_1 
       (.I0(\AXI_video_strm_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .O(AXI_video_strm_V_data_V_0_sel2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_last_V_reg_423[0]_i_2 
       (.I0(AXI_video_strm_V_last_V_0_payload_B),
        .I1(AXI_video_strm_V_last_V_0_sel),
        .I2(AXI_video_strm_V_last_V_0_payload_A),
        .O(AXI_video_strm_V_last_V_0_data_out));
  FDRE \tmp_last_V_reg_423_reg[0] 
       (.C(ap_clk),
        .CE(AXI_video_strm_V_data_V_0_sel2),
        .D(AXI_video_strm_V_last_V_0_data_out),
        .Q(tmp_last_V_reg_423),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis2ram" *) (* hls_module = "yes" *) 
module m3_for_arty_a7_axis2ram_0_0_axis2ram
   (input_r_TDATA,
    input_r_TKEEP,
    input_r_TSTRB,
    input_r_TUSER,
    input_r_TLAST,
    input_r_TID,
    input_r_TDEST,
    output_r_address0,
    output_r_ce0,
    output_r_d0,
    output_r_q0,
    output_r_we0,
    ap_clk,
    ap_rst_n,
    ap_start,
    input_r_TVALID,
    input_r_TREADY,
    ap_done,
    ap_ready,
    ap_idle);
  input [7:0]input_r_TDATA;
  input [0:0]input_r_TKEEP;
  input [0:0]input_r_TSTRB;
  input [0:0]input_r_TUSER;
  input [0:0]input_r_TLAST;
  input [0:0]input_r_TID;
  input [0:0]input_r_TDEST;
  output [18:0]output_r_address0;
  output output_r_ce0;
  output [0:0]output_r_d0;
  input [0:0]output_r_q0;
  output output_r_we0;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  input input_r_TVALID;
  output input_r_TREADY;
  output ap_done;
  output ap_ready;
  output ap_idle;

  wire AXIvideo2Mat_U0_n_10;
  wire AXIvideo2Mat_U0_n_11;
  wire AXIvideo2Mat_U0_n_12;
  wire AXIvideo2Mat_U0_n_13;
  wire AXIvideo2Mat_U0_n_14;
  wire AXIvideo2Mat_U0_n_15;
  wire AXIvideo2Mat_U0_n_16;
  wire AXIvideo2Mat_U0_n_17;
  wire AXIvideo2Mat_U0_n_3;
  wire AXIvideo2Mat_U0_n_5;
  wire AXIvideo2Mat_U0_n_6;
  wire AXIvideo2Mat_U0_n_7;
  wire AXIvideo2Mat_U0_n_8;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire exitcond1_i_fu_155_p2;
  wire img_0_cols_V_c5_empty_n;
  wire img_0_cols_V_c5_full_n;
  wire img_0_cols_V_c_U_n_2;
  wire img_0_cols_V_c_empty_n;
  wire img_0_cols_V_c_full_n;
  wire img_0_data_stream_0_empty_n;
  wire img_0_data_stream_0_full_n;
  wire img_0_rows_V_c4_empty_n;
  wire img_0_rows_V_c4_full_n;
  wire img_0_rows_V_c_empty_n;
  wire img_0_rows_V_c_full_n;
  wire [7:0]input_r_TDATA;
  wire [0:0]input_r_TLAST;
  wire input_r_TREADY;
  wire [0:0]input_r_TUSER;
  wire input_r_TVALID;
  wire mat2vector_U0_ap_start;
  wire mat2vector_U0_n_1;
  wire mat2vector_U0_n_11;
  wire mat2vector_U0_n_2;
  wire mat2vector_U0_n_3;
  wire mat2vector_U0_n_6;
  wire mat2vector_U0_n_9;
  wire [18:0]output_r_address0;
  wire output_r_ce0;
  wire [0:0]output_r_d0;
  wire output_r_we0;
  wire shiftReg_ce;
  wire start_for_mat2veccud_U_n_2;
  wire start_for_mat2vector_U0_full_n;
  wire start_once_reg;

  m3_for_arty_a7_axis2ram_0_0_AXIvideo2Mat AXIvideo2Mat_U0
       (.D({AXIvideo2Mat_U0_n_10,AXIvideo2Mat_U0_n_11,AXIvideo2Mat_U0_n_12,AXIvideo2Mat_U0_n_13,AXIvideo2Mat_U0_n_14,AXIvideo2Mat_U0_n_15,AXIvideo2Mat_U0_n_16,AXIvideo2Mat_U0_n_17}),
        .E(AXIvideo2Mat_U0_n_7),
        .Q(AXIvideo2Mat_U0_n_3),
        .\ap_CS_fsm_reg[0]_0 (mat2vector_U0_n_6),
        .\ap_CS_fsm_reg[1]_0 (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .img_0_cols_V_c5_empty_n(img_0_cols_V_c5_empty_n),
        .img_0_cols_V_c5_full_n(img_0_cols_V_c5_full_n),
        .img_0_cols_V_c_empty_n(img_0_cols_V_c_empty_n),
        .img_0_cols_V_c_full_n(img_0_cols_V_c_full_n),
        .img_0_data_stream_0_full_n(img_0_data_stream_0_full_n),
        .img_0_rows_V_c4_empty_n(img_0_rows_V_c4_empty_n),
        .img_0_rows_V_c4_full_n(img_0_rows_V_c4_full_n),
        .img_0_rows_V_c_empty_n(img_0_rows_V_c_empty_n),
        .img_0_rows_V_c_full_n(img_0_rows_V_c_full_n),
        .input_r_TDATA(input_r_TDATA),
        .input_r_TLAST(input_r_TLAST),
        .input_r_TREADY(input_r_TREADY),
        .input_r_TUSER(input_r_TUSER),
        .input_r_TVALID(input_r_TVALID),
        .\mOutPtr_reg[0] (AXIvideo2Mat_U0_n_8),
        .\mOutPtr_reg[1] (AXIvideo2Mat_U0_n_6),
        .mat2vector_U0_ap_start(mat2vector_U0_ap_start),
        .shiftReg_ce(shiftReg_ce),
        .start_for_mat2vector_U0_full_n(start_for_mat2vector_U0_full_n),
        .start_once_reg(start_once_reg));
  m3_for_arty_a7_axis2ram_0_0_fifo_w11_d2_A img_0_cols_V_c5_U
       (.E(start_for_mat2veccud_U_n_2),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .\ap_CS_fsm_reg[0]_0 (mat2vector_U0_n_11),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_0_cols_V_c5_empty_n(img_0_cols_V_c5_empty_n),
        .img_0_cols_V_c5_full_n(img_0_cols_V_c5_full_n),
        .internal_empty_n_reg_0(AXIvideo2Mat_U0_n_6));
  m3_for_arty_a7_axis2ram_0_0_fifo_w11_d2_A_0 img_0_cols_V_c_U
       (.E(AXIvideo2Mat_U0_n_7),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .img_0_cols_V_c_empty_n(img_0_cols_V_c_empty_n),
        .img_0_cols_V_c_full_n(img_0_cols_V_c_full_n),
        .img_0_rows_V_c_full_n(img_0_rows_V_c_full_n),
        .internal_full_n_reg_0(img_0_cols_V_c_U_n_2));
  m3_for_arty_a7_axis2ram_0_0_fifo_w8_d2_A img_0_data_stream_0_U
       (.D({AXIvideo2Mat_U0_n_10,AXIvideo2Mat_U0_n_11,AXIvideo2Mat_U0_n_12,AXIvideo2Mat_U0_n_13,AXIvideo2Mat_U0_n_14,AXIvideo2Mat_U0_n_15,AXIvideo2Mat_U0_n_16,AXIvideo2Mat_U0_n_17}),
        .Q(ap_CS_fsm_pp0_stage0),
        .\ap_CS_fsm_reg[2] (mat2vector_U0_n_9),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(mat2vector_U0_n_2),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_235_reg[0] (mat2vector_U0_n_1),
        .img_0_data_stream_0_empty_n(img_0_data_stream_0_empty_n),
        .img_0_data_stream_0_full_n(img_0_data_stream_0_full_n),
        .output_r_d0(output_r_d0),
        .output_r_we0(output_r_we0),
        .shiftReg_ce(shiftReg_ce));
  m3_for_arty_a7_axis2ram_0_0_fifo_w10_d2_A img_0_rows_V_c4_U
       (.E(start_for_mat2veccud_U_n_2),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .\ap_CS_fsm_reg[0]_0 (mat2vector_U0_n_11),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_0_rows_V_c4_empty_n(img_0_rows_V_c4_empty_n),
        .img_0_rows_V_c4_full_n(img_0_rows_V_c4_full_n),
        .internal_empty_n_reg_0(AXIvideo2Mat_U0_n_6));
  m3_for_arty_a7_axis2ram_0_0_fifo_w10_d2_A_1 img_0_rows_V_c_U
       (.E(AXIvideo2Mat_U0_n_7),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .img_0_cols_V_c_full_n(img_0_cols_V_c_full_n),
        .img_0_rows_V_c_empty_n(img_0_rows_V_c_empty_n),
        .img_0_rows_V_c_full_n(img_0_rows_V_c_full_n),
        .internal_full_n_reg_0(img_0_cols_V_c_U_n_2));
  m3_for_arty_a7_axis2ram_0_0_mat2vector mat2vector_U0
       (.CO(exitcond1_i_fu_155_p2),
        .Q({ap_CS_fsm_pp0_stage0,ap_CS_fsm_state2,mat2vector_U0_n_6}),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter0_reg_0(mat2vector_U0_n_9),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\exitcond_i_reg_235_reg[0]_0 (mat2vector_U0_n_1),
        .\exitcond_i_reg_235_reg[0]_1 (mat2vector_U0_n_2),
        .img_0_cols_V_c5_empty_n(img_0_cols_V_c5_empty_n),
        .img_0_data_stream_0_empty_n(img_0_data_stream_0_empty_n),
        .img_0_rows_V_c4_empty_n(img_0_rows_V_c4_empty_n),
        .internal_empty_n_reg(mat2vector_U0_n_3),
        .internal_full_n_reg(mat2vector_U0_n_11),
        .mat2vector_U0_ap_start(mat2vector_U0_ap_start),
        .output_r_address0(output_r_address0),
        .output_r_ce0(output_r_ce0),
        .output_r_we0(output_r_we0));
  m3_for_arty_a7_axis2ram_0_0_start_for_mat2veccud start_for_mat2veccud_U
       (.CO(exitcond1_i_fu_155_p2),
        .E(start_for_mat2veccud_U_n_2),
        .Q({ap_CS_fsm_state2,mat2vector_U0_n_6}),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .\ap_CS_fsm_reg[0]_0 (AXIvideo2Mat_U0_n_3),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .img_0_cols_V_c5_empty_n(img_0_cols_V_c5_empty_n),
        .img_0_rows_V_c4_empty_n(img_0_rows_V_c4_empty_n),
        .internal_empty_n_reg_0(mat2vector_U0_n_3),
        .mat2vector_U0_ap_start(mat2vector_U0_ap_start),
        .start_for_mat2vector_U0_full_n(start_for_mat2vector_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg(AXIvideo2Mat_U0_n_8));
endmodule

(* ORIG_REF_NAME = "fifo_w10_d2_A" *) 
module m3_for_arty_a7_axis2ram_0_0_fifo_w10_d2_A
   (img_0_rows_V_c4_full_n,
    img_0_rows_V_c4_empty_n,
    ap_clk,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    ap_rst_n,
    internal_empty_n_reg_0,
    ap_rst_n_inv,
    E);
  output img_0_rows_V_c4_full_n;
  output img_0_rows_V_c4_empty_n;
  input ap_clk;
  input \ap_CS_fsm_reg[0] ;
  input \ap_CS_fsm_reg[0]_0 ;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_0_rows_V_c4_empty_n;
  wire img_0_rows_V_c4_full_n;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__1_n_0;
  wire \mOutPtr[0]_i_1__2_n_0 ;
  wire \mOutPtr[1]_i_1__1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(img_0_rows_V_c4_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(img_0_rows_V_c4_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0F0FFFFFFFF)) 
    internal_full_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(img_0_rows_V_c4_full_n),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(\ap_CS_fsm_reg[0]_0 ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(img_0_rows_V_c4_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__1 
       (.I0(internal_empty_n_reg_0),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w10_d2_A" *) 
module m3_for_arty_a7_axis2ram_0_0_fifo_w10_d2_A_1
   (img_0_rows_V_c_full_n,
    img_0_rows_V_c_empty_n,
    ap_clk,
    internal_full_n_reg_0,
    \ap_CS_fsm_reg[0] ,
    ap_rst_n,
    img_0_cols_V_c_full_n,
    ap_start,
    ap_rst_n_inv,
    E);
  output img_0_rows_V_c_full_n;
  output img_0_rows_V_c_empty_n;
  input ap_clk;
  input internal_full_n_reg_0;
  input \ap_CS_fsm_reg[0] ;
  input ap_rst_n;
  input img_0_cols_V_c_full_n;
  input ap_start;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire img_0_cols_V_c_full_n;
  wire img_0_rows_V_c_empty_n;
  wire img_0_rows_V_c_full_n;
  wire internal_empty_n_i_1__3_n_0;
  wire internal_full_n_i_1__3_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_1__2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(internal_full_n_reg_0),
        .I4(img_0_rows_V_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_0),
        .Q(img_0_rows_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0F0FFFFFFFF)) 
    internal_full_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(img_0_rows_V_c_full_n),
        .I3(internal_full_n_reg_0),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_0),
        .Q(img_0_rows_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAD555D5552AAA)) 
    \mOutPtr[1]_i_1__2 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(img_0_cols_V_c_full_n),
        .I2(img_0_rows_V_c_full_n),
        .I3(ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w11_d2_A" *) 
module m3_for_arty_a7_axis2ram_0_0_fifo_w11_d2_A
   (img_0_cols_V_c5_full_n,
    img_0_cols_V_c5_empty_n,
    ap_clk,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    ap_rst_n,
    internal_empty_n_reg_0,
    ap_rst_n_inv,
    E);
  output img_0_cols_V_c5_full_n;
  output img_0_cols_V_c5_empty_n;
  input ap_clk;
  input \ap_CS_fsm_reg[0] ;
  input \ap_CS_fsm_reg[0]_0 ;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_0_cols_V_c5_empty_n;
  wire img_0_cols_V_c5_full_n;
  wire internal_empty_n_i_1__0_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__0_n_0;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_2__1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(img_0_cols_V_c5_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_0),
        .Q(img_0_cols_V_c5_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0F0FFFFFFFF)) 
    internal_full_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(img_0_cols_V_c5_full_n),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(\ap_CS_fsm_reg[0]_0 ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_0),
        .Q(img_0_cols_V_c5_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_2__1 
       (.I0(internal_empty_n_reg_0),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w11_d2_A" *) 
module m3_for_arty_a7_axis2ram_0_0_fifo_w11_d2_A_0
   (img_0_cols_V_c_full_n,
    img_0_cols_V_c_empty_n,
    internal_full_n_reg_0,
    ap_clk,
    \ap_CS_fsm_reg[0] ,
    ap_rst_n,
    img_0_rows_V_c_full_n,
    ap_start,
    ap_rst_n_inv,
    E);
  output img_0_cols_V_c_full_n;
  output img_0_cols_V_c_empty_n;
  output internal_full_n_reg_0;
  input ap_clk;
  input \ap_CS_fsm_reg[0] ;
  input ap_rst_n;
  input img_0_rows_V_c_full_n;
  input ap_start;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire img_0_cols_V_c_empty_n;
  wire img_0_cols_V_c_full_n;
  wire img_0_rows_V_c_full_n;
  wire internal_empty_n_i_1__2_n_0;
  wire internal_full_n_i_1__2_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2__2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(internal_full_n_reg_0),
        .I4(img_0_cols_V_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_0),
        .Q(img_0_cols_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0F0FFFFFFFF)) 
    internal_full_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(img_0_cols_V_c_full_n),
        .I3(internal_full_n_reg_0),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__1
       (.I0(img_0_cols_V_c_full_n),
        .I1(img_0_rows_V_c_full_n),
        .I2(ap_start),
        .O(internal_full_n_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_0),
        .Q(img_0_cols_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAD555D5552AAA)) 
    \mOutPtr[1]_i_2__2 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(img_0_cols_V_c_full_n),
        .I2(img_0_rows_V_c_full_n),
        .I3(ap_start),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module m3_for_arty_a7_axis2ram_0_0_fifo_w8_d2_A
   (img_0_data_stream_0_full_n,
    img_0_data_stream_0_empty_n,
    output_r_d0,
    ap_clk,
    output_r_we0,
    shiftReg_ce,
    ap_rst_n,
    \ap_CS_fsm_reg[2] ,
    \exitcond_i_reg_235_reg[0] ,
    ap_enable_reg_pp0_iter1_reg,
    Q,
    ap_rst_n_inv,
    D);
  output img_0_data_stream_0_full_n;
  output img_0_data_stream_0_empty_n;
  output [0:0]output_r_d0;
  input ap_clk;
  input output_r_we0;
  input shiftReg_ce;
  input ap_rst_n;
  input \ap_CS_fsm_reg[2] ;
  input \exitcond_i_reg_235_reg[0] ;
  input ap_enable_reg_pp0_iter1_reg;
  input [0:0]Q;
  input ap_rst_n_inv;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond_i_reg_235_reg[0] ;
  wire img_0_data_stream_0_empty_n;
  wire img_0_data_stream_0_full_n;
  wire internal_empty_n_i_1__4_n_0;
  wire internal_full_n_i_1__4_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire [0:0]output_r_d0;
  wire output_r_we0;
  wire shiftReg_ce;

  m3_for_arty_a7_axis2ram_0_0_fifo_w8_d2_A_shiftReg U_fifo_w8_d2_A_ram
       (.D(D),
        .ap_clk(ap_clk),
        .\mOutPtr_reg[0] (\mOutPtr_reg_n_0_[0] ),
        .\mOutPtr_reg[1] (\mOutPtr_reg_n_0_[1] ),
        .output_r_d0(output_r_d0),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__4
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(output_r_we0),
        .I3(shiftReg_ce),
        .I4(img_0_data_stream_0_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_0),
        .Q(img_0_data_stream_0_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__4
       (.I0(ap_rst_n),
        .I1(img_0_data_stream_0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(shiftReg_ce),
        .I5(output_r_we0),
        .O(internal_full_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_0),
        .Q(img_0_data_stream_0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0800F7FFF7FF0800)) 
    \mOutPtr[0]_i_1 
       (.I0(img_0_data_stream_0_empty_n),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(\exitcond_i_reg_235_reg[0] ),
        .I3(Q),
        .I4(shiftReg_ce),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777E777788818888)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(shiftReg_ce),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(\exitcond_i_reg_235_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module m3_for_arty_a7_axis2ram_0_0_fifo_w8_d2_A_shiftReg
   (output_r_d0,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    shiftReg_ce,
    D,
    ap_clk);
  output [0:0]output_r_d0;
  input \mOutPtr_reg[1] ;
  input \mOutPtr_reg[0] ;
  input shiftReg_ce;
  input [7:0]D;
  input ap_clk;

  wire [7:0]D;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire ap_clk;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire [0:0]output_r_d0;
  wire \output_r_d0[0]_INST_0_i_1_n_0 ;
  wire \output_r_d0[0]_INST_0_i_2_n_0 ;
  wire \output_r_d0[0]_INST_0_i_3_n_0 ;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \output_r_d0[0]_INST_0 
       (.I0(\output_r_d0[0]_INST_0_i_1_n_0 ),
        .I1(\SRL_SIG_reg_n_0_[1][3] ),
        .I2(\SRL_SIG_reg_n_0_[1][5] ),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .I4(\SRL_SIG_reg_n_0_[1][6] ),
        .I5(\output_r_d0[0]_INST_0_i_2_n_0 ),
        .O(output_r_d0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \output_r_d0[0]_INST_0_i_1 
       (.I0(\mOutPtr_reg[1] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\SRL_SIG_reg_n_0_[1][0] ),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .I4(\SRL_SIG_reg_n_0_[1][7] ),
        .I5(\SRL_SIG_reg_n_0_[1][2] ),
        .O(\output_r_d0[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \output_r_d0[0]_INST_0_i_2 
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(\SRL_SIG_reg_n_0_[0][0] ),
        .I2(\SRL_SIG_reg_n_0_[0][4] ),
        .I3(\SRL_SIG_reg_n_0_[0][1] ),
        .I4(\output_r_d0[0]_INST_0_i_3_n_0 ),
        .O(\output_r_d0[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \output_r_d0[0]_INST_0_i_3 
       (.I0(\mOutPtr_reg[1] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\SRL_SIG_reg_n_0_[0][7] ),
        .I3(\SRL_SIG_reg_n_0_[0][6] ),
        .I4(\SRL_SIG_reg_n_0_[0][3] ),
        .I5(\SRL_SIG_reg_n_0_[0][2] ),
        .O(\output_r_d0[0]_INST_0_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "mat2vector" *) 
module m3_for_arty_a7_axis2ram_0_0_mat2vector
   (CO,
    \exitcond_i_reg_235_reg[0]_0 ,
    \exitcond_i_reg_235_reg[0]_1 ,
    internal_empty_n_reg,
    Q,
    ap_done,
    output_r_we0,
    ap_enable_reg_pp0_iter0_reg_0,
    output_r_ce0,
    internal_full_n_reg,
    output_r_address0,
    ap_clk,
    ap_rst_n,
    mat2vector_U0_ap_start,
    img_0_data_stream_0_empty_n,
    img_0_cols_V_c5_empty_n,
    img_0_rows_V_c4_empty_n,
    ap_rst_n_inv);
  output [0:0]CO;
  output \exitcond_i_reg_235_reg[0]_0 ;
  output \exitcond_i_reg_235_reg[0]_1 ;
  output internal_empty_n_reg;
  output [2:0]Q;
  output ap_done;
  output output_r_we0;
  output ap_enable_reg_pp0_iter0_reg_0;
  output output_r_ce0;
  output internal_full_n_reg;
  output [18:0]output_r_address0;
  input ap_clk;
  input ap_rst_n;
  input mat2vector_U0_ap_start;
  input img_0_data_stream_0_empty_n;
  input img_0_cols_V_c5_empty_n;
  input img_0_rows_V_c4_empty_n;
  input ap_rst_n_inv;

  wire [0:0]CO;
  wire [2:0]Q;
  wire \ap_CS_fsm[0]_i_1__0_n_0 ;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire ap_CS_fsm_state5;
  wire [3:1]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state3;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_0 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_1 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_2 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_3 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry__1_n_2 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry__1_n_3 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry_n_0 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry_n_1 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry_n_2 ;
  wire \exitcond1_i_fu_155_p2_inferred__0/i__carry_n_3 ;
  wire exitcond_i_fu_170_p2_carry__0_i_1_n_0;
  wire exitcond_i_fu_170_p2_carry__0_i_2_n_0;
  wire exitcond_i_fu_170_p2_carry__0_i_3_n_0;
  wire exitcond_i_fu_170_p2_carry__0_i_4_n_0;
  wire exitcond_i_fu_170_p2_carry__0_n_0;
  wire exitcond_i_fu_170_p2_carry__0_n_1;
  wire exitcond_i_fu_170_p2_carry__0_n_2;
  wire exitcond_i_fu_170_p2_carry__0_n_3;
  wire exitcond_i_fu_170_p2_carry__1_i_1_n_0;
  wire exitcond_i_fu_170_p2_carry__1_i_2_n_0;
  wire exitcond_i_fu_170_p2_carry__1_i_3_n_0;
  wire exitcond_i_fu_170_p2_carry__1_n_2;
  wire exitcond_i_fu_170_p2_carry__1_n_3;
  wire exitcond_i_fu_170_p2_carry_i_1_n_0;
  wire exitcond_i_fu_170_p2_carry_i_2_n_0;
  wire exitcond_i_fu_170_p2_carry_i_3_n_0;
  wire exitcond_i_fu_170_p2_carry_i_4_n_0;
  wire exitcond_i_fu_170_p2_carry_n_0;
  wire exitcond_i_fu_170_p2_carry_n_1;
  wire exitcond_i_fu_170_p2_carry_n_2;
  wire exitcond_i_fu_170_p2_carry_n_3;
  wire \exitcond_i_reg_235[0]_i_1_n_0 ;
  wire \exitcond_i_reg_235_reg[0]_0 ;
  wire \exitcond_i_reg_235_reg[0]_1 ;
  wire [31:0]i_V_fu_160_p2;
  wire [31:0]i_V_reg_225;
  wire \i_V_reg_225_reg[12]_i_1_n_0 ;
  wire \i_V_reg_225_reg[12]_i_1_n_1 ;
  wire \i_V_reg_225_reg[12]_i_1_n_2 ;
  wire \i_V_reg_225_reg[12]_i_1_n_3 ;
  wire \i_V_reg_225_reg[16]_i_1_n_0 ;
  wire \i_V_reg_225_reg[16]_i_1_n_1 ;
  wire \i_V_reg_225_reg[16]_i_1_n_2 ;
  wire \i_V_reg_225_reg[16]_i_1_n_3 ;
  wire \i_V_reg_225_reg[20]_i_1_n_0 ;
  wire \i_V_reg_225_reg[20]_i_1_n_1 ;
  wire \i_V_reg_225_reg[20]_i_1_n_2 ;
  wire \i_V_reg_225_reg[20]_i_1_n_3 ;
  wire \i_V_reg_225_reg[24]_i_1_n_0 ;
  wire \i_V_reg_225_reg[24]_i_1_n_1 ;
  wire \i_V_reg_225_reg[24]_i_1_n_2 ;
  wire \i_V_reg_225_reg[24]_i_1_n_3 ;
  wire \i_V_reg_225_reg[28]_i_1_n_0 ;
  wire \i_V_reg_225_reg[28]_i_1_n_1 ;
  wire \i_V_reg_225_reg[28]_i_1_n_2 ;
  wire \i_V_reg_225_reg[28]_i_1_n_3 ;
  wire \i_V_reg_225_reg[31]_i_1_n_2 ;
  wire \i_V_reg_225_reg[31]_i_1_n_3 ;
  wire \i_V_reg_225_reg[4]_i_1_n_0 ;
  wire \i_V_reg_225_reg[4]_i_1_n_1 ;
  wire \i_V_reg_225_reg[4]_i_1_n_2 ;
  wire \i_V_reg_225_reg[4]_i_1_n_3 ;
  wire \i_V_reg_225_reg[8]_i_1_n_0 ;
  wire \i_V_reg_225_reg[8]_i_1_n_1 ;
  wire \i_V_reg_225_reg[8]_i_1_n_2 ;
  wire \i_V_reg_225_reg[8]_i_1_n_3 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire img_0_cols_V_c5_empty_n;
  wire img_0_data_stream_0_empty_n;
  wire img_0_rows_V_c4_empty_n;
  wire internal_empty_n_reg;
  wire internal_full_n_reg;
  wire mat2vector_U0_ap_start;
  wire [18:0]output_r_address0;
  wire output_r_ce0;
  wire output_r_we0;
  wire p_1_in;
  wire r_V_reg_230_reg_n_100;
  wire r_V_reg_230_reg_n_101;
  wire r_V_reg_230_reg_n_102;
  wire r_V_reg_230_reg_n_103;
  wire r_V_reg_230_reg_n_104;
  wire r_V_reg_230_reg_n_105;
  wire r_V_reg_230_reg_n_87;
  wire r_V_reg_230_reg_n_88;
  wire r_V_reg_230_reg_n_89;
  wire r_V_reg_230_reg_n_90;
  wire r_V_reg_230_reg_n_91;
  wire r_V_reg_230_reg_n_92;
  wire r_V_reg_230_reg_n_93;
  wire r_V_reg_230_reg_n_94;
  wire r_V_reg_230_reg_n_95;
  wire r_V_reg_230_reg_n_96;
  wire r_V_reg_230_reg_n_97;
  wire r_V_reg_230_reg_n_98;
  wire r_V_reg_230_reg_n_99;
  wire [18:0]sum_i_fu_185_p2;
  wire sum_i_fu_185_p2_carry__0_i_1_n_0;
  wire sum_i_fu_185_p2_carry__0_i_2_n_0;
  wire sum_i_fu_185_p2_carry__0_i_3_n_0;
  wire sum_i_fu_185_p2_carry__0_i_4_n_0;
  wire sum_i_fu_185_p2_carry__0_n_0;
  wire sum_i_fu_185_p2_carry__0_n_1;
  wire sum_i_fu_185_p2_carry__0_n_2;
  wire sum_i_fu_185_p2_carry__0_n_3;
  wire sum_i_fu_185_p2_carry__1_i_1_n_0;
  wire sum_i_fu_185_p2_carry__1_i_2_n_0;
  wire sum_i_fu_185_p2_carry__1_i_3_n_0;
  wire sum_i_fu_185_p2_carry__1_i_4_n_0;
  wire sum_i_fu_185_p2_carry__1_n_0;
  wire sum_i_fu_185_p2_carry__1_n_1;
  wire sum_i_fu_185_p2_carry__1_n_2;
  wire sum_i_fu_185_p2_carry__1_n_3;
  wire sum_i_fu_185_p2_carry__2_i_1_n_0;
  wire sum_i_fu_185_p2_carry__2_i_2_n_0;
  wire sum_i_fu_185_p2_carry__2_i_3_n_0;
  wire sum_i_fu_185_p2_carry__2_i_4_n_0;
  wire sum_i_fu_185_p2_carry__2_n_0;
  wire sum_i_fu_185_p2_carry__2_n_1;
  wire sum_i_fu_185_p2_carry__2_n_2;
  wire sum_i_fu_185_p2_carry__2_n_3;
  wire sum_i_fu_185_p2_carry__3_i_1_n_0;
  wire sum_i_fu_185_p2_carry__3_i_2_n_0;
  wire sum_i_fu_185_p2_carry__3_i_3_n_0;
  wire sum_i_fu_185_p2_carry__3_n_2;
  wire sum_i_fu_185_p2_carry__3_n_3;
  wire sum_i_fu_185_p2_carry_i_1_n_0;
  wire sum_i_fu_185_p2_carry_i_2_n_0;
  wire sum_i_fu_185_p2_carry_i_3_n_0;
  wire sum_i_fu_185_p2_carry_i_4_n_0;
  wire sum_i_fu_185_p2_carry_n_0;
  wire sum_i_fu_185_p2_carry_n_1;
  wire sum_i_fu_185_p2_carry_n_2;
  wire sum_i_fu_185_p2_carry_n_3;
  wire \sum_i_reg_244[18]_i_1_n_0 ;
  wire t_V_1_reg_132;
  wire t_V_1_reg_1320;
  wire \t_V_1_reg_132[0]_i_4_n_0 ;
  wire [31:0]t_V_1_reg_132_reg;
  wire \t_V_1_reg_132_reg[0]_i_3_n_0 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_1 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_2 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_3 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_4 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_5 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_6 ;
  wire \t_V_1_reg_132_reg[0]_i_3_n_7 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_0 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[12]_i_1_n_7 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_0 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[16]_i_1_n_7 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_0 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[20]_i_1_n_7 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_0 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[24]_i_1_n_7 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[28]_i_1_n_7 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_0 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[4]_i_1_n_7 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_0 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_1 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_2 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_3 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_4 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_5 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_6 ;
  wire \t_V_1_reg_132_reg[8]_i_1_n_7 ;
  wire [31:0]t_V_reg_121;
  wire t_V_reg_121_0;
  wire [3:0]\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_exitcond_i_fu_170_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_170_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_exitcond_i_fu_170_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_exitcond_i_fu_170_p2_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_i_V_reg_225_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_225_reg[31]_i_1_O_UNCONNECTED ;
  wire NLW_r_V_reg_230_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_r_V_reg_230_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_r_V_reg_230_reg_OVERFLOW_UNCONNECTED;
  wire NLW_r_V_reg_230_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_r_V_reg_230_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_r_V_reg_230_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_r_V_reg_230_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_r_V_reg_230_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_r_V_reg_230_reg_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_r_V_reg_230_reg_P_UNCONNECTED;
  wire [47:0]NLW_r_V_reg_230_reg_PCOUT_UNCONNECTED;
  wire [3:2]NLW_sum_i_fu_185_p2_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_sum_i_fu_185_p2_carry__3_O_UNCONNECTED;
  wire [3:3]\NLW_t_V_1_reg_132_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFF7F007F007F00)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(mat2vector_U0_ap_start),
        .I1(img_0_cols_V_c5_empty_n),
        .I2(img_0_rows_V_c4_empty_n),
        .I3(Q[0]),
        .I4(CO),
        .I5(Q[1]),
        .O(\ap_CS_fsm[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_CS_fsm_state5),
        .I1(mat2vector_U0_ap_start),
        .I2(img_0_cols_V_c5_empty_n),
        .I3(img_0_rows_V_c4_empty_n),
        .I4(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h4FFFFFFF44444444)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(CO),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\ap_CS_fsm[2]_i_2_n_0 ),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .I5(Q[2]),
        .O(ap_NS_fsm[2]));
  LUT3 #(
    .INIT(8'hFB)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(img_0_data_stream_0_empty_n),
        .I1(\exitcond_i_reg_235_reg[0]_1 ),
        .I2(\exitcond_i_reg_235_reg[0]_0 ),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080008080)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_condition_pp0_exit_iter0_state3),
        .I2(Q[2]),
        .I3(\exitcond_i_reg_235_reg[0]_0 ),
        .I4(\exitcond_i_reg_235_reg[0]_1 ),
        .I5(img_0_data_stream_0_empty_n),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_done_INST_0
       (.I0(CO),
        .I1(Q[1]),
        .O(ap_done));
  LUT6 #(
    .INIT(64'hDDDD0D0000000000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(ap_enable_reg_pp0_iter0_reg_0),
        .I2(CO),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C550C0000000000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(p_1_in),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_condition_pp0_exit_iter0_state3),
        .I3(\ap_CS_fsm[2]_i_2_n_0 ),
        .I4(\exitcond_i_reg_235_reg[0]_1 ),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(\exitcond_i_reg_235_reg[0]_1 ),
        .R(1'b0));
  CARRY4 \exitcond1_i_fu_155_p2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\exitcond1_i_fu_155_p2_inferred__0/i__carry_n_0 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry_n_1 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry_n_2 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \exitcond1_i_fu_155_p2_inferred__0/i__carry__0 
       (.CI(\exitcond1_i_fu_155_p2_inferred__0/i__carry_n_0 ),
        .CO({\exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_0 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_1 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_2 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \exitcond1_i_fu_155_p2_inferred__0/i__carry__1 
       (.CI(\exitcond1_i_fu_155_p2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry__1_CO_UNCONNECTED [3],CO,\exitcond1_i_fu_155_p2_inferred__0/i__carry__1_n_2 ,\exitcond1_i_fu_155_p2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond1_i_fu_155_p2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}));
  CARRY4 exitcond_i_fu_170_p2_carry
       (.CI(1'b0),
        .CO({exitcond_i_fu_170_p2_carry_n_0,exitcond_i_fu_170_p2_carry_n_1,exitcond_i_fu_170_p2_carry_n_2,exitcond_i_fu_170_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_170_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_170_p2_carry_i_1_n_0,exitcond_i_fu_170_p2_carry_i_2_n_0,exitcond_i_fu_170_p2_carry_i_3_n_0,exitcond_i_fu_170_p2_carry_i_4_n_0}));
  CARRY4 exitcond_i_fu_170_p2_carry__0
       (.CI(exitcond_i_fu_170_p2_carry_n_0),
        .CO({exitcond_i_fu_170_p2_carry__0_n_0,exitcond_i_fu_170_p2_carry__0_n_1,exitcond_i_fu_170_p2_carry__0_n_2,exitcond_i_fu_170_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_170_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({exitcond_i_fu_170_p2_carry__0_i_1_n_0,exitcond_i_fu_170_p2_carry__0_i_2_n_0,exitcond_i_fu_170_p2_carry__0_i_3_n_0,exitcond_i_fu_170_p2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry__0_i_1
       (.I0(t_V_1_reg_132_reg[23]),
        .I1(t_V_1_reg_132_reg[22]),
        .I2(t_V_1_reg_132_reg[21]),
        .O(exitcond_i_fu_170_p2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry__0_i_2
       (.I0(t_V_1_reg_132_reg[20]),
        .I1(t_V_1_reg_132_reg[19]),
        .I2(t_V_1_reg_132_reg[18]),
        .O(exitcond_i_fu_170_p2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry__0_i_3
       (.I0(t_V_1_reg_132_reg[17]),
        .I1(t_V_1_reg_132_reg[16]),
        .I2(t_V_1_reg_132_reg[15]),
        .O(exitcond_i_fu_170_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry__0_i_4
       (.I0(t_V_1_reg_132_reg[14]),
        .I1(t_V_1_reg_132_reg[13]),
        .I2(t_V_1_reg_132_reg[12]),
        .O(exitcond_i_fu_170_p2_carry__0_i_4_n_0));
  CARRY4 exitcond_i_fu_170_p2_carry__1
       (.CI(exitcond_i_fu_170_p2_carry__0_n_0),
        .CO({NLW_exitcond_i_fu_170_p2_carry__1_CO_UNCONNECTED[3],ap_condition_pp0_exit_iter0_state3,exitcond_i_fu_170_p2_carry__1_n_2,exitcond_i_fu_170_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond_i_fu_170_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,exitcond_i_fu_170_p2_carry__1_i_1_n_0,exitcond_i_fu_170_p2_carry__1_i_2_n_0,exitcond_i_fu_170_p2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    exitcond_i_fu_170_p2_carry__1_i_1
       (.I0(t_V_1_reg_132_reg[30]),
        .I1(t_V_1_reg_132_reg[31]),
        .O(exitcond_i_fu_170_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry__1_i_2
       (.I0(t_V_1_reg_132_reg[29]),
        .I1(t_V_1_reg_132_reg[28]),
        .I2(t_V_1_reg_132_reg[27]),
        .O(exitcond_i_fu_170_p2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry__1_i_3
       (.I0(t_V_1_reg_132_reg[26]),
        .I1(t_V_1_reg_132_reg[25]),
        .I2(t_V_1_reg_132_reg[24]),
        .O(exitcond_i_fu_170_p2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond_i_fu_170_p2_carry_i_1
       (.I0(t_V_1_reg_132_reg[10]),
        .I1(t_V_1_reg_132_reg[9]),
        .I2(t_V_1_reg_132_reg[11]),
        .O(exitcond_i_fu_170_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond_i_fu_170_p2_carry_i_2
       (.I0(t_V_1_reg_132_reg[6]),
        .I1(t_V_1_reg_132_reg[7]),
        .I2(t_V_1_reg_132_reg[8]),
        .O(exitcond_i_fu_170_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry_i_3
       (.I0(t_V_1_reg_132_reg[5]),
        .I1(t_V_1_reg_132_reg[4]),
        .I2(t_V_1_reg_132_reg[3]),
        .O(exitcond_i_fu_170_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond_i_fu_170_p2_carry_i_4
       (.I0(t_V_1_reg_132_reg[0]),
        .I1(t_V_1_reg_132_reg[2]),
        .I2(t_V_1_reg_132_reg[1]),
        .O(exitcond_i_fu_170_p2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hEECE4444)) 
    \exitcond_i_reg_235[0]_i_1 
       (.I0(Q[2]),
        .I1(\exitcond_i_reg_235_reg[0]_0 ),
        .I2(\exitcond_i_reg_235_reg[0]_1 ),
        .I3(img_0_data_stream_0_empty_n),
        .I4(ap_condition_pp0_exit_iter0_state3),
        .O(\exitcond_i_reg_235[0]_i_1_n_0 ));
  FDRE \exitcond_i_reg_235_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_i_reg_235[0]_i_1_n_0 ),
        .Q(\exitcond_i_reg_235_reg[0]_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_225[0]_i_1 
       (.I0(t_V_reg_121[0]),
        .O(i_V_fu_160_p2[0]));
  FDRE \i_V_reg_225_reg[0] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[0]),
        .Q(i_V_reg_225[0]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[10] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[10]),
        .Q(i_V_reg_225[10]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[11] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[11]),
        .Q(i_V_reg_225[11]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[12] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[12]),
        .Q(i_V_reg_225[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[12]_i_1 
       (.CI(\i_V_reg_225_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_225_reg[12]_i_1_n_0 ,\i_V_reg_225_reg[12]_i_1_n_1 ,\i_V_reg_225_reg[12]_i_1_n_2 ,\i_V_reg_225_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[12:9]),
        .S(t_V_reg_121[12:9]));
  FDRE \i_V_reg_225_reg[13] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[13]),
        .Q(i_V_reg_225[13]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[14] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[14]),
        .Q(i_V_reg_225[14]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[15] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[15]),
        .Q(i_V_reg_225[15]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[16] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[16]),
        .Q(i_V_reg_225[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[16]_i_1 
       (.CI(\i_V_reg_225_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_225_reg[16]_i_1_n_0 ,\i_V_reg_225_reg[16]_i_1_n_1 ,\i_V_reg_225_reg[16]_i_1_n_2 ,\i_V_reg_225_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[16:13]),
        .S(t_V_reg_121[16:13]));
  FDRE \i_V_reg_225_reg[17] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[17]),
        .Q(i_V_reg_225[17]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[18] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[18]),
        .Q(i_V_reg_225[18]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[19] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[19]),
        .Q(i_V_reg_225[19]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[1] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[1]),
        .Q(i_V_reg_225[1]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[20] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[20]),
        .Q(i_V_reg_225[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[20]_i_1 
       (.CI(\i_V_reg_225_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_225_reg[20]_i_1_n_0 ,\i_V_reg_225_reg[20]_i_1_n_1 ,\i_V_reg_225_reg[20]_i_1_n_2 ,\i_V_reg_225_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[20:17]),
        .S(t_V_reg_121[20:17]));
  FDRE \i_V_reg_225_reg[21] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[21]),
        .Q(i_V_reg_225[21]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[22] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[22]),
        .Q(i_V_reg_225[22]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[23] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[23]),
        .Q(i_V_reg_225[23]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[24] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[24]),
        .Q(i_V_reg_225[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[24]_i_1 
       (.CI(\i_V_reg_225_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_225_reg[24]_i_1_n_0 ,\i_V_reg_225_reg[24]_i_1_n_1 ,\i_V_reg_225_reg[24]_i_1_n_2 ,\i_V_reg_225_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[24:21]),
        .S(t_V_reg_121[24:21]));
  FDRE \i_V_reg_225_reg[25] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[25]),
        .Q(i_V_reg_225[25]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[26] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[26]),
        .Q(i_V_reg_225[26]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[27] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[27]),
        .Q(i_V_reg_225[27]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[28] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[28]),
        .Q(i_V_reg_225[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[28]_i_1 
       (.CI(\i_V_reg_225_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_225_reg[28]_i_1_n_0 ,\i_V_reg_225_reg[28]_i_1_n_1 ,\i_V_reg_225_reg[28]_i_1_n_2 ,\i_V_reg_225_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[28:25]),
        .S(t_V_reg_121[28:25]));
  FDRE \i_V_reg_225_reg[29] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[29]),
        .Q(i_V_reg_225[29]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[2] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[2]),
        .Q(i_V_reg_225[2]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[30] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[30]),
        .Q(i_V_reg_225[30]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[31] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[31]),
        .Q(i_V_reg_225[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[31]_i_1 
       (.CI(\i_V_reg_225_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_225_reg[31]_i_1_CO_UNCONNECTED [3:2],\i_V_reg_225_reg[31]_i_1_n_2 ,\i_V_reg_225_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_225_reg[31]_i_1_O_UNCONNECTED [3],i_V_fu_160_p2[31:29]}),
        .S({1'b0,t_V_reg_121[31:29]}));
  FDRE \i_V_reg_225_reg[3] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[3]),
        .Q(i_V_reg_225[3]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[4] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[4]),
        .Q(i_V_reg_225[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_225_reg[4]_i_1_n_0 ,\i_V_reg_225_reg[4]_i_1_n_1 ,\i_V_reg_225_reg[4]_i_1_n_2 ,\i_V_reg_225_reg[4]_i_1_n_3 }),
        .CYINIT(t_V_reg_121[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[4:1]),
        .S(t_V_reg_121[4:1]));
  FDRE \i_V_reg_225_reg[5] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[5]),
        .Q(i_V_reg_225[5]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[6] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[6]),
        .Q(i_V_reg_225[6]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[7] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[7]),
        .Q(i_V_reg_225[7]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[8] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[8]),
        .Q(i_V_reg_225[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_225_reg[8]_i_1 
       (.CI(\i_V_reg_225_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_225_reg[8]_i_1_n_0 ,\i_V_reg_225_reg[8]_i_1_n_1 ,\i_V_reg_225_reg[8]_i_1_n_2 ,\i_V_reg_225_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_160_p2[8:5]),
        .S(t_V_reg_121[8:5]));
  FDRE \i_V_reg_225_reg[9] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(i_V_fu_160_p2[9]),
        .Q(i_V_reg_225[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1__0
       (.I0(t_V_reg_121[23]),
        .I1(t_V_reg_121[22]),
        .I2(t_V_reg_121[21]),
        .O(i__carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2__0
       (.I0(t_V_reg_121[20]),
        .I1(t_V_reg_121[19]),
        .I2(t_V_reg_121[18]),
        .O(i__carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3__0
       (.I0(t_V_reg_121[17]),
        .I1(t_V_reg_121[16]),
        .I2(t_V_reg_121[15]),
        .O(i__carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4__0
       (.I0(t_V_reg_121[14]),
        .I1(t_V_reg_121[13]),
        .I2(t_V_reg_121[12]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__0
       (.I0(t_V_reg_121[30]),
        .I1(t_V_reg_121[31]),
        .O(i__carry__1_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2__0
       (.I0(t_V_reg_121[29]),
        .I1(t_V_reg_121[28]),
        .I2(t_V_reg_121[27]),
        .O(i__carry__1_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3__0
       (.I0(t_V_reg_121[26]),
        .I1(t_V_reg_121[25]),
        .I2(t_V_reg_121[24]),
        .O(i__carry__1_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1__0
       (.I0(t_V_reg_121[11]),
        .I1(t_V_reg_121[10]),
        .I2(t_V_reg_121[9]),
        .O(i__carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_2__0
       (.I0(t_V_reg_121[6]),
        .I1(t_V_reg_121[8]),
        .I2(t_V_reg_121[7]),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_3__0
       (.I0(t_V_reg_121[3]),
        .I1(t_V_reg_121[5]),
        .I2(t_V_reg_121[4]),
        .O(i__carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4__0
       (.I0(t_V_reg_121[0]),
        .I1(t_V_reg_121[2]),
        .I2(t_V_reg_121[1]),
        .O(i__carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2
       (.I0(mat2vector_U0_ap_start),
        .I1(CO),
        .I2(Q[1]),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    internal_full_n_i_2__0
       (.I0(Q[0]),
        .I1(img_0_rows_V_c4_empty_n),
        .I2(img_0_cols_V_c5_empty_n),
        .I3(mat2vector_U0_ap_start),
        .O(internal_full_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5575)) 
    \mOutPtr[1]_i_2__0 
       (.I0(Q[2]),
        .I1(\exitcond_i_reg_235_reg[0]_0 ),
        .I2(\exitcond_i_reg_235_reg[0]_1 ),
        .I3(img_0_data_stream_0_empty_n),
        .O(ap_enable_reg_pp0_iter0_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hC800)) 
    output_r_ce0_INST_0
       (.I0(img_0_data_stream_0_empty_n),
        .I1(\exitcond_i_reg_235_reg[0]_1 ),
        .I2(\exitcond_i_reg_235_reg[0]_0 ),
        .I3(Q[2]),
        .O(output_r_ce0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    output_r_we0_INST_0
       (.I0(img_0_data_stream_0_empty_n),
        .I1(\exitcond_i_reg_235_reg[0]_1 ),
        .I2(\exitcond_i_reg_235_reg[0]_0 ),
        .I3(Q[2]),
        .O(output_r_we0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    r_V_reg_230_reg
       (.A({i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19],i_V_reg_225[19:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_r_V_reg_230_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_r_V_reg_230_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_r_V_reg_230_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_r_V_reg_230_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_CS_fsm_state5),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_1_in),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_r_V_reg_230_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_r_V_reg_230_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_r_V_reg_230_reg_P_UNCONNECTED[47:19],r_V_reg_230_reg_n_87,r_V_reg_230_reg_n_88,r_V_reg_230_reg_n_89,r_V_reg_230_reg_n_90,r_V_reg_230_reg_n_91,r_V_reg_230_reg_n_92,r_V_reg_230_reg_n_93,r_V_reg_230_reg_n_94,r_V_reg_230_reg_n_95,r_V_reg_230_reg_n_96,r_V_reg_230_reg_n_97,r_V_reg_230_reg_n_98,r_V_reg_230_reg_n_99,r_V_reg_230_reg_n_100,r_V_reg_230_reg_n_101,r_V_reg_230_reg_n_102,r_V_reg_230_reg_n_103,r_V_reg_230_reg_n_104,r_V_reg_230_reg_n_105}),
        .PATTERNBDETECT(NLW_r_V_reg_230_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_r_V_reg_230_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_r_V_reg_230_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(t_V_reg_121_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_r_V_reg_230_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    r_V_reg_230_reg_i_1
       (.I0(Q[1]),
        .I1(CO),
        .O(p_1_in));
  CARRY4 sum_i_fu_185_p2_carry
       (.CI(1'b0),
        .CO({sum_i_fu_185_p2_carry_n_0,sum_i_fu_185_p2_carry_n_1,sum_i_fu_185_p2_carry_n_2,sum_i_fu_185_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(t_V_1_reg_132_reg[3:0]),
        .O(sum_i_fu_185_p2[3:0]),
        .S({sum_i_fu_185_p2_carry_i_1_n_0,sum_i_fu_185_p2_carry_i_2_n_0,sum_i_fu_185_p2_carry_i_3_n_0,sum_i_fu_185_p2_carry_i_4_n_0}));
  CARRY4 sum_i_fu_185_p2_carry__0
       (.CI(sum_i_fu_185_p2_carry_n_0),
        .CO({sum_i_fu_185_p2_carry__0_n_0,sum_i_fu_185_p2_carry__0_n_1,sum_i_fu_185_p2_carry__0_n_2,sum_i_fu_185_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t_V_1_reg_132_reg[7:4]),
        .O(sum_i_fu_185_p2[7:4]),
        .S({sum_i_fu_185_p2_carry__0_i_1_n_0,sum_i_fu_185_p2_carry__0_i_2_n_0,sum_i_fu_185_p2_carry__0_i_3_n_0,sum_i_fu_185_p2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__0_i_1
       (.I0(t_V_1_reg_132_reg[7]),
        .I1(r_V_reg_230_reg_n_98),
        .O(sum_i_fu_185_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__0_i_2
       (.I0(t_V_1_reg_132_reg[6]),
        .I1(r_V_reg_230_reg_n_99),
        .O(sum_i_fu_185_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__0_i_3
       (.I0(t_V_1_reg_132_reg[5]),
        .I1(r_V_reg_230_reg_n_100),
        .O(sum_i_fu_185_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__0_i_4
       (.I0(t_V_1_reg_132_reg[4]),
        .I1(r_V_reg_230_reg_n_101),
        .O(sum_i_fu_185_p2_carry__0_i_4_n_0));
  CARRY4 sum_i_fu_185_p2_carry__1
       (.CI(sum_i_fu_185_p2_carry__0_n_0),
        .CO({sum_i_fu_185_p2_carry__1_n_0,sum_i_fu_185_p2_carry__1_n_1,sum_i_fu_185_p2_carry__1_n_2,sum_i_fu_185_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(t_V_1_reg_132_reg[11:8]),
        .O(sum_i_fu_185_p2[11:8]),
        .S({sum_i_fu_185_p2_carry__1_i_1_n_0,sum_i_fu_185_p2_carry__1_i_2_n_0,sum_i_fu_185_p2_carry__1_i_3_n_0,sum_i_fu_185_p2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__1_i_1
       (.I0(t_V_1_reg_132_reg[11]),
        .I1(r_V_reg_230_reg_n_94),
        .O(sum_i_fu_185_p2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__1_i_2
       (.I0(t_V_1_reg_132_reg[10]),
        .I1(r_V_reg_230_reg_n_95),
        .O(sum_i_fu_185_p2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__1_i_3
       (.I0(t_V_1_reg_132_reg[9]),
        .I1(r_V_reg_230_reg_n_96),
        .O(sum_i_fu_185_p2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__1_i_4
       (.I0(t_V_1_reg_132_reg[8]),
        .I1(r_V_reg_230_reg_n_97),
        .O(sum_i_fu_185_p2_carry__1_i_4_n_0));
  CARRY4 sum_i_fu_185_p2_carry__2
       (.CI(sum_i_fu_185_p2_carry__1_n_0),
        .CO({sum_i_fu_185_p2_carry__2_n_0,sum_i_fu_185_p2_carry__2_n_1,sum_i_fu_185_p2_carry__2_n_2,sum_i_fu_185_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(t_V_1_reg_132_reg[15:12]),
        .O(sum_i_fu_185_p2[15:12]),
        .S({sum_i_fu_185_p2_carry__2_i_1_n_0,sum_i_fu_185_p2_carry__2_i_2_n_0,sum_i_fu_185_p2_carry__2_i_3_n_0,sum_i_fu_185_p2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__2_i_1
       (.I0(t_V_1_reg_132_reg[15]),
        .I1(r_V_reg_230_reg_n_90),
        .O(sum_i_fu_185_p2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__2_i_2
       (.I0(t_V_1_reg_132_reg[14]),
        .I1(r_V_reg_230_reg_n_91),
        .O(sum_i_fu_185_p2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__2_i_3
       (.I0(t_V_1_reg_132_reg[13]),
        .I1(r_V_reg_230_reg_n_92),
        .O(sum_i_fu_185_p2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__2_i_4
       (.I0(t_V_1_reg_132_reg[12]),
        .I1(r_V_reg_230_reg_n_93),
        .O(sum_i_fu_185_p2_carry__2_i_4_n_0));
  CARRY4 sum_i_fu_185_p2_carry__3
       (.CI(sum_i_fu_185_p2_carry__2_n_0),
        .CO({NLW_sum_i_fu_185_p2_carry__3_CO_UNCONNECTED[3:2],sum_i_fu_185_p2_carry__3_n_2,sum_i_fu_185_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,t_V_1_reg_132_reg[17:16]}),
        .O({NLW_sum_i_fu_185_p2_carry__3_O_UNCONNECTED[3],sum_i_fu_185_p2[18:16]}),
        .S({1'b0,sum_i_fu_185_p2_carry__3_i_1_n_0,sum_i_fu_185_p2_carry__3_i_2_n_0,sum_i_fu_185_p2_carry__3_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__3_i_1
       (.I0(t_V_1_reg_132_reg[18]),
        .I1(r_V_reg_230_reg_n_87),
        .O(sum_i_fu_185_p2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__3_i_2
       (.I0(t_V_1_reg_132_reg[17]),
        .I1(r_V_reg_230_reg_n_88),
        .O(sum_i_fu_185_p2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry__3_i_3
       (.I0(t_V_1_reg_132_reg[16]),
        .I1(r_V_reg_230_reg_n_89),
        .O(sum_i_fu_185_p2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry_i_1
       (.I0(t_V_1_reg_132_reg[3]),
        .I1(r_V_reg_230_reg_n_102),
        .O(sum_i_fu_185_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry_i_2
       (.I0(t_V_1_reg_132_reg[2]),
        .I1(r_V_reg_230_reg_n_103),
        .O(sum_i_fu_185_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry_i_3
       (.I0(t_V_1_reg_132_reg[1]),
        .I1(r_V_reg_230_reg_n_104),
        .O(sum_i_fu_185_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_i_fu_185_p2_carry_i_4
       (.I0(t_V_1_reg_132_reg[0]),
        .I1(r_V_reg_230_reg_n_105),
        .O(sum_i_fu_185_p2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h55450000)) 
    \sum_i_reg_244[18]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state3),
        .I1(img_0_data_stream_0_empty_n),
        .I2(\exitcond_i_reg_235_reg[0]_1 ),
        .I3(\exitcond_i_reg_235_reg[0]_0 ),
        .I4(Q[2]),
        .O(\sum_i_reg_244[18]_i_1_n_0 ));
  FDRE \sum_i_reg_244_reg[0] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[0]),
        .Q(output_r_address0[0]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[10] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[10]),
        .Q(output_r_address0[10]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[11] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[11]),
        .Q(output_r_address0[11]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[12] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[12]),
        .Q(output_r_address0[12]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[13] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[13]),
        .Q(output_r_address0[13]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[14] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[14]),
        .Q(output_r_address0[14]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[15] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[15]),
        .Q(output_r_address0[15]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[16] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[16]),
        .Q(output_r_address0[16]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[17] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[17]),
        .Q(output_r_address0[17]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[18] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[18]),
        .Q(output_r_address0[18]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[1] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[1]),
        .Q(output_r_address0[1]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[2] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[2]),
        .Q(output_r_address0[2]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[3] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[3]),
        .Q(output_r_address0[3]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[4] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[4]),
        .Q(output_r_address0[4]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[5] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[5]),
        .Q(output_r_address0[5]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[6] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[6]),
        .Q(output_r_address0[6]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[7] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[7]),
        .Q(output_r_address0[7]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[8] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[8]),
        .Q(output_r_address0[8]),
        .R(1'b0));
  FDRE \sum_i_reg_244_reg[9] 
       (.C(ap_clk),
        .CE(\sum_i_reg_244[18]_i_1_n_0 ),
        .D(sum_i_fu_185_p2[9]),
        .Q(output_r_address0[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \t_V_1_reg_132[0]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(t_V_1_reg_1320),
        .O(t_V_1_reg_132));
  LUT6 #(
    .INIT(64'h0000000088888088)) 
    \t_V_1_reg_132[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[2]),
        .I2(\exitcond_i_reg_235_reg[0]_0 ),
        .I3(\exitcond_i_reg_235_reg[0]_1 ),
        .I4(img_0_data_stream_0_empty_n),
        .I5(ap_condition_pp0_exit_iter0_state3),
        .O(t_V_1_reg_1320));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_132[0]_i_4 
       (.I0(t_V_1_reg_132_reg[0]),
        .O(\t_V_1_reg_132[0]_i_4_n_0 ));
  FDRE \t_V_1_reg_132_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[0]_i_3_n_7 ),
        .Q(t_V_1_reg_132_reg[0]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_1_reg_132_reg[0]_i_3_n_0 ,\t_V_1_reg_132_reg[0]_i_3_n_1 ,\t_V_1_reg_132_reg[0]_i_3_n_2 ,\t_V_1_reg_132_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_1_reg_132_reg[0]_i_3_n_4 ,\t_V_1_reg_132_reg[0]_i_3_n_5 ,\t_V_1_reg_132_reg[0]_i_3_n_6 ,\t_V_1_reg_132_reg[0]_i_3_n_7 }),
        .S({t_V_1_reg_132_reg[3:1],\t_V_1_reg_132[0]_i_4_n_0 }));
  FDRE \t_V_1_reg_132_reg[10] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[8]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[10]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[11] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[8]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[11]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[12] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[12]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[12]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[12]_i_1 
       (.CI(\t_V_1_reg_132_reg[8]_i_1_n_0 ),
        .CO({\t_V_1_reg_132_reg[12]_i_1_n_0 ,\t_V_1_reg_132_reg[12]_i_1_n_1 ,\t_V_1_reg_132_reg[12]_i_1_n_2 ,\t_V_1_reg_132_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[12]_i_1_n_4 ,\t_V_1_reg_132_reg[12]_i_1_n_5 ,\t_V_1_reg_132_reg[12]_i_1_n_6 ,\t_V_1_reg_132_reg[12]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[15:12]));
  FDRE \t_V_1_reg_132_reg[13] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[12]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[13]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[14] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[12]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[14]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[15] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[12]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[15]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[16] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[16]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[16]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[16]_i_1 
       (.CI(\t_V_1_reg_132_reg[12]_i_1_n_0 ),
        .CO({\t_V_1_reg_132_reg[16]_i_1_n_0 ,\t_V_1_reg_132_reg[16]_i_1_n_1 ,\t_V_1_reg_132_reg[16]_i_1_n_2 ,\t_V_1_reg_132_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[16]_i_1_n_4 ,\t_V_1_reg_132_reg[16]_i_1_n_5 ,\t_V_1_reg_132_reg[16]_i_1_n_6 ,\t_V_1_reg_132_reg[16]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[19:16]));
  FDRE \t_V_1_reg_132_reg[17] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[16]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[17]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[18] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[16]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[18]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[19] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[16]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[19]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[0]_i_3_n_6 ),
        .Q(t_V_1_reg_132_reg[1]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[20] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[20]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[20]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[20]_i_1 
       (.CI(\t_V_1_reg_132_reg[16]_i_1_n_0 ),
        .CO({\t_V_1_reg_132_reg[20]_i_1_n_0 ,\t_V_1_reg_132_reg[20]_i_1_n_1 ,\t_V_1_reg_132_reg[20]_i_1_n_2 ,\t_V_1_reg_132_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[20]_i_1_n_4 ,\t_V_1_reg_132_reg[20]_i_1_n_5 ,\t_V_1_reg_132_reg[20]_i_1_n_6 ,\t_V_1_reg_132_reg[20]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[23:20]));
  FDRE \t_V_1_reg_132_reg[21] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[20]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[21]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[22] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[20]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[22]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[23] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[20]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[23]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[24] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[24]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[24]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[24]_i_1 
       (.CI(\t_V_1_reg_132_reg[20]_i_1_n_0 ),
        .CO({\t_V_1_reg_132_reg[24]_i_1_n_0 ,\t_V_1_reg_132_reg[24]_i_1_n_1 ,\t_V_1_reg_132_reg[24]_i_1_n_2 ,\t_V_1_reg_132_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[24]_i_1_n_4 ,\t_V_1_reg_132_reg[24]_i_1_n_5 ,\t_V_1_reg_132_reg[24]_i_1_n_6 ,\t_V_1_reg_132_reg[24]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[27:24]));
  FDRE \t_V_1_reg_132_reg[25] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[24]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[25]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[26] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[24]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[26]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[27] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[24]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[27]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[28] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[28]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[28]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[28]_i_1 
       (.CI(\t_V_1_reg_132_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_1_reg_132_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_1_reg_132_reg[28]_i_1_n_1 ,\t_V_1_reg_132_reg[28]_i_1_n_2 ,\t_V_1_reg_132_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[28]_i_1_n_4 ,\t_V_1_reg_132_reg[28]_i_1_n_5 ,\t_V_1_reg_132_reg[28]_i_1_n_6 ,\t_V_1_reg_132_reg[28]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[31:28]));
  FDRE \t_V_1_reg_132_reg[29] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[28]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[29]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[0]_i_3_n_5 ),
        .Q(t_V_1_reg_132_reg[2]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[30] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[28]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[30]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[31] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[28]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[31]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[0]_i_3_n_4 ),
        .Q(t_V_1_reg_132_reg[3]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[4]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[4]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[4]_i_1 
       (.CI(\t_V_1_reg_132_reg[0]_i_3_n_0 ),
        .CO({\t_V_1_reg_132_reg[4]_i_1_n_0 ,\t_V_1_reg_132_reg[4]_i_1_n_1 ,\t_V_1_reg_132_reg[4]_i_1_n_2 ,\t_V_1_reg_132_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[4]_i_1_n_4 ,\t_V_1_reg_132_reg[4]_i_1_n_5 ,\t_V_1_reg_132_reg[4]_i_1_n_6 ,\t_V_1_reg_132_reg[4]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[7:4]));
  FDRE \t_V_1_reg_132_reg[5] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[4]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[5]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[6] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[4]_i_1_n_5 ),
        .Q(t_V_1_reg_132_reg[6]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[7] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[4]_i_1_n_4 ),
        .Q(t_V_1_reg_132_reg[7]),
        .R(t_V_1_reg_132));
  FDRE \t_V_1_reg_132_reg[8] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[8]_i_1_n_7 ),
        .Q(t_V_1_reg_132_reg[8]),
        .R(t_V_1_reg_132));
  CARRY4 \t_V_1_reg_132_reg[8]_i_1 
       (.CI(\t_V_1_reg_132_reg[4]_i_1_n_0 ),
        .CO({\t_V_1_reg_132_reg[8]_i_1_n_0 ,\t_V_1_reg_132_reg[8]_i_1_n_1 ,\t_V_1_reg_132_reg[8]_i_1_n_2 ,\t_V_1_reg_132_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_1_reg_132_reg[8]_i_1_n_4 ,\t_V_1_reg_132_reg[8]_i_1_n_5 ,\t_V_1_reg_132_reg[8]_i_1_n_6 ,\t_V_1_reg_132_reg[8]_i_1_n_7 }),
        .S(t_V_1_reg_132_reg[11:8]));
  FDRE \t_V_1_reg_132_reg[9] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1320),
        .D(\t_V_1_reg_132_reg[8]_i_1_n_6 ),
        .Q(t_V_1_reg_132_reg[9]),
        .R(t_V_1_reg_132));
  LUT5 #(
    .INIT(32'h00008000)) 
    \t_V_reg_121[31]_i_1 
       (.I0(mat2vector_U0_ap_start),
        .I1(img_0_cols_V_c5_empty_n),
        .I2(img_0_rows_V_c4_empty_n),
        .I3(Q[0]),
        .I4(ap_CS_fsm_state5),
        .O(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[0]),
        .Q(t_V_reg_121[0]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[10]),
        .Q(t_V_reg_121[10]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[11]),
        .Q(t_V_reg_121[11]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[12]),
        .Q(t_V_reg_121[12]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[13]),
        .Q(t_V_reg_121[13]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[14]),
        .Q(t_V_reg_121[14]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[15]),
        .Q(t_V_reg_121[15]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[16]),
        .Q(t_V_reg_121[16]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[17]),
        .Q(t_V_reg_121[17]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[18]),
        .Q(t_V_reg_121[18]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[19]),
        .Q(t_V_reg_121[19]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[1]),
        .Q(t_V_reg_121[1]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[20]),
        .Q(t_V_reg_121[20]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[21]),
        .Q(t_V_reg_121[21]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[22]),
        .Q(t_V_reg_121[22]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[23]),
        .Q(t_V_reg_121[23]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[24]),
        .Q(t_V_reg_121[24]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[25]),
        .Q(t_V_reg_121[25]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[26]),
        .Q(t_V_reg_121[26]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[27]),
        .Q(t_V_reg_121[27]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[28]),
        .Q(t_V_reg_121[28]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[29]),
        .Q(t_V_reg_121[29]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[2]),
        .Q(t_V_reg_121[2]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[30]),
        .Q(t_V_reg_121[30]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[31]),
        .Q(t_V_reg_121[31]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[3]),
        .Q(t_V_reg_121[3]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[4]),
        .Q(t_V_reg_121[4]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[5]),
        .Q(t_V_reg_121[5]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[6]),
        .Q(t_V_reg_121[6]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[7]),
        .Q(t_V_reg_121[7]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[8]),
        .Q(t_V_reg_121[8]),
        .R(t_V_reg_121_0));
  FDRE \t_V_reg_121_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[9]),
        .Q(t_V_reg_121[9]),
        .R(t_V_reg_121_0));
endmodule

(* ORIG_REF_NAME = "start_for_mat2veccud" *) 
module m3_for_arty_a7_axis2ram_0_0_start_for_mat2veccud
   (start_for_mat2vector_U0_full_n,
    mat2vector_U0_ap_start,
    E,
    ap_idle,
    ap_clk,
    internal_empty_n_reg_0,
    ap_rst_n,
    ap_start,
    start_once_reg,
    img_0_cols_V_c5_empty_n,
    img_0_rows_V_c4_empty_n,
    Q,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[0]_0 ,
    CO,
    start_once_reg_reg,
    ap_rst_n_inv);
  output start_for_mat2vector_U0_full_n;
  output mat2vector_U0_ap_start;
  output [0:0]E;
  output ap_idle;
  input ap_clk;
  input internal_empty_n_reg_0;
  input ap_rst_n;
  input ap_start;
  input start_once_reg;
  input img_0_cols_V_c5_empty_n;
  input img_0_rows_V_c4_empty_n;
  input [1:0]Q;
  input \ap_CS_fsm_reg[0] ;
  input [0:0]\ap_CS_fsm_reg[0]_0 ;
  input [0:0]CO;
  input start_once_reg_reg;
  input ap_rst_n_inv;

  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[0]_0 ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire img_0_cols_V_c5_empty_n;
  wire img_0_rows_V_c4_empty_n;
  wire internal_empty_n_i_1_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire mat2vector_U0_ap_start;
  wire start_for_mat2vector_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_reg;

  LUT4 #(
    .INIT(16'h0040)) 
    ap_idle_INST_0
       (.I0(mat2vector_U0_ap_start),
        .I1(Q[0]),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(internal_empty_n_reg_0),
        .I3(\mOutPtr[1]_i_2_n_0 ),
        .I4(mat2vector_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_0),
        .Q(mat2vector_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(start_for_mat2vector_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(\mOutPtr[1]_i_2_n_0 ),
        .I5(internal_empty_n_reg_0),
        .O(internal_full_n_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_0),
        .Q(start_for_mat2vector_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1EEEEEEEE1111111)) 
    \mOutPtr[0]_i_1 
       (.I0(start_once_reg),
        .I1(start_once_reg_reg),
        .I2(mat2vector_U0_ap_start),
        .I3(CO),
        .I4(Q[1]),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mOutPtr[1]_i_1 
       (.I0(mat2vector_U0_ap_start),
        .I1(img_0_cols_V_c5_empty_n),
        .I2(img_0_rows_V_c4_empty_n),
        .I3(Q[0]),
        .I4(\ap_CS_fsm_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hD555BFFF2AAA4000)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(CO),
        .I3(mat2vector_U0_ap_start),
        .I4(\mOutPtr[1]_i_2_n_0 ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \mOutPtr[1]_i_2 
       (.I0(ap_start),
        .I1(start_for_mat2vector_U0_full_n),
        .I2(start_once_reg),
        .O(\mOutPtr[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
