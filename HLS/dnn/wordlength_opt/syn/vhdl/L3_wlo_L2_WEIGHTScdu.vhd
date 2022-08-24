-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTScdu_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L3_wlo_L2_WEIGHTScdu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100111000001", 1 => "0010111000000010", 2 => "0010110001011111", 
    3 => "0010100110111011", 4 => "0010100010001010", 5 => "0010101001111101", 
    6 => "0010010111100110", 7 => "1010011001100000", 8 => "1010110111110100", 
    9 => "1010111101110001", 10 => "1010110010100011", 11 => "0010000101111000", 
    12 => "0010110010000110", 13 => "0010110001111000", 14 => "0010101000001001", 
    15 => "0010011111110000", 16 => "0010100010101100", 17 => "0010001011110000", 
    18 => "1010010011111101", 19 => "1010110000011101", 20 => "1010111000110001", 
    21 => "1010110011001100", 22 => "1010100010101000", 23 => "0010010000000001", 
    24 => "0010100101111011", 25 => "0010101101100010", 26 => "0010110110010101", 
    27 => "0010100100001001", 28 => "1010100001000111", 29 => "1010111110001101", 
    30 => "1011000001110011", 31 => "1010110110101001", 32 => "0010000110111111", 
    33 => "0010110100000010", 34 => "0010110110101000", 35 => "0010100010100111", 
    36 => "0010010101001011", 37 => "0010100001101111", 38 => "0010100111001100", 
    39 => "0010010111101010", 40 => "1010101000110000", 41 => "1011000000001101", 
    42 => "1011000001010001", 43 => "1010101111100100", 44 => "0010101110000010", 
    45 => "0010111100001111", 46 => "0010111001110001", 47 => "0010100110110010", 
    48 => "0010001110110111", 49 => "0010001001010010", 50 => "0010001101010011", 
    51 => "1010100110001101", 52 => "0011000001110000", 53 => "0010101000100010", 
    54 => "1001101110101011", 55 => "1010010110001011", 56 => "1010000110011101", 
    57 => "1010011010111101", 58 => "1010110001111000", 59 => "1010111001101001", 
    60 => "1010101111011001", 61 => "0010011111010010", 62 => "0010110111001100", 
    63 => "0010111101010001", 64 => "0010101110110111", 65 => "0010000101110101", 
    66 => "1010011000101011", 67 => "1010011011111001", 68 => "1010100010010011", 
    69 => "1010101010110110", 70 => "1010110001111110", 71 => "1010110000110110", 
    72 => "1001110101101111", 73 => "0010100001011100", 74 => "0010110010011010", 
    75 => "0010110011111000", 76 => "0010110000111011", 77 => "0010100011110111", 
    78 => "1010101011111010", 79 => "1010111101110011", 80 => "1011000000100101", 
    81 => "1010110010011010", 82 => "0010010101101010", 83 => "0010111010101110", 
    84 => "0011000000000110", 85 => "0010110010110110", 86 => "0010001000110000", 
    87 => "1010011110000101", 88 => "1010001100101001", 89 => "0001011010010111", 
    90 => "1010101000011110", 91 => "1010110101000001", 92 => "1010111011111101", 
    93 => "1010101101111010", 94 => "0010101011011010", 95 => "0011000001101110", 
    96 => "0011000000111101", 97 => "0010101101111100", 98 => "1010011011101101", 
    99 => "1010110000111101", 100 => "1010101000100111", 101 => "1010011010110001", 
    102 => "1010110100011111", 103 => "1010111010000101" );


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

entity L3_wlo_L2_WEIGHTScdu is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_L2_WEIGHTScdu is
    component L3_wlo_L2_WEIGHTScdu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTScdu_rom_U :  component L3_wlo_L2_WEIGHTScdu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

