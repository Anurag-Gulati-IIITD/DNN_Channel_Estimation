-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIciv_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIciv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000100000", 1 => "000010100", 2 => "000110010", 3 => "110110100", 
    4 => "111100111", 5 => "101001011", 6 => "110111000", 7 => "111001011", 
    8 => "001110011", 9 => "001101111", 10 => "000011100", 11 => "111001011", 
    12 => "000001001", 13 => "101111111", 14 => "111111000", 15 => "111110001", 
    16 => "111011110", 17 => "111101001", 18 => "111000001", 19 => "000001110", 
    20 => "001000111", 21 => "000100001", 22 => "111101111", 23 => "111011111", 
    24 => "000110000", 25 => "110110011", 26 => "000000110", 27 => "111010011", 
    28 => "000000111", 29 => "000010111", 30 => "001100011", 31 => "000101010", 
    32 => "001110011", 33 => "111111101", 34 => "111000001", 35 => "111010010", 
    36 => "000010000", 37 => "000010100", 38 => "111011101", 39 => "110011011", 
    40 => "111001001", 41 => "000101100", 42 => "000100100", 43 => "010110001", 
    44 => "000000010", 45 => "000000100", 46 => "110100011", 47 => "111111011", 
    48 => "000011101", 49 => "111111000", 50 => "101111011", 51 => "110011101", 
    52 => "110001000", 53 => "001011000", 54 => "000000101", 55 => "101011100", 
    56 => "111001111", 57 => "000010100", 58 => "000110001", 59 => "001011101", 
    60 => "001100111", 61 => "000010100", 62 => "110110001", 63 => "000111011", 
    64 => "111110000", 65 => "000010101", 66 => "111101000", 67 => "110110111", 
    68 => "111010010", 69 => "000000010", 70 => "010101100", 71 => "001100110", 
    72 => "001100010", 73 => "000001000", 74 => "111100110", 75 => "110111101", 
    76 => "000010010", 77 => "111110110", 78 => "000001111", 79 => "111011110", 
    80 => "000100001", 81 => "001010010", 82 => "010001000", 83 => "110110000", 
    84 => "110111010", 85 => "110000001", 86 => "000111101", 87 => "111100000", 
    88 => "000001010", 89 => "000010010", 90 => "111011000", 91 => "000111111", 
    92 => "001001101", 93 => "111000111", 94 => "111011000", 95 => "110111011", 
    96 => "110011100", 97 => "111011111", 98 => "001011111", 99 => "000111010", 
    100 => "001010010", 101 => "000101011", 102 => "110000100", 103 => "110110001" );

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

entity L3_wlo_218_L2_WEIciv is
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

architecture arch of L3_wlo_218_L2_WEIciv is
    component L3_wlo_218_L2_WEIciv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIciv_rom_U :  component L3_wlo_218_L2_WEIciv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


