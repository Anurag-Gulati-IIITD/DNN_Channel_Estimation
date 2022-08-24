-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb6t_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb6t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000110111111", 1 => "010010111000", 2 => "010001111111", 
    3 => "001001101011", 4 => "111011001111", 5 => "110101000011", 
    6 => "110011101011", 7 => "111100110100", 8 => "000000101000", 
    9 => "111111000110", 10 => "111111001100", 11 => "000100000001", 
    12 => "000111011101", 13 => "001100100010", 14 => "000011000110", 
    15 => "111010001011", 16 => "110010000101", 17 => "110011101000", 
    18 => "000001000010", 19 => "001001111000", 20 => "001101100100", 
    21 => "000100101010", 22 => "111010001000", 23 => "111010000010", 
    24 => "111101011011", 25 => "000010110000", 26 => "111110001101", 
    27 => "111010100101", 28 => "111111111111", 29 => "001000011001", 
    30 => "000111111011", 31 => "000010011010", 32 => "111000010001", 
    33 => "110100010000", 34 => "111001110011", 35 => "000101100011", 
    36 => "001101111000", 37 => "000111110011", 38 => "111101101110", 
    39 => "110110001111", 40 => "111011011110", 41 => "000101110001", 
    42 => "001011010100", 43 => "000001110000", 44 => "110111000011", 
    45 => "101110001100", 46 => "110111001111", 47 => "001010100000", 
    48 => "010110100000", 49 => "010111111010", 50 => "000101100111", 
    51 => "110000000000", 52 => "011000010100", 53 => "001011110011", 
    54 => "111011011110", 55 => "101101110000", 56 => "110001101000", 
    57 => "111001101000", 58 => "000100101111", 59 => "000110001001", 
    60 => "000011111010", 61 => "000011001110", 62 => "000101101010", 
    63 => "000110110111", 64 => "000010110011", 65 => "111100001000", 
    66 => "110010000110", 67 => "110100010011", 68 => "111101110010", 
    69 => "001010110010", 70 => "001100110100", 71 => "001000010010", 
    72 => "111100001111", 73 => "110011100101", 74 => "110111111001", 
    75 => "111110110111", 76 => "000101100100", 77 => "000101000110", 
    78 => "111100011110", 79 => "000000001000", 80 => "000101111010", 
    81 => "000100110001", 82 => "111011111100", 83 => "110101110011", 
    84 => "111000000011", 85 => "000001011010", 86 => "001100010010", 
    87 => "001010011001", 88 => "000010011001", 89 => "110100110100", 
    90 => "110100100010", 91 => "111101010100", 92 => "000110000100", 
    93 => "000111101100", 94 => "111110000010", 95 => "110011010010", 
    96 => "110100010111", 97 => "000011111101", 98 => "010001000101", 
    99 => "010011010010", 100 => "000110000111", 101 => "110011010111", 
    102 => "100100011111", 103 => "101001101001" );


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

entity L3_wlo_218_L2_WEIb6t is
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

architecture arch of L3_wlo_218_L2_WEIb6t is
    component L3_wlo_218_L2_WEIb6t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb6t_rom_U :  component L3_wlo_218_L2_WEIb6t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


