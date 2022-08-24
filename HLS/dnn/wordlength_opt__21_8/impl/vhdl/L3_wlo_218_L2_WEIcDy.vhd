-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcDy_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L3_wlo_218_L2_WEIcDy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011001110", 1 => "000111110001", 2 => "001011101001", 
    3 => "001010110111", 4 => "000100011000", 5 => "111010001110", 
    6 => "110001100111", 7 => "101110100001", 8 => "110011011001", 
    9 => "000011101110", 10 => "010001001010", 11 => "010101100100", 
    12 => "001110100010", 13 => "111100011011", 14 => "110001101000", 
    15 => "101101100101", 16 => "110001111010", 17 => "111001111010", 
    18 => "000101011000", 19 => "010001111001", 20 => "010000101101", 
    21 => "001011010001", 22 => "111111101001", 23 => "110010110111", 
    24 => "101111001110", 25 => "110010011010", 26 => "000110011100", 
    27 => "001001110101", 28 => "000110100011", 29 => "111111101100", 
    30 => "000010000010", 31 => "000010100001", 32 => "000010010110", 
    33 => "111101110101", 34 => "110100010011", 35 => "110000011111", 
    36 => "111000010110", 37 => "000110011000", 38 => "010001101111", 
    39 => "010010100110", 40 => "000110101100", 41 => "110111010000", 
    42 => "101110101001", 43 => "110010011011", 44 => "111011010101", 
    45 => "000111110000", 46 => "001010001110", 47 => "001010010000", 
    48 => "000100010110", 49 => "111111111011", 50 => "111001001010", 
    51 => "111000110100", 52 => "001000011000", 53 => "000100111110", 
    54 => "000010010110", 55 => "111010010000", 56 => "110011011000", 
    57 => "110000111011", 58 => "110110100110", 59 => "000100010011", 
    60 => "010000001101", 61 => "010100010110", 62 => "001100010010", 
    63 => "111100001100", 64 => "101110110111", 65 => "101100001010", 
    66 => "110010000010", 67 => "111100110101", 68 => "001011100001", 
    69 => "010001110011", 70 => "010001001100", 71 => "001000110101", 
    72 => "111010111100", 73 => "110000101010", 74 => "101110100001", 
    75 => "110011101010", 76 => "111011111010", 77 => "001000111101", 
    78 => "001001000001", 79 => "000011101100", 80 => "111100100110", 
    81 => "111100010010", 82 => "111111110101", 83 => "111101011001", 
    84 => "110111010111", 85 => "110111001010", 86 => "111000010001", 
    87 => "000100001000", 88 => "010000001010", 89 => "010011100111", 
    90 => "000110111100", 91 => "110111001011", 92 => "101101011001", 
    93 => "101111010101", 94 => "111010010001", 95 => "001010111011", 
    96 => "001110110100", 97 => "001101110000", 98 => "000101010101", 
    99 => "111001111111", 100 => "111000010101", 101 => "110111110011", 
    102 => "110111011101", 103 => "111010011000" );


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

entity L3_wlo_218_L2_WEIcDy is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcDy is
    component L3_wlo_218_L2_WEIcDy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcDy_rom_U :  component L3_wlo_218_L2_WEIcDy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


