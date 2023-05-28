// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Sep  3 22:56:42 2021
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_ov5640_driver_0_0 -prefix
//               design_1_ov5640_driver_0_0_ design_1_ov5640_driver_0_0_stub.v
// Design      : design_1_ov5640_driver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov5640_driver,Vivado 2018.3" *)
module design_1_ov5640_driver_0_0(clk, rstn, cmos_scl, cmos_sda, cmos_pclk, 
  cmos_vsync, cmos_href, cmos_rstn, cmos_data, pclk, data_valid, cmos_clk_en, rgb_data, vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,cmos_scl,cmos_sda,cmos_pclk,cmos_vsync,cmos_href,cmos_rstn,cmos_data[7:0],pclk,data_valid,cmos_clk_en,rgb_data[23:0],vsync" */;
  input clk;
  input rstn;
  output cmos_scl;
  inout cmos_sda;
  input cmos_pclk;
  input cmos_vsync;
  input cmos_href;
  output cmos_rstn;
  input [7:0]cmos_data;
  output pclk;
  output data_valid;
  output cmos_clk_en;
  output [23:0]rgb_data;
  output vsync;
endmodule
