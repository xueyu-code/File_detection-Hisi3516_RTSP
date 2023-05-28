-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hls_fire_dection is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_0_V_empty_n : IN STD_LOGIC;
    src_data_stream_0_V_read : OUT STD_LOGIC;
    src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_1_V_empty_n : IN STD_LOGIC;
    src_data_stream_1_V_read : OUT STD_LOGIC;
    src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_2_V_empty_n : IN STD_LOGIC;
    src_data_stream_2_V_read : OUT STD_LOGIC;
    dst_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_0_V_full_n : IN STD_LOGIC;
    dst_data_stream_0_V_write : OUT STD_LOGIC;
    dst_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_1_V_full_n : IN STD_LOGIC;
    dst_data_stream_1_V_write : OUT STD_LOGIC;
    dst_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_2_V_full_n : IN STD_LOGIC;
    dst_data_stream_2_V_write : OUT STD_LOGIC;
    rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rows_empty_n : IN STD_LOGIC;
    rows_read : OUT STD_LOGIC;
    cols_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    cols_empty_n : IN STD_LOGIC;
    cols_read : OUT STD_LOGIC;
    r_low_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    r_low_empty_n : IN STD_LOGIC;
    r_low_read : OUT STD_LOGIC;
    r_up_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    r_up_empty_n : IN STD_LOGIC;
    r_up_read : OUT STD_LOGIC;
    g_low_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    g_low_empty_n : IN STD_LOGIC;
    g_low_read : OUT STD_LOGIC;
    g_up_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    g_up_empty_n : IN STD_LOGIC;
    g_up_read : OUT STD_LOGIC;
    b_low_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    b_low_empty_n : IN STD_LOGIC;
    b_low_read : OUT STD_LOGIC;
    b_up_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    b_up_empty_n : IN STD_LOGIC;
    b_up_read : OUT STD_LOGIC );
end;


