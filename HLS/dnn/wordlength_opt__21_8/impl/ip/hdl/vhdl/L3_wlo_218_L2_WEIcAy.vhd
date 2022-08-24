-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcAy_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcAy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011011010", 1 => "111001111010", 2 => "000001001001", 
    3 => "111110000010", 4 => "111011011001", 5 => "111100001000", 
    6 => "000001000011", 7 => "000101110001", 8 => "001000011111", 
    9 => "000010111011", 10 => "111001000100", 11 => "110010100110", 
    12 => "110111111011", 13 => "111101000000", 14 => "000110000010", 
    15 => "001000001100", 16 => "000010110101", 17 => "111100110000", 
    18 => "111111011001", 19 => "000101001001", 20 => "000010010001", 
    21 => "111100001110", 22 => "110110101100", 23 => "101111100101", 
    24 => "111000011011", 25 => "000110100010", 26 => "001110001100", 
    27 => "000111100011", 28 => "111001010000", 29 => "101110110110", 
    30 => "110101100011", 31 => "110101111011", 32 => "000000010000", 
    33 => "000110110010", 34 => "001011011011", 35 => "001100000010", 
    36 => "000111000100", 37 => "111101000101", 38 => "110100011011", 
    39 => "110000101101", 40 => "110101110111", 41 => "000000010001", 
    42 => "001010011110", 43 => "010001000101", 44 => "001000001110", 
    45 => "000000001100", 46 => "110010110000", 47 => "110011000100", 
    48 => "111001100001", 49 => "000000101111", 50 => "000100100110", 
    51 => "001000011011", 52 => "111110011111", 53 => "111101010110", 
    54 => "000001000010", 55 => "000011011110", 56 => "000001001110", 
    57 => "000100011110", 58 => "000100001000", 59 => "000010110001", 
    60 => "111100010111", 61 => "110101101111", 62 => "110110110010", 
    63 => "111110011001", 64 => "000101111101", 65 => "001010110010", 
    66 => "000110000111", 67 => "111101000110", 68 => "111100110000", 
    69 => "111110011101", 70 => "000001010111", 71 => "000000101000", 
    72 => "111000110001", 73 => "110110000000", 74 => "111000000101", 
    75 => "000101010001", 76 => "001010101000", 77 => "001100101010", 
    78 => "110101110110", 79 => "101111100100", 80 => "110010001111", 
    81 => "110111110110", 82 => "000101110010", 83 => "001011000011", 
    84 => "001000010001", 85 => "001010001100", 86 => "000011010100", 
    87 => "111100111101", 88 => "110101100001", 89 => "110011000010", 
    90 => "110101001110", 91 => "000000100111", 92 => "001101001000", 
    93 => "010001100011", 94 => "001011101101", 95 => "000010101100", 
    96 => "110110101010", 97 => "110001011011", 98 => "111011000001", 
    99 => "000001100110", 100 => "001001001111", 101 => "001001110000", 
    102 => "000101011111", 103 => "000001110000" );


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

entity L3_wlo_218_L2_WEIcAy is
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

architecture arch of L3_wlo_218_L2_WEIcAy is
    component L3_wlo_218_L2_WEIcAy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcAy_rom_U :  component L3_wlo_218_L2_WEIcAy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


