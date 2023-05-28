############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project skin_hls
set_top fire
add_files skin_hls/top.h
add_files skin_hls/top.cpp
add_files -tb skin_hls/test.PNG -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/skin_tb.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/home.png -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/fire_6.PNG -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/fire_5.PNG -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/fire_3.png -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/fire_2.png -cflags "-Wno-unknown-pragmas"
add_files -tb skin_hls/fire_1.png -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-2} -tool vivado
create_clock -period 10 -name default
config_export -display_name fire -format ip_catalog -rtl verilog
#source "./skin_hls/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "fire"
