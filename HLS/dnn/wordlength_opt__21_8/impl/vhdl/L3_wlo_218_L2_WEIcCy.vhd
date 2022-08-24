-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcCy_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcCy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010110", 1 => "000001110", 2 => "111000000", 3 => "000001011", 
    4 => "001101111", 5 => "000011011", 6 => "000010101", 7 => "110111100", 
    8 => "111011000", 9 => "111110001", 10 => "010000000", 11 => "010000101", 
    12 => "001110101", 13 => "000100001", 14 => "111101001", 15 => "110101000", 
    16 => "111010010", 17 => "000100001", 18 => "000101100", 19 => "111101011", 
    20 => "000110011", 21 => "111100010", 22 => "000010000", 23 => "111110100", 
    24 => "110111011", 25 => "111011101", 26 => "111100100", 27 => "110110110", 
    28 => "111100100", 29 => "000011001", 30 => "000010111", 31 => "001011111", 
    32 => "001110100", 33 => "111101010", 34 => "001000000", 35 => "000110110", 
    36 => "111100101", 37 => "000001101", 38 => "110010000", 39 => "110111010", 
    40 => "111110000", 41 => "000001000", 42 => "001101100", 43 => "001010011", 
    44 => "111100111", 45 => "110001001", 46 => "110010110", 47 => "000101111", 
    48 => "000111110", 49 => "000011111", 50 => "110011011", 51 => "101101010", 
    52 => "110111010", 53 => "111011011", 54 => "111101001", 55 => "000001000", 
    56 => "000100101", 57 => "111010001", 58 => "110110100", 59 => "110110111", 
    60 => "001000101", 61 => "001100000", 62 => "001011101", 63 => "000101000", 
    64 => "110011110", 65 => "110001110", 66 => "110110011", 67 => "111110001", 
    68 => "111100111", 69 => "001111101", 70 => "000111011", 71 => "000000110", 
    72 => "000001010", 73 => "000010111", 74 => "110101001", 75 => "111100110", 
    76 => "000000000", 77 => "111111111", 78 => "000001010", 79 => "000010010", 
    80 => "000011011", 81 => "000010011", 82 => "001001111", 83 => "111001111", 
    84 => "001000100", 85 => "111101110", 86 => "111101100", 87 => "000100101", 
    88 => "110110000", 89 => "110101111", 90 => "111111001", 91 => "000000111", 
    92 => "001011111", 93 => "001001010", 94 => "111110111", 95 => "110100100", 
    96 => "110111001", 97 => "111101110", 98 => "000000101", 99 => "001000011", 
    100 => "111101101", 101 => "110100010", 102 => "111101001", 103 => "000001010" );

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

entity L3_wlo_218_L2_WEIcCy is
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

architecture arch of L3_wlo_218_L2_WEIcCy is
    component L3_wlo_218_L2_WEIcCy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcCy_rom_U :  component L3_wlo_218_L2_WEIcCy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


