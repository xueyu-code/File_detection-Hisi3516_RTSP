// ==============================================================
// File generated on Thu Mar 23 09:47:41 +0800 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module fire_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    // user signals
    output wire [31:0]                   rows,
    output wire [31:0]                   cols,
    output wire [31:0]                   r_low,
    output wire [31:0]                   r_up,
    output wire [31:0]                   g_low,
    output wire [31:0]                   g_up,
    output wire [31:0]                   b_low,
    output wire [31:0]                   b_up
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of r_low
//        bit 31~0 - r_low[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of r_up
//        bit 31~0 - r_up[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of g_low
//        bit 31~0 - g_low[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of g_up
//        bit 31~0 - g_up[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of b_low
//        bit 31~0 - b_low[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of b_up
//        bit 31~0 - b_up[31:0] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_ROWS_DATA_0  = 7'h10,
    ADDR_ROWS_CTRL    = 7'h14,
    ADDR_COLS_DATA_0  = 7'h18,
    ADDR_COLS_CTRL    = 7'h1c,
    ADDR_R_LOW_DATA_0 = 7'h20,
    ADDR_R_LOW_CTRL   = 7'h24,
    ADDR_R_UP_DATA_0  = 7'h28,
    ADDR_R_UP_CTRL    = 7'h2c,
    ADDR_G_LOW_DATA_0 = 7'h30,
    ADDR_G_LOW_CTRL   = 7'h34,
    ADDR_G_UP_DATA_0  = 7'h38,
    ADDR_G_UP_CTRL    = 7'h3c,
    ADDR_B_LOW_DATA_0 = 7'h40,
    ADDR_B_LOW_CTRL   = 7'h44,
    ADDR_B_UP_DATA_0  = 7'h48,
    ADDR_B_UP_CTRL    = 7'h4c,
    WRIDLE            = 2'd0,
    WRDATA            = 2'd1,
    WRRESP            = 2'd2,
    WRRESET           = 2'd3,
    RDIDLE            = 2'd0,
    RDDATA            = 2'd1,
    RDRESET           = 2'd2,
    ADDR_BITS         = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_rows = 'b0;
    reg  [31:0]                   int_cols = 'b0;
    reg  [31:0]                   int_r_low = 'b0;
    reg  [31:0]                   int_r_up = 'b0;
    reg  [31:0]                   int_g_low = 'b0;
    reg  [31:0]                   int_g_up = 'b0;
    reg  [31:0]                   int_b_low = 'b0;
    reg  [31:0]                   int_b_up = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_ROWS_DATA_0: begin
                    rdata <= int_rows[31:0];
                end
                ADDR_COLS_DATA_0: begin
                    rdata <= int_cols[31:0];
                end
                ADDR_R_LOW_DATA_0: begin
                    rdata <= int_r_low[31:0];
                end
                ADDR_R_UP_DATA_0: begin
                    rdata <= int_r_up[31:0];
                end
                ADDR_G_LOW_DATA_0: begin
                    rdata <= int_g_low[31:0];
                end
                ADDR_G_UP_DATA_0: begin
                    rdata <= int_g_up[31:0];
                end
                ADDR_B_LOW_DATA_0: begin
                    rdata <= int_b_low[31:0];
                end
                ADDR_B_UP_DATA_0: begin
                    rdata <= int_b_up[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign rows  = int_rows;
assign cols  = int_cols;
assign r_low = int_r_low;
assign r_up  = int_r_up;
assign g_low = int_g_low;
assign g_up  = int_g_up;
assign b_low = int_b_low;
assign b_up  = int_b_up;
// int_rows[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_rows[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ROWS_DATA_0)
            int_rows[31:0] <= (WDATA[31:0] & wmask) | (int_rows[31:0] & ~wmask);
    end
end

// int_cols[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_cols[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLS_DATA_0)
            int_cols[31:0] <= (WDATA[31:0] & wmask) | (int_cols[31:0] & ~wmask);
    end
end

// int_r_low[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r_low[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_LOW_DATA_0)
            int_r_low[31:0] <= (WDATA[31:0] & wmask) | (int_r_low[31:0] & ~wmask);
    end
end

// int_r_up[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r_up[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_UP_DATA_0)
            int_r_up[31:0] <= (WDATA[31:0] & wmask) | (int_r_up[31:0] & ~wmask);
    end
end

// int_g_low[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_g_low[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_G_LOW_DATA_0)
            int_g_low[31:0] <= (WDATA[31:0] & wmask) | (int_g_low[31:0] & ~wmask);
    end
end

// int_g_up[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_g_up[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_G_UP_DATA_0)
            int_g_up[31:0] <= (WDATA[31:0] & wmask) | (int_g_up[31:0] & ~wmask);
    end
end

// int_b_low[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_b_low[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_LOW_DATA_0)
            int_b_low[31:0] <= (WDATA[31:0] & wmask) | (int_b_low[31:0] & ~wmask);
    end
end

// int_b_up[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_b_up[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_UP_DATA_0)
            int_b_up[31:0] <= (WDATA[31:0] & wmask) | (int_b_up[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
