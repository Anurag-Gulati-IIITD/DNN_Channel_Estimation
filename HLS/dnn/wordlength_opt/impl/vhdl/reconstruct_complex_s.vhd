-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reconstruct_complex_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y_L3_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    y_L3_ce0 : OUT STD_LOGIC;
    y_L3_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    y_L3_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    y_L3_ce1 : OUT STD_LOGIC;
    y_L3_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    DNN_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    DNN_out_TVALID : OUT STD_LOGIC;
    DNN_out_TREADY : IN STD_LOGIC;
    DNN_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of reconstruct_complex_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_34 : STD_LOGIC_VECTOR (5 downto 0) := "110100";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv7_34 : STD_LOGIC_VECTOR (6 downto 0) := "0110100";
    constant ap_const_lv6_33 : STD_LOGIC_VECTOR (5 downto 0) := "110011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal DNN_out_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln537_reg_159 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln537_reg_159_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_85 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln537_fu_104_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_110_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_last_V_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_178 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_178_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal zext_ln542_fu_120_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln542_1_fu_131_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln537_fu_116_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln542_fu_125_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_96_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_100_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln162_1_fu_146_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln162_fu_142_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_96_ce : STD_LOGIC;
    signal grp_fu_100_ce : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component DNN_wlo_hptosp_16cux IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    DNN_wlo_hptosp_16cux_U411 : component DNN_wlo_hptosp_16cux
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => y_L3_q0,
        ce => grp_fu_96_ce,
        dout => grp_fu_96_p1);

    DNN_wlo_hptosp_16cux_U412 : component DNN_wlo_hptosp_16cux
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => y_L3_q1,
        ce => grp_fu_100_ce,
        dout => grp_fu_100_p1);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_85_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln537_fu_104_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_0_reg_85 <= i_fu_110_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_85 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln537_reg_159 <= icmp_ln537_fu_104_p2;
                icmp_ln537_reg_159_pp0_iter1_reg <= icmp_ln537_reg_159;
                tmp_last_V_reg_178_pp0_iter1_reg <= tmp_last_V_reg_178;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln537_fu_104_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_last_V_reg_178 <= tmp_last_V_fu_136_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter2, icmp_ln537_fu_104_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln537_fu_104_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln537_fu_104_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    DNN_out_TDATA <= (bitcast_ln162_1_fu_146_p1 & bitcast_ln162_fu_142_p1);

    DNN_out_TDATA_blk_n_assign_proc : process(DNN_out_TREADY, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, icmp_ln537_reg_159_pp0_iter1_reg)
    begin
        if (((icmp_ln537_reg_159_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            DNN_out_TDATA_blk_n <= DNN_out_TREADY;
        else 
            DNN_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    DNN_out_TLAST <= tmp_last_V_reg_178_pp0_iter1_reg;

    DNN_out_TVALID_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln537_reg_159_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln537_reg_159_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            DNN_out_TVALID <= ap_const_logic_1;
        else 
            DNN_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    add_ln542_fu_125_p2 <= std_logic_vector(unsigned(zext_ln537_fu_116_p1) + unsigned(ap_const_lv7_34));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state4_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_io));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state4_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_io));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(DNN_out_TREADY, icmp_ln537_reg_159_pp0_iter1_reg)
    begin
                ap_block_state4_io <= ((icmp_ln537_reg_159_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = DNN_out_TREADY));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln537_fu_104_p2)
    begin
        if ((icmp_ln537_fu_104_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln162_1_fu_146_p1 <= grp_fu_100_p1;
    bitcast_ln162_fu_142_p1 <= grp_fu_96_p1;

    grp_fu_100_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_100_ce <= ap_const_logic_1;
        else 
            grp_fu_100_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_96_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_96_ce <= ap_const_logic_1;
        else 
            grp_fu_96_ce <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_110_p2 <= std_logic_vector(unsigned(i_0_reg_85) + unsigned(ap_const_lv6_1));
    icmp_ln537_fu_104_p2 <= "1" when (i_0_reg_85 = ap_const_lv6_34) else "0";
    tmp_last_V_fu_136_p2 <= "1" when (i_0_reg_85 = ap_const_lv6_33) else "0";
    y_L3_address0 <= zext_ln542_fu_120_p1(7 - 1 downto 0);
    y_L3_address1 <= zext_ln542_1_fu_131_p1(7 - 1 downto 0);

    y_L3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            y_L3_ce0 <= ap_const_logic_1;
        else 
            y_L3_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    y_L3_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            y_L3_ce1 <= ap_const_logic_1;
        else 
            y_L3_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln537_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_85),7));
    zext_ln542_1_fu_131_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln542_fu_125_p2),64));
    zext_ln542_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_85),64));
end behav;
