-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIceu_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIceu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111111", 1 => "111011001", 2 => "111100000", 3 => "000010111", 
    4 => "001100010", 5 => "001010010", 6 => "000111101", 7 => "000001001", 
    8 => "110110000", 9 => "110100011", 10 => "110100010", 11 => "111110110", 
    12 => "000110110", 13 => "010000001", 14 => "001110101", 15 => "001000001", 
    16 => "111100001", 17 => "110101010", 18 => "110001001", 19 => "111000110", 
    20 => "111111011", 21 => "000111011", 22 => "001110111", 23 => "000111111", 
    24 => "000100100", 25 => "000000000", 26 => "111001000", 27 => "110110011", 
    28 => "111001001", 29 => "111010010", 30 => "000100100", 31 => "001101010", 
    32 => "001110100", 33 => "001011010", 34 => "000001110", 35 => "110110001", 
    36 => "110100001", 37 => "111000101", 38 => "111011111", 39 => "000110000", 
    40 => "001000101", 41 => "000111110", 42 => "000101111", 43 => "000001101", 
    44 => "111011110", 45 => "110110011", 46 => "110100000", 47 => "111100000", 
    48 => "000010100", 49 => "001000111", 50 => "001101000", 51 => "001010011", 
    52 => "000000011", 53 => "000110010", 54 => "001000100", 55 => "001001111", 
    56 => "000001111", 57 => "111001100", 58 => "110011110", 59 => "110011000", 
    60 => "110111011", 61 => "000001010", 62 => "001100110", 63 => "001101001", 
    64 => "001110100", 65 => "001001000", 66 => "111000100", 67 => "110001100", 
    68 => "110000001", 69 => "111011010", 70 => "000110110", 71 => "001101000", 
    72 => "001100100", 73 => "001101001", 74 => "000010110", 75 => "111011111", 
    76 => "110010110", 77 => "111001000", 78 => "111000100", 79 => "111111111", 
    80 => "000100110", 81 => "001001110", 82 => "001110110", 83 => "000011001", 
    84 => "111010011", 85 => "110110010", 86 => "110011000", 87 => "110111000", 
    88 => "111110111", 89 => "000100010", 90 => "001011001", 91 => "000111101", 
    92 => "000001111", 93 => "111011010", 94 => "111001101", 95 => "111010101", 
    96 => "111010011", 97 => "111101111", 98 => "111110011", 99 => "000111100", 
    100 => "001010100", 101 => "000110101", 102 => "111111010", 103 => "111001000" );

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

entity L3_wlo_166_L2_WEIceu is
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

architecture arch of L3_wlo_166_L2_WEIceu is
    component L3_wlo_166_L2_WEIceu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIceu_rom_U :  component L3_wlo_166_L2_WEIceu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


