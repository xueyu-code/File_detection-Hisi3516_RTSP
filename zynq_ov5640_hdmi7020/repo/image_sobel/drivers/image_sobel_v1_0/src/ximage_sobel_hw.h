// ==============================================================
// File generated on Sun Jul 26 21:27:47 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL_BUS
// 0x0 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read/COR)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read)
//       bit 7  - auto_restart (Read/Write)
//       others - reserved
// 0x4 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x8 : IP Interrupt Enable Register (Read/Write)
//       bit 0  - Channel 0 (ap_done)
//       bit 1  - Channel 1 (ap_ready)
//       others - reserved
// 0xc : IP Interrupt Status Register (Read/TOW)
//       bit 0  - Channel 0 (ap_done)
//       bit 1  - Channel 1 (ap_ready)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XIMAGE_SOBEL_CTRL_BUS_ADDR_AP_CTRL 0x0
#define XIMAGE_SOBEL_CTRL_BUS_ADDR_GIE     0x4
#define XIMAGE_SOBEL_CTRL_BUS_ADDR_IER     0x8
#define XIMAGE_SOBEL_CTRL_BUS_ADDR_ISR     0xc

// MATRIX_BUS
// 0x10 ~
// 0x1f : Memory 'matrix' (9 * 8b)
//        Word n : bit [ 7: 0] - matrix[4n]
//                 bit [15: 8] - matrix[4n+1]
//                 bit [23:16] - matrix[4n+2]
//                 bit [31:24] - matrix[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_BASE 0x10
#define XIMAGE_SOBEL_MATRIX_BUS_ADDR_MATRIX_HIGH 0x1f
#define XIMAGE_SOBEL_MATRIX_BUS_WIDTH_MATRIX     8
#define XIMAGE_SOBEL_MATRIX_BUS_DEPTH_MATRIX     9

