-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcbu_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcbu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011011100", 1 => "111010011011", 2 => "111000100110", 
    3 => "111011010011", 4 => "111110010001", 5 => "000000110011", 
    6 => "000001000110", 7 => "000001101000", 8 => "000101011010", 
    9 => "000111001101", 10 => "000011000101", 11 => "111010100110", 
    12 => "110011001001", 13 => "110001100110", 14 => "111010011001", 
    15 => "000110100100", 16 => "010000101000", 17 => "001111101101", 
    18 => "000100111011", 19 => "111001101000", 20 => "101111100011", 
    21 => "101111110110", 22 => "111000100010", 23 => "000010110100", 
    24 => "001100000011", 25 => "001111100001", 26 => "000001000101", 
    27 => "110110000001", 28 => "101110111101", 29 => "110000101100", 
    30 => "111100001011", 31 => "001000010011", 32 => "010001011100", 
    33 => "001111110110", 34 => "000100100011", 35 => "110110001101", 
    36 => "101101101100", 37 => "101111000111", 38 => "111010000110", 
    39 => "001000110100", 40 => "010010101010", 41 => "010001110110", 
    42 => "000101110101", 43 => "110111010010", 44 => "101011110001", 
    45 => "101110001011", 46 => "111011000100", 47 => "001011001111", 
    48 => "010100011011", 49 => "001110011100", 50 => "111110101010", 
    51 => "110001100100", 52 => "110111001011", 53 => "111000010010", 
    54 => "111110001000", 55 => "000100011001", 56 => "000100001000", 
    57 => "000011000111", 58 => "000010100110", 59 => "000010111111", 
    60 => "000001010110", 61 => "111100111001", 62 => "110110111110", 
    63 => "110100000100", 64 => "111011011000", 65 => "000110000010", 
    66 => "001111101000", 67 => "001111001101", 68 => "000110010100", 
    69 => "110111010101", 70 => "101111100001", 71 => "110000001001", 
    72 => "111001110111", 73 => "000101101110", 74 => "001101111011", 
    75 => "010000101000", 76 => "001000111001", 77 => "111110011011", 
    78 => "101110101101", 79 => "110011000110", 80 => "111101111011", 
    81 => "001010000011", 82 => "010001110111", 83 => "001111011000", 
    84 => "000010101101", 85 => "110111000001", 86 => "101101100101", 
    87 => "101111100011", 88 => "111010110110", 89 => "001001110010", 
    90 => "010011000101", 91 => "010010000001", 92 => "000110010110", 
    93 => "110111111001", 94 => "101101001001", 95 => "101101101011", 
    96 => "111010000011", 97 => "001010000111", 98 => "010101101101", 
    99 => "010001100101", 100 => "000010111101", 101 => "110010000010", 
    102 => "101100110101", 103 => "110110101000" );


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

entity L3_wlo_218_L2_WEIcbu is
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

architecture arch of L3_wlo_218_L2_WEIcbu is
    component L3_wlo_218_L2_WEIcbu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcbu_rom_U :  component L3_wlo_218_L2_WEIcbu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


