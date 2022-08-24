-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_BIAb1s_rom is 
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


architecture rtl of L3_wlo_218_L2_BIAb1s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010100000111", 1 => "001001001111", 2 => "111011011101", 
    3 => "101111110101", 4 => "110101100001", 5 => "111111110000", 
    6 => "001010011101", 7 => "000100001111", 8 => "111111011111", 
    9 => "111100010100", 10 => "000000001001", 11 => "000100101001", 
    12 => "000100000000", 13 => "111110011010", 14 => "110110100010", 
    15 => "110100110001", 16 => "111010100101", 17 => "000111100000", 
    18 => "001011011100", 19 => "001000001001", 20 => "000010100000", 
    21 => "111101000111", 22 => "000000100110", 23 => "000001100101", 
    24 => "000000111011", 25 => "111011101101", 26 => "111001010110", 
    27 => "000100110000", 28 => "001011110101", 29 => "001101100110", 
    30 => "000101010010", 31 => "111011010111", 32 => "110111000110", 
    33 => "110111111001", 34 => "111001101011", 35 => "000000100001", 
    36 => "000000101101", 37 => "000000010111", 38 => "000011101010", 
    39 => "000011100111", 40 => "000010100000", 41 => "000001001001", 
    42 => "000000100111", 43 => "000011010101", 44 => "111101111010", 
    45 => "111101101100", 46 => "110110100000", 47 => "110111110011", 
    48 => "111110100101", 49 => "001100111100", 50 => "010000111011", 
    51 => "001011010011", 52 => "000000110001", 53 => "110101000101", 
    54 => "101111011101", 55 => "111011100000", 56 => "001000101001", 
    57 => "001011000001", 58 => "000011110111", 59 => "111101011001", 
    60 => "111011000001", 61 => "111110010100", 62 => "000101001001", 
    63 => "111111111011", 64 => "111011010101", 65 => "110110001110", 
    66 => "111011100110", 67 => "000100100000", 68 => "001100111111", 
    69 => "001000011100", 70 => "000010001110", 71 => "111101100010", 
    72 => "111010000010", 73 => "000000110101", 74 => "000001111101", 
    75 => "111111000001", 76 => "111001001001", 77 => "111010000000", 
    78 => "001001111100", 79 => "001110110010", 80 => "001000110011", 
    81 => "111011000101", 82 => "110101101001", 83 => "110101000010", 
    84 => "111001101110", 85 => "000001101000", 86 => "000011101010", 
    87 => "000011001000", 88 => "000010001110", 89 => "000000111011", 
    90 => "000110000000", 91 => "000000010000", 92 => "111111101000", 
    93 => "000000011010", 94 => "111110101011", 95 => "111100111100", 
    96 => "111010110000", 97 => "111010010011", 98 => "000000011000", 
    99 => "001001000100", 100 => "001111011111", 101 => "000111111101", 
    102 => "111111110111", 103 => "101111111100" );


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

entity L3_wlo_218_L2_BIAb1s is
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

architecture arch of L3_wlo_218_L2_BIAb1s is
    component L3_wlo_218_L2_BIAb1s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_BIAb1s_rom_U :  component L3_wlo_218_L2_BIAb1s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


