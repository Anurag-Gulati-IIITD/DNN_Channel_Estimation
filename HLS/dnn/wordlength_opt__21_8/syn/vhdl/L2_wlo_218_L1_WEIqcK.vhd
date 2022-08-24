-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIqcK_rom is 
    generic(
             DWIDTH     : integer := 12; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 52
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L2_wlo_218_L1_WEIqcK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010110101", 1 => "010000101001", 2 => "110111010111", 
    3 => "001000100110", 4 => "111100110000", 5 => "001100110001", 
    6 => "110110000110", 7 => "110001000111", 8 => "101110011100", 
    9 => "000010100100", 10 => "110000110110", 11 => "001000010010", 
    12 => "111100111001", 13 => "011010101100", 14 => "111110100110", 
    15 => "010100001111", 16 => "000011000011", 17 => "001000110001", 
    18 => "000101111001", 19 => "000100110100", 20 => "001000010101", 
    21 => "000110000110", 22 => "001000000000", 23 => "101110110011", 
    24 => "111101100000", 25 => "110101010100", 26 => "110110100101", 
    27 => "111011101111", 28 => "010101111101", 29 => "110011010010", 
    30 => "001110101001", 31 => "000101100101", 32 => "001011100010", 
    33 => "000010110011", 34 => "101101110110", 35 => "101111001100", 
    36 => "000110101101", 37 => "010100001100", 38 => "111100111110", 
    39 => "110100000000", 40 => "000100010100", 41 => "111100001011", 
    42 => "110100110111", 43 => "110000100100", 44 => "000001011101", 
    45 => "111001111000", 46 => "110110110010", 47 => "000110001110", 
    48 => "000101010101", 49 => "001100101101", 50 => "010010111111", 
    51 => "001011100110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity L2_wlo_218_L1_WEIqcK is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIqcK is
    component L2_wlo_218_L1_WEIqcK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIqcK_rom_U :  component L2_wlo_218_L1_WEIqcK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


