# ==============================================================
# File generated on Fri Mar 31 12:32:15 +0800 2023
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test.PNG -cflags { -Wno-unknown-pragmas}
add_files -tb ../skin_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../home.png -cflags { -Wno-unknown-pragmas}
add_files -tb ../fire_6.PNG -cflags { -Wno-unknown-pragmas}
add_files -tb ../fire_5.PNG -cflags { -Wno-unknown-pragmas}
add_files -tb ../fire_3.png -cflags { -Wno-unknown-pragmas}
add_files -tb ../fire_2.png -cflags { -Wno-unknown-pragmas}
add_files -tb ../fire_1.png -cflags { -Wno-unknown-pragmas}
add_files skin_hls/top.h
add_files skin_hls/top.cpp
set_part xc7z020clg400-2
create_clock -name default -period 10
config_export -display_name=fire
config_export -format=ip_catalog
config_export -rtl=verilog
