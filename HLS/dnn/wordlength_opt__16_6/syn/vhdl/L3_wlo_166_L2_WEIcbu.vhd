-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcbu_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcbu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011011", 1 => "111010011", 2 => "111000100", 3 => "111011010", 
    4 => "111110010", 5 => "000000110", 6 => "000001000", 7 => "000001101", 
    8 => "000101011", 9 => "000111001", 10 => "000011000", 11 => "111010100", 
    12 => "110011001", 13 => "110001100", 14 => "111010011", 15 => "000110100", 
    16 => "010000101", 17 => "001111101", 18 => "000100111", 19 => "111001101", 
    20 => "101111100", 21 => "101111110", 22 => "111000100", 23 => "000010110", 
    24 => "001100000", 25 => "001111100", 26 => "000001000", 27 => "110110000", 
    28 => "101110111", 29 => "110000101", 30 => "111100001", 31 => "001000010", 
    32 => "010001011", 33 => "001111110", 34 => "000100100", 35 => "110110001", 
    36 => "101101101", 37 => "101111000", 38 => "111010000", 39 => "001000110", 
    40 => "010010101", 41 => "010001110", 42 => "000101110", 43 => "110111010", 
    44 => "101011110", 45 => "101110001", 46 => "111011000", 47 => "001011001", 
    48 => "010100011", 49 => "001110011", 50 => "111110101", 51 => "110001100", 
    52 => "110111001", 53 => "111000010", 54 => "111110001", 55 => "000100011", 
    56 => "000100001", 57 => "000011000", 58 => "000010100", 59 => "000010111", 
    60 => "000001010", 61 => "111100111", 62 => "110110111", 63 => "110100000", 
    64 => "111011011", 65 => "000110000", 66 => "001111101", 67 => "001111001", 
    68 => "000110010", 69 => "110111010", 70 => "101111100", 71 => "110000001", 
    72 => "111001110", 73 => "000101101", 74 => "001101111", 75 => "010000101", 
    76 => "001000111", 77 => "111110011", 78 => "101110101", 79 => "110011000", 
    80 => "111101111", 81 => "001010000", 82 => "010001110", 83 => "001111011", 
    84 => "000010101", 85 => "110111000", 86 => "101101100", 87 => "101111100", 
    88 => "111010110", 89 => "001001110", 90 => "010011000", 91 => "010010000", 
    92 => "000110010", 93 => "110111111", 94 => "101101001", 95 => "101101101", 
    96 => "111010000", 97 => "001010000", 98 => "010101101", 99 => "010001100", 
    100 => "000010111", 101 => "110010000", 102 => "101100110", 103 => "110110101" );

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

entity L3_wlo_166_L2_WEIcbu is
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

architecture arch of L3_wlo_166_L2_WEIcbu is
    component L3_wlo_166_L2_WEIcbu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcbu_rom_U :  component L3_wlo_166_L2_WEIcbu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


