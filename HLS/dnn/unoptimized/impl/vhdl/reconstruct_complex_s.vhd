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
    y_L3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_L3_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    y_L3_ce1 : OUT STD_LOGIC;
    y_L3_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    DNN_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    DNN_out_TVALID : OUT STD_LOGIC;
    DNN_out_TREADY : IN STD_LOGIC;
    DNN_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of reconstruct_complex_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_34 : STD_LOGIC_VECTOR (5 downto 0) := "110100";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv7_34 : STD_LOGIC_VECTOR (6 downto 0) := "0110100";
    constant ap_const_lv6_33 : STD_LOGIC_VECTOR (5 downto 0) := "110011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal DNN_out_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_fu_96_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_144 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln171_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_159 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_75 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln174_fu_102_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln174_1_fu_113_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln171_fu_86_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln174_fu_107_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal bitcast_ln162_1_fu_128_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln162_fu_124_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


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


    i_0_reg_75_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = DNN_out_TREADY) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_75 <= i_reg_144;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_75 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_144 <= i_fu_96_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln171_fu_90_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_last_V_reg_159 <= tmp_last_V_fu_118_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, DNN_out_TREADY, ap_CS_fsm_state3, ap_CS_fsm_state2, icmp_ln171_fu_90_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln171_fu_90_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = DNN_out_TREADY) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    DNN_out_TDATA <= (bitcast_ln162_1_fu_128_p1 & bitcast_ln162_fu_124_p1);

    DNN_out_TDATA_blk_n_assign_proc : process(DNN_out_TREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            DNN_out_TDATA_blk_n <= DNN_out_TREADY;
        else 
            DNN_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    DNN_out_TLAST <= tmp_last_V_reg_159;

    DNN_out_TVALID_assign_proc : process(DNN_out_TREADY, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = DNN_out_TREADY) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            DNN_out_TVALID <= ap_const_logic_1;
        else 
            DNN_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    add_ln174_fu_107_p2 <= std_logic_vector(unsigned(zext_ln171_fu_86_p1) + unsigned(ap_const_lv7_34));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln171_fu_90_p2)
    begin
        if ((((icmp_ln171_fu_90_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln171_fu_90_p2)
    begin
        if (((icmp_ln171_fu_90_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln162_1_fu_128_p1 <= y_L3_q1;
    bitcast_ln162_fu_124_p1 <= y_L3_q0;
    i_fu_96_p2 <= std_logic_vector(unsigned(i_0_reg_75) + unsigned(ap_const_lv6_1));
    icmp_ln171_fu_90_p2 <= "1" when (i_0_reg_75 = ap_const_lv6_34) else "0";
    tmp_last_V_fu_118_p2 <= "1" when (i_0_reg_75 = ap_const_lv6_33) else "0";
    y_L3_address0 <= zext_ln174_fu_102_p1(7 - 1 downto 0);
    y_L3_address1 <= zext_ln174_1_fu_113_p1(7 - 1 downto 0);

    y_L3_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            y_L3_ce0 <= ap_const_logic_1;
        else 
            y_L3_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    y_L3_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            y_L3_ce1 <= ap_const_logic_1;
        else 
            y_L3_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln171_fu_86_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_75),7));
    zext_ln174_1_fu_113_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln174_fu_107_p2),64));
    zext_ln174_fu_102_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_75),64));
end behav;
