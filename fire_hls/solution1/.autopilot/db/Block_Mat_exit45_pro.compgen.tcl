# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols \
    op interface \
    ports { cols { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name r_low \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_low \
    op interface \
    ports { r_low { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name r_up \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_up \
    op interface \
    ports { r_up { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name g_low \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_g_low \
    op interface \
    ports { g_low { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name g_up \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_g_up \
    op interface \
    ports { g_up { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name b_low \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_low \
    op interface \
    ports { b_low { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name b_up \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_up \
    op interface \
    ports { b_up { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rows_out \
    op interface \
    ports { rows_out_din { O 32 vector } rows_out_full_n { I 1 bit } rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_out \
    op interface \
    ports { cols_out_din { O 32 vector } cols_out_full_n { I 1 bit } cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name img_1_rows_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_rows_V_out \
    op interface \
    ports { img_1_rows_V_out_din { O 32 vector } img_1_rows_V_out_full_n { I 1 bit } img_1_rows_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name img_1_cols_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_cols_V_out \
    op interface \
    ports { img_1_cols_V_out_din { O 32 vector } img_1_cols_V_out_full_n { I 1 bit } img_1_cols_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name r_low_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_low_out \
    op interface \
    ports { r_low_out_din { O 32 vector } r_low_out_full_n { I 1 bit } r_low_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name r_up_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_up_out \
    op interface \
    ports { r_up_out_din { O 32 vector } r_up_out_full_n { I 1 bit } r_up_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name g_low_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_g_low_out \
    op interface \
    ports { g_low_out_din { O 32 vector } g_low_out_full_n { I 1 bit } g_low_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name g_up_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_g_up_out \
    op interface \
    ports { g_up_out_din { O 32 vector } g_up_out_full_n { I 1 bit } g_up_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name b_low_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_low_out \
    op interface \
    ports { b_low_out_din { O 32 vector } b_low_out_full_n { I 1 bit } b_low_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name b_up_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_up_out \
    op interface \
    ports { b_up_out_din { O 32 vector } b_up_out_full_n { I 1 bit } b_up_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


