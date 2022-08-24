-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb3s_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb3s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110101011", 1 => "000100100", 2 => "001111101", 3 => "001101110", 
    4 => "000101000", 5 => "111001101", 6 => "110010100", 7 => "110100010", 
    8 => "111101110", 9 => "000110101", 10 => "001010111", 11 => "000110010", 
    12 => "111110111", 13 => "110110010", 14 => "110100110", 15 => "111011000", 
    16 => "000011011", 17 to 18=> "001101000", 19 => "000010111", 20 => "110111011", 
    21 => "101101110", 22 => "110001100", 23 => "111110100", 24 => "001101111", 
    25 => "010011000", 26 => "111010011", 27 => "110010110", 28 => "110011111", 
    29 => "111111011", 30 => "001010010", 31 => "001001000", 32 => "000010010", 
    33 => "111001110", 34 => "110111011", 35 => "111110010", 36 => "000011110", 
    37 => "000110111", 38 => "000101101", 39 => "111111010", 40 => "111010101", 
    41 => "111011100", 42 => "111101001", 43 => "000010100", 44 => "000011101", 
    45 => "000011000", 46 => "111101101", 47 => "111001111", 48 => "111101001", 
    49 => "000010001", 50 to 51=> "000110111", 52 => "001111011", 53 => "010001000", 
    54 => "000111000", 55 => "111011000", 56 => "110001111", 57 => "110010101", 
    58 => "111011010", 59 => "000101111", 60 => "001100101", 61 => "000111101", 
    62 => "000000100", 63 => "111001010", 64 => "110101110", 65 => "111000110", 
    66 => "000010000", 67 => "001010100", 68 => "001011101", 69 => "000110000", 
    70 => "111001100", 71 => "110001100", 72 => "110010100", 73 => "111110101", 
    74 => "001011100", 75 => "010001011", 76 => "001011111", 77 => "111100011", 
    78 => "110000111", 79 => "111001111", 80 => "000111001", 81 => "001011100", 
    82 => "000110011", 83 => "111110011", 84 => "110111100", 85 => "111000110", 
    86 => "000001100", 87 => "001000101", 88 => "000110100", 89 => "111111010", 
    90 => "111010100", 91 => "111000101", 92 => "111101110", 93 => "000001001", 
    94 => "000101101", 95 => "000011011", 96 => "000001000", 97 => "111010011", 
    98 => "111101010", 99 => "000001101", 100 => "000100011", 101 => "000101111", 
    102 => "000011100", 103 => "111100101" );

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

entity L3_wlo_166_L2_WEIb3s is
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

architecture arch of L3_wlo_166_L2_WEIb3s is
    component L3_wlo_166_L2_WEIb3s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb3s_rom_U :  component L3_wlo_166_L2_WEIb3s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


