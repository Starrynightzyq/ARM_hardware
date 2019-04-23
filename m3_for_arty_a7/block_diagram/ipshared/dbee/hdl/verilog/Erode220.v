// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Erode220 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_rows_V,
        p_src_cols_V,
        p_src_data_stream_V_dout,
        p_src_data_stream_V_empty_n,
        p_src_data_stream_V_read,
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state9 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_src_rows_V;
input  [31:0] p_src_cols_V;
input  [7:0] p_src_data_stream_V_dout;
input   p_src_data_stream_V_empty_n;
output   p_src_data_stream_V_read;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_V_read;
reg p_dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] or_cond_i425_i_i_reg_1100;
reg   [0:0] or_cond_i425_i_i_reg_1100_pp0_iter1_reg;
reg   [0:0] icmp_reg_1056;
reg   [0:0] tmp_41_reg_1047;
reg    p_dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter5;
reg   [0:0] or_cond_i_i_reg_1117;
reg   [0:0] or_cond_i_i_reg_1117_pp0_iter4_reg;
reg   [31:0] t_V_6_reg_269;
reg    ap_block_state1;
wire   [31:0] tmp_s_fu_280_p2;
wire   [31:0] tmp_39_fu_286_p2;
wire   [31:0] tmp_40_fu_292_p2;
wire   [31:0] p_neg393_i_i_fu_298_p2;
wire   [0:0] exitcond389_i_i_fu_304_p2;
wire    ap_CS_fsm_state2;
wire   [31:0] i_V_fu_309_p2;
reg   [31:0] i_V_reg_1042;
wire   [0:0] tmp_41_fu_315_p2;
wire   [0:0] tmp_442_not_fu_320_p2;
reg   [0:0] tmp_442_not_reg_1051;
wire   [0:0] icmp_fu_336_p2;
wire   [0:0] tmp_48_fu_342_p2;
reg   [0:0] tmp_48_reg_1061;
wire   [0:0] tmp_472_2_fu_348_p2;
reg   [0:0] tmp_472_2_reg_1065;
wire   [0:0] tmp_49_fu_354_p2;
reg   [0:0] tmp_49_reg_1069;
wire   [1:0] tmp_96_fu_510_p1;
reg   [1:0] tmp_96_reg_1076;
wire   [1:0] tmp_97_fu_527_p1;
reg   [1:0] tmp_97_reg_1081;
wire   [1:0] tmp_98_fu_544_p1;
reg   [1:0] tmp_98_reg_1086;
wire   [0:0] exitcond388_i_i_fu_548_p2;
reg   [0:0] exitcond388_i_i_reg_1091;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_predicate_op128_read_state5;
reg    ap_predicate_op136_read_state5;
reg    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_state8_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond388_i_i_reg_1091_pp0_iter1_reg;
reg   [0:0] exitcond388_i_i_reg_1091_pp0_iter2_reg;
reg   [0:0] exitcond388_i_i_reg_1091_pp0_iter3_reg;
wire   [31:0] j_V_fu_553_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] or_cond_i425_i_i_fu_600_p2;
wire   [31:0] x_fu_621_p3;
reg   [31:0] x_reg_1104;
wire   [0:0] brmerge_fu_629_p2;
reg   [0:0] brmerge_reg_1110;
reg   [0:0] brmerge_reg_1110_pp0_iter1_reg;
wire   [0:0] or_cond_i_i_fu_634_p2;
reg   [0:0] or_cond_i_i_reg_1117_pp0_iter1_reg;
reg   [0:0] or_cond_i_i_reg_1117_pp0_iter2_reg;
reg   [0:0] or_cond_i_i_reg_1117_pp0_iter3_reg;
reg   [9:0] k_buf_0_val_3_addr_reg_1121;
wire   [1:0] tmp_102_fu_649_p1;
reg   [1:0] tmp_102_reg_1127;
reg   [9:0] k_buf_0_val_4_addr_reg_1134;
reg   [9:0] k_buf_0_val_5_addr_reg_1140;
wire   [7:0] src_kernel_win_0_va_40_fu_742_p3;
reg   [7:0] src_kernel_win_0_va_40_reg_1146;
reg   [7:0] src_kernel_win_0_va_40_reg_1146_pp0_iter3_reg;
reg   [7:0] src_kernel_win_0_va_40_reg_1146_pp0_iter4_reg;
wire   [7:0] src_kernel_win_0_va_41_fu_760_p3;
reg   [7:0] src_kernel_win_0_va_41_reg_1153;
reg   [7:0] src_kernel_win_0_va_41_reg_1153_pp0_iter3_reg;
wire   [7:0] src_kernel_win_0_va_42_fu_778_p3;
reg   [7:0] src_kernel_win_0_va_42_reg_1160;
wire   [7:0] temp_0_i_i_i_059_i_s_fu_797_p3;
reg   [7:0] temp_0_i_i_i_059_i_s_reg_1166;
wire   [7:0] temp_0_i_i_i_059_i_9_fu_854_p3;
reg   [7:0] temp_0_i_i_i_059_i_9_reg_1172;
wire   [7:0] temp_0_i_i_i_059_i_2_fu_910_p3;
reg   [7:0] temp_0_i_i_i_059_i_2_reg_1178;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
wire   [9:0] k_buf_0_val_3_address0;
reg    k_buf_0_val_3_ce0;
wire   [7:0] k_buf_0_val_3_q0;
reg    k_buf_0_val_3_ce1;
reg    k_buf_0_val_3_we1;
wire   [9:0] k_buf_0_val_4_address0;
reg    k_buf_0_val_4_ce0;
wire   [7:0] k_buf_0_val_4_q0;
reg    k_buf_0_val_4_ce1;
reg    k_buf_0_val_4_we1;
reg   [7:0] k_buf_0_val_4_d1;
wire   [9:0] k_buf_0_val_5_address0;
reg    k_buf_0_val_5_ce0;
wire   [7:0] k_buf_0_val_5_q0;
reg    k_buf_0_val_5_ce1;
reg    k_buf_0_val_5_we1;
reg   [7:0] k_buf_0_val_5_d1;
reg   [31:0] t_V_reg_258;
wire    ap_CS_fsm_state9;
wire   [63:0] tmp_55_fu_643_p1;
reg    ap_block_pp0_stage0_01001;
reg   [7:0] src_kernel_win_0_va_fu_132;
reg   [7:0] src_kernel_win_0_va_35_fu_136;
reg   [7:0] src_kernel_win_0_va_36_fu_140;
reg   [7:0] src_kernel_win_0_va_37_fu_144;
reg   [7:0] src_kernel_win_0_va_38_fu_148;
reg   [7:0] src_kernel_win_0_va_39_fu_152;
reg   [7:0] right_border_buf_0_s_fu_156;
wire   [7:0] col_buf_0_val_0_0_fu_673_p3;
reg   [7:0] right_border_buf_0_20_fu_160;
wire   [7:0] col_buf_0_val_2_0_fu_709_p3;
reg   [7:0] right_border_buf_0_21_fu_164;
wire   [7:0] col_buf_0_val_1_0_fu_691_p3;
wire   [30:0] tmp_89_fu_326_p4;
wire   [31:0] tmp_50_fu_359_p2;
wire   [0:0] tmp_90_fu_365_p3;
wire   [0:0] tmp_52_fu_379_p2;
wire   [0:0] rev_fu_373_p2;
wire   [0:0] tmp_91_fu_390_p3;
wire   [31:0] p_assign_12_1_fu_405_p2;
wire   [0:0] tmp_92_fu_411_p3;
wire   [0:0] tmp_499_1_fu_425_p2;
wire   [0:0] rev7_fu_419_p2;
wire   [0:0] tmp_93_fu_436_p3;
wire   [31:0] p_assign_12_2_fu_451_p2;
wire   [0:0] tmp_94_fu_457_p3;
wire   [0:0] tmp_499_2_fu_471_p2;
wire   [0:0] rev8_fu_465_p2;
wire   [0:0] tmp_95_fu_482_p3;
wire   [0:0] or_cond_i_i_i_fu_384_p2;
wire   [31:0] p_assign_s_fu_398_p3;
wire   [31:0] y_2_fu_497_p3;
wire   [31:0] row_assign_s_fu_505_p2;
wire   [0:0] or_cond_i_i_i_1_fu_430_p2;
wire   [31:0] p_assign_13_1_fu_444_p3;
wire   [31:0] y_2_1_fu_514_p3;
wire   [31:0] row_assign_13_1_fu_522_p2;
wire   [0:0] or_cond_i_i_i_2_fu_476_p2;
wire   [31:0] p_assign_13_2_fu_490_p3;
wire   [31:0] y_2_2_fu_531_p3;
wire   [31:0] row_assign_13_2_fu_539_p2;
wire   [30:0] tmp_99_fu_559_p4;
wire   [31:0] ImagLoc_x_fu_575_p2;
wire   [0:0] tmp_100_fu_581_p3;
wire   [0:0] tmp_44_fu_595_p2;
wire   [0:0] rev9_fu_589_p2;
wire   [0:0] tmp_101_fu_606_p3;
wire   [31:0] p_assign_2_fu_614_p3;
wire   [0:0] icmp3_fu_569_p2;
wire   [31:0] col_assign_2_fu_639_p2;
wire   [7:0] tmp_58_fu_662_p5;
wire   [7:0] tmp_59_fu_680_p5;
wire   [7:0] tmp_60_fu_698_p5;
wire   [7:0] tmp_61_fu_731_p5;
wire   [7:0] tmp_62_fu_749_p5;
wire   [7:0] tmp_63_fu_767_p5;
wire   [0:0] tmp_518_0_1_fu_791_p2;
wire   [0:0] tmp_518_0_2_fu_824_p2;
wire   [7:0] temp_0_i_i_i_059_i_7_fu_828_p3;
wire   [0:0] tmp_518_1_fu_834_p2;
wire   [7:0] temp_0_i_i_i_059_i_8_fu_840_p3;
wire   [0:0] tmp_518_1_1_fu_848_p2;
wire   [0:0] tmp_518_1_2_fu_880_p2;
wire   [7:0] temp_0_i_i_i_059_i_3_fu_884_p3;
wire   [0:0] tmp_518_2_fu_890_p2;
wire   [7:0] temp_0_i_i_i_059_i_1_fu_896_p3;
wire   [0:0] tmp_518_2_1_fu_904_p2;
wire   [0:0] tmp_518_2_2_fu_930_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_339;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

