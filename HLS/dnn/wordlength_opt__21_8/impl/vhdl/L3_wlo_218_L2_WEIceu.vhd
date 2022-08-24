-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIceu_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIceu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111111010", 1 => "111011001000", 2 => "111100000101", 
    3 => "000010111110", 4 => "001100010010", 5 => "001010010100", 
    6 => "000111101011", 7 => "000001001010", 8 => "110110000010", 
    9 => "110100011010", 10 => "110100010011", 11 => "111110110100", 
    12 => "000110110000", 13 => "010000001110", 14 => "001110101110", 
    15 => "001000001101", 16 => "111100001000", 17 => "110101010000", 
    18 => "110001001100", 19 => "111000110101", 20 => "111111011001", 
    21 => "000111011010", 22 => "001110111000", 23 => "000111111111", 
    24 => "000100100000", 25 => "000000000001", 26 => "111001000001", 
    27 => "110110011111", 28 => "111001001010", 29 => "111010010111", 
    30 => "000100100110", 31 => "001101010000", 32 => "001110100010", 
    33 => "001011010100", 34 => "000001110001", 35 => "110110001111", 
    36 => "110100001010", 37 => "111000101010", 38 => "111011111010", 
    39 => "000110000100", 40 => "001000101100", 41 => "000111110011", 
    42 => "000101111100", 43 => "000001101110", 44 => "111011110010", 
    45 => "110110011000", 46 => "110100000000", 47 => "111100000101", 
    48 => "000010100010", 49 => "001000111100", 50 => "001101000101", 
    51 => "001010011010", 52 => "000000011100", 53 => "000110010100", 
    54 => "001000100100", 55 => "001001111000", 56 => "000001111101", 
    57 => "111001100011", 58 => "110011110100", 59 => "110011000111", 
    60 => "110111011000", 61 => "000001010101", 62 => "001100110001", 
    63 => "001101001001", 64 => "001110100100", 65 => "001001000000", 
    66 => "111000100000", 67 => "110001100100", 68 => "110000001000", 
    69 => "111011010111", 70 => "000110110000", 71 => "001101000010", 
    72 => "001100100100", 73 => "001101001010", 74 => "000010110111", 
    75 => "111011111110", 76 => "110010110101", 77 => "111001000010", 
    78 => "111000100101", 79 => "111111111001", 80 => "000100110100", 
    81 => "001001110010", 82 => "001110110000", 83 => "000011001011", 
    84 => "111010011110", 85 => "110110010000", 86 => "110011000101", 
    87 => "110111000010", 88 => "111110111101", 89 => "000100010111", 
    90 => "001011001010", 91 => "000111101010", 92 => "000001111000", 
    93 => "111011010100", 94 => "111001101001", 95 => "111010101101", 
    96 => "111010011100", 97 => "111101111001", 98 => "111110011101", 
    99 => "000111100010", 100 => "001010100100", 101 => "000110101001", 
    102 => "111111010011", 103 => "111001000011" );


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

entity L3_wlo_218_L2_WEIceu is
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

architecture arch of L3_wlo_218_L2_WEIceu is
    component L3_wlo_218_L2_WEIceu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIceu_rom_U :  component L3_wlo_218_L2_WEIceu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


