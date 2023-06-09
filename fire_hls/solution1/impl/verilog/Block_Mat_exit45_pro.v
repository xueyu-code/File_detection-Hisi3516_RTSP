// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_Mat_exit45_pro (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        rows,
        cols,
        r_low,
        r_up,
        g_low,
        g_up,
        b_low,
        b_up,
        rows_out_din,
        rows_out_full_n,
        rows_out_write,
        cols_out_din,
        cols_out_full_n,
        cols_out_write,
        img_1_rows_V_out_din,
        img_1_rows_V_out_full_n,
        img_1_rows_V_out_write,
        img_1_cols_V_out_din,
        img_1_cols_V_out_full_n,
        img_1_cols_V_out_write,
        r_low_out_din,
        r_low_out_full_n,
        r_low_out_write,
        r_up_out_din,
        r_up_out_full_n,
        r_up_out_write,
        g_low_out_din,
        g_low_out_full_n,
        g_low_out_write,
        g_up_out_din,
        g_up_out_full_n,
        g_up_out_write,
        b_low_out_din,
        b_low_out_full_n,
        b_low_out_write,
        b_up_out_din,
        b_up_out_full_n,
        b_up_out_write,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] rows;
input  [31:0] cols;
input  [31:0] r_low;
input  [31:0] r_up;
input  [31:0] g_low;
input  [31:0] g_up;
input  [31:0] b_low;
input  [31:0] b_up;
output  [31:0] rows_out_din;
input   rows_out_full_n;
output   rows_out_write;
output  [31:0] cols_out_din;
input   cols_out_full_n;
output   cols_out_write;
output  [31:0] img_1_rows_V_out_din;
input   img_1_rows_V_out_full_n;
output   img_1_rows_V_out_write;
output  [31:0] img_1_cols_V_out_din;
input   img_1_cols_V_out_full_n;
output   img_1_cols_V_out_write;
output  [31:0] r_low_out_din;
input   r_low_out_full_n;
output   r_low_out_write;
output  [31:0] r_up_out_din;
input   r_up_out_full_n;
output   r_up_out_write;
output  [31:0] g_low_out_din;
input   g_low_out_full_n;
output   g_low_out_write;
output  [31:0] g_up_out_din;
input   g_up_out_full_n;
output   g_up_out_write;
output  [31:0] b_low_out_din;
input   b_low_out_full_n;
output   b_low_out_write;
output  [31:0] b_up_out_din;
input   b_up_out_full_n;
output   b_up_out_write;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg start_write;
reg rows_out_write;
reg cols_out_write;
reg img_1_rows_V_out_write;
reg img_1_cols_V_out_write;
reg r_low_out_write;
reg r_up_out_write;
reg g_low_out_write;
reg g_up_out_write;
reg b_low_out_write;
reg b_up_out_write;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    rows_out_blk_n;
reg    cols_out_blk_n;
reg    img_1_rows_V_out_blk_n;
reg    img_1_cols_V_out_blk_n;
reg    r_low_out_blk_n;
reg    r_up_out_blk_n;
reg    g_low_out_blk_n;
reg    g_up_out_blk_n;
reg    b_low_out_blk_n;
reg    b_up_out_blk_n;
reg    ap_block_state1;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
end

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
        end else if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_0_preg <= rows;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_1_preg <= cols;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = rows;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = cols;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        b_low_out_blk_n = b_low_out_full_n;
    end else begin
        b_low_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        b_low_out_write = 1'b1;
    end else begin
        b_low_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        b_up_out_blk_n = b_up_out_full_n;
    end else begin
        b_up_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        b_up_out_write = 1'b1;
    end else begin
        b_up_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_out_blk_n = cols_out_full_n;
    end else begin
        cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_out_write = 1'b1;
    end else begin
        cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        g_low_out_blk_n = g_low_out_full_n;
    end else begin
        g_low_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        g_low_out_write = 1'b1;
    end else begin
        g_low_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        g_up_out_blk_n = g_up_out_full_n;
    end else begin
        g_up_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        g_up_out_write = 1'b1;
    end else begin
        g_up_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_1_cols_V_out_blk_n = img_1_cols_V_out_full_n;
    end else begin
        img_1_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_1_cols_V_out_write = 1'b1;
    end else begin
        img_1_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_1_rows_V_out_blk_n = img_1_rows_V_out_full_n;
    end else begin
        img_1_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_1_rows_V_out_write = 1'b1;
    end else begin
        img_1_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        r_low_out_blk_n = r_low_out_full_n;
    end else begin
        r_low_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        r_low_out_write = 1'b1;
    end else begin
        r_low_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        r_up_out_blk_n = r_up_out_full_n;
    end else begin
        r_up_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        r_up_out_write = 1'b1;
    end else begin
        r_up_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_out_blk_n = rows_out_full_n;
    end else begin
        rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_out_write = 1'b1;
    end else begin
        rows_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((b_up_out_full_n == 1'b0) | (b_low_out_full_n == 1'b0) | (g_up_out_full_n == 1'b0) | (g_low_out_full_n == 1'b0) | (real_start == 1'b0) | (r_up_out_full_n == 1'b0) | (r_low_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (cols_out_full_n == 1'b0) | (rows_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign b_low_out_din = b_low;

assign b_up_out_din = b_up;

assign cols_out_din = cols;

assign g_low_out_din = g_low;

assign g_up_out_din = g_up;

assign img_1_cols_V_out_din = cols;

assign img_1_rows_V_out_din = rows;

assign r_low_out_din = r_low;

assign r_up_out_din = r_up;

assign rows_out_din = rows;

assign start_out = real_start;

endmodule //Block_Mat_exit45_pro
