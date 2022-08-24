-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcRA_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcRA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001011101", 1 => "001001101", 2 => "000101011", 3 => "111000101", 
    4 => "101110000", 5 => "110001000", 6 => "110101110", 7 => "111111001", 
    8 => "001010111", 9 => "001111101", 10 => "001110010", 11 => "000000010", 
    12 => "110110101", 13 => "110000110", 14 => "101110110", 15 => "110101101", 
    16 => "000001101", 17 => "001010010", 18 => "010000011", 19 => "001001111", 
    20 => "000010010", 21 => "111011110", 22 => "110000110", 23 => "110110001", 
    24 => "111010110", 25 => "000001111", 26 => "001010110", 27 => "001100111", 
    28 => "001000111", 29 => "000010100", 30 => "111000110", 31 => "101110101", 
    32 => "101110000", 33 => "110001111", 34 => "000000011", 35 => "001101011", 
    36 => "010000000", 37 => "001011000", 38 => "000010010", 39 => "110100001", 
    40 => "110001111", 41 => "110100111", 42 => "111011011", 43 => "000000001", 
    44 => "000111001", 45 => "001011000", 46 => "001101100", 47 => "000111000", 
    48 => "111111001", 49 => "110011110", 50 => "101101001", 51 => "110001010", 
    52 => "111110100", 53 => "110111000", 54 => "110011000", 55 => "110000110", 
    56 => "111101010", 57 => "001001101", 58 => "001110010", 59 => "010010000", 
    60 => "001100010", 61 => "111110011", 62 => "110001100", 63 => "110001011", 
    64 => "110000101", 65 => "110110011", 66 => "000111001", 67 => "001110011", 
    68 => "010010010", 69 => "000100100", 70 => "111010100", 71 => "110010101", 
    72 => "110001110", 73 => "110000100", 74 => "111011110", 75 => "000100011", 
    76 => "001111101", 77 => "001000011", 78 => "001000110", 79 => "111111000", 
    80 => "111000101", 81 => "110100110", 82 => "101111111", 83 => "111100011", 
    84 => "000110100", 85 => "001110011", 86 => "010001001", 87 => "001001111", 
    88 => "111111000", 89 => "110111101", 90 => "110000000", 91 => "110100110", 
    92 => "111111100", 93 => "001000001", 94 => "001100011", 95 => "001000011", 
    96 => "000100001", 97 => "000001110", 98 => "111111101", 99 => "110111001", 
    100 => "101111000", 101 => "110100111", 102 => "111110011", 103 => "001001001" );

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

entity L3_wlo_166_L2_WEIcRA is
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

architecture arch of L3_wlo_166_L2_WEIcRA is
    component L3_wlo_166_L2_WEIcRA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcRA_rom_U :  component L3_wlo_166_L2_WEIcRA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


