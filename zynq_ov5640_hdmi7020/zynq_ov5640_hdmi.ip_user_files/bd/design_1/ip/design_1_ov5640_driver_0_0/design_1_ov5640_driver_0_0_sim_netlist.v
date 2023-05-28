// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Sep  3 22:56:42 2021
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_ov5640_driver_0_0 -prefix
//               design_1_ov5640_driver_0_0_ design_1_ov5640_driver_0_0_sim_netlist.v
// Design      : design_1_ov5640_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_ov5640_driver_0_0_cmos_reg_conf
   (rst_p,
    cmos_scl,
    reg_conf_done,
    cfg_done_reg_0,
    cfg_done_reg_1,
    cfg_done_reg_2,
    cfg_done_reg_3,
    cfg_done_reg_4,
    cfg_done_reg_5,
    cfg_done_reg_6,
    cfg_done_reg_7,
    cmos_sda,
    clk,
    \cnt_freq_reg[2] ,
    cmos_data,
    cmos_href,
    ready);
  output rst_p;
  output cmos_scl;
  output reg_conf_done;
  output cfg_done_reg_0;
  output cfg_done_reg_1;
  output cfg_done_reg_2;
  output cfg_done_reg_3;
  output cfg_done_reg_4;
  output cfg_done_reg_5;
  output cfg_done_reg_6;
  output cfg_done_reg_7;
  inout cmos_sda;
  input clk;
  input \cnt_freq_reg[2] ;
  input [7:0]cmos_data;
  input cmos_href;
  input ready;

  wire cfg_done_i_1_n_0;
  wire cfg_done_reg_0;
  wire cfg_done_reg_1;
  wire cfg_done_reg_2;
  wire cfg_done_reg_3;
  wire cfg_done_reg_4;
  wire cfg_done_reg_5;
  wire cfg_done_reg_6;
  wire cfg_done_reg_7;
  wire clk;
  wire [7:0]cmos_data;
  wire cmos_href;
  wire cmos_scl;
  wire cmos_sda;
  wire \cnt_freq_reg[2] ;
  wire \cnt_reg[0]_i_1__0_n_0 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_3_n_0 ;
  wire \cnt_reg[24]_i_4_n_0 ;
  wire \cnt_reg[24]_i_5_n_0 ;
  wire \cnt_reg[24]_i_7_n_0 ;
  wire \cnt_reg[24]_i_8_n_0 ;
  wire \cnt_reg[24]_i_9_n_0 ;
  wire [24:1]cnt_reg__0;
  wire \cnt_reg_reg[12]_i_2_n_0 ;
  wire \cnt_reg_reg[12]_i_2_n_1 ;
  wire \cnt_reg_reg[12]_i_2_n_2 ;
  wire \cnt_reg_reg[12]_i_2_n_3 ;
  wire \cnt_reg_reg[16]_i_2_n_0 ;
  wire \cnt_reg_reg[16]_i_2_n_1 ;
  wire \cnt_reg_reg[16]_i_2_n_2 ;
  wire \cnt_reg_reg[16]_i_2_n_3 ;
  wire \cnt_reg_reg[20]_i_2_n_0 ;
  wire \cnt_reg_reg[20]_i_2_n_1 ;
  wire \cnt_reg_reg[20]_i_2_n_2 ;
  wire \cnt_reg_reg[20]_i_2_n_3 ;
  wire \cnt_reg_reg[24]_i_6_n_1 ;
  wire \cnt_reg_reg[24]_i_6_n_2 ;
  wire \cnt_reg_reg[24]_i_6_n_3 ;
  wire \cnt_reg_reg[4]_i_2_n_0 ;
  wire \cnt_reg_reg[4]_i_2_n_1 ;
  wire \cnt_reg_reg[4]_i_2_n_2 ;
  wire \cnt_reg_reg[4]_i_2_n_3 ;
  wire \cnt_reg_reg[8]_i_2_n_0 ;
  wire \cnt_reg_reg[8]_i_2_n_1 ;
  wire \cnt_reg_reg[8]_i_2_n_2 ;
  wire \cnt_reg_reg[8]_i_2_n_3 ;
  wire \cnt_reg_reg_n_0_[0] ;
  wire \cnt_reg_reg_n_0_[10] ;
  wire \cnt_reg_reg_n_0_[11] ;
  wire \cnt_reg_reg_n_0_[12] ;
  wire \cnt_reg_reg_n_0_[13] ;
  wire \cnt_reg_reg_n_0_[14] ;
  wire \cnt_reg_reg_n_0_[15] ;
  wire \cnt_reg_reg_n_0_[16] ;
  wire \cnt_reg_reg_n_0_[17] ;
  wire \cnt_reg_reg_n_0_[18] ;
  wire \cnt_reg_reg_n_0_[19] ;
  wire \cnt_reg_reg_n_0_[1] ;
  wire \cnt_reg_reg_n_0_[20] ;
  wire \cnt_reg_reg_n_0_[21] ;
  wire \cnt_reg_reg_n_0_[22] ;
  wire \cnt_reg_reg_n_0_[23] ;
  wire \cnt_reg_reg_n_0_[24] ;
  wire \cnt_reg_reg_n_0_[2] ;
  wire \cnt_reg_reg_n_0_[3] ;
  wire \cnt_reg_reg_n_0_[4] ;
  wire \cnt_reg_reg_n_0_[5] ;
  wire \cnt_reg_reg_n_0_[6] ;
  wire \cnt_reg_reg_n_0_[7] ;
  wire \cnt_reg_reg_n_0_[8] ;
  wire \cnt_reg_reg_n_0_[9] ;
  wire \conf_data[0]_i_10_n_0 ;
  wire \conf_data[0]_i_11_n_0 ;
  wire \conf_data[0]_i_12_n_0 ;
  wire \conf_data[0]_i_1_n_0 ;
  wire \conf_data[0]_i_3_n_0 ;
  wire \conf_data[0]_i_5_n_0 ;
  wire \conf_data[0]_i_6_n_0 ;
  wire \conf_data[0]_i_7_n_0 ;
  wire \conf_data[0]_i_9_n_0 ;
  wire \conf_data[10]_i_1_n_0 ;
  wire \conf_data[10]_i_2_n_0 ;
  wire \conf_data[10]_i_3_n_0 ;
  wire \conf_data[10]_i_4_n_0 ;
  wire \conf_data[10]_i_5_n_0 ;
  wire \conf_data[10]_i_6_n_0 ;
  wire \conf_data[10]_i_7_n_0 ;
  wire \conf_data[10]_i_8_n_0 ;
  wire \conf_data[10]_i_9_n_0 ;
  wire \conf_data[11]_i_10_n_0 ;
  wire \conf_data[11]_i_11_n_0 ;
  wire \conf_data[11]_i_12_n_0 ;
  wire \conf_data[11]_i_1_n_0 ;
  wire \conf_data[11]_i_2_n_0 ;
  wire \conf_data[11]_i_3_n_0 ;
  wire \conf_data[11]_i_7_n_0 ;
  wire \conf_data[11]_i_8_n_0 ;
  wire \conf_data[11]_i_9_n_0 ;
  wire \conf_data[12]_i_10_n_0 ;
  wire \conf_data[12]_i_11_n_0 ;
  wire \conf_data[12]_i_12_n_0 ;
  wire \conf_data[12]_i_13_n_0 ;
  wire \conf_data[12]_i_1_n_0 ;
  wire \conf_data[12]_i_2_n_0 ;
  wire \conf_data[12]_i_4_n_0 ;
  wire \conf_data[12]_i_5_n_0 ;
  wire \conf_data[12]_i_6_n_0 ;
  wire \conf_data[12]_i_7_n_0 ;
  wire \conf_data[13]_i_1_n_0 ;
  wire \conf_data[13]_i_2_n_0 ;
  wire \conf_data[13]_i_4_n_0 ;
  wire \conf_data[13]_i_5_n_0 ;
  wire \conf_data[13]_i_6_n_0 ;
  wire \conf_data[15]_i_1_n_0 ;
  wire \conf_data[15]_i_2_n_0 ;
  wire \conf_data[15]_i_3_n_0 ;
  wire \conf_data[15]_i_4_n_0 ;
  wire \conf_data[16]_i_10_n_0 ;
  wire \conf_data[16]_i_11_n_0 ;
  wire \conf_data[16]_i_1_n_0 ;
  wire \conf_data[16]_i_2_n_0 ;
  wire \conf_data[16]_i_4_n_0 ;
  wire \conf_data[16]_i_5_n_0 ;
  wire \conf_data[16]_i_6_n_0 ;
  wire \conf_data[16]_i_7_n_0 ;
  wire \conf_data[16]_i_8_n_0 ;
  wire \conf_data[16]_i_9_n_0 ;
  wire \conf_data[17]_i_1_n_0 ;
  wire \conf_data[17]_i_3_n_0 ;
  wire \conf_data[17]_i_4_n_0 ;
  wire \conf_data[17]_i_5_n_0 ;
  wire \conf_data[17]_i_6_n_0 ;
  wire \conf_data[17]_i_7_n_0 ;
  wire \conf_data[18]_i_10_n_0 ;
  wire \conf_data[18]_i_11_n_0 ;
  wire \conf_data[18]_i_1_n_0 ;
  wire \conf_data[18]_i_2_n_0 ;
  wire \conf_data[18]_i_3_n_0 ;
  wire \conf_data[18]_i_4_n_0 ;
  wire \conf_data[18]_i_6_n_0 ;
  wire \conf_data[18]_i_8_n_0 ;
  wire \conf_data[18]_i_9_n_0 ;
  wire \conf_data[19]_i_1_n_0 ;
  wire \conf_data[19]_i_2_n_0 ;
  wire \conf_data[19]_i_3_n_0 ;
  wire \conf_data[19]_i_4_n_0 ;
  wire \conf_data[19]_i_5_n_0 ;
  wire \conf_data[1]_i_10_n_0 ;
  wire \conf_data[1]_i_11_n_0 ;
  wire \conf_data[1]_i_12_n_0 ;
  wire \conf_data[1]_i_13_n_0 ;
  wire \conf_data[1]_i_14_n_0 ;
  wire \conf_data[1]_i_1_n_0 ;
  wire \conf_data[1]_i_2_n_0 ;
  wire \conf_data[1]_i_4_n_0 ;
  wire \conf_data[1]_i_6_n_0 ;
  wire \conf_data[1]_i_8_n_0 ;
  wire \conf_data[1]_i_9_n_0 ;
  wire \conf_data[20]_i_1_n_0 ;
  wire \conf_data[20]_i_2_n_0 ;
  wire \conf_data[20]_i_3_n_0 ;
  wire \conf_data[21]_i_1_n_0 ;
  wire \conf_data[21]_i_2_n_0 ;
  wire \conf_data[21]_i_3_n_0 ;
  wire \conf_data[22]_i_1_n_0 ;
  wire \conf_data[22]_i_2_n_0 ;
  wire \conf_data[22]_i_3_n_0 ;
  wire \conf_data[24]_i_1_n_0 ;
  wire \conf_data[24]_i_2_n_0 ;
  wire \conf_data[2]_i_10_n_0 ;
  wire \conf_data[2]_i_11_n_0 ;
  wire \conf_data[2]_i_12_n_0 ;
  wire \conf_data[2]_i_1_n_0 ;
  wire \conf_data[2]_i_2_n_0 ;
  wire \conf_data[2]_i_4_n_0 ;
  wire \conf_data[2]_i_6_n_0 ;
  wire \conf_data[2]_i_7_n_0 ;
  wire \conf_data[2]_i_8_n_0 ;
  wire \conf_data[2]_i_9_n_0 ;
  wire \conf_data[3]_i_10_n_0 ;
  wire \conf_data[3]_i_11_n_0 ;
  wire \conf_data[3]_i_1_n_0 ;
  wire \conf_data[3]_i_3_n_0 ;
  wire \conf_data[3]_i_6_n_0 ;
  wire \conf_data[3]_i_7_n_0 ;
  wire \conf_data[3]_i_8_n_0 ;
  wire \conf_data[3]_i_9_n_0 ;
  wire \conf_data[4]_i_10_n_0 ;
  wire \conf_data[4]_i_11_n_0 ;
  wire \conf_data[4]_i_12_n_0 ;
  wire \conf_data[4]_i_1_n_0 ;
  wire \conf_data[4]_i_3_n_0 ;
  wire \conf_data[4]_i_5_n_0 ;
  wire \conf_data[4]_i_6_n_0 ;
  wire \conf_data[4]_i_7_n_0 ;
  wire \conf_data[4]_i_8_n_0 ;
  wire \conf_data[4]_i_9_n_0 ;
  wire \conf_data[5]_i_10_n_0 ;
  wire \conf_data[5]_i_11_n_0 ;
  wire \conf_data[5]_i_12_n_0 ;
  wire \conf_data[5]_i_1_n_0 ;
  wire \conf_data[5]_i_2_n_0 ;
  wire \conf_data[5]_i_4_n_0 ;
  wire \conf_data[5]_i_7_n_0 ;
  wire \conf_data[5]_i_8_n_0 ;
  wire \conf_data[5]_i_9_n_0 ;
  wire \conf_data[6]_i_10_n_0 ;
  wire \conf_data[6]_i_12_n_0 ;
  wire \conf_data[6]_i_13_n_0 ;
  wire \conf_data[6]_i_1_n_0 ;
  wire \conf_data[6]_i_4_n_0 ;
  wire \conf_data[6]_i_5_n_0 ;
  wire \conf_data[6]_i_6_n_0 ;
  wire \conf_data[6]_i_7_n_0 ;
  wire \conf_data[6]_i_8_n_0 ;
  wire \conf_data[6]_i_9_n_0 ;
  wire \conf_data[7]_i_10_n_0 ;
  wire \conf_data[7]_i_1_n_0 ;
  wire \conf_data[7]_i_3_n_0 ;
  wire \conf_data[7]_i_4_n_0 ;
  wire \conf_data[7]_i_5_n_0 ;
  wire \conf_data[7]_i_6_n_0 ;
  wire \conf_data[7]_i_7_n_0 ;
  wire \conf_data[7]_i_9_n_0 ;
  wire \conf_data[8]_i_10_n_0 ;
  wire \conf_data[8]_i_11_n_0 ;
  wire \conf_data[8]_i_12_n_0 ;
  wire \conf_data[8]_i_1_n_0 ;
  wire \conf_data[8]_i_2_n_0 ;
  wire \conf_data[8]_i_3_n_0 ;
  wire \conf_data[8]_i_4_n_0 ;
  wire \conf_data[8]_i_6_n_0 ;
  wire \conf_data[8]_i_7_n_0 ;
  wire \conf_data[8]_i_8_n_0 ;
  wire \conf_data[8]_i_9_n_0 ;
  wire \conf_data[9]_i_10_n_0 ;
  wire \conf_data[9]_i_11_n_0 ;
  wire \conf_data[9]_i_12_n_0 ;
  wire \conf_data[9]_i_1_n_0 ;
  wire \conf_data[9]_i_3_n_0 ;
  wire \conf_data[9]_i_5_n_0 ;
  wire \conf_data[9]_i_6_n_0 ;
  wire \conf_data[9]_i_7_n_0 ;
  wire \conf_data[9]_i_8_n_0 ;
  wire \conf_data[9]_i_9_n_0 ;
  wire \conf_data_reg[0]_i_2_n_0 ;
  wire \conf_data_reg[0]_i_4_n_0 ;
  wire \conf_data_reg[0]_i_8_n_0 ;
  wire \conf_data_reg[11]_i_4_n_0 ;
  wire \conf_data_reg[11]_i_5_n_0 ;
  wire \conf_data_reg[11]_i_6_n_0 ;
  wire \conf_data_reg[12]_i_3_n_0 ;
  wire \conf_data_reg[12]_i_8_n_0 ;
  wire \conf_data_reg[12]_i_9_n_0 ;
  wire \conf_data_reg[13]_i_3_n_0 ;
  wire \conf_data_reg[16]_i_3_n_0 ;
  wire \conf_data_reg[17]_i_2_n_0 ;
  wire \conf_data_reg[18]_i_5_n_0 ;
  wire \conf_data_reg[18]_i_7_n_0 ;
  wire \conf_data_reg[1]_i_3_n_0 ;
  wire \conf_data_reg[1]_i_5_n_0 ;
  wire \conf_data_reg[1]_i_7_n_0 ;
  wire \conf_data_reg[2]_i_3_n_0 ;
  wire \conf_data_reg[2]_i_5_n_0 ;
  wire \conf_data_reg[3]_i_2_n_0 ;
  wire \conf_data_reg[3]_i_4_n_0 ;
  wire \conf_data_reg[3]_i_5_n_0 ;
  wire \conf_data_reg[4]_i_2_n_0 ;
  wire \conf_data_reg[4]_i_4_n_0 ;
  wire \conf_data_reg[5]_i_3_n_0 ;
  wire \conf_data_reg[5]_i_5_n_0 ;
  wire \conf_data_reg[5]_i_6_n_0 ;
  wire \conf_data_reg[6]_i_11_n_0 ;
  wire \conf_data_reg[6]_i_2_n_0 ;
  wire \conf_data_reg[6]_i_3_n_0 ;
  wire \conf_data_reg[7]_i_2_n_0 ;
  wire \conf_data_reg[7]_i_8_n_0 ;
  wire \conf_data_reg[8]_i_5_n_0 ;
  wire \conf_data_reg[9]_i_2_n_0 ;
  wire \conf_data_reg[9]_i_4_n_0 ;
  wire \conf_data_reg_n_0_[0] ;
  wire \conf_data_reg_n_0_[1] ;
  wire \conf_data_reg_n_0_[2] ;
  wire \conf_data_reg_n_0_[3] ;
  wire \conf_data_reg_n_0_[4] ;
  wire \conf_data_reg_n_0_[5] ;
  wire \conf_data_reg_n_0_[6] ;
  wire \conf_data_reg_n_0_[7] ;
  wire [24:1]data0;
  wire [0:0]dev_addr;
  wire iic_sccb_inst_n_2;
  wire iic_sccb_inst_n_3;
  wire iic_sccb_inst_n_4;
  wire iic_sccb_inst_n_5;
  wire [8:0]p_0_in__1;
  wire ready;
  wire ready_i_1__0_n_0;
  wire ready_i_2_n_0;
  wire ready_i_3_n_0;
  wire ready_i_4_n_0;
  wire ready_i_5_n_0;
  wire ready_i_6_n_0;
  wire ready_i_7_n_0;
  wire ready_i_8_n_0;
  wire ready_reg_n_0;
  wire [15:0]reg_addr;
  wire reg_conf_done;
  wire rst_p;
  wire start;
  wire start_i_1_n_0;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \wr_index_reg[8]_i_3_n_0 ;
  wire [8:0]wr_index_reg_reg__0;
  wire wr_req;
  wire wr_req0;
  wire [3:3]\NLW_cnt_reg_reg[24]_i_6_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    cfg_done_i_1
       (.I0(dev_addr),
        .I1(reg_conf_done),
        .O(cfg_done_i_1_n_0));
  FDRE cfg_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(cfg_done_i_1_n_0),
        .Q(reg_conf_done),
        .R(rst_p));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \cnt_reg[0]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(\cnt_reg_reg_n_0_[0] ),
        .O(\cnt_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[10]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[10]),
        .O(cnt_reg__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[11]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[11]),
        .O(cnt_reg__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[12]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[12]),
        .O(cnt_reg__0[12]));
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[13]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[13]),
        .O(cnt_reg__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[14]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[14]),
        .O(cnt_reg__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[15]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[15]),
        .O(cnt_reg__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[16]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[16]),
        .O(cnt_reg__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[17]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[17]),
        .O(cnt_reg__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[18]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[18]),
        .O(cnt_reg__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[19]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[19]),
        .O(cnt_reg__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[1]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[1]),
        .O(cnt_reg__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[20]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[20]),
        .O(cnt_reg__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[21]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[21]),
        .O(cnt_reg__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[22]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[22]),
        .O(cnt_reg__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[23]_i_1 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[23]),
        .O(cnt_reg__0[23]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt_reg[24]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\cnt_freq_reg[2] ),
        .O(\cnt_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[24]_i_2 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[24]),
        .O(cnt_reg__0[24]));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \cnt_reg[24]_i_3 
       (.I0(\cnt_reg_reg_n_0_[9] ),
        .I1(\cnt_reg[24]_i_7_n_0 ),
        .I2(\cnt_reg_reg_n_0_[1] ),
        .I3(\cnt_reg_reg_n_0_[0] ),
        .I4(\cnt_reg_reg_n_0_[3] ),
        .I5(\cnt_reg_reg_n_0_[2] ),
        .O(\cnt_reg[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_reg[24]_i_4 
       (.I0(\cnt_reg_reg_n_0_[13] ),
        .I1(\cnt_reg_reg_n_0_[15] ),
        .I2(\cnt_reg_reg_n_0_[7] ),
        .I3(\cnt_reg_reg_n_0_[6] ),
        .I4(\cnt_reg[24]_i_8_n_0 ),
        .O(\cnt_reg[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \cnt_reg[24]_i_5 
       (.I0(\cnt_reg_reg_n_0_[23] ),
        .I1(\cnt_reg_reg_n_0_[5] ),
        .I2(\cnt_reg_reg_n_0_[4] ),
        .I3(\cnt_reg_reg_n_0_[14] ),
        .I4(\cnt_reg[24]_i_9_n_0 ),
        .O(\cnt_reg[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_reg[24]_i_7 
       (.I0(\cnt_reg_reg_n_0_[18] ),
        .I1(\cnt_reg_reg_n_0_[19] ),
        .I2(\cnt_reg_reg_n_0_[16] ),
        .I3(\cnt_reg_reg_n_0_[17] ),
        .O(\cnt_reg[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_reg[24]_i_8 
       (.I0(\cnt_reg_reg_n_0_[21] ),
        .I1(\cnt_reg_reg_n_0_[20] ),
        .I2(\cnt_reg_reg_n_0_[24] ),
        .I3(\cnt_reg_reg_n_0_[22] ),
        .O(\cnt_reg[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_reg[24]_i_9 
       (.I0(\cnt_reg_reg_n_0_[10] ),
        .I1(\cnt_reg_reg_n_0_[11] ),
        .I2(\cnt_reg_reg_n_0_[8] ),
        .I3(\cnt_reg_reg_n_0_[12] ),
        .O(\cnt_reg[24]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[2]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[2]),
        .O(cnt_reg__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[3]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[3]),
        .O(cnt_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[4]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[4]),
        .O(cnt_reg__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[5]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[5]),
        .O(cnt_reg__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[6]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[6]),
        .O(cnt_reg__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[7]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[7]),
        .O(cnt_reg__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[8]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[8]),
        .O(cnt_reg__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \cnt_reg[9]_i_1__0 
       (.I0(\cnt_reg[24]_i_3_n_0 ),
        .I1(\cnt_reg[24]_i_4_n_0 ),
        .I2(\cnt_reg[24]_i_5_n_0 ),
        .I3(data0[9]),
        .O(cnt_reg__0[9]));
  FDRE \cnt_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1__0_n_0 ),
        .Q(\cnt_reg_reg_n_0_[0] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[10]),
        .Q(\cnt_reg_reg_n_0_[10] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[11]),
        .Q(\cnt_reg_reg_n_0_[11] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[12]),
        .Q(\cnt_reg_reg_n_0_[12] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  CARRY4 \cnt_reg_reg[12]_i_2 
       (.CI(\cnt_reg_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg_reg[12]_i_2_n_0 ,\cnt_reg_reg[12]_i_2_n_1 ,\cnt_reg_reg[12]_i_2_n_2 ,\cnt_reg_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_reg_reg_n_0_[12] ,\cnt_reg_reg_n_0_[11] ,\cnt_reg_reg_n_0_[10] ,\cnt_reg_reg_n_0_[9] }));
  FDRE \cnt_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[13]),
        .Q(\cnt_reg_reg_n_0_[13] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[14]),
        .Q(\cnt_reg_reg_n_0_[14] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[15]),
        .Q(\cnt_reg_reg_n_0_[15] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[16]),
        .Q(\cnt_reg_reg_n_0_[16] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  CARRY4 \cnt_reg_reg[16]_i_2 
       (.CI(\cnt_reg_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg_reg[16]_i_2_n_0 ,\cnt_reg_reg[16]_i_2_n_1 ,\cnt_reg_reg[16]_i_2_n_2 ,\cnt_reg_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_reg_reg_n_0_[16] ,\cnt_reg_reg_n_0_[15] ,\cnt_reg_reg_n_0_[14] ,\cnt_reg_reg_n_0_[13] }));
  FDRE \cnt_reg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[17]),
        .Q(\cnt_reg_reg_n_0_[17] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[18]),
        .Q(\cnt_reg_reg_n_0_[18] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[19]),
        .Q(\cnt_reg_reg_n_0_[19] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[1]),
        .Q(\cnt_reg_reg_n_0_[1] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[20]),
        .Q(\cnt_reg_reg_n_0_[20] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  CARRY4 \cnt_reg_reg[20]_i_2 
       (.CI(\cnt_reg_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg_reg[20]_i_2_n_0 ,\cnt_reg_reg[20]_i_2_n_1 ,\cnt_reg_reg[20]_i_2_n_2 ,\cnt_reg_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\cnt_reg_reg_n_0_[20] ,\cnt_reg_reg_n_0_[19] ,\cnt_reg_reg_n_0_[18] ,\cnt_reg_reg_n_0_[17] }));
  FDRE \cnt_reg_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[21]),
        .Q(\cnt_reg_reg_n_0_[21] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[22]),
        .Q(\cnt_reg_reg_n_0_[22] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[23]),
        .Q(\cnt_reg_reg_n_0_[23] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[24]),
        .Q(\cnt_reg_reg_n_0_[24] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  CARRY4 \cnt_reg_reg[24]_i_6 
       (.CI(\cnt_reg_reg[20]_i_2_n_0 ),
        .CO({\NLW_cnt_reg_reg[24]_i_6_CO_UNCONNECTED [3],\cnt_reg_reg[24]_i_6_n_1 ,\cnt_reg_reg[24]_i_6_n_2 ,\cnt_reg_reg[24]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\cnt_reg_reg_n_0_[24] ,\cnt_reg_reg_n_0_[23] ,\cnt_reg_reg_n_0_[22] ,\cnt_reg_reg_n_0_[21] }));
  FDRE \cnt_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[2]),
        .Q(\cnt_reg_reg_n_0_[2] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[3]),
        .Q(\cnt_reg_reg_n_0_[3] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[4]),
        .Q(\cnt_reg_reg_n_0_[4] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  CARRY4 \cnt_reg_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg_reg[4]_i_2_n_0 ,\cnt_reg_reg[4]_i_2_n_1 ,\cnt_reg_reg[4]_i_2_n_2 ,\cnt_reg_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_reg_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_reg_reg_n_0_[4] ,\cnt_reg_reg_n_0_[3] ,\cnt_reg_reg_n_0_[2] ,\cnt_reg_reg_n_0_[1] }));
  FDRE \cnt_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[5]),
        .Q(\cnt_reg_reg_n_0_[5] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[6]),
        .Q(\cnt_reg_reg_n_0_[6] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[7]),
        .Q(\cnt_reg_reg_n_0_[7] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  FDRE \cnt_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[8]),
        .Q(\cnt_reg_reg_n_0_[8] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  CARRY4 \cnt_reg_reg[8]_i_2 
       (.CI(\cnt_reg_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg_reg[8]_i_2_n_0 ,\cnt_reg_reg[8]_i_2_n_1 ,\cnt_reg_reg[8]_i_2_n_2 ,\cnt_reg_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_reg_reg_n_0_[8] ,\cnt_reg_reg_n_0_[7] ,\cnt_reg_reg_n_0_[6] ,\cnt_reg_reg_n_0_[5] }));
  FDRE \cnt_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg__0[9]),
        .Q(\cnt_reg_reg_n_0_[9] ),
        .R(\cnt_reg[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \conf_data[0]_i_1 
       (.I0(\conf_data_reg[0]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data[0]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data_reg[0]_i_4_n_0 ),
        .I5(\conf_data[0]_i_5_n_0 ),
        .O(\conf_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1044440140724441)) 
    \conf_data[0]_i_10 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h880080C3AE000000)) 
    \conf_data[0]_i_11 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000008)) 
    \conf_data[0]_i_12 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008009)) 
    \conf_data[0]_i_3 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(\conf_data[1]_i_8_n_0 ),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(\conf_data_reg[0]_i_8_n_0 ),
        .O(\conf_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010400400000)) 
    \conf_data[0]_i_5 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000404040244000A)) 
    \conf_data[0]_i_6 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0540804B0001011)) 
    \conf_data[0]_i_7 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0040008040408000)) 
    \conf_data[0]_i_9 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAE)) 
    \conf_data[10]_i_1 
       (.I0(\conf_data[10]_i_2_n_0 ),
        .I1(\conf_data[10]_i_3_n_0 ),
        .I2(wr_index_reg_reg__0[1]),
        .I3(\conf_data[10]_i_4_n_0 ),
        .I4(wr_index_reg_reg__0[8]),
        .I5(\conf_data[10]_i_5_n_0 ),
        .O(\conf_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800080020100000A)) 
    \conf_data[10]_i_2 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0098585818598898)) 
    \conf_data[10]_i_3 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4848450544454644)) 
    \conf_data[10]_i_4 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \conf_data[10]_i_5 
       (.I0(\conf_data[10]_i_6_n_0 ),
        .I1(\conf_data[10]_i_7_n_0 ),
        .I2(wr_index_reg_reg__0[0]),
        .I3(\conf_data[10]_i_8_n_0 ),
        .I4(wr_index_reg_reg__0[7]),
        .I5(\conf_data[10]_i_9_n_0 ),
        .O(\conf_data[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0855000000A045A2)) 
    \conf_data[10]_i_6 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0040600000000580)) 
    \conf_data[10]_i_7 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0FA0105000005050)) 
    \conf_data[10]_i_8 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0005400001000000)) 
    \conf_data[10]_i_9 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBB8FFFFFFFF)) 
    \conf_data[11]_i_1 
       (.I0(\conf_data[11]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[0]),
        .I2(\conf_data[11]_i_3_n_0 ),
        .I3(\conf_data_reg[11]_i_4_n_0 ),
        .I4(wr_index_reg_reg__0[8]),
        .I5(\conf_data_reg[11]_i_5_n_0 ),
        .O(\conf_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7376F0F13678D455)) 
    \conf_data[11]_i_10 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h02800080)) 
    \conf_data[11]_i_11 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .O(\conf_data[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200A20)) 
    \conf_data[11]_i_12 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \conf_data[11]_i_2 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[1]),
        .I5(\conf_data_reg[11]_i_6_n_0 ),
        .O(\conf_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0212100012121002)) 
    \conf_data[11]_i_3 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \conf_data[11]_i_7 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .O(\conf_data[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8002800080088000)) 
    \conf_data[11]_i_8 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7EF577FFF75577FE)) 
    \conf_data[11]_i_9 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \conf_data[12]_i_1 
       (.I0(\conf_data[12]_i_2_n_0 ),
        .I1(\conf_data_reg[12]_i_3_n_0 ),
        .I2(wr_index_reg_reg__0[8]),
        .I3(\conf_data[12]_i_4_n_0 ),
        .I4(wr_index_reg_reg__0[0]),
        .I5(\conf_data[12]_i_5_n_0 ),
        .O(\conf_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000800000800000)) 
    \conf_data[12]_i_10 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0602060204000000)) 
    \conf_data[12]_i_11 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000408000004)) 
    \conf_data[12]_i_12 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h511BA44050000000)) 
    \conf_data[12]_i_13 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8012882888080828)) 
    \conf_data[12]_i_2 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \conf_data[12]_i_4 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(\conf_data_reg[12]_i_8_n_0 ),
        .O(\conf_data[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \conf_data[12]_i_5 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(\conf_data_reg[12]_i_9_n_0 ),
        .O(\conf_data[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h10221001006E0110)) 
    \conf_data[12]_i_6 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0011000095000080)) 
    \conf_data[12]_i_7 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF8FFF80)) 
    \conf_data[13]_i_1 
       (.I0(\conf_data[13]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[8]),
        .I4(\conf_data_reg[13]_i_3_n_0 ),
        .O(\conf_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCA44884488008A40)) 
    \conf_data[13]_i_2 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[0]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80AA8082)) 
    \conf_data[13]_i_4 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[1]),
        .O(\conf_data[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000700000FC0)) 
    \conf_data[13]_i_5 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[0]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000000000)) 
    \conf_data[13]_i_6 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[0]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \conf_data[15]_i_1 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(\conf_data[15]_i_2_n_0 ),
        .I2(\conf_data[15]_i_3_n_0 ),
        .O(\conf_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h044404440444C444)) 
    \conf_data[15]_i_2 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(\conf_data[15]_i_4_n_0 ),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[1]),
        .I5(wr_index_reg_reg__0[0]),
        .O(\conf_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \conf_data[15]_i_3 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \conf_data[15]_i_4 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[3]),
        .O(\conf_data[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEAFF)) 
    \conf_data[16]_i_1 
       (.I0(\conf_data[16]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[7]),
        .I2(\conf_data_reg[16]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[6]),
        .I4(\conf_data[16]_i_4_n_0 ),
        .O(\conf_data[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \conf_data[16]_i_10 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[1]),
        .O(\conf_data[16]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conf_data[16]_i_11 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[6]),
        .O(\conf_data[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \conf_data[16]_i_2 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(\conf_data[16]_i_5_n_0 ),
        .I2(wr_index_reg_reg__0[8]),
        .I3(\conf_data[16]_i_6_n_0 ),
        .I4(\conf_data[16]_i_7_n_0 ),
        .I5(\conf_data[16]_i_8_n_0 ),
        .O(\conf_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFBFF7BFDF95)) 
    \conf_data[16]_i_4 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[0]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \conf_data[16]_i_5 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .O(\conf_data[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00AA8A0022AA8A00)) 
    \conf_data[16]_i_6 
       (.I0(\conf_data[16]_i_11_n_0 ),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8088000000022222)) 
    \conf_data[16]_i_7 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h02F00F0000000000)) 
    \conf_data[16]_i_8 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(\conf_data[6]_i_10_n_0 ),
        .O(\conf_data[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000040800000)) 
    \conf_data[16]_i_9 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEEEFEEEFEEE)) 
    \conf_data[17]_i_1 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(\conf_data_reg[17]_i_2_n_0 ),
        .I2(\conf_data[17]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(\conf_data[17]_i_4_n_0 ),
        .O(\conf_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00006F2C)) 
    \conf_data[17]_i_3 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(\conf_data[17]_i_7_n_0 ),
        .O(\conf_data[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3004B00000C480C3)) 
    \conf_data[17]_i_4 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h40058A0062058A10)) 
    \conf_data[17]_i_5 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0A09554000024A1)) 
    \conf_data[17]_i_6 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hDDFDFFF1)) 
    \conf_data[17]_i_7 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[5]),
        .O(\conf_data[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \conf_data[18]_i_1 
       (.I0(\conf_data[18]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data[18]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data[18]_i_4_n_0 ),
        .O(\conf_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0110505001100000)) 
    \conf_data[18]_i_10 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000800888)) 
    \conf_data[18]_i_11 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80100110)) 
    \conf_data[18]_i_2 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(\conf_data_reg[18]_i_5_n_0 ),
        .O(\conf_data[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h8A000000)) 
    \conf_data[18]_i_3 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(\conf_data[18]_i_6_n_0 ),
        .O(\conf_data[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \conf_data[18]_i_4 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(\conf_data_reg[18]_i_7_n_0 ),
        .O(\conf_data[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h03ABC0AA)) 
    \conf_data[18]_i_6 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[1]),
        .O(\conf_data[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5151000004000004)) 
    \conf_data[18]_i_8 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003000044000040)) 
    \conf_data[18]_i_9 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEEEEEEEEEE)) 
    \conf_data[19]_i_1 
       (.I0(\conf_data[19]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(\conf_data[19]_i_3_n_0 ),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC2201010)) 
    \conf_data[19]_i_2 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(\conf_data[19]_i_4_n_0 ),
        .O(\conf_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40A8406444644444)) 
    \conf_data[19]_i_3 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[1]),
        .I5(wr_index_reg_reg__0[0]),
        .O(\conf_data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4D7F30EC00000000)) 
    \conf_data[19]_i_4 
       (.I0(wr_index_reg_reg__0[0]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(\conf_data[19]_i_5_n_0 ),
        .O(\conf_data[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \conf_data[19]_i_5 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[7]),
        .O(\conf_data[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAAFE)) 
    \conf_data[1]_i_1 
       (.I0(\conf_data[1]_i_2_n_0 ),
        .I1(\conf_data_reg[1]_i_3_n_0 ),
        .I2(\conf_data[1]_i_4_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data_reg[1]_i_5_n_0 ),
        .I5(\conf_data[1]_i_6_n_0 ),
        .O(\conf_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00201E0001018080)) 
    \conf_data[1]_i_10 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h03001C472020208C)) 
    \conf_data[1]_i_11 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000201000057A00)) 
    \conf_data[1]_i_12 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8800C850A8050500)) 
    \conf_data[1]_i_13 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA008000000008200)) 
    \conf_data[1]_i_14 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    \conf_data[1]_i_2 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(\conf_data_reg[1]_i_7_n_0 ),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(\conf_data[1]_i_8_n_0 ),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0008000C8000003)) 
    \conf_data[1]_i_4 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02A0224820100508)) 
    \conf_data[1]_i_6 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \conf_data[1]_i_8 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[7]),
        .O(\conf_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC30004C40008000B)) 
    \conf_data[1]_i_9 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABAAFAA)) 
    \conf_data[20]_i_1 
       (.I0(\conf_data[20]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[0]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(\conf_data[20]_i_3_n_0 ),
        .O(\conf_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hE7F50F3F)) 
    \conf_data[20]_i_2 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[4]),
        .O(\conf_data[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFDFFFFCF)) 
    \conf_data[20]_i_3 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[8]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[7]),
        .O(\conf_data[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFAABAAAB)) 
    \conf_data[21]_i_1 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(\conf_data[21]_i_2_n_0 ),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(\conf_data[21]_i_3_n_0 ),
        .O(\conf_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0CF000020000000)) 
    \conf_data[21]_i_2 
       (.I0(wr_index_reg_reg__0[0]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDEDEDEE6E6EEEE)) 
    \conf_data[21]_i_3 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[0]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF6F6F6FFF6)) 
    \conf_data[22]_i_1 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[8]),
        .I3(\conf_data[22]_i_2_n_0 ),
        .I4(wr_index_reg_reg__0[5]),
        .I5(\conf_data[22]_i_3_n_0 ),
        .O(\conf_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000080557F0000)) 
    \conf_data[22]_i_2 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[0]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC30CC30C880C0B0)) 
    \conf_data[22]_i_3 
       (.I0(wr_index_reg_reg__0[0]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[1]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[22]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \conf_data[24]_i_1 
       (.I0(reg_conf_done),
        .O(\conf_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \conf_data[24]_i_2 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAAFE)) 
    \conf_data[2]_i_1 
       (.I0(\conf_data[2]_i_2_n_0 ),
        .I1(\conf_data_reg[2]_i_3_n_0 ),
        .I2(\conf_data[2]_i_4_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data_reg[2]_i_5_n_0 ),
        .I5(\conf_data[2]_i_6_n_0 ),
        .O(\conf_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004602024000)) 
    \conf_data[2]_i_10 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h828580A808000828)) 
    \conf_data[2]_i_11 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA0F050500040909F)) 
    \conf_data[2]_i_12 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBABFFFFBBFB)) 
    \conf_data[2]_i_2 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(\conf_data[2]_i_7_n_0 ),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(\conf_data[2]_i_8_n_0 ),
        .O(\conf_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4418121810000000)) 
    \conf_data[2]_i_4 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0220180002400000)) 
    \conf_data[2]_i_6 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hEFFFBFEB)) 
    \conf_data[2]_i_7 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[1]),
        .O(\conf_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h77DFFFDF77FDFB5F)) 
    \conf_data[2]_i_8 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5111002051058094)) 
    \conf_data[2]_i_9 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEFFFE)) 
    \conf_data[3]_i_1 
       (.I0(\conf_data_reg[3]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data[3]_i_3_n_0 ),
        .I3(\conf_data_reg[3]_i_4_n_0 ),
        .I4(wr_index_reg_reg__0[0]),
        .I5(\conf_data_reg[3]_i_5_n_0 ),
        .O(\conf_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0005005B5805A10)) 
    \conf_data[3]_i_10 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000021210050212)) 
    \conf_data[3]_i_11 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0002010088000008)) 
    \conf_data[3]_i_3 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2200220000008404)) 
    \conf_data[3]_i_6 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[1]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA11400000006000)) 
    \conf_data[3]_i_7 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8808000000038C4C)) 
    \conf_data[3]_i_8 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF01144001504C700)) 
    \conf_data[3]_i_9 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \conf_data[4]_i_1 
       (.I0(\conf_data_reg[4]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data[4]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data_reg[4]_i_4_n_0 ),
        .I5(\conf_data[4]_i_5_n_0 ),
        .O(\conf_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500040000151402)) 
    \conf_data[4]_i_10 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h033303032FC00200)) 
    \conf_data[4]_i_11 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h20020001000A9009)) 
    \conf_data[4]_i_12 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \conf_data[4]_i_3 
       (.I0(\conf_data[4]_i_8_n_0 ),
        .I1(\conf_data[4]_i_9_n_0 ),
        .I2(wr_index_reg_reg__0[1]),
        .I3(\conf_data[4]_i_10_n_0 ),
        .O(\conf_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4400490801880584)) 
    \conf_data[4]_i_5 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000100000000010)) 
    \conf_data[4]_i_6 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8830000000000C)) 
    \conf_data[4]_i_7 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000520020000020)) 
    \conf_data[4]_i_8 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000900009100000)) 
    \conf_data[4]_i_9 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \conf_data[5]_i_1 
       (.I0(\conf_data[5]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data_reg[5]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data[5]_i_4_n_0 ),
        .I5(\conf_data_reg[5]_i_5_n_0 ),
        .O(\conf_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000080)) 
    \conf_data[5]_i_10 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .O(\conf_data[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0208208404040004)) 
    \conf_data[5]_i_11 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC0008000C00C0C00)) 
    \conf_data[5]_i_12 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \conf_data[5]_i_2 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(\conf_data_reg[5]_i_6_n_0 ),
        .O(\conf_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404044E00820000)) 
    \conf_data[5]_i_4 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20A22EA080C75730)) 
    \conf_data[5]_i_7 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004040000004000)) 
    \conf_data[5]_i_8 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1001221D00002210)) 
    \conf_data[5]_i_9 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEFFFE)) 
    \conf_data[6]_i_1 
       (.I0(\conf_data_reg[6]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data_reg[6]_i_3_n_0 ),
        .I3(\conf_data[6]_i_4_n_0 ),
        .I4(wr_index_reg_reg__0[0]),
        .I5(\conf_data[6]_i_5_n_0 ),
        .O(\conf_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \conf_data[6]_i_10 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[6]),
        .O(\conf_data[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0044000055041104)) 
    \conf_data[6]_i_12 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008304045)) 
    \conf_data[6]_i_13 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010020000000200)) 
    \conf_data[6]_i_4 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22700000)) 
    \conf_data[6]_i_5 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(\conf_data[6]_i_10_n_0 ),
        .I5(\conf_data_reg[6]_i_11_n_0 ),
        .O(\conf_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0040040000040000)) 
    \conf_data[6]_i_6 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB0E8400000000008)) 
    \conf_data[6]_i_7 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[1]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0505000050000510)) 
    \conf_data[6]_i_8 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[7]),
        .O(\conf_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h002B000020000020)) 
    \conf_data[6]_i_9 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEFEEEEEEEF)) 
    \conf_data[7]_i_1 
       (.I0(\conf_data_reg[7]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data[7]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[6]),
        .I4(wr_index_reg_reg__0[0]),
        .I5(\conf_data[7]_i_4_n_0 ),
        .O(\conf_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A00800011440041)) 
    \conf_data[7]_i_10 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[6]),
        .O(\conf_data[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBFF65FFEDEDFFFFE)) 
    \conf_data[7]_i_3 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \conf_data[7]_i_4 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(\conf_data[7]_i_7_n_0 ),
        .I5(\conf_data_reg[7]_i_8_n_0 ),
        .O(\conf_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000040000)) 
    \conf_data[7]_i_5 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA08000000000200)) 
    \conf_data[7]_i_6 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[6]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \conf_data[7]_i_7 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(wr_index_reg_reg__0[7]),
        .O(\conf_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0050500000206200)) 
    \conf_data[7]_i_9 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEAE)) 
    \conf_data[8]_i_1 
       (.I0(\conf_data[8]_i_2_n_0 ),
        .I1(\conf_data[8]_i_3_n_0 ),
        .I2(wr_index_reg_reg__0[0]),
        .I3(\conf_data[8]_i_4_n_0 ),
        .I4(\conf_data_reg[8]_i_5_n_0 ),
        .I5(\conf_data[8]_i_6_n_0 ),
        .O(\conf_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040000110400001)) 
    \conf_data[8]_i_10 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h01550000)) 
    \conf_data[8]_i_11 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .O(\conf_data[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFDF7DD5F)) 
    \conf_data[8]_i_12 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .O(\conf_data[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hABABEFABABABABAB)) 
    \conf_data[8]_i_2 
       (.I0(wr_index_reg_reg__0[8]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(\conf_data[8]_i_7_n_0 ),
        .I3(wr_index_reg_reg__0[4]),
        .I4(\conf_data[8]_i_8_n_0 ),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF80FF00FF80)) 
    \conf_data[8]_i_3 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(\conf_data[8]_i_9_n_0 ),
        .I4(wr_index_reg_reg__0[1]),
        .I5(\conf_data[8]_i_10_n_0 ),
        .O(\conf_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h231011105558AF58)) 
    \conf_data[8]_i_4 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80000000800C0C00)) 
    \conf_data[8]_i_6 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[5]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFFFFBFFFFBBB)) 
    \conf_data[8]_i_7 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \conf_data[8]_i_8 
       (.I0(wr_index_reg_reg__0[7]),
        .I1(wr_index_reg_reg__0[5]),
        .O(\conf_data[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h112020202320E120)) 
    \conf_data[8]_i_9 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[2]),
        .O(\conf_data[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEFE)) 
    \conf_data[9]_i_1 
       (.I0(\conf_data_reg[9]_i_2_n_0 ),
        .I1(wr_index_reg_reg__0[8]),
        .I2(\conf_data[9]_i_3_n_0 ),
        .I3(wr_index_reg_reg__0[0]),
        .I4(\conf_data_reg[9]_i_4_n_0 ),
        .I5(\conf_data[9]_i_5_n_0 ),
        .O(\conf_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444404444A020206)) 
    \conf_data[9]_i_10 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[3]),
        .O(\conf_data[9]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00008200)) 
    \conf_data[9]_i_11 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[5]),
        .I3(wr_index_reg_reg__0[4]),
        .I4(wr_index_reg_reg__0[6]),
        .O(\conf_data[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2030010044101919)) 
    \conf_data[9]_i_12 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[6]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[7]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55ABFFFF55AB0000)) 
    \conf_data[9]_i_3 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(\conf_data[9]_i_8_n_0 ),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[6]),
        .I4(\conf_data[9]_i_9_n_0 ),
        .I5(\conf_data[9]_i_10_n_0 ),
        .O(\conf_data[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010011000)) 
    \conf_data[9]_i_5 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[5]),
        .I4(wr_index_reg_reg__0[3]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\conf_data[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00020A0020A020A2)) 
    \conf_data[9]_i_6 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[4]),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[5]),
        .O(\conf_data[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA08000009BB7FFB7)) 
    \conf_data[9]_i_7 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[7]),
        .I2(wr_index_reg_reg__0[4]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[5]),
        .I5(wr_index_reg_reg__0[1]),
        .O(\conf_data[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \conf_data[9]_i_8 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[5]),
        .O(\conf_data[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h5C5DF131)) 
    \conf_data[9]_i_9 
       (.I0(wr_index_reg_reg__0[4]),
        .I1(wr_index_reg_reg__0[2]),
        .I2(wr_index_reg_reg__0[3]),
        .I3(wr_index_reg_reg__0[7]),
        .I4(wr_index_reg_reg__0[5]),
        .O(\conf_data[9]_i_9_n_0 ));
  FDRE \conf_data_reg[0] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[0]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[0] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[0]_i_2 
       (.I0(\conf_data[0]_i_6_n_0 ),
        .I1(\conf_data[0]_i_7_n_0 ),
        .O(\conf_data_reg[0]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[6]));
  MUXF7 \conf_data_reg[0]_i_4 
       (.I0(\conf_data[0]_i_9_n_0 ),
        .I1(\conf_data[0]_i_10_n_0 ),
        .O(\conf_data_reg[0]_i_4_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[0]_i_8 
       (.I0(\conf_data[0]_i_11_n_0 ),
        .I1(\conf_data[0]_i_12_n_0 ),
        .O(\conf_data_reg[0]_i_8_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDRE \conf_data_reg[10] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[10]_i_1_n_0 ),
        .Q(reg_addr[2]),
        .R(rst_p));
  FDRE \conf_data_reg[11] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[11]_i_1_n_0 ),
        .Q(reg_addr[3]),
        .R(rst_p));
  MUXF7 \conf_data_reg[11]_i_4 
       (.I0(\conf_data[11]_i_7_n_0 ),
        .I1(\conf_data[11]_i_8_n_0 ),
        .O(\conf_data_reg[11]_i_4_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[11]_i_5 
       (.I0(\conf_data[11]_i_9_n_0 ),
        .I1(\conf_data[11]_i_10_n_0 ),
        .O(\conf_data_reg[11]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[3]));
  MUXF7 \conf_data_reg[11]_i_6 
       (.I0(\conf_data[11]_i_11_n_0 ),
        .I1(\conf_data[11]_i_12_n_0 ),
        .O(\conf_data_reg[11]_i_6_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDRE \conf_data_reg[12] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[12]_i_1_n_0 ),
        .Q(reg_addr[4]),
        .R(rst_p));
  MUXF7 \conf_data_reg[12]_i_3 
       (.I0(\conf_data[12]_i_6_n_0 ),
        .I1(\conf_data[12]_i_7_n_0 ),
        .O(\conf_data_reg[12]_i_3_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[12]_i_8 
       (.I0(\conf_data[12]_i_10_n_0 ),
        .I1(\conf_data[12]_i_11_n_0 ),
        .O(\conf_data_reg[12]_i_8_n_0 ),
        .S(wr_index_reg_reg__0[2]));
  MUXF7 \conf_data_reg[12]_i_9 
       (.I0(\conf_data[12]_i_12_n_0 ),
        .I1(\conf_data[12]_i_13_n_0 ),
        .O(\conf_data_reg[12]_i_9_n_0 ),
        .S(wr_index_reg_reg__0[5]));
  FDRE \conf_data_reg[13] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[13]_i_1_n_0 ),
        .Q(reg_addr[5]),
        .R(rst_p));
  MUXF7 \conf_data_reg[13]_i_3 
       (.I0(\conf_data[13]_i_5_n_0 ),
        .I1(\conf_data[13]_i_6_n_0 ),
        .O(\conf_data_reg[13]_i_3_n_0 ),
        .S(\conf_data[13]_i_4_n_0 ));
  FDRE \conf_data_reg[15] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[15]_i_1_n_0 ),
        .Q(reg_addr[7]),
        .R(rst_p));
  FDRE \conf_data_reg[16] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[16]_i_1_n_0 ),
        .Q(reg_addr[8]),
        .R(rst_p));
  MUXF7 \conf_data_reg[16]_i_3 
       (.I0(\conf_data[16]_i_9_n_0 ),
        .I1(\conf_data[16]_i_10_n_0 ),
        .O(\conf_data_reg[16]_i_3_n_0 ),
        .S(wr_index_reg_reg__0[0]));
  FDRE \conf_data_reg[17] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[17]_i_1_n_0 ),
        .Q(reg_addr[9]),
        .R(rst_p));
  MUXF7 \conf_data_reg[17]_i_2 
       (.I0(\conf_data[17]_i_5_n_0 ),
        .I1(\conf_data[17]_i_6_n_0 ),
        .O(\conf_data_reg[17]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[4]));
  FDRE \conf_data_reg[18] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[18]_i_1_n_0 ),
        .Q(reg_addr[10]),
        .R(rst_p));
  MUXF7 \conf_data_reg[18]_i_5 
       (.I0(\conf_data[18]_i_8_n_0 ),
        .I1(\conf_data[18]_i_9_n_0 ),
        .O(\conf_data_reg[18]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[2]));
  MUXF7 \conf_data_reg[18]_i_7 
       (.I0(\conf_data[18]_i_10_n_0 ),
        .I1(\conf_data[18]_i_11_n_0 ),
        .O(\conf_data_reg[18]_i_7_n_0 ),
        .S(wr_index_reg_reg__0[7]));
  FDRE \conf_data_reg[19] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[19]_i_1_n_0 ),
        .Q(reg_addr[11]),
        .R(rst_p));
  FDRE \conf_data_reg[1] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[1]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[1] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[1]_i_3 
       (.I0(\conf_data[1]_i_9_n_0 ),
        .I1(\conf_data[1]_i_10_n_0 ),
        .O(\conf_data_reg[1]_i_3_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[1]_i_5 
       (.I0(\conf_data[1]_i_11_n_0 ),
        .I1(\conf_data[1]_i_12_n_0 ),
        .O(\conf_data_reg[1]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[1]_i_7 
       (.I0(\conf_data[1]_i_13_n_0 ),
        .I1(\conf_data[1]_i_14_n_0 ),
        .O(\conf_data_reg[1]_i_7_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDRE \conf_data_reg[20] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[20]_i_1_n_0 ),
        .Q(reg_addr[12]),
        .R(rst_p));
  FDSE \conf_data_reg[21] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[21]_i_1_n_0 ),
        .Q(reg_addr[13]),
        .S(rst_p));
  FDRE \conf_data_reg[22] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[22]_i_1_n_0 ),
        .Q(reg_addr[14]),
        .R(rst_p));
  FDSE \conf_data_reg[23] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[24]_i_2_n_0 ),
        .Q(reg_addr[15]),
        .S(rst_p));
  FDRE \conf_data_reg[24] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[24]_i_2_n_0 ),
        .Q(dev_addr),
        .R(rst_p));
  FDRE \conf_data_reg[2] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[2]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[2] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[2]_i_3 
       (.I0(\conf_data[2]_i_9_n_0 ),
        .I1(\conf_data[2]_i_10_n_0 ),
        .O(\conf_data_reg[2]_i_3_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[2]_i_5 
       (.I0(\conf_data[2]_i_11_n_0 ),
        .I1(\conf_data[2]_i_12_n_0 ),
        .O(\conf_data_reg[2]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDRE \conf_data_reg[3] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[3]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[3] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[3]_i_2 
       (.I0(\conf_data[3]_i_6_n_0 ),
        .I1(\conf_data[3]_i_7_n_0 ),
        .O(\conf_data_reg[3]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[4]));
  MUXF7 \conf_data_reg[3]_i_4 
       (.I0(\conf_data[3]_i_8_n_0 ),
        .I1(\conf_data[3]_i_9_n_0 ),
        .O(\conf_data_reg[3]_i_4_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[3]_i_5 
       (.I0(\conf_data[3]_i_10_n_0 ),
        .I1(\conf_data[3]_i_11_n_0 ),
        .O(\conf_data_reg[3]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[2]));
  FDRE \conf_data_reg[4] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[4]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[4] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[4]_i_2 
       (.I0(\conf_data[4]_i_6_n_0 ),
        .I1(\conf_data[4]_i_7_n_0 ),
        .O(\conf_data_reg[4]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[4]));
  MUXF7 \conf_data_reg[4]_i_4 
       (.I0(\conf_data[4]_i_11_n_0 ),
        .I1(\conf_data[4]_i_12_n_0 ),
        .O(\conf_data_reg[4]_i_4_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDRE \conf_data_reg[5] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[5]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[5] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[5]_i_3 
       (.I0(\conf_data[5]_i_7_n_0 ),
        .I1(\conf_data[5]_i_8_n_0 ),
        .O(\conf_data_reg[5]_i_3_n_0 ),
        .S(wr_index_reg_reg__0[6]));
  MUXF7 \conf_data_reg[5]_i_5 
       (.I0(\conf_data[5]_i_9_n_0 ),
        .I1(\conf_data[5]_i_10_n_0 ),
        .O(\conf_data_reg[5]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[4]));
  MUXF7 \conf_data_reg[5]_i_6 
       (.I0(\conf_data[5]_i_11_n_0 ),
        .I1(\conf_data[5]_i_12_n_0 ),
        .O(\conf_data_reg[5]_i_6_n_0 ),
        .S(wr_index_reg_reg__0[3]));
  FDRE \conf_data_reg[6] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[6]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[6] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[6]_i_11 
       (.I0(\conf_data[6]_i_12_n_0 ),
        .I1(\conf_data[6]_i_13_n_0 ),
        .O(\conf_data_reg[6]_i_11_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  MUXF7 \conf_data_reg[6]_i_2 
       (.I0(\conf_data[6]_i_6_n_0 ),
        .I1(\conf_data[6]_i_7_n_0 ),
        .O(\conf_data_reg[6]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[3]));
  MUXF7 \conf_data_reg[6]_i_3 
       (.I0(\conf_data[6]_i_8_n_0 ),
        .I1(\conf_data[6]_i_9_n_0 ),
        .O(\conf_data_reg[6]_i_3_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDRE \conf_data_reg[7] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[7]_i_1_n_0 ),
        .Q(\conf_data_reg_n_0_[7] ),
        .R(rst_p));
  MUXF7 \conf_data_reg[7]_i_2 
       (.I0(\conf_data[7]_i_5_n_0 ),
        .I1(\conf_data[7]_i_6_n_0 ),
        .O(\conf_data_reg[7]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[3]));
  MUXF7 \conf_data_reg[7]_i_8 
       (.I0(\conf_data[7]_i_9_n_0 ),
        .I1(\conf_data[7]_i_10_n_0 ),
        .O(\conf_data_reg[7]_i_8_n_0 ),
        .S(wr_index_reg_reg__0[1]));
  FDSE \conf_data_reg[8] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[8]_i_1_n_0 ),
        .Q(reg_addr[0]),
        .S(rst_p));
  MUXF7 \conf_data_reg[8]_i_5 
       (.I0(\conf_data[8]_i_11_n_0 ),
        .I1(\conf_data[8]_i_12_n_0 ),
        .O(\conf_data_reg[8]_i_5_n_0 ),
        .S(wr_index_reg_reg__0[6]));
  FDRE \conf_data_reg[9] 
       (.C(clk),
        .CE(\conf_data[24]_i_1_n_0 ),
        .D(\conf_data[9]_i_1_n_0 ),
        .Q(reg_addr[1]),
        .R(rst_p));
  MUXF7 \conf_data_reg[9]_i_2 
       (.I0(\conf_data[9]_i_6_n_0 ),
        .I1(\conf_data[9]_i_7_n_0 ),
        .O(\conf_data_reg[9]_i_2_n_0 ),
        .S(wr_index_reg_reg__0[6]));
  MUXF7 \conf_data_reg[9]_i_4 
       (.I0(\conf_data[9]_i_11_n_0 ),
        .I1(\conf_data[9]_i_12_n_0 ),
        .O(\conf_data_reg[9]_i_4_n_0 ),
        .S(wr_index_reg_reg__0[2]));
  design_1_ov5640_driver_0_0_iic_sccb iic_sccb_inst
       (.E(iic_sccb_inst_n_2),
        .Q({dev_addr,reg_addr[15:7],reg_addr[5:0],\conf_data_reg_n_0_[7] ,\conf_data_reg_n_0_[6] ,\conf_data_reg_n_0_[5] ,\conf_data_reg_n_0_[4] ,\conf_data_reg_n_0_[3] ,\conf_data_reg_n_0_[2] ,\conf_data_reg_n_0_[1] ,\conf_data_reg_n_0_[0] }),
        .clk(clk),
        .cmos_reset_reg_reg(rst_p),
        .cmos_scl(cmos_scl),
        .cmos_sda(cmos_sda),
        .\cnt_freq_reg[2]_0 (\cnt_freq_reg[2] ),
        .start(start),
        .state(state),
        .\state_reg[2] (ready_reg_n_0),
        .wr_done_reg_0(iic_sccb_inst_n_4),
        .wr_done_reg_1(iic_sccb_inst_n_5),
        .\wr_index_reg_reg[8] (reg_conf_done),
        .wr_req(wr_req),
        .wr_req0(wr_req0),
        .wr_req_reg(iic_sccb_inst_n_3));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[0]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[0]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[1]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[1]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[2]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[2]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[3]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[3]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[4]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[4]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[5]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[5]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[6]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[6]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[7]_i_1 
       (.I0(reg_conf_done),
        .I1(cmos_data[7]),
        .I2(cmos_href),
        .I3(ready),
        .O(cfg_done_reg_0));
  LUT6 #(
    .INIT(64'h000FFFFF00010001)) 
    ready_i_1__0
       (.I0(ready_i_2_n_0),
        .I1(ready_i_3_n_0),
        .I2(ready_i_4_n_0),
        .I3(state[2]),
        .I4(start),
        .I5(ready_reg_n_0),
        .O(ready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    ready_i_2
       (.I0(\cnt_reg_reg_n_0_[0] ),
        .I1(ready_i_5_n_0),
        .I2(\cnt_reg_reg_n_0_[24] ),
        .I3(\cnt_reg_reg_n_0_[23] ),
        .I4(\cnt_reg_reg_n_0_[21] ),
        .I5(\cnt_reg_reg_n_0_[22] ),
        .O(ready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    ready_i_3
       (.I0(ready_i_6_n_0),
        .I1(\cnt_reg_reg_n_0_[15] ),
        .I2(\cnt_reg_reg_n_0_[8] ),
        .I3(\cnt_reg_reg_n_0_[13] ),
        .I4(\cnt_reg_reg_n_0_[10] ),
        .I5(ready_i_7_n_0),
        .O(ready_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    ready_i_4
       (.I0(state[0]),
        .I1(state[1]),
        .O(ready_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ready_i_5
       (.I0(\cnt_reg_reg_n_0_[11] ),
        .I1(\cnt_reg_reg_n_0_[20] ),
        .I2(\cnt_reg_reg_n_0_[7] ),
        .I3(\cnt_reg_reg_n_0_[6] ),
        .O(ready_i_5_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    ready_i_6
       (.I0(\cnt_reg_reg_n_0_[19] ),
        .I1(\cnt_reg_reg_n_0_[12] ),
        .I2(\cnt_reg_reg_n_0_[9] ),
        .I3(\cnt_reg_reg_n_0_[14] ),
        .O(ready_i_6_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    ready_i_7
       (.I0(\cnt_reg_reg_n_0_[18] ),
        .I1(\cnt_reg_reg_n_0_[5] ),
        .I2(\cnt_reg_reg_n_0_[16] ),
        .I3(\cnt_reg_reg_n_0_[17] ),
        .I4(ready_i_8_n_0),
        .O(ready_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ready_i_8
       (.I0(\cnt_reg_reg_n_0_[3] ),
        .I1(\cnt_reg_reg_n_0_[4] ),
        .I2(\cnt_reg_reg_n_0_[1] ),
        .I3(\cnt_reg_reg_n_0_[2] ),
        .O(ready_i_8_n_0));
  FDRE ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_i_1__0_n_0),
        .Q(ready_reg_n_0),
        .R(rst_p));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    start_i_1
       (.I0(ready_reg_n_0),
        .I1(dev_addr),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(reg_conf_done),
        .O(start_i_1_n_0));
  FDRE start_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start),
        .R(rst_p));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE9)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,WRITE:0100,WR_CHECK:0010" *) 
  FDSE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .S(rst_p));
  (* FSM_ENCODED_STATES = "IDLE:0001,WRITE:0100,WR_CHECK:0010" *) 
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(iic_sccb_inst_n_5),
        .Q(state[1]),
        .R(rst_p));
  (* FSM_ENCODED_STATES = "IDLE:0001,WRITE:0100,WR_CHECK:0010" *) 
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(iic_sccb_inst_n_4),
        .Q(state[2]),
        .R(rst_p));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index_reg[0]_i_1 
       (.I0(wr_index_reg_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index_reg[1]_i_1 
       (.I0(wr_index_reg_reg__0[0]),
        .I1(wr_index_reg_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index_reg[2]_i_1 
       (.I0(wr_index_reg_reg__0[0]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index_reg[3]_i_1 
       (.I0(wr_index_reg_reg__0[1]),
        .I1(wr_index_reg_reg__0[0]),
        .I2(wr_index_reg_reg__0[2]),
        .I3(wr_index_reg_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_index_reg[4]_i_1 
       (.I0(wr_index_reg_reg__0[2]),
        .I1(wr_index_reg_reg__0[0]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[3]),
        .I4(wr_index_reg_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_index_reg[5]_i_1 
       (.I0(wr_index_reg_reg__0[3]),
        .I1(wr_index_reg_reg__0[1]),
        .I2(wr_index_reg_reg__0[0]),
        .I3(wr_index_reg_reg__0[2]),
        .I4(wr_index_reg_reg__0[4]),
        .I5(wr_index_reg_reg__0[5]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index_reg[6]_i_1 
       (.I0(\wr_index_reg[8]_i_3_n_0 ),
        .I1(wr_index_reg_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index_reg[7]_i_1 
       (.I0(\wr_index_reg[8]_i_3_n_0 ),
        .I1(wr_index_reg_reg__0[6]),
        .I2(wr_index_reg_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index_reg[8]_i_2 
       (.I0(wr_index_reg_reg__0[6]),
        .I1(\wr_index_reg[8]_i_3_n_0 ),
        .I2(wr_index_reg_reg__0[7]),
        .I3(wr_index_reg_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wr_index_reg[8]_i_3 
       (.I0(wr_index_reg_reg__0[5]),
        .I1(wr_index_reg_reg__0[3]),
        .I2(wr_index_reg_reg__0[1]),
        .I3(wr_index_reg_reg__0[0]),
        .I4(wr_index_reg_reg__0[2]),
        .I5(wr_index_reg_reg__0[4]),
        .O(\wr_index_reg[8]_i_3_n_0 ));
  FDRE \wr_index_reg_reg[0] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[0]),
        .Q(wr_index_reg_reg__0[0]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[1] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[1]),
        .Q(wr_index_reg_reg__0[1]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[2] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[2]),
        .Q(wr_index_reg_reg__0[2]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[3] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[3]),
        .Q(wr_index_reg_reg__0[3]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[4] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[4]),
        .Q(wr_index_reg_reg__0[4]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[5] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[5]),
        .Q(wr_index_reg_reg__0[5]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[6] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[6]),
        .Q(wr_index_reg_reg__0[6]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[7] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[7]),
        .Q(wr_index_reg_reg__0[7]),
        .R(rst_p));
  FDRE \wr_index_reg_reg[8] 
       (.C(clk),
        .CE(iic_sccb_inst_n_2),
        .D(p_0_in__1[8]),
        .Q(wr_index_reg_reg__0[8]),
        .R(rst_p));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    wr_req_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(dev_addr),
        .I4(ready_reg_n_0),
        .O(wr_req0));
  FDRE wr_req_reg
       (.C(clk),
        .CE(1'b1),
        .D(iic_sccb_inst_n_3),
        .Q(wr_req),
        .R(1'b0));
endmodule

module design_1_ov5640_driver_0_0_coms_data_convert
   (ready,
    rgb_data,
    cmos_clk_en,
    rst_p,
    cmos_pclk,
    ready_reg_0,
    reg_conf_done,
    cmos_href,
    cmos_vsync,
    \pixel_reg_reg[7]_0 ,
    \pixel_reg_reg[6]_0 ,
    \pixel_reg_reg[5]_0 ,
    \pixel_reg_reg[4]_0 ,
    \pixel_reg_reg[3]_0 ,
    \pixel_reg_reg[2]_0 ,
    \pixel_reg_reg[1]_0 ,
    \pixel_reg_reg[0]_0 );
  output ready;
  output [15:0]rgb_data;
  output cmos_clk_en;
  input rst_p;
  input cmos_pclk;
  input ready_reg_0;
  input reg_conf_done;
  input cmos_href;
  input cmos_vsync;
  input \pixel_reg_reg[7]_0 ;
  input \pixel_reg_reg[6]_0 ;
  input \pixel_reg_reg[5]_0 ;
  input \pixel_reg_reg[4]_0 ;
  input \pixel_reg_reg[3]_0 ;
  input \pixel_reg_reg[2]_0 ;
  input \pixel_reg_reg[1]_0 ;
  input \pixel_reg_reg[0]_0 ;

  wire cmos_clk_en;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_vsync;
  wire [1:0]cmos_vsync_pix_hal;
  wire \cmos_vsync_pix_hal[0]_i_1_n_0 ;
  wire \cmos_vsync_pix_hal[1]_i_1_n_0 ;
  wire \cnt_data[0]_i_1_n_0 ;
  wire [0:0]cnt_data_reg;
  wire data_valid_reg;
  wire \pixel_reg[10]_i_1_n_0 ;
  wire \pixel_reg[11]_i_1_n_0 ;
  wire \pixel_reg[12]_i_1_n_0 ;
  wire \pixel_reg[13]_i_1_n_0 ;
  wire \pixel_reg[14]_i_1_n_0 ;
  wire \pixel_reg[15]_i_2_n_0 ;
  wire \pixel_reg[8]_i_1_n_0 ;
  wire \pixel_reg[9]_i_1_n_0 ;
  wire \pixel_reg_reg[0]_0 ;
  wire \pixel_reg_reg[1]_0 ;
  wire \pixel_reg_reg[2]_0 ;
  wire \pixel_reg_reg[3]_0 ;
  wire \pixel_reg_reg[4]_0 ;
  wire \pixel_reg_reg[5]_0 ;
  wire \pixel_reg_reg[6]_0 ;
  wire \pixel_reg_reg[7]_0 ;
  wire ready;
  wire ready_i_1_n_0;
  wire ready_reg_0;
  wire reg_conf_done;
  wire [15:0]rgb_data;
  wire rst_p;

  LUT2 #(
    .INIT(4'hB)) 
    cmos_clk_en_INST_0
       (.I0(data_valid_reg),
        .I1(cmos_href),
        .O(cmos_clk_en));
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_vsync_pix_hal[0]_i_1 
       (.I0(cmos_vsync),
        .I1(reg_conf_done),
        .I2(ready_reg_0),
        .O(\cmos_vsync_pix_hal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_vsync_pix_hal[1]_i_1 
       (.I0(cmos_vsync_pix_hal[0]),
        .I1(reg_conf_done),
        .I2(ready_reg_0),
        .O(\cmos_vsync_pix_hal[1]_i_1_n_0 ));
  FDRE \cmos_vsync_pix_hal_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_vsync_pix_hal[0]_i_1_n_0 ),
        .Q(cmos_vsync_pix_hal[0]),
        .R(1'b0));
  FDRE \cmos_vsync_pix_hal_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cmos_vsync_pix_hal[1]_i_1_n_0 ),
        .Q(cmos_vsync_pix_hal[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \cnt_data[0]_i_1 
       (.I0(ready_reg_0),
        .I1(reg_conf_done),
        .I2(ready),
        .I3(cmos_href),
        .I4(cnt_data_reg),
        .O(\cnt_data[0]_i_1_n_0 ));
  FDRE \cnt_data_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\cnt_data[0]_i_1_n_0 ),
        .Q(cnt_data_reg),
        .R(1'b0));
  FDRE data_valid_reg_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cnt_data_reg),
        .Q(data_valid_reg),
        .R(rst_p));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[10]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[8]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[11]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[9]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[12]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[10]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[13]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[0]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[14]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[1]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[15]_i_2 
       (.I0(reg_conf_done),
        .I1(rgb_data[2]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[8]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[6]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pixel_reg[9]_i_1 
       (.I0(reg_conf_done),
        .I1(rgb_data[7]),
        .I2(cmos_href),
        .I3(ready),
        .O(\pixel_reg[9]_i_1_n_0 ));
  FDRE \pixel_reg_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[0]_0 ),
        .Q(rgb_data[6]),
        .R(rst_p));
  FDRE \pixel_reg_reg[10] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[10]_i_1_n_0 ),
        .Q(rgb_data[5]),
        .R(rst_p));
  FDRE \pixel_reg_reg[11] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[11]_i_1_n_0 ),
        .Q(rgb_data[11]),
        .R(rst_p));
  FDRE \pixel_reg_reg[12] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[12]_i_1_n_0 ),
        .Q(rgb_data[12]),
        .R(rst_p));
  FDRE \pixel_reg_reg[13] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[13]_i_1_n_0 ),
        .Q(rgb_data[13]),
        .R(rst_p));
  FDRE \pixel_reg_reg[14] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[14]_i_1_n_0 ),
        .Q(rgb_data[14]),
        .R(rst_p));
  FDRE \pixel_reg_reg[15] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[15]_i_2_n_0 ),
        .Q(rgb_data[15]),
        .R(rst_p));
  FDRE \pixel_reg_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[1]_0 ),
        .Q(rgb_data[7]),
        .R(rst_p));
  FDRE \pixel_reg_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[2]_0 ),
        .Q(rgb_data[8]),
        .R(rst_p));
  FDRE \pixel_reg_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[3]_0 ),
        .Q(rgb_data[9]),
        .R(rst_p));
  FDRE \pixel_reg_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[4]_0 ),
        .Q(rgb_data[10]),
        .R(rst_p));
  FDRE \pixel_reg_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[5]_0 ),
        .Q(rgb_data[0]),
        .R(rst_p));
  FDRE \pixel_reg_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[6]_0 ),
        .Q(rgb_data[1]),
        .R(rst_p));
  FDRE \pixel_reg_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg_reg[7]_0 ),
        .Q(rgb_data[2]),
        .R(rst_p));
  FDRE \pixel_reg_reg[8] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[8]_i_1_n_0 ),
        .Q(rgb_data[3]),
        .R(rst_p));
  FDRE \pixel_reg_reg[9] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(\pixel_reg[9]_i_1_n_0 ),
        .Q(rgb_data[4]),
        .R(rst_p));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hAE000000)) 
    ready_i_1
       (.I0(ready),
        .I1(cmos_vsync_pix_hal[0]),
        .I2(cmos_vsync_pix_hal[1]),
        .I3(reg_conf_done),
        .I4(ready_reg_0),
        .O(ready_i_1_n_0));
  FDRE ready_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ov5640_driver_0_0,ov5640_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ov5640_driver,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ov5640_driver_0_0
   (clk,
    rstn,
    cmos_scl,
    cmos_sda,
    cmos_pclk,
    cmos_vsync,
    cmos_href,
    cmos_rstn,
    cmos_data,
    pclk,
    data_valid,
    cmos_clk_en,
    rgb_data,
    vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  output cmos_scl;
  inout cmos_sda;
  input cmos_pclk;
  input cmos_vsync;
  input cmos_href;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmos_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmos_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cmos_rstn;
  input [7:0]cmos_data;
  output pclk;
  output data_valid;
  output cmos_clk_en;
  output [23:0]rgb_data;
  output vsync;

  wire \<const0> ;
  wire clk;
  wire cmos_clk_en;
  wire [7:0]cmos_data;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_rstn;
  wire cmos_scl;
  wire cmos_sda;
  wire cmos_vsync;
  wire [23:2]\^rgb_data ;
  wire rstn;

  assign data_valid = cmos_href;
  assign pclk = cmos_pclk;
  assign rgb_data[23:19] = \^rgb_data [23:19];
  assign rgb_data[18] = \<const0> ;
  assign rgb_data[17] = \<const0> ;
  assign rgb_data[16] = \<const0> ;
  assign rgb_data[15:11] = \^rgb_data [15:11];
  assign rgb_data[10] = \<const0> ;
  assign rgb_data[9] = \<const0> ;
  assign rgb_data[8] = \<const0> ;
  assign rgb_data[7:2] = \^rgb_data [7:2];
  assign rgb_data[1] = \<const0> ;
  assign rgb_data[0] = \<const0> ;
  assign vsync = cmos_vsync;
  GND GND
       (.G(\<const0> ));
  design_1_ov5640_driver_0_0_ov5640_driver inst
       (.clk(clk),
        .cmos_clk_en(cmos_clk_en),
        .cmos_data(cmos_data),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_reset_reg_reg_0(cmos_rstn),
        .cmos_scl(cmos_scl),
        .cmos_sda(cmos_sda),
        .cmos_vsync(cmos_vsync),
        .rgb_data({\^rgb_data [23:19],\^rgb_data [15:11],\^rgb_data [7:2]}),
        .rstn(rstn));
endmodule

module design_1_ov5640_driver_0_0_iic_sccb
   (cmos_reset_reg_reg,
    cmos_scl,
    E,
    wr_req_reg,
    wr_done_reg_0,
    wr_done_reg_1,
    cmos_sda,
    clk,
    \cnt_freq_reg[2]_0 ,
    \wr_index_reg_reg[8] ,
    Q,
    wr_req,
    start,
    wr_req0,
    state,
    \state_reg[2] );
  output cmos_reset_reg_reg;
  output cmos_scl;
  output [0:0]E;
  output wr_req_reg;
  output wr_done_reg_0;
  output wr_done_reg_1;
  inout cmos_sda;
  input clk;
  input \cnt_freq_reg[2]_0 ;
  input \wr_index_reg_reg[8] ;
  input [23:0]Q;
  input wr_req;
  input start;
  input wr_req0;
  input [2:0]state;
  input \state_reg[2] ;

  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [23:0]Q;
  wire ack_flag0__3;
  wire ack_flag_i_1_n_0;
  wire ack_flag_reg_n_0;
  wire clk;
  wire cmos_reset_reg_reg;
  wire cmos_scl;
  wire cmos_sda;
  wire cnt_byte;
  wire cnt_byte_i_1_n_0;
  wire \cnt_flag[5]_i_1_n_0 ;
  wire [5:0]cnt_flag_reg__0;
  wire [1:1]cnt_flag_tmp__2;
  wire \cnt_freq[0]_i_1_n_0 ;
  wire \cnt_freq[1]_i_1_n_0 ;
  wire \cnt_freq[2]_i_1_n_0 ;
  wire [2:0]cnt_freq__0;
  wire \cnt_freq_reg[2]_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[9]_i_1_n_0 ;
  wire \cnt_reg[9]_i_3_n_0 ;
  wire [9:0]cnt_reg_reg;
  wire data_shift;
  wire data_shift119_out;
  wire data_shift121_out;
  wire data_shift1__0;
  wire \data_shift[0]_i_1_n_0 ;
  wire \data_shift[0]_i_4_n_0 ;
  wire \data_shift[1]_i_1_n_0 ;
  wire \data_shift[1]_i_2_n_0 ;
  wire \data_shift[2]_i_1_n_0 ;
  wire \data_shift[2]_i_2_n_0 ;
  wire \data_shift[3]_i_1_n_0 ;
  wire \data_shift[3]_i_2_n_0 ;
  wire \data_shift[4]_i_1_n_0 ;
  wire \data_shift[4]_i_2_n_0 ;
  wire \data_shift[5]_i_1_n_0 ;
  wire \data_shift[5]_i_2_n_0 ;
  wire \data_shift[6]_i_1_n_0 ;
  wire \data_shift[6]_i_2_n_0 ;
  wire \data_shift[7]_i_10_n_0 ;
  wire \data_shift[7]_i_11_n_0 ;
  wire \data_shift[7]_i_2_n_0 ;
  wire \data_shift[7]_i_3_n_0 ;
  wire \data_shift[7]_i_5_n_0 ;
  wire \data_shift[7]_i_6_n_0 ;
  wire \data_shift[7]_i_8_n_0 ;
  wire \data_shift[7]_i_9_n_0 ;
  wire \data_shift_reg_n_0_[7] ;
  wire drive_flag;
  wire drive_flag0;
  wire drive_flag_i_2_n_0;
  wire drive_flag_i_3_n_0;
  wire drive_flag_i_5_n_0;
  wire drive_flag_i_6_n_0;
  wire end_cnt_flag__0;
  wire end_cnt_freq;
  wire [7:1]in15;
  wire [7:1]in16;
  wire [9:1]p_0_in;
  wire [5:0]p_0_in__0;
  wire p_1_in;
  wire p_26_in;
  wire p_2_in;
  wire p_2_in5_in;
  wire p_32_in;
  wire scl_i_1_n_0;
  wire start;
  wire [2:0]state;
  wire state133_out;
  wire state136_out;
  wire state137_out;
  wire state1__0;
  wire [0:0]state_0;
  wire \state_reg[2] ;
  wire work_flag_i_1_n_0;
  wire work_flag_reg_n_0;
  wire wr_done;
  wire wr_done_i_1_n_0;
  wire wr_done_reg_0;
  wire wr_done_reg_1;
  wire wr_en_i_1_n_0;
  wire wr_en_reg_n_0;
  wire \wr_index_reg_reg[8] ;
  wire wr_req;
  wire wr_req0;
  wire wr_req_reg;
  wire wr_sda6_out;
  wire wr_sda__0;
  wire wr_sda_i_1_n_0;
  wire wr_sda_i_2_n_0;
  wire wr_sda_i_3_n_0;
  wire wr_sda_i_6_n_0;
  wire wr_sda_i_7_n_0;
  wire wr_sda_i_8_n_0;
  wire wr_sda_reg_n_0;

  LUT6 #(
    .INIT(64'h888FFF8FFF8FFF8F)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state136_out),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(cnt_flag_tmp__2),
        .I3(state_0),
        .I4(start),
        .I5(wr_req),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .O(state136_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(p_1_in),
        .O(cnt_flag_tmp__2));
  LUT6 #(
    .INIT(64'hFFFF7F007F007F00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(state133_out),
        .I5(p_2_in),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[2]),
        .I2(cnt_flag_reg__0[4]),
        .I3(cnt_flag_reg__0[3]),
        .I4(cnt_flag_reg__0[5]),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(p_32_in),
        .I1(ack_flag_reg_n_0),
        .O(state133_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCA0A0A0A)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_2_in),
        .I1(ack_flag_reg_n_0),
        .I2(p_32_in),
        .I3(cnt_byte),
        .I4(p_1_in),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFC0C4C0C)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(cnt_byte),
        .I1(p_1_in),
        .I2(p_32_in),
        .I3(ack_flag_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_32_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state[5]_i_3_n_0 ),
        .I3(cnt_flag_reg__0[1]),
        .I4(drive_flag),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(cnt_flag_reg__0[5]),
        .I1(cnt_flag_reg__0[1]),
        .I2(\FSM_onehot_state[5]_i_4_n_0 ),
        .I3(cnt_flag_reg__0[0]),
        .I4(cnt_flag_reg__0[2]),
        .I5(drive_flag),
        .O(p_32_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[4]),
        .I2(cnt_flag_reg__0[3]),
        .I3(cnt_flag_reg__0[5]),
        .I4(cnt_flag_reg__0[2]),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(cnt_flag_reg__0[3]),
        .I1(cnt_flag_reg__0[4]),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(state_0),
        .I3(state1__0),
        .I4(wr_req),
        .I5(p_2_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(start),
        .I1(wr_req),
        .I2(state_0),
        .I3(state137_out),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(p_1_in),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(ack_flag_reg_n_0),
        .I1(p_32_in),
        .I2(cnt_byte),
        .O(state1__0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(\FSM_onehot_state[5]_i_3_n_0 ),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .O(state137_out));
  (* FSM_ENCODED_STATES = "WR_START:1000000,WR_DEV:0100000,WR_MEM:0010000,WR_DATA:0000100,iSTATE:0001000,STOP:0000010,IDLE:0000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(state_0),
        .S(cmos_reset_reg_reg));
  (* FSM_ENCODED_STATES = "WR_START:1000000,WR_DEV:0100000,WR_MEM:0010000,WR_DATA:0000100,iSTATE:0001000,STOP:0000010,IDLE:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(cmos_reset_reg_reg));
  (* FSM_ENCODED_STATES = "WR_START:1000000,WR_DEV:0100000,WR_MEM:0010000,WR_DATA:0000100,iSTATE:0001000,STOP:0000010,IDLE:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_2_in),
        .R(cmos_reset_reg_reg));
  (* FSM_ENCODED_STATES = "WR_START:1000000,WR_DEV:0100000,WR_MEM:0010000,WR_DATA:0000100,iSTATE:0001000,STOP:0000010,IDLE:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_1_in),
        .R(cmos_reset_reg_reg));
  (* FSM_ENCODED_STATES = "WR_START:1000000,WR_DEV:0100000,WR_MEM:0010000,WR_DATA:0000100,iSTATE:0001000,STOP:0000010,IDLE:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(cmos_reset_reg_reg));
  (* FSM_ENCODED_STATES = "WR_START:1000000,WR_DEV:0100000,WR_MEM:0010000,WR_DATA:0000100,iSTATE:0001000,STOP:0000010,IDLE:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(cmos_reset_reg_reg));
  LUT6 #(
    .INIT(64'hDDDDDDD0CCCCCCC0)) 
    ack_flag_i_1
       (.I0(end_cnt_flag__0),
        .I1(ack_flag0__3),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(p_2_in),
        .I4(p_1_in),
        .I5(ack_flag_reg_n_0),
        .O(ack_flag_i_1_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    ack_flag_i_2
       (.I0(cnt_flag_reg__0[5]),
        .I1(cmos_sda),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[1]),
        .I4(drive_flag),
        .O(ack_flag0__3));
  FDRE ack_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_flag_i_1_n_0),
        .Q(ack_flag_reg_n_0),
        .R(cmos_reset_reg_reg));
  LUT2 #(
    .INIT(4'h8)) 
    cmos_sda_INST_0
       (.I0(wr_sda_reg_n_0),
        .I1(wr_en_reg_n_0),
        .O(cmos_sda));
  LUT3 #(
    .INIT(8'h78)) 
    cnt_byte_i_1
       (.I0(end_cnt_flag__0),
        .I1(p_1_in),
        .I2(cnt_byte),
        .O(cnt_byte_i_1_n_0));
  FDRE cnt_byte_reg
       (.C(clk),
        .CE(1'b1),
        .D(cnt_byte_i_1_n_0),
        .Q(cnt_byte),
        .R(cmos_reset_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_flag[0]_i_1 
       (.I0(cnt_flag_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_flag[1]_i_1 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_flag[2]_i_1 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[1]),
        .I2(cnt_flag_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_flag[3]_i_1 
       (.I0(cnt_flag_reg__0[1]),
        .I1(cnt_flag_reg__0[0]),
        .I2(cnt_flag_reg__0[2]),
        .I3(cnt_flag_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_flag[4]_i_1 
       (.I0(cnt_flag_reg__0[2]),
        .I1(cnt_flag_reg__0[0]),
        .I2(cnt_flag_reg__0[1]),
        .I3(cnt_flag_reg__0[3]),
        .I4(cnt_flag_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'hD5FF)) 
    \cnt_flag[5]_i_1 
       (.I0(work_flag_reg_n_0),
        .I1(drive_flag),
        .I2(end_cnt_flag__0),
        .I3(\cnt_freq_reg[2]_0 ),
        .O(\cnt_flag[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_flag[5]_i_2 
       (.I0(cnt_flag_reg__0[3]),
        .I1(cnt_flag_reg__0[1]),
        .I2(cnt_flag_reg__0[0]),
        .I3(cnt_flag_reg__0[2]),
        .I4(cnt_flag_reg__0[4]),
        .I5(cnt_flag_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h8000008000000000)) 
    \cnt_flag[5]_i_3 
       (.I0(drive_flag),
        .I1(\data_shift[7]_i_11_n_0 ),
        .I2(\data_shift[7]_i_10_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(cnt_flag_reg__0[2]),
        .I5(\data_shift[7]_i_8_n_0 ),
        .O(end_cnt_flag__0));
  FDRE \cnt_flag_reg[0] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in__0[0]),
        .Q(cnt_flag_reg__0[0]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[1] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in__0[1]),
        .Q(cnt_flag_reg__0[1]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[2] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in__0[2]),
        .Q(cnt_flag_reg__0[2]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[3] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in__0[3]),
        .Q(cnt_flag_reg__0[3]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[4] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in__0[4]),
        .Q(cnt_flag_reg__0[4]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  FDRE \cnt_flag_reg[5] 
       (.C(clk),
        .CE(drive_flag),
        .D(p_0_in__0[5]),
        .Q(cnt_flag_reg__0[5]),
        .R(\cnt_flag[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \cnt_freq[0]_i_1 
       (.I0(\cnt_freq_reg[2]_0 ),
        .I1(cnt_freq__0[0]),
        .I2(drive_flag),
        .I3(work_flag_reg_n_0),
        .O(\cnt_freq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28A00000)) 
    \cnt_freq[1]_i_1 
       (.I0(\cnt_freq_reg[2]_0 ),
        .I1(cnt_freq__0[0]),
        .I2(cnt_freq__0[1]),
        .I3(drive_flag),
        .I4(work_flag_reg_n_0),
        .O(\cnt_freq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20A0A0A000000000)) 
    \cnt_freq[2]_i_1 
       (.I0(\cnt_freq_reg[2]_0 ),
        .I1(cnt_freq__0[0]),
        .I2(cnt_freq__0[2]),
        .I3(cnt_freq__0[1]),
        .I4(drive_flag),
        .I5(work_flag_reg_n_0),
        .O(\cnt_freq[2]_i_1_n_0 ));
  FDRE \cnt_freq_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_freq[0]_i_1_n_0 ),
        .Q(cnt_freq__0[0]),
        .R(1'b0));
  FDRE \cnt_freq_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_freq[1]_i_1_n_0 ),
        .Q(cnt_freq__0[1]),
        .R(1'b0));
  FDRE \cnt_freq_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_freq[2]_i_1_n_0 ),
        .Q(cnt_freq__0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_reg[0]_i_1 
       (.I0(cnt_reg_reg[0]),
        .O(\cnt_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_reg[1]_i_1 
       (.I0(cnt_reg_reg[0]),
        .I1(cnt_reg_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_reg[2]_i_1 
       (.I0(cnt_reg_reg[0]),
        .I1(cnt_reg_reg[1]),
        .I2(cnt_reg_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_reg[3]_i_1 
       (.I0(cnt_reg_reg[1]),
        .I1(cnt_reg_reg[0]),
        .I2(cnt_reg_reg[2]),
        .I3(cnt_reg_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_reg[4]_i_1 
       (.I0(cnt_reg_reg[2]),
        .I1(cnt_reg_reg[0]),
        .I2(cnt_reg_reg[1]),
        .I3(cnt_reg_reg[3]),
        .I4(cnt_reg_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_reg[5]_i_1 
       (.I0(cnt_reg_reg[3]),
        .I1(cnt_reg_reg[1]),
        .I2(cnt_reg_reg[0]),
        .I3(cnt_reg_reg[2]),
        .I4(cnt_reg_reg[4]),
        .I5(cnt_reg_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_reg[6]_i_1 
       (.I0(\cnt_reg[9]_i_3_n_0 ),
        .I1(cnt_reg_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_reg[7]_i_1 
       (.I0(\cnt_reg[9]_i_3_n_0 ),
        .I1(cnt_reg_reg[6]),
        .I2(cnt_reg_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_reg[8]_i_1 
       (.I0(cnt_reg_reg[6]),
        .I1(\cnt_reg[9]_i_3_n_0 ),
        .I2(cnt_reg_reg[7]),
        .I3(cnt_reg_reg[8]),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'hDF)) 
    \cnt_reg[9]_i_1 
       (.I0(work_flag_reg_n_0),
        .I1(drive_flag_i_2_n_0),
        .I2(\cnt_freq_reg[2]_0 ),
        .O(\cnt_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_reg[9]_i_2 
       (.I0(cnt_reg_reg[7]),
        .I1(\cnt_reg[9]_i_3_n_0 ),
        .I2(cnt_reg_reg[6]),
        .I3(cnt_reg_reg[8]),
        .I4(cnt_reg_reg[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_reg[9]_i_3 
       (.I0(cnt_reg_reg[5]),
        .I1(cnt_reg_reg[3]),
        .I2(cnt_reg_reg[1]),
        .I3(cnt_reg_reg[0]),
        .I4(cnt_reg_reg[2]),
        .I5(cnt_reg_reg[4]),
        .O(\cnt_reg[9]_i_3_n_0 ));
  FDRE \cnt_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_0 ),
        .Q(cnt_reg_reg[0]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(cnt_reg_reg[1]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(cnt_reg_reg[2]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(cnt_reg_reg[3]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(cnt_reg_reg[4]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(cnt_reg_reg[5]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(cnt_reg_reg[6]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(cnt_reg_reg[7]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(cnt_reg_reg[8]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  FDRE \cnt_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(cnt_reg_reg[9]),
        .R(\cnt_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8880000)) 
    \data_shift[0]_i_1 
       (.I0(Q[8]),
        .I1(data_shift119_out),
        .I2(data_shift1__0),
        .I3(Q[0]),
        .I4(p_1_in),
        .I5(\data_shift[0]_i_4_n_0 ),
        .O(\data_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_shift[0]_i_2 
       (.I0(wr_req),
        .I1(data_shift121_out),
        .I2(cnt_byte),
        .O(data_shift119_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_shift[0]_i_3 
       (.I0(wr_req),
        .I1(data_shift121_out),
        .I2(cnt_byte),
        .O(data_shift1__0));
  LUT3 #(
    .INIT(8'h80)) 
    \data_shift[0]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(Q[15]),
        .I2(data_shift121_out),
        .O(\data_shift[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[1]_i_1 
       (.I0(\data_shift[1]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(in16[1]),
        .I3(p_1_in),
        .I4(in15[1]),
        .O(\data_shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_shift[1]_i_2 
       (.I0(Q[16]),
        .I1(data_shift121_out),
        .I2(in16[1]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(Q[23]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[1]_i_3 
       (.I0(Q[9]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[1]),
        .I5(in16[1]),
        .O(in15[1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[2]_i_1 
       (.I0(\data_shift[2]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(in16[2]),
        .I3(p_1_in),
        .I4(in15[2]),
        .O(\data_shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_shift[2]_i_2 
       (.I0(Q[17]),
        .I1(data_shift121_out),
        .I2(in16[2]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(Q[23]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[2]_i_3 
       (.I0(Q[10]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[2]),
        .I5(in16[2]),
        .O(in15[2]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[3]_i_1 
       (.I0(\data_shift[3]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(in16[3]),
        .I3(p_1_in),
        .I4(in15[3]),
        .O(\data_shift[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \data_shift[3]_i_2 
       (.I0(Q[18]),
        .I1(data_shift121_out),
        .I2(in16[3]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[3]_i_3 
       (.I0(Q[11]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[3]),
        .I5(in16[3]),
        .O(in15[3]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[4]_i_1 
       (.I0(\data_shift[4]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(in16[4]),
        .I3(p_1_in),
        .I4(in15[4]),
        .O(\data_shift[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \data_shift[4]_i_2 
       (.I0(Q[19]),
        .I1(data_shift121_out),
        .I2(in16[4]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[4]_i_3 
       (.I0(Q[12]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[4]),
        .I5(in16[4]),
        .O(in15[4]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[5]_i_1 
       (.I0(\data_shift[5]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(in16[5]),
        .I3(p_1_in),
        .I4(in15[5]),
        .O(\data_shift[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \data_shift[5]_i_2 
       (.I0(Q[20]),
        .I1(data_shift121_out),
        .I2(in16[5]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[5]_i_3 
       (.I0(Q[13]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[5]),
        .I5(in16[5]),
        .O(in15[5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[6]_i_1 
       (.I0(\data_shift[6]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(in16[6]),
        .I3(p_1_in),
        .I4(in15[6]),
        .O(\data_shift[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \data_shift[6]_i_2 
       (.I0(Q[21]),
        .I1(data_shift121_out),
        .I2(in16[6]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[6]_i_3 
       (.I0(Q[23]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[6]),
        .I5(in16[6]),
        .O(in15[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \data_shift[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\data_shift[7]_i_3_n_0 ),
        .I2(state_0),
        .I3(data_shift121_out),
        .I4(\data_shift[7]_i_5_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(data_shift));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \data_shift[7]_i_10 
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(cnt_flag_reg__0[0]),
        .O(\data_shift[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055540001)) 
    \data_shift[7]_i_11 
       (.I0(cnt_flag_reg__0[4]),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(p_2_in),
        .I3(p_1_in),
        .I4(cnt_flag_reg__0[5]),
        .I5(cnt_flag_reg__0[3]),
        .O(\data_shift[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[7]_i_2 
       (.I0(\data_shift[7]_i_6_n_0 ),
        .I1(p_2_in),
        .I2(in16[7]),
        .I3(p_1_in),
        .I4(in15[7]),
        .O(\data_shift[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF80F080)) 
    \data_shift[7]_i_3 
       (.I0(wr_req),
        .I1(data_shift121_out),
        .I2(p_1_in),
        .I3(\data_shift[7]_i_5_n_0 ),
        .I4(p_2_in),
        .O(\data_shift[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \data_shift[7]_i_4 
       (.I0(\data_shift[7]_i_8_n_0 ),
        .I1(\data_shift[7]_i_9_n_0 ),
        .I2(\data_shift[7]_i_10_n_0 ),
        .I3(\data_shift[7]_i_11_n_0 ),
        .I4(drive_flag),
        .I5(ack_flag_reg_n_0),
        .O(data_shift121_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_shift[7]_i_5 
       (.I0(cnt_flag_reg__0[0]),
        .I1(cnt_flag_reg__0[1]),
        .I2(drive_flag),
        .I3(cnt_flag_reg__0[5]),
        .O(\data_shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \data_shift[7]_i_6 
       (.I0(Q[22]),
        .I1(data_shift121_out),
        .I2(in16[7]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(Q[23]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\data_shift[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF3FBFC0800080)) 
    \data_shift[7]_i_7 
       (.I0(Q[14]),
        .I1(wr_req),
        .I2(data_shift121_out),
        .I3(cnt_byte),
        .I4(Q[7]),
        .I5(in16[7]),
        .O(in15[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \data_shift[7]_i_8 
       (.I0(p_1_in),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(p_2_in),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(cnt_flag_reg__0[1]),
        .O(\data_shift[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \data_shift[7]_i_9 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_flag_reg__0[2]),
        .O(\data_shift[7]_i_9_n_0 ));
  FDRE \data_shift_reg[0] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[0]_i_1_n_0 ),
        .Q(in16[1]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[1] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[1]_i_1_n_0 ),
        .Q(in16[2]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[2] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[2]_i_1_n_0 ),
        .Q(in16[3]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[3] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[3]_i_1_n_0 ),
        .Q(in16[4]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[4] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[4]_i_1_n_0 ),
        .Q(in16[5]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[5] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[5]_i_1_n_0 ),
        .Q(in16[6]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[6] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[6]_i_1_n_0 ),
        .Q(in16[7]),
        .R(cmos_reset_reg_reg));
  FDRE \data_shift_reg[7] 
       (.C(clk),
        .CE(data_shift),
        .D(\data_shift[7]_i_2_n_0 ),
        .Q(\data_shift_reg_n_0_[7] ),
        .R(cmos_reset_reg_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFABEAAAAA)) 
    drive_flag_i_1
       (.I0(drive_flag_i_2_n_0),
        .I1(cnt_reg_reg[1]),
        .I2(cnt_reg_reg[6]),
        .I3(cnt_reg_reg[4]),
        .I4(drive_flag_i_3_n_0),
        .I5(p_2_in5_in),
        .O(drive_flag0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    drive_flag_i_2
       (.I0(cnt_reg_reg[4]),
        .I1(cnt_reg_reg[7]),
        .I2(cnt_reg_reg[6]),
        .I3(cnt_reg_reg[3]),
        .I4(cnt_reg_reg[1]),
        .I5(drive_flag_i_5_n_0),
        .O(drive_flag_i_2_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    drive_flag_i_3
       (.I0(cnt_reg_reg[3]),
        .I1(cnt_reg_reg[7]),
        .I2(drive_flag_i_5_n_0),
        .O(drive_flag_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    drive_flag_i_4
       (.I0(cnt_reg_reg[0]),
        .I1(cnt_reg_reg[7]),
        .I2(cnt_reg_reg[4]),
        .I3(cnt_reg_reg[6]),
        .I4(drive_flag_i_6_n_0),
        .O(p_2_in5_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    drive_flag_i_5
       (.I0(cnt_reg_reg[2]),
        .I1(cnt_reg_reg[5]),
        .I2(cnt_reg_reg[9]),
        .I3(cnt_reg_reg[8]),
        .I4(cnt_reg_reg[0]),
        .O(drive_flag_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    drive_flag_i_6
       (.I0(cnt_reg_reg[3]),
        .I1(cnt_reg_reg[2]),
        .I2(cnt_reg_reg[5]),
        .I3(cnt_reg_reg[9]),
        .I4(cnt_reg_reg[8]),
        .I5(cnt_reg_reg[1]),
        .O(drive_flag_i_6_n_0));
  FDRE drive_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(drive_flag0),
        .Q(drive_flag),
        .R(cmos_reset_reg_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_reg[15]_i_1 
       (.I0(\cnt_freq_reg[2]_0 ),
        .O(cmos_reset_reg_reg));
  LUT6 #(
    .INIT(64'hFFFF0FFFEFFFEFFF)) 
    scl_i_1
       (.I0(cmos_scl),
        .I1(end_cnt_freq),
        .I2(\cnt_freq_reg[2]_0 ),
        .I3(work_flag_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(p_26_in),
        .O(scl_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    scl_i_2
       (.I0(cnt_freq__0[0]),
        .I1(cnt_freq__0[2]),
        .I2(cnt_freq__0[1]),
        .I3(drive_flag),
        .O(end_cnt_freq));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    scl_i_3
       (.I0(cnt_freq__0[1]),
        .I1(cnt_freq__0[0]),
        .I2(cnt_freq__0[2]),
        .I3(drive_flag),
        .O(p_26_in));
  FDRE scl_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .Q(cmos_scl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000033223333CC0C)) 
    \state[1]_i_1 
       (.I0(wr_done),
        .I1(state[1]),
        .I2(\state_reg[2] ),
        .I3(\wr_index_reg_reg[8] ),
        .I4(state[0]),
        .I5(state[2]),
        .O(wr_done_reg_1));
  LUT6 #(
    .INIT(64'h00000011000000C0)) 
    \state[2]_i_1 
       (.I0(wr_done),
        .I1(state[1]),
        .I2(\state_reg[2] ),
        .I3(\wr_index_reg_reg[8] ),
        .I4(state[0]),
        .I5(state[2]),
        .O(wr_done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    work_flag_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(wr_done),
        .I2(work_flag_reg_n_0),
        .O(work_flag_i_1_n_0));
  FDRE work_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(work_flag_i_1_n_0),
        .Q(work_flag_reg_n_0),
        .R(cmos_reset_reg_reg));
  LUT4 #(
    .INIT(16'hC080)) 
    wr_done_i_1
       (.I0(wr_req),
        .I1(end_cnt_flag__0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(wr_done),
        .O(wr_done_i_1_n_0));
  FDRE wr_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_done_i_1_n_0),
        .Q(wr_done),
        .R(cmos_reset_reg_reg));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEE)) 
    wr_en_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(cnt_flag_reg__0[5]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(wr_en_i_1_n_0));
  FDRE wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
        .Q(wr_en_reg_n_0),
        .R(cmos_reset_reg_reg));
  LUT3 #(
    .INIT(8'h04)) 
    \wr_index_reg[8]_i_1 
       (.I0(\wr_index_reg_reg[8] ),
        .I1(wr_done),
        .I2(Q[23]),
        .O(E));
  LUT5 #(
    .INIT(32'h000000E0)) 
    wr_req_i_1
       (.I0(wr_req),
        .I1(wr_req0),
        .I2(\cnt_freq_reg[2]_0 ),
        .I3(\wr_index_reg_reg[8] ),
        .I4(wr_done),
        .O(wr_req_reg));
  LUT6 #(
    .INIT(64'hEAFFFFFFEA00FFFF)) 
    wr_sda_i_1
       (.I0(wr_sda_i_2_n_0),
        .I1(\data_shift_reg_n_0_[7] ),
        .I2(wr_sda_i_3_n_0),
        .I3(wr_sda__0),
        .I4(\cnt_freq_reg[2]_0 ),
        .I5(wr_sda_reg_n_0),
        .O(wr_sda_i_1_n_0));
  LUT6 #(
    .INIT(64'h888888888888888B)) 
    wr_sda_i_2
       (.I0(wr_sda6_out),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(p_2_in),
        .I5(p_1_in),
        .O(wr_sda_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    wr_sda_i_3
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(wr_sda_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    wr_sda_i_4
       (.I0(p_2_in),
        .I1(wr_sda_i_6_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(p_1_in),
        .I5(wr_sda_i_7_n_0),
        .O(wr_sda__0));
  LUT6 #(
    .INIT(64'h55DD550555555555)) 
    wr_sda_i_5
       (.I0(\cnt_freq_reg[2]_0 ),
        .I1(drive_flag),
        .I2(wr_en_reg_n_0),
        .I3(cnt_flag_reg__0[1]),
        .I4(cnt_flag_reg__0[0]),
        .I5(wr_sda_i_8_n_0),
        .O(wr_sda6_out));
  LUT6 #(
    .INIT(64'h3F3B3333333B3333)) 
    wr_sda_i_6
       (.I0(wr_en_reg_n_0),
        .I1(\cnt_freq_reg[2]_0 ),
        .I2(cnt_flag_reg__0[1]),
        .I3(cnt_flag_reg__0[0]),
        .I4(wr_sda_i_8_n_0),
        .I5(drive_flag),
        .O(wr_sda_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h400040FF)) 
    wr_sda_i_7
       (.I0(cnt_flag_reg__0[1]),
        .I1(\FSM_onehot_state[5]_i_3_n_0 ),
        .I2(drive_flag),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(wr_sda_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    wr_sda_i_8
       (.I0(cnt_flag_reg__0[5]),
        .I1(cnt_flag_reg__0[3]),
        .I2(cnt_flag_reg__0[4]),
        .I3(cnt_flag_reg__0[2]),
        .O(wr_sda_i_8_n_0));
  FDRE wr_sda_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_sda_i_1_n_0),
        .Q(wr_sda_reg_n_0),
        .R(1'b0));
endmodule

module design_1_ov5640_driver_0_0_ov5640_driver
   (cmos_reset_reg_reg_0,
    rgb_data,
    cmos_scl,
    cmos_clk_en,
    cmos_sda,
    cmos_href,
    clk,
    cmos_vsync,
    cmos_pclk,
    cmos_data,
    rstn);
  output cmos_reset_reg_reg_0;
  output [15:0]rgb_data;
  output cmos_scl;
  output cmos_clk_en;
  inout cmos_sda;
  input cmos_href;
  input clk;
  input cmos_vsync;
  input cmos_pclk;
  input [7:0]cmos_data;
  input rstn;

  wire clk;
  wire cmos_clk_en;
  wire [7:0]cmos_data;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_reg_conf_inst_n_10;
  wire cmos_reg_conf_inst_n_3;
  wire cmos_reg_conf_inst_n_4;
  wire cmos_reg_conf_inst_n_5;
  wire cmos_reg_conf_inst_n_6;
  wire cmos_reg_conf_inst_n_7;
  wire cmos_reg_conf_inst_n_8;
  wire cmos_reg_conf_inst_n_9;
  wire cmos_reset_reg_i_1_n_0;
  wire cmos_reset_reg_i_2_n_0;
  wire cmos_reset_reg_reg_0;
  wire cmos_scl;
  wire cmos_sda;
  wire cmos_vsync;
  wire [22:0]p_1_in;
  wire ready;
  wire reg_conf_done;
  wire [22:0]reset_cnt_reg;
  wire reset_cnt_reg0_carry__0_n_0;
  wire reset_cnt_reg0_carry__0_n_1;
  wire reset_cnt_reg0_carry__0_n_2;
  wire reset_cnt_reg0_carry__0_n_3;
  wire reset_cnt_reg0_carry__1_n_0;
  wire reset_cnt_reg0_carry__1_n_1;
  wire reset_cnt_reg0_carry__1_n_2;
  wire reset_cnt_reg0_carry__1_n_3;
  wire reset_cnt_reg0_carry__2_n_0;
  wire reset_cnt_reg0_carry__2_n_1;
  wire reset_cnt_reg0_carry__2_n_2;
  wire reset_cnt_reg0_carry__2_n_3;
  wire reset_cnt_reg0_carry__3_n_0;
  wire reset_cnt_reg0_carry__3_n_1;
  wire reset_cnt_reg0_carry__3_n_2;
  wire reset_cnt_reg0_carry__3_n_3;
  wire reset_cnt_reg0_carry__4_n_3;
  wire reset_cnt_reg0_carry_n_0;
  wire reset_cnt_reg0_carry_n_1;
  wire reset_cnt_reg0_carry_n_2;
  wire reset_cnt_reg0_carry_n_3;
  wire \reset_cnt_reg[22]_i_1_n_0 ;
  wire \reset_cnt_reg[22]_i_2_n_0 ;
  wire \reset_cnt_reg[22]_i_3_n_0 ;
  wire \reset_cnt_reg[22]_i_4_n_0 ;
  wire [15:0]rgb_data;
  wire rst_p;
  wire rstn;
  wire [3:1]NLW_reset_cnt_reg0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_reset_cnt_reg0_carry__4_O_UNCONNECTED;

  design_1_ov5640_driver_0_0_cmos_reg_conf cmos_reg_conf_inst
       (.cfg_done_reg_0(cmos_reg_conf_inst_n_3),
        .cfg_done_reg_1(cmos_reg_conf_inst_n_4),
        .cfg_done_reg_2(cmos_reg_conf_inst_n_5),
        .cfg_done_reg_3(cmos_reg_conf_inst_n_6),
        .cfg_done_reg_4(cmos_reg_conf_inst_n_7),
        .cfg_done_reg_5(cmos_reg_conf_inst_n_8),
        .cfg_done_reg_6(cmos_reg_conf_inst_n_9),
        .cfg_done_reg_7(cmos_reg_conf_inst_n_10),
        .clk(clk),
        .cmos_data(cmos_data),
        .cmos_href(cmos_href),
        .cmos_scl(cmos_scl),
        .cmos_sda(cmos_sda),
        .\cnt_freq_reg[2] (cmos_reset_reg_reg_0),
        .ready(ready),
        .reg_conf_done(reg_conf_done),
        .rst_p(rst_p));
  LUT2 #(
    .INIT(4'hB)) 
    cmos_reset_reg_i_1
       (.I0(cmos_reset_reg_reg_0),
        .I1(\reset_cnt_reg[22]_i_1_n_0 ),
        .O(cmos_reset_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cmos_reset_reg_i_2
       (.I0(rstn),
        .O(cmos_reset_reg_i_2_n_0));
  FDCE cmos_reset_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(cmos_reset_reg_i_1_n_0),
        .Q(cmos_reset_reg_reg_0));
  design_1_ov5640_driver_0_0_coms_data_convert coms_data_convert_inst
       (.cmos_clk_en(cmos_clk_en),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_vsync(cmos_vsync),
        .\pixel_reg_reg[0]_0 (cmos_reg_conf_inst_n_10),
        .\pixel_reg_reg[1]_0 (cmos_reg_conf_inst_n_9),
        .\pixel_reg_reg[2]_0 (cmos_reg_conf_inst_n_8),
        .\pixel_reg_reg[3]_0 (cmos_reg_conf_inst_n_7),
        .\pixel_reg_reg[4]_0 (cmos_reg_conf_inst_n_6),
        .\pixel_reg_reg[5]_0 (cmos_reg_conf_inst_n_5),
        .\pixel_reg_reg[6]_0 (cmos_reg_conf_inst_n_4),
        .\pixel_reg_reg[7]_0 (cmos_reg_conf_inst_n_3),
        .ready(ready),
        .ready_reg_0(cmos_reset_reg_reg_0),
        .reg_conf_done(reg_conf_done),
        .rgb_data(rgb_data),
        .rst_p(rst_p));
  CARRY4 reset_cnt_reg0_carry
       (.CI(1'b0),
        .CO({reset_cnt_reg0_carry_n_0,reset_cnt_reg0_carry_n_1,reset_cnt_reg0_carry_n_2,reset_cnt_reg0_carry_n_3}),
        .CYINIT(reset_cnt_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(reset_cnt_reg[4:1]));
  CARRY4 reset_cnt_reg0_carry__0
       (.CI(reset_cnt_reg0_carry_n_0),
        .CO({reset_cnt_reg0_carry__0_n_0,reset_cnt_reg0_carry__0_n_1,reset_cnt_reg0_carry__0_n_2,reset_cnt_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(reset_cnt_reg[8:5]));
  CARRY4 reset_cnt_reg0_carry__1
       (.CI(reset_cnt_reg0_carry__0_n_0),
        .CO({reset_cnt_reg0_carry__1_n_0,reset_cnt_reg0_carry__1_n_1,reset_cnt_reg0_carry__1_n_2,reset_cnt_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(reset_cnt_reg[12:9]));
  CARRY4 reset_cnt_reg0_carry__2
       (.CI(reset_cnt_reg0_carry__1_n_0),
        .CO({reset_cnt_reg0_carry__2_n_0,reset_cnt_reg0_carry__2_n_1,reset_cnt_reg0_carry__2_n_2,reset_cnt_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(reset_cnt_reg[16:13]));
  CARRY4 reset_cnt_reg0_carry__3
       (.CI(reset_cnt_reg0_carry__2_n_0),
        .CO({reset_cnt_reg0_carry__3_n_0,reset_cnt_reg0_carry__3_n_1,reset_cnt_reg0_carry__3_n_2,reset_cnt_reg0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(reset_cnt_reg[20:17]));
  CARRY4 reset_cnt_reg0_carry__4
       (.CI(reset_cnt_reg0_carry__3_n_0),
        .CO({NLW_reset_cnt_reg0_carry__4_CO_UNCONNECTED[3:1],reset_cnt_reg0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_reset_cnt_reg0_carry__4_O_UNCONNECTED[3:2],p_1_in[22:21]}),
        .S({1'b0,1'b0,reset_cnt_reg[22:21]}));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_cnt_reg[0]_i_1 
       (.I0(reset_cnt_reg[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h10111111FFFFFFFF)) 
    \reset_cnt_reg[22]_i_1 
       (.I0(reset_cnt_reg[20]),
        .I1(reset_cnt_reg[21]),
        .I2(\reset_cnt_reg[22]_i_2_n_0 ),
        .I3(reset_cnt_reg[19]),
        .I4(reset_cnt_reg[18]),
        .I5(reset_cnt_reg[22]),
        .O(\reset_cnt_reg[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000555D)) 
    \reset_cnt_reg[22]_i_2 
       (.I0(reset_cnt_reg[14]),
        .I1(\reset_cnt_reg[22]_i_3_n_0 ),
        .I2(reset_cnt_reg[13]),
        .I3(reset_cnt_reg[12]),
        .I4(\reset_cnt_reg[22]_i_4_n_0 ),
        .O(\reset_cnt_reg[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01555555FFFFFFFF)) 
    \reset_cnt_reg[22]_i_3 
       (.I0(reset_cnt_reg[10]),
        .I1(reset_cnt_reg[6]),
        .I2(reset_cnt_reg[7]),
        .I3(reset_cnt_reg[9]),
        .I4(reset_cnt_reg[8]),
        .I5(reset_cnt_reg[11]),
        .O(\reset_cnt_reg[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reset_cnt_reg[22]_i_4 
       (.I0(reset_cnt_reg[15]),
        .I1(reset_cnt_reg[17]),
        .I2(reset_cnt_reg[16]),
        .O(\reset_cnt_reg[22]_i_4_n_0 ));
  FDCE \reset_cnt_reg_reg[0] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[0]),
        .Q(reset_cnt_reg[0]));
  FDCE \reset_cnt_reg_reg[10] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[10]),
        .Q(reset_cnt_reg[10]));
  FDCE \reset_cnt_reg_reg[11] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[11]),
        .Q(reset_cnt_reg[11]));
  FDCE \reset_cnt_reg_reg[12] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[12]),
        .Q(reset_cnt_reg[12]));
  FDCE \reset_cnt_reg_reg[13] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[13]),
        .Q(reset_cnt_reg[13]));
  FDCE \reset_cnt_reg_reg[14] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[14]),
        .Q(reset_cnt_reg[14]));
  FDCE \reset_cnt_reg_reg[15] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[15]),
        .Q(reset_cnt_reg[15]));
  FDCE \reset_cnt_reg_reg[16] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[16]),
        .Q(reset_cnt_reg[16]));
  FDCE \reset_cnt_reg_reg[17] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[17]),
        .Q(reset_cnt_reg[17]));
  FDCE \reset_cnt_reg_reg[18] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[18]),
        .Q(reset_cnt_reg[18]));
  FDCE \reset_cnt_reg_reg[19] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[19]),
        .Q(reset_cnt_reg[19]));
  FDCE \reset_cnt_reg_reg[1] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[1]),
        .Q(reset_cnt_reg[1]));
  FDCE \reset_cnt_reg_reg[20] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[20]),
        .Q(reset_cnt_reg[20]));
  FDCE \reset_cnt_reg_reg[21] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[21]),
        .Q(reset_cnt_reg[21]));
  FDCE \reset_cnt_reg_reg[22] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[22]),
        .Q(reset_cnt_reg[22]));
  FDCE \reset_cnt_reg_reg[2] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[2]),
        .Q(reset_cnt_reg[2]));
  FDCE \reset_cnt_reg_reg[3] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[3]),
        .Q(reset_cnt_reg[3]));
  FDCE \reset_cnt_reg_reg[4] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[4]),
        .Q(reset_cnt_reg[4]));
  FDCE \reset_cnt_reg_reg[5] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[5]),
        .Q(reset_cnt_reg[5]));
  FDCE \reset_cnt_reg_reg[6] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[6]),
        .Q(reset_cnt_reg[6]));
  FDCE \reset_cnt_reg_reg[7] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[7]),
        .Q(reset_cnt_reg[7]));
  FDCE \reset_cnt_reg_reg[8] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[8]),
        .Q(reset_cnt_reg[8]));
  FDCE \reset_cnt_reg_reg[9] 
       (.C(clk),
        .CE(\reset_cnt_reg[22]_i_1_n_0 ),
        .CLR(cmos_reset_reg_i_2_n_0),
        .D(p_1_in[9]),
        .Q(reset_cnt_reg[9]));
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
