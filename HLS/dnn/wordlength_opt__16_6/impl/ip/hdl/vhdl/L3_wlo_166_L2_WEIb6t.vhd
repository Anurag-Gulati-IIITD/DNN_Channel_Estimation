-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb6t_rom is 
    generic(
             DWIDTH     : integer := 9; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 104
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L3_wlo_166_L2_WEIb6t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000110111", 1 => "010010111", 2 => "010001111", 3 => "001001101", 
    4 => "111011001", 5 => "110101000", 6 => "110011101", 7 => "111100110", 
    8 => "000000101", 9 => "111111000", 10 => "111111001", 11 => "000100000", 
    12 => "000111011", 13 => "001100100", 14 => "000011000", 15 => "111010001", 
    16 => "110010000", 17 => "110011101", 18 => "000001000", 19 => "001001111", 
    20 => "001101100", 21 => "000100101", 22 => "111010001", 23 => "111010000", 
    24 => "111101011", 25 => "000010110", 26 => "111110001", 27 => "111010100", 
    28 => "111111111", 29 => "001000011", 30 => "000111111", 31 => "000010011", 
    32 => "111000010", 33 => "110100010", 34 => "111001110", 35 => "000101100", 
    36 => "001101111", 37 => "000111110", 38 => "111101101", 39 => "110110001", 
    40 => "111011011", 41 => "000101110", 42 => "001011010", 43 => "000001110", 
    44 => "110111000", 45 => "101110001", 46 => "110111001", 47 => "001010100", 
    48 => "010110100", 49 => "010111111", 50 => "000101100", 51 => "110000000", 
    52 => "011000010", 53 => "001011110", 54 => "111011011", 55 => "101101110", 
    56 => "110001101", 57 => "111001101", 58 => "000100101", 59 => "000110001", 
    60 => "000011111", 61 => "000011001", 62 => "000101101", 63 => "000110110", 
    64 => "000010110", 65 => "111100001", 66 => "110010000", 67 => "110100010", 
    68 => "111101110", 69 => "001010110", 70 => "001100110", 71 => "001000010", 
    72 => "111100001", 73 => "110011100", 74 => "110111111", 75 => "111110110", 
    76 => "000101100", 77 => "000101000", 78 => "111100011", 79 => "000000001", 
    80 => "000101111", 81 => "000100110", 82 => "111011111", 83 => "110101110", 
    84 => "111000000", 85 => "000001011", 86 => "001100010", 87 => "001010011", 
    88 => "000010011", 89 => "110100110", 90 => "110100100", 91 => "111101010", 
    92 => "000110000", 93 => "000111101", 94 => "111110000", 95 => "110011010", 
    96 => "110100010", 97 => "000011111", 98 => "010001000", 99 => "010011010", 
    100 => "000110000", 101 => "110011010", 102 => "100100011", 103 => "101001101" );

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

entity L3_wlo_166_L2_WEIb6t is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIb6t is
    component L3_wlo_166_L2_WEIb6t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb6t_rom_U :  component L3_wlo_166_L2_WEIb6t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


