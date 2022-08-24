-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcIz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcIz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100100100", 1 => "000101100010", 2 => "000111010110", 
    3 => "000100101011", 4 => "000001101110", 5 => "111111001100", 
    6 => "111110111001", 7 => "111110010111", 8 => "111010100101", 
    9 => "111000110100", 10 => "111100111011", 11 => "000101011000", 
    12 => "001100110011", 13 => "001110010110", 14 => "000101100100", 
    15 => "111001011100", 16 => "101111011010", 17 => "110000010110", 
    18 => "111011000101", 19 => "000110010101", 20 => "010000011001", 
    21 => "010000000110", 22 => "000111011100", 23 => "111101001100", 
    24 => "110011111111", 25 => "110000100001", 26 => "111110111010", 
    27 => "001001111100", 28 => "010000111110", 29 => "001111001111", 
    30 => "000011110011", 31 => "110111101110", 32 => "101110101000", 
    33 => "110000001110", 34 => "111011011101", 35 => "001001110000", 
    36 => "010010001111", 37 => "010000110100", 38 => "000101110111", 
    39 => "110111001100", 40 => "101101011010", 41 => "101110001110", 
    42 => "111010001100", 43 => "001000101011", 44 => "010100001010", 
    45 => "010001101111", 46 => "000100111010", 47 => "110100110011", 
    48 => "101011101001", 49 => "110001100110", 50 => "000001010100", 
    51 => "001110010111", 52 => "001000110001", 53 => "000111101011", 
    54 => "000001110111", 55 => "111011100111", 56 => "111011111000", 
    57 => "111100111001", 58 => "111101011001", 59 => "111101000001", 
    60 => "111110101010", 61 => "000011000110", 62 => "001000111111", 
    63 => "001011111000", 64 => "000100100101", 65 => "111001111110", 
    66 => "110000011011", 67 => "110000110110", 68 => "111001101101", 
    69 => "001000101000", 70 => "010000011010", 71 => "001111110011", 
    72 => "000110001000", 73 => "111010010010", 74 => "110010000111", 
    75 => "101111011010", 76 => "110111001000", 77 => "000001100100", 
    78 => "010001001110", 79 => "001100110111", 80 => "000010000100", 
    81 => "110101111111", 82 => "101110001101", 83 => "110000101011", 
    84 => "111101010011", 85 => "001000111100", 86 => "010010010101", 
    87 => "010000010111", 88 => "000101000111", 89 => "110110001111", 
    90 => "101100111111", 91 => "101110000011", 92 => "111001101011", 
    93 => "001000000101", 94 => "010010110010", 95 => "010010001111", 
    96 => "000101111010", 97 => "110101111010", 98 => "101010010111", 
    99 => "101110011110", 100 => "111101000010", 101 => "001101111001", 
    102 => "010011000101", 103 => "001001010101" );


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

entity L3_wlo_218_L2_WEIcIz is
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

architecture arch of L3_wlo_218_L2_WEIcIz is
    component L3_wlo_218_L2_WEIcIz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcIz_rom_U :  component L3_wlo_218_L2_WEIcIz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


