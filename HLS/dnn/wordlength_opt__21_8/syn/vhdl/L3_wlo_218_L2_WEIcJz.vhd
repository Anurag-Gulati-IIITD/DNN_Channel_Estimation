-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcJz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcJz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000100111101", 1 => "111000101010", 2 => "110010101001", 
    3 => "110011011101", 4 => "111100100011", 5 => "001000001101", 
    6 => "001111100000", 7 => "001100101001", 8 => "000001011010", 
    9 => "110101100101", 10 => "101111001101", 11 => "110011000011", 
    12 => "111111111000", 13 => "001001101001", 14 => "001110011000", 
    15 => "001000110010", 16 => "111110110010", 17 => "111000000001", 
    18 => "111000001000", 19 => "111101110010", 20 => "111110111111", 
    21 => "111111000001", 22 => "111111111010", 23 => "000010001000", 
    24 => "000111100001", 25 => "000111001001", 26 => "110101000111", 
    27 => "110010010111", 28 => "111001111010", 29 => "000111110010", 
    30 => "010011110000", 31 => "001101111110", 32 => "111101100111", 
    33 => "101110000001", 34 => "101010011100", 35 => "110110110000", 
    36 => "001000011100", 37 => "010010110100", 38 => "010000001101", 
    39 => "000100110111", 40 => "111001010010", 41 => "110100100011", 
    42 => "110101010100", 43 => "111010001111", 44 => "111101010011", 
    45 => "000100010101", 46 => "001001000011", 47 => "001100111110", 
    48 => "001001100110", 49 => "111110010110", 50 => "110000100100", 
    51 => "101101110011", 52 => "110001100011", 53 => "110010001110", 
    54 => "111100101000", 55 => "001000101111", 56 => "001110011011", 
    57 => "001100001000", 58 => "000001101101", 59 => "110110011001", 
    60 => "101111111001", 61 => "110010011111", 62 => "111110010001", 
    63 => "001010100110", 64 => "010000001010", 65 => "001011000100", 
    66 => "111111100101", 67 to 68=> "110101001100", 69 => "111010100111", 
    70 => "000001100010", 71 => "000100001111", 72 => "000010001110", 
    73 => "000010000110", 74 => "000011110001", 75 => "000100111000", 
    76 => "111111100111", 77 => "111000110110", 78 => "110111101011", 
    79 => "000100101100", 80 => "001111001110", 81 => "001111000001", 
    82 => "000011000000", 83 => "110001111111", 84 => "101001100101", 
    85 => "110011111001", 86 => "000101001100", 87 => "010100001001", 
    88 => "010011100100", 89 => "000111000111", 90 => "110111000010", 
    91 => "101111100110", 92 => "110011101010", 93 => "111011101100", 
    94 => "000010110100", 95 => "001000001101", 96 => "001001100100", 
    97 => "001001101101", 98 => "000111101101", 99 => "111110001000", 
    100 => "110100011111", 101 => "101111001100", 102 => "110100110011", 
    103 => "000010111101" );


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

entity L3_wlo_218_L2_WEIcJz is
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

architecture arch of L3_wlo_218_L2_WEIcJz is
    component L3_wlo_218_L2_WEIcJz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcJz_rom_U :  component L3_wlo_218_L2_WEIcJz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


