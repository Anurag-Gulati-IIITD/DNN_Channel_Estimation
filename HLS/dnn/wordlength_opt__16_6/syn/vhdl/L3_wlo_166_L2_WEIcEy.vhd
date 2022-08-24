-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcEy_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcEy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111101011", 1 => "101010001", 2 => "100111111", 3 => "111000001", 
    4 => "001001111", 5 => "010010011", 6 => "001001011", 7 => "111100100", 
    8 => "110101110", 9 => "110110111", 10 => "000000111", 11 => "001010000", 
    12 => "001000001", 13 => "000010100", 14 => "110101101", 15 => "110001110", 
    16 => "111000010", 17 => "000100101", 18 => "001110101", 19 => "001101110", 
    20 => "000111000", 21 => "111001010", 22 => "110000000", 23 => "110010011", 
    24 => "111011001", 25 => "001001001", 26 => "001101011", 27 => "000001001", 
    28 => "110110101", 29 => "110100101", 30 => "110110001", 31 => "111111011", 
    32 => "000110000", 33 => "000110100", 34 => "000100011", 35 to 36=> "000010011", 
    37 => "000000001", 38 => "111100101", 39 => "110111110", 40 => "110111100", 
    41 => "111100011", 42 => "000101001", 43 => "001010001", 44 => "001011001", 
    45 => "000011010", 46 => "111101010", 47 => "111000110", 48 => "111000010", 
    49 => "111010101", 50 => "111101011", 51 => "111111110", 52 => "100111110", 
    53 => "110011110", 54 => "000110100", 55 => "010011001", 56 => "010001010", 
    57 => "000010100", 58 => "110110010", 59 => "110010101", 60 => "111011010", 
    61 => "000111100", 62 => "001011110", 63 => "000100010", 64 => "111010000", 
    65 => "110011101", 66 => "110111000", 67 => "000011101", 68 => "001100101", 
    69 => "001101111", 70 => "000101110", 71 => "111010000", 72 => "110010000", 
    73 => "110000110", 74 => "111010000", 75 => "000111111", 76 => "010001111", 
    77 => "001111101", 78 => "110110000", 79 => "101111011", 80 => "110101100", 
    81 => "111111111", 82 => "000111101", 83 => "001010010", 84 => "000110101", 
    85 => "000000101", 86 => "111110111", 87 => "111100000", 88 => "111100001", 
    89 => "111001000", 90 => "111011000", 91 => "111110010", 92 => "000011011", 
    93 => "001010011", 94 => "001010110", 95 => "000001111", 96 => "111010010", 
    97 => "110101101", 98 => "110110011", 99 => "111100010", 100 => "000000101", 
    101 => "000011110", 102 => "000110101", 103 => "001011010" );

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

entity L3_wlo_166_L2_WEIcEy is
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

architecture arch of L3_wlo_166_L2_WEIcEy is
    component L3_wlo_166_L2_WEIcEy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcEy_rom_U :  component L3_wlo_166_L2_WEIcEy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