architecture behav of hls_fire_dection is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal src_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_1_i_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal src_data_stream_1_V_blk_n : STD_LOGIC;
    signal src_data_stream_2_V_blk_n : STD_LOGIC;
    signal dst_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal dst_data_stream_1_V_blk_n : STD_LOGIC;
    signal dst_data_stream_2_V_blk_n : STD_LOGIC;
    signal rows_blk_n : STD_LOGIC;
    signal cols_blk_n : STD_LOGIC;
    signal r_low_blk_n : STD_LOGIC;
    signal r_up_blk_n : STD_LOGIC;
    signal g_low_blk_n : STD_LOGIC;
    signal g_up_blk_n : STD_LOGIC;
    signal b_low_blk_n : STD_LOGIC;
    signal b_up_blk_n : STD_LOGIC;
    signal rows_read_reg_503 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal cols_read_reg_508 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_low_read_reg_513 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_up_read_reg_518 : STD_LOGIC_VECTOR (31 downto 0);
    signal g_low_read_reg_523 : STD_LOGIC_VECTOR (31 downto 0);
    signal g_up_read_reg_528 : STD_LOGIC_VECTOR (31 downto 0);
    signal b_low_read_reg_533 : STD_LOGIC_VECTOR (31 downto 0);
    signal b_up_read_reg_538 : STD_LOGIC_VECTOR (31 downto 0);
    signal row_fu_344_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal row_reg_546 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal col_fu_359_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal col_reg_554 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal B_fu_479_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal B_reg_559 : STD_LOGIC_VECTOR (7 downto 0);
    signal G_fu_487_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal G_reg_564 : STD_LOGIC_VECTOR (7 downto 0);
    signal R_fu_495_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal R_reg_569 : STD_LOGIC_VECTOR (7 downto 0);
    signal row_i_reg_313 : STD_LOGIC_VECTOR (30 downto 0);
    signal col_i_reg_324 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_i_fu_339_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal row_cast_i_fu_335_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal col_cast_i_fu_350_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_i_fu_365_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_i_7_fu_379_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_i_fu_393_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_14_i_fu_413_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_i_fu_419_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp7_fu_425_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_i_fu_407_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond9_i_fu_431_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_i_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_i_fu_383_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp9_fu_443_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_i_fu_402_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_i_fu_369_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_i_fu_388_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_i_fu_374_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rgb_flag_2_0_not_i_fu_437_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp2_fu_461_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_fu_455_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp3_fu_467_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp8_fu_449_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_fu_473_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_339_p2 = ap_const_lv1_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    col_i_reg_324_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((dst_data_stream_2_V_full_n = ap_const_logic_0) or (dst_data_stream_1_V_full_n = ap_const_logic_0) or (dst_data_stream_0_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                col_i_reg_324 <= col_reg_554;
            elsif (((tmp_i_fu_339_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                col_i_reg_324 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    row_i_reg_313_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                row_i_reg_313 <= row_reg_546;
            elsif ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                row_i_reg_313 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                B_reg_559 <= B_fu_479_p3;
                G_reg_564 <= G_fu_487_p3;
                R_reg_569 <= R_fu_495_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                b_low_read_reg_533 <= b_low_dout;
                b_up_read_reg_538 <= b_up_dout;
                cols_read_reg_508 <= cols_dout;
                g_low_read_reg_523 <= g_low_dout;
                g_up_read_reg_528 <= g_up_dout;
                r_low_read_reg_513 <= r_low_dout;
                r_up_read_reg_518 <= r_up_dout;
                rows_read_reg_503 <= rows_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                col_reg_554 <= col_fu_359_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                row_reg_546 <= row_fu_344_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2, ap_CS_fsm_state4, ap_CS_fsm_state2, tmp_i_fu_339_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_339_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((dst_data_stream_2_V_full_n = ap_const_logic_0) or (dst_data_stream_1_V_full_n = ap_const_logic_0) or (dst_data_stream_0_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    B_fu_479_p3 <= 
        src_data_stream_1_V_dout when (brmerge_i_fu_473_p2(0) = '1') else 
        ap_const_lv8_0;
    G_fu_487_p3 <= 
        src_data_stream_0_V_dout when (brmerge_i_fu_473_p2(0) = '1') else 
        ap_const_lv8_FF;
    R_fu_495_p3 <= 
        src_data_stream_2_V_dout when (brmerge_i_fu_473_p2(0) = '1') else 
        ap_const_lv8_0;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, tmp_1_i_fu_354_p2)
    begin
                ap_block_state3 <= (((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state4_assign_proc : process(dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n)
    begin
                ap_block_state4 <= ((dst_data_stream_2_V_full_n = ap_const_logic_0) or (dst_data_stream_1_V_full_n = ap_const_logic_0) or (dst_data_stream_0_V_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, tmp_i_fu_339_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_339_p2 = ap_const_lv1_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_i_fu_339_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_339_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    b_low_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, b_low_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            b_low_blk_n <= b_low_empty_n;
        else 
            b_low_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    b_low_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            b_low_read <= ap_const_logic_1;
        else 
            b_low_read <= ap_const_logic_0;
        end if; 
    end process;


    b_up_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            b_up_blk_n <= b_up_empty_n;
        else 
            b_up_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    b_up_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            b_up_read <= ap_const_logic_1;
        else 
            b_up_read <= ap_const_logic_0;
        end if; 
    end process;

    brmerge_i_fu_473_p2 <= (tmp8_fu_449_p2 or tmp3_fu_467_p2);
    col_cast_i_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_i_reg_324),32));
    col_fu_359_p2 <= std_logic_vector(unsigned(col_i_reg_324) + unsigned(ap_const_lv31_1));

    cols_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cols_blk_n <= cols_empty_n;
        else 
            cols_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    cols_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            cols_read <= ap_const_logic_1;
        else 
            cols_read <= ap_const_logic_0;
        end if; 
    end process;


    dst_data_stream_0_V_blk_n_assign_proc : process(dst_data_stream_0_V_full_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            dst_data_stream_0_V_blk_n <= dst_data_stream_0_V_full_n;
        else 
            dst_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_0_V_din <= G_reg_564;

    dst_data_stream_0_V_write_assign_proc : process(dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, ap_CS_fsm_state4)
    begin
        if ((not(((dst_data_stream_2_V_full_n = ap_const_logic_0) or (dst_data_stream_1_V_full_n = ap_const_logic_0) or (dst_data_stream_0_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dst_data_stream_0_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst_data_stream_1_V_blk_n_assign_proc : process(dst_data_stream_1_V_full_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            dst_data_stream_1_V_blk_n <= dst_data_stream_1_V_full_n;
        else 
            dst_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_1_V_din <= B_reg_559;

    dst_data_stream_1_V_write_assign_proc : process(dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, ap_CS_fsm_state4)
    begin
        if ((not(((dst_data_stream_2_V_full_n = ap_const_logic_0) or (dst_data_stream_1_V_full_n = ap_const_logic_0) or (dst_data_stream_0_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dst_data_stream_1_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst_data_stream_2_V_blk_n_assign_proc : process(dst_data_stream_2_V_full_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            dst_data_stream_2_V_blk_n <= dst_data_stream_2_V_full_n;
        else 
            dst_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_2_V_din <= R_reg_569;

    dst_data_stream_2_V_write_assign_proc : process(dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, ap_CS_fsm_state4)
    begin
        if ((not(((dst_data_stream_2_V_full_n = ap_const_logic_0) or (dst_data_stream_1_V_full_n = ap_const_logic_0) or (dst_data_stream_0_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dst_data_stream_2_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;


    g_low_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, g_low_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            g_low_blk_n <= g_low_empty_n;
        else 
            g_low_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    g_low_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            g_low_read <= ap_const_logic_1;
        else 
            g_low_read <= ap_const_logic_0;
        end if; 
    end process;


    g_up_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, g_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            g_up_blk_n <= g_up_empty_n;
        else 
            g_up_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    g_up_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            g_up_read <= ap_const_logic_1;
        else 
            g_up_read <= ap_const_logic_0;
        end if; 
    end process;

    or_cond9_i_fu_431_p2 <= (tmp_13_i_fu_407_p2 and tmp7_fu_425_p2);

    r_low_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, r_low_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_low_blk_n <= r_low_empty_n;
        else 
            r_low_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    r_low_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_low_read <= ap_const_logic_1;
        else 
            r_low_read <= ap_const_logic_0;
        end if; 
    end process;


    r_up_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, r_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_up_blk_n <= r_up_empty_n;
        else 
            r_up_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    r_up_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_up_read <= ap_const_logic_1;
        else 
            r_up_read <= ap_const_logic_0;
        end if; 
    end process;

    rgb_flag_2_0_not_i_fu_437_p2 <= (or_cond9_i_fu_431_p2 xor ap_const_lv1_1);
    row_cast_i_fu_335_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row_i_reg_313),32));
    row_fu_344_p2 <= std_logic_vector(unsigned(row_i_reg_313) + unsigned(ap_const_lv31_1));

    rows_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rows_blk_n <= rows_empty_n;
        else 
            rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rows_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, rows_empty_n, cols_empty_n, r_low_empty_n, r_up_empty_n, g_low_empty_n, g_up_empty_n, b_low_empty_n, b_up_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (b_up_empty_n = ap_const_logic_0) or (b_low_empty_n = ap_const_logic_0) or (g_up_empty_n = ap_const_logic_0) or (g_low_empty_n = ap_const_logic_0) or (r_up_empty_n = ap_const_logic_0) or (r_low_empty_n = ap_const_logic_0) or (cols_empty_n = ap_const_logic_0) or (rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            rows_read <= ap_const_logic_1;
        else 
            rows_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_0_V_blk_n_assign_proc : process(src_data_stream_0_V_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2)
    begin
        if (((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_data_stream_0_V_blk_n <= src_data_stream_0_V_empty_n;
        else 
            src_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_0_V_read_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2)
    begin
        if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_data_stream_0_V_read <= ap_const_logic_1;
        else 
            src_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_1_V_blk_n_assign_proc : process(src_data_stream_1_V_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2)
    begin
        if (((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_data_stream_1_V_blk_n <= src_data_stream_1_V_empty_n;
        else 
            src_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_1_V_read_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2)
    begin
        if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_data_stream_1_V_read <= ap_const_logic_1;
        else 
            src_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_2_V_blk_n_assign_proc : process(src_data_stream_2_V_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2)
    begin
        if (((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_data_stream_2_V_blk_n <= src_data_stream_2_V_empty_n;
        else 
            src_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_2_V_read_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, ap_CS_fsm_state3, tmp_1_i_fu_354_p2)
    begin
        if ((not((((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (src_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_1_i_fu_354_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            src_data_stream_2_V_read <= ap_const_logic_1;
        else 
            src_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_fu_455_p2 <= (tmp_9_i_fu_388_p2 or tmp_5_i_fu_369_p2);
    tmp2_fu_461_p2 <= (tmp_6_i_fu_374_p2 or rgb_flag_2_0_not_i_fu_437_p2);
    tmp3_fu_467_p2 <= (tmp2_fu_461_p2 or tmp1_fu_455_p2);
    tmp7_fu_425_p2 <= (tmp_15_i_fu_419_p2 and tmp_14_i_fu_413_p2);
    tmp8_fu_449_p2 <= (tmp_12_i_fu_402_p2 or tmp9_fu_443_p2);
    tmp9_fu_443_p2 <= (tmp_8_i_fu_383_p2 or tmp_11_i_fu_397_p2);
    tmp_10_i_fu_393_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(src_data_stream_1_V_dout),32));
    tmp_11_i_fu_397_p2 <= "1" when (signed(tmp_10_i_fu_393_p1) < signed(b_low_read_reg_533)) else "0";
    tmp_12_i_fu_402_p2 <= "1" when (signed(tmp_10_i_fu_393_p1) > signed(b_up_read_reg_538)) else "0";
    tmp_13_i_fu_407_p2 <= "1" when (unsigned(src_data_stream_2_V_dout) > unsigned(src_data_stream_0_V_dout)) else "0";
    tmp_14_i_fu_413_p2 <= "1" when (unsigned(src_data_stream_2_V_dout) > unsigned(src_data_stream_1_V_dout)) else "0";
    tmp_15_i_fu_419_p2 <= "1" when (unsigned(src_data_stream_0_V_dout) > unsigned(src_data_stream_1_V_dout)) else "0";
    tmp_1_i_fu_354_p2 <= "1" when (signed(col_cast_i_fu_350_p1) < signed(cols_read_reg_508)) else "0";
    tmp_4_i_fu_365_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(src_data_stream_2_V_dout),32));
    tmp_5_i_fu_369_p2 <= "1" when (signed(tmp_4_i_fu_365_p1) < signed(r_low_read_reg_513)) else "0";
    tmp_6_i_fu_374_p2 <= "1" when (signed(tmp_4_i_fu_365_p1) > signed(r_up_read_reg_518)) else "0";
    tmp_8_i_fu_383_p2 <= "1" when (signed(tmp_i_7_fu_379_p1) < signed(g_low_read_reg_523)) else "0";
    tmp_9_i_fu_388_p2 <= "1" when (signed(tmp_i_7_fu_379_p1) > signed(g_up_read_reg_528)) else "0";
    tmp_i_7_fu_379_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(src_data_stream_0_V_dout),32));
    tmp_i_fu_339_p2 <= "1" when (signed(row_cast_i_fu_335_p1) < signed(rows_read_reg_503)) else "0";
end behav;