Filter2D_k_buf_0_bkb #(
    .DataWidth( 8 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
k_buf_0_val_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_3_address0),
    .ce0(k_buf_0_val_3_ce0),
    .q0(k_buf_0_val_3_q0),
    .address1(k_buf_0_val_3_addr_reg_1121),
    .ce1(k_buf_0_val_3_ce1),
    .we1(k_buf_0_val_3_we1),
    .d1(p_src_data_stream_V_dout)
);

Filter2D_k_buf_0_bkb #(
    .DataWidth( 8 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
k_buf_0_val_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_4_address0),
    .ce0(k_buf_0_val_4_ce0),
    .q0(k_buf_0_val_4_q0),
    .address1(k_buf_0_val_4_addr_reg_1134),
    .ce1(k_buf_0_val_4_ce1),
    .we1(k_buf_0_val_4_we1),
    .d1(k_buf_0_val_4_d1)
);

Filter2D_k_buf_0_bkb #(
    .DataWidth( 8 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
k_buf_0_val_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_5_address0),
    .ce0(k_buf_0_val_5_ce0),
    .q0(k_buf_0_val_5_q0),
    .address1(k_buf_0_val_5_addr_reg_1140),
    .ce1(k_buf_0_val_5_ce1),
    .we1(k_buf_0_val_5_we1),
    .d1(k_buf_0_val_5_d1)
);

threshold2_mux_32kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
threshold2_mux_32kbM_U124(
    .din0(right_border_buf_0_s_fu_156),
    .din1(8'd0),
    .din2(8'd0),
    .din3(tmp_102_reg_1127),
    .dout(tmp_58_fu_662_p5)
);

threshold2_mux_32kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
threshold2_mux_32kbM_U125(
    .din0(right_border_buf_0_21_fu_164),
    .din1(8'd0),
    .din2(8'd0),
    .din3(tmp_102_reg_1127),
    .dout(tmp_59_fu_680_p5)
);

threshold2_mux_32kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
threshold2_mux_32kbM_U126(
    .din0(right_border_buf_0_20_fu_160),
    .din1(8'd0),
    .din2(8'd0),
    .din3(tmp_102_reg_1127),
    .dout(tmp_60_fu_698_p5)
);

threshold2_mux_32kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
threshold2_mux_32kbM_U127(
    .din0(col_buf_0_val_0_0_fu_673_p3),
    .din1(col_buf_0_val_1_0_fu_691_p3),
    .din2(col_buf_0_val_2_0_fu_709_p3),
    .din3(tmp_96_reg_1076),
    .dout(tmp_61_fu_731_p5)
);

threshold2_mux_32kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
threshold2_mux_32kbM_U128(
    .din0(col_buf_0_val_0_0_fu_673_p3),
    .din1(col_buf_0_val_1_0_fu_691_p3),
    .din2(col_buf_0_val_2_0_fu_709_p3),
    .din3(tmp_97_reg_1081),
    .dout(tmp_62_fu_749_p5)
);

threshold2_mux_32kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
threshold2_mux_32kbM_U129(
    .din0(col_buf_0_val_0_0_fu_673_p3),
    .din1(col_buf_0_val_1_0_fu_691_p3),
    .din2(col_buf_0_val_2_0_fu_709_p3),
    .din3(tmp_98_reg_1086),
    .dout(tmp_63_fu_767_p5)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond389_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond389_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((exitcond389_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_i_fu_548_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_6_reg_269 <= j_V_fu_553_p2;
    end else if (((exitcond389_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_6_reg_269 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        t_V_reg_258 <= i_V_reg_1042;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_258 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_i_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        brmerge_reg_1110 <= brmerge_fu_629_p2;
        or_cond_i425_i_i_reg_1100 <= or_cond_i425_i_i_fu_600_p2;
        or_cond_i_i_reg_1117 <= or_cond_i_i_fu_634_p2;
        x_reg_1104 <= x_fu_621_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        brmerge_reg_1110_pp0_iter1_reg <= brmerge_reg_1110;
        exitcond388_i_i_reg_1091 <= exitcond388_i_i_fu_548_p2;
        exitcond388_i_i_reg_1091_pp0_iter1_reg <= exitcond388_i_i_reg_1091;
        k_buf_0_val_3_addr_reg_1121 <= tmp_55_fu_643_p1;
        k_buf_0_val_4_addr_reg_1134 <= tmp_55_fu_643_p1;
        k_buf_0_val_5_addr_reg_1140 <= tmp_55_fu_643_p1;
        or_cond_i425_i_i_reg_1100_pp0_iter1_reg <= or_cond_i425_i_i_reg_1100;
        or_cond_i_i_reg_1117_pp0_iter1_reg <= or_cond_i_i_reg_1117;
        tmp_102_reg_1127 <= tmp_102_fu_649_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        exitcond388_i_i_reg_1091_pp0_iter2_reg <= exitcond388_i_i_reg_1091_pp0_iter1_reg;
        exitcond388_i_i_reg_1091_pp0_iter3_reg <= exitcond388_i_i_reg_1091_pp0_iter2_reg;
        or_cond_i_i_reg_1117_pp0_iter2_reg <= or_cond_i_i_reg_1117_pp0_iter1_reg;
        or_cond_i_i_reg_1117_pp0_iter3_reg <= or_cond_i_i_reg_1117_pp0_iter2_reg;
        or_cond_i_i_reg_1117_pp0_iter4_reg <= or_cond_i_i_reg_1117_pp0_iter3_reg;
        src_kernel_win_0_va_40_reg_1146 <= src_kernel_win_0_va_40_fu_742_p3;
        src_kernel_win_0_va_40_reg_1146_pp0_iter3_reg <= src_kernel_win_0_va_40_reg_1146;
        src_kernel_win_0_va_40_reg_1146_pp0_iter4_reg <= src_kernel_win_0_va_40_reg_1146_pp0_iter3_reg;
        src_kernel_win_0_va_41_reg_1153 <= src_kernel_win_0_va_41_fu_760_p3;
        src_kernel_win_0_va_41_reg_1153_pp0_iter3_reg <= src_kernel_win_0_va_41_reg_1153;
        src_kernel_win_0_va_42_reg_1160 <= src_kernel_win_0_va_42_fu_778_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_1042 <= i_V_fu_309_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond389_i_i_fu_304_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_reg_1056 <= icmp_fu_336_p2;
        tmp_41_reg_1047 <= tmp_41_fu_315_p2;
        tmp_442_not_reg_1051 <= tmp_442_not_fu_320_p2;
        tmp_472_2_reg_1065 <= tmp_472_2_fu_348_p2;
        tmp_48_reg_1061 <= tmp_48_fu_342_p2;
        tmp_49_reg_1069 <= tmp_49_fu_354_p2;
        tmp_96_reg_1076 <= tmp_96_fu_510_p1;
        tmp_97_reg_1081 <= tmp_97_fu_527_p1;
        tmp_98_reg_1086 <= tmp_98_fu_544_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        right_border_buf_0_20_fu_160 <= col_buf_0_val_2_0_fu_709_p3;
        right_border_buf_0_21_fu_164 <= col_buf_0_val_1_0_fu_691_p3;
        right_border_buf_0_s_fu_156 <= col_buf_0_val_0_0_fu_673_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_i_reg_1091_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_kernel_win_0_va_35_fu_136 <= src_kernel_win_0_va_fu_132;
        src_kernel_win_0_va_fu_132 <= src_kernel_win_0_va_40_reg_1146_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_i_reg_1091_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_kernel_win_0_va_36_fu_140 <= src_kernel_win_0_va_41_reg_1153;
        src_kernel_win_0_va_37_fu_144 <= src_kernel_win_0_va_36_fu_140;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_i_reg_1091_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_kernel_win_0_va_38_fu_148 <= src_kernel_win_0_va_42_fu_778_p3;
        src_kernel_win_0_va_39_fu_152 <= src_kernel_win_0_va_38_fu_148;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_i_i_reg_1117_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp_0_i_i_i_059_i_2_reg_1178 <= temp_0_i_i_i_059_i_2_fu_910_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_i_i_reg_1117_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp_0_i_i_i_059_i_9_reg_1172 <= temp_0_i_i_i_059_i_9_fu_854_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_i_i_reg_1117_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp_0_i_i_i_059_i_s_reg_1166 <= temp_0_i_i_i_059_i_s_fu_797_p3;
    end
end

always @ (*) begin
    if ((exitcond388_i_i_fu_548_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond389_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond389_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_3_ce0 = 1'b1;
    end else begin
        k_buf_0_val_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_reg_1056 == 1'd0) & (tmp_472_2_reg_1065 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_3_ce1 = 1'b1;
    end else begin
        k_buf_0_val_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_reg_1056 == 1'd0) & (tmp_472_2_reg_1065 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_3_we1 = 1'b1;
    end else begin
        k_buf_0_val_3_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_4_ce0 = 1'b1;
    end else begin
        k_buf_0_val_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_reg_1056 == 1'd0) & (tmp_48_reg_1061 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_4_ce1 = 1'b1;
    end else begin
        k_buf_0_val_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op136_read_state5 == 1'b1)) begin
            k_buf_0_val_4_d1 = k_buf_0_val_3_q0;
        end else if ((1'b1 == ap_condition_339)) begin
            k_buf_0_val_4_d1 = p_src_data_stream_V_dout;
        end else begin
            k_buf_0_val_4_d1 = 'bx;
        end
    end else begin
        k_buf_0_val_4_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_reg_1056 == 1'd0) & (tmp_48_reg_1061 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_4_we1 = 1'b1;
    end else begin
        k_buf_0_val_4_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_5_ce0 = 1'b1;
    end else begin
        k_buf_0_val_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_reg_1056 == 1'd0) & (tmp_48_reg_1061 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_5_ce1 = 1'b1;
    end else begin
        k_buf_0_val_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op136_read_state5 == 1'b1)) begin
            k_buf_0_val_5_d1 = k_buf_0_val_4_q0;
        end else if ((1'b1 == ap_condition_339)) begin
            k_buf_0_val_5_d1 = p_src_data_stream_V_dout;
        end else begin
            k_buf_0_val_5_d1 = 'bx;
        end
    end else begin
        k_buf_0_val_5_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_reg_1056 == 1'd0) & (tmp_48_reg_1061 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_5_we1 = 1'b1;
    end else begin
        k_buf_0_val_5_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_i_i_reg_1117_pp0_iter4_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        p_dst_data_stream_V_blk_n = p_dst_data_stream_V_full_n;
    end else begin
        p_dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_cond_i_i_reg_1117_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_V_write = 1'b1;
    end else begin
        p_dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_41_reg_1047 == 1'd1) & (icmp_reg_1056 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_reg_1056 == 1'd0) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        p_src_data_stream_V_blk_n = p_src_data_stream_V_empty_n;
    end else begin
        p_src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op136_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op128_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        p_src_data_stream_V_read = 1'b1;
    end else begin
        p_src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond389_i_i_fu_304_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond388_i_i_fu_548_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((exitcond388_i_i_fu_548_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ImagLoc_x_fu_575_p2 = ($signed(32'd4294967295) + $signed(t_V_6_reg_269));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((or_cond_i_i_reg_1117_pp0_iter4_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op136_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op128_read_state5 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((or_cond_i_i_reg_1117_pp0_iter4_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op136_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op128_read_state5 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((or_cond_i_i_reg_1117_pp0_iter4_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op136_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op128_read_state5 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op136_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op128_read_state5 == 1'b1)));
end

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_pp0_stage0_iter5 = ((or_cond_i_i_reg_1117_pp0_iter4_reg == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_339 = ((icmp_reg_1056 == 1'd0) & (tmp_48_reg_1061 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_op128_read_state5 = ((icmp_reg_1056 == 1'd0) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op136_read_state5 = ((tmp_41_reg_1047 == 1'd1) & (icmp_reg_1056 == 1'd1) & (or_cond_i425_i_i_reg_1100_pp0_iter1_reg == 1'd1));
end

assign brmerge_fu_629_p2 = (tmp_44_fu_595_p2 | tmp_442_not_reg_1051);

assign col_assign_2_fu_639_p2 = (tmp_40_fu_292_p2 - x_reg_1104);

assign col_buf_0_val_0_0_fu_673_p3 = ((brmerge_reg_1110_pp0_iter1_reg[0:0] === 1'b1) ? k_buf_0_val_3_q0 : tmp_58_fu_662_p5);

assign col_buf_0_val_1_0_fu_691_p3 = ((brmerge_reg_1110_pp0_iter1_reg[0:0] === 1'b1) ? k_buf_0_val_4_q0 : tmp_59_fu_680_p5);

assign col_buf_0_val_2_0_fu_709_p3 = ((brmerge_reg_1110_pp0_iter1_reg[0:0] === 1'b1) ? k_buf_0_val_5_q0 : tmp_60_fu_698_p5);

assign exitcond388_i_i_fu_548_p2 = ((t_V_6_reg_269 == tmp_s_fu_280_p2) ? 1'b1 : 1'b0);

assign exitcond389_i_i_fu_304_p2 = ((t_V_reg_258 == tmp_39_fu_286_p2) ? 1'b1 : 1'b0);

assign i_V_fu_309_p2 = (t_V_reg_258 + 32'd1);

assign icmp3_fu_569_p2 = ((tmp_99_fu_559_p4 != 31'd0) ? 1'b1 : 1'b0);

assign icmp_fu_336_p2 = ((tmp_89_fu_326_p4 != 31'd0) ? 1'b1 : 1'b0);

assign j_V_fu_553_p2 = (t_V_6_reg_269 + 32'd1);

assign k_buf_0_val_3_address0 = tmp_55_fu_643_p1;

assign k_buf_0_val_4_address0 = tmp_55_fu_643_p1;

assign k_buf_0_val_5_address0 = tmp_55_fu_643_p1;

assign or_cond_i425_i_i_fu_600_p2 = (tmp_44_fu_595_p2 & rev9_fu_589_p2);

assign or_cond_i_i_fu_634_p2 = (icmp_reg_1056 & icmp3_fu_569_p2);

assign or_cond_i_i_i_1_fu_430_p2 = (tmp_499_1_fu_425_p2 & rev7_fu_419_p2);

assign or_cond_i_i_i_2_fu_476_p2 = (tmp_499_2_fu_471_p2 & rev8_fu_465_p2);

assign or_cond_i_i_i_fu_384_p2 = (tmp_52_fu_379_p2 & rev_fu_373_p2);

assign p_assign_12_1_fu_405_p2 = ($signed(32'd4294967294) + $signed(t_V_reg_258));

assign p_assign_12_2_fu_451_p2 = ($signed(32'd4294967293) + $signed(t_V_reg_258));

assign p_assign_13_1_fu_444_p3 = ((tmp_93_fu_436_p3[0:0] === 1'b1) ? 32'd0 : p_neg393_i_i_fu_298_p2);

assign p_assign_13_2_fu_490_p3 = ((tmp_95_fu_482_p3[0:0] === 1'b1) ? 32'd0 : p_neg393_i_i_fu_298_p2);

assign p_assign_2_fu_614_p3 = ((tmp_101_fu_606_p3[0:0] === 1'b1) ? 32'd0 : tmp_40_fu_292_p2);

assign p_assign_s_fu_398_p3 = ((tmp_91_fu_390_p3[0:0] === 1'b1) ? 32'd0 : p_neg393_i_i_fu_298_p2);

assign p_dst_data_stream_V_din = ((tmp_518_2_2_fu_930_p2[0:0] === 1'b1) ? src_kernel_win_0_va_40_reg_1146_pp0_iter4_reg : temp_0_i_i_i_059_i_2_reg_1178);

assign p_neg393_i_i_fu_298_p2 = ($signed(p_src_rows_V) + $signed(32'd4294967295));

assign rev7_fu_419_p2 = (tmp_92_fu_411_p3 ^ 1'd1);

assign rev8_fu_465_p2 = (tmp_94_fu_457_p3 ^ 1'd1);

assign rev9_fu_589_p2 = (tmp_100_fu_581_p3 ^ 1'd1);

assign rev_fu_373_p2 = (tmp_90_fu_365_p3 ^ 1'd1);

assign row_assign_13_1_fu_522_p2 = (p_neg393_i_i_fu_298_p2 - y_2_1_fu_514_p3);

assign row_assign_13_2_fu_539_p2 = (p_neg393_i_i_fu_298_p2 - y_2_2_fu_531_p3);

assign row_assign_s_fu_505_p2 = (p_neg393_i_i_fu_298_p2 - y_2_fu_497_p3);

assign src_kernel_win_0_va_40_fu_742_p3 = ((tmp_49_reg_1069[0:0] === 1'b1) ? tmp_61_fu_731_p5 : col_buf_0_val_0_0_fu_673_p3);

assign src_kernel_win_0_va_41_fu_760_p3 = ((tmp_49_reg_1069[0:0] === 1'b1) ? tmp_62_fu_749_p5 : col_buf_0_val_1_0_fu_691_p3);

assign src_kernel_win_0_va_42_fu_778_p3 = ((tmp_49_reg_1069[0:0] === 1'b1) ? tmp_63_fu_767_p5 : col_buf_0_val_2_0_fu_709_p3);

assign temp_0_i_i_i_059_i_1_fu_896_p3 = ((tmp_518_2_fu_890_p2[0:0] === 1'b1) ? src_kernel_win_0_va_35_fu_136 : temp_0_i_i_i_059_i_3_fu_884_p3);

assign temp_0_i_i_i_059_i_2_fu_910_p3 = ((tmp_518_2_1_fu_904_p2[0:0] === 1'b1) ? src_kernel_win_0_va_fu_132 : temp_0_i_i_i_059_i_1_fu_896_p3);

assign temp_0_i_i_i_059_i_3_fu_884_p3 = ((tmp_518_1_2_fu_880_p2[0:0] === 1'b1) ? src_kernel_win_0_va_41_reg_1153_pp0_iter3_reg : temp_0_i_i_i_059_i_9_reg_1172);

assign temp_0_i_i_i_059_i_7_fu_828_p3 = ((tmp_518_0_2_fu_824_p2[0:0] === 1'b1) ? src_kernel_win_0_va_42_reg_1160 : temp_0_i_i_i_059_i_s_reg_1166);

assign temp_0_i_i_i_059_i_8_fu_840_p3 = ((tmp_518_1_fu_834_p2[0:0] === 1'b1) ? src_kernel_win_0_va_37_fu_144 : temp_0_i_i_i_059_i_7_fu_828_p3);

assign temp_0_i_i_i_059_i_9_fu_854_p3 = ((tmp_518_1_1_fu_848_p2[0:0] === 1'b1) ? src_kernel_win_0_va_36_fu_140 : temp_0_i_i_i_059_i_8_fu_840_p3);

assign temp_0_i_i_i_059_i_s_fu_797_p3 = ((tmp_518_0_1_fu_791_p2[0:0] === 1'b1) ? src_kernel_win_0_va_38_fu_148 : src_kernel_win_0_va_39_fu_152);

assign tmp_100_fu_581_p3 = ImagLoc_x_fu_575_p2[32'd31];

assign tmp_101_fu_606_p3 = ImagLoc_x_fu_575_p2[32'd31];

assign tmp_102_fu_649_p1 = col_assign_2_fu_639_p2[1:0];

assign tmp_39_fu_286_p2 = (p_src_rows_V + 32'd2);

assign tmp_40_fu_292_p2 = ($signed(p_src_cols_V) + $signed(32'd4294967295));

assign tmp_41_fu_315_p2 = ((t_V_reg_258 < p_src_rows_V) ? 1'b1 : 1'b0);

assign tmp_442_not_fu_320_p2 = (tmp_41_fu_315_p2 ^ 1'd1);

assign tmp_44_fu_595_p2 = (($signed(ImagLoc_x_fu_575_p2) < $signed(p_src_cols_V)) ? 1'b1 : 1'b0);

assign tmp_472_2_fu_348_p2 = ((t_V_reg_258 == 32'd1) ? 1'b1 : 1'b0);

assign tmp_48_fu_342_p2 = ((t_V_reg_258 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_499_1_fu_425_p2 = (($signed(p_assign_12_1_fu_405_p2) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

assign tmp_499_2_fu_471_p2 = (($signed(p_assign_12_2_fu_451_p2) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

assign tmp_49_fu_354_p2 = ((t_V_reg_258 > p_src_rows_V) ? 1'b1 : 1'b0);

assign tmp_50_fu_359_p2 = ($signed(32'd4294967295) + $signed(t_V_reg_258));

assign tmp_518_0_1_fu_791_p2 = ((src_kernel_win_0_va_38_fu_148 < src_kernel_win_0_va_39_fu_152) ? 1'b1 : 1'b0);

assign tmp_518_0_2_fu_824_p2 = ((src_kernel_win_0_va_42_reg_1160 < temp_0_i_i_i_059_i_s_reg_1166) ? 1'b1 : 1'b0);

assign tmp_518_1_1_fu_848_p2 = ((src_kernel_win_0_va_36_fu_140 < temp_0_i_i_i_059_i_8_fu_840_p3) ? 1'b1 : 1'b0);

assign tmp_518_1_2_fu_880_p2 = ((src_kernel_win_0_va_41_reg_1153_pp0_iter3_reg < temp_0_i_i_i_059_i_9_reg_1172) ? 1'b1 : 1'b0);

assign tmp_518_1_fu_834_p2 = ((src_kernel_win_0_va_37_fu_144 < temp_0_i_i_i_059_i_7_fu_828_p3) ? 1'b1 : 1'b0);

assign tmp_518_2_1_fu_904_p2 = ((src_kernel_win_0_va_fu_132 < temp_0_i_i_i_059_i_1_fu_896_p3) ? 1'b1 : 1'b0);

assign tmp_518_2_2_fu_930_p2 = ((src_kernel_win_0_va_40_reg_1146_pp0_iter4_reg < temp_0_i_i_i_059_i_2_reg_1178) ? 1'b1 : 1'b0);

assign tmp_518_2_fu_890_p2 = ((src_kernel_win_0_va_35_fu_136 < temp_0_i_i_i_059_i_3_fu_884_p3) ? 1'b1 : 1'b0);

assign tmp_52_fu_379_p2 = (($signed(tmp_50_fu_359_p2) < $signed(p_src_rows_V)) ? 1'b1 : 1'b0);

assign tmp_55_fu_643_p1 = x_reg_1104;

assign tmp_89_fu_326_p4 = {{t_V_reg_258[31:1]}};

assign tmp_90_fu_365_p3 = tmp_50_fu_359_p2[32'd31];

assign tmp_91_fu_390_p3 = tmp_50_fu_359_p2[32'd31];

assign tmp_92_fu_411_p3 = p_assign_12_1_fu_405_p2[32'd31];

assign tmp_93_fu_436_p3 = p_assign_12_1_fu_405_p2[32'd31];

assign tmp_94_fu_457_p3 = p_assign_12_2_fu_451_p2[32'd31];

assign tmp_95_fu_482_p3 = p_assign_12_2_fu_451_p2[32'd31];

assign tmp_96_fu_510_p1 = row_assign_s_fu_505_p2[1:0];

assign tmp_97_fu_527_p1 = row_assign_13_1_fu_522_p2[1:0];

assign tmp_98_fu_544_p1 = row_assign_13_2_fu_539_p2[1:0];

assign tmp_99_fu_559_p4 = {{t_V_6_reg_269[31:1]}};

assign tmp_s_fu_280_p2 = (p_src_cols_V + 32'd2);

assign x_fu_621_p3 = ((or_cond_i425_i_i_fu_600_p2[0:0] === 1'b1) ? ImagLoc_x_fu_575_p2 : p_assign_2_fu_614_p3);

assign y_2_1_fu_514_p3 = ((or_cond_i_i_i_1_fu_430_p2[0:0] === 1'b1) ? p_assign_12_1_fu_405_p2 : p_assign_13_1_fu_444_p3);

assign y_2_2_fu_531_p3 = ((or_cond_i_i_i_2_fu_476_p2[0:0] === 1'b1) ? p_assign_12_2_fu_451_p2 : p_assign_13_2_fu_490_p3);

assign y_2_fu_497_p3 = ((or_cond_i_i_i_fu_384_p2[0:0] === 1'b1) ? tmp_50_fu_359_p2 : p_assign_s_fu_398_p3);

endmodule //Erode220
