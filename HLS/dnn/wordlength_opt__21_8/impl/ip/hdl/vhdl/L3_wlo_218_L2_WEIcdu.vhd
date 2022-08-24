-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcdu_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L3_wlo_218_L2_WEIcdu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1100001000011", 1 => "1110001001001", 2 => "0001001010010", 
    3 => "0010111001101", 4 => "0001011101100", 5 => "1111000101011", 
    6 => "1101111110001", 7 => "1111001110101", 8 => "0000111010100", 
    9 => "0001101001001", 10 => "0000100111100", 11 => "1111010100001", 
    12 => "1110111000010", 13 => "1111110100001", 14 => "0000110111100", 
    15 => "0000110111001", 16 => "0000001100000", 17 => "1111000101110", 
    18 => "1111001011000", 19 => "0000000100011", 20 => "0000011110110", 
    21 => "0000100001001", 22 => "1111101110001", 23 => "1111011111111", 
    24 => "1111110111011", 25 => "0000101011000", 26 => "0000010000010", 
    27 => "1110110101011", 28 => "1110100010010", 29 => "1111000111110", 
    30 => "0000001011010", 31 => "0001001000010", 32 => "0000111000011", 
    33 => "0000011000111", 34 => "0000001111001", 35 => "1111110110110", 
    36 => "1111111001000", 37 => "1111100011111", 38 => "1110111100011", 
    39 => "1111010011100", 40 => "0000001010000", 41 => "0000110000111", 
    42 => "0000110011111", 43 => "1111110011111", 44 => "1111101001011", 
    45 => "1111111100101", 46 => "0001010000100", 47 => "0001001110010", 
    48 => "1111011101011", 49 => "1101000101110", 50 => "1100111001110", 
    51 => "1111011000100", 52 => "1111110111100", 53 => "0010101011000", 
    54 => "0010110110010", 55 => "0000010001010", 56 => "1101111110101", 
    57 => "1110000101010", 58 => "0000000010111", 59 => "0001101001100", 
    60 => "0001011000100", 61 => "0000000101100", 62 => "1110100110010", 
    63 => "1110111000101", 64 => "0000001011111", 65 => "0001001010000", 
    66 => "0000101110111", 67 => "1111100101101", 68 => "1110111011001", 
    69 => "1111011011101", 70 => "0000011010011", 71 => "0000100110011", 
    72 => "0000001111111", 73 => "1111010101100", 74 => "1111011011010", 
    75 => "0000010010011", 76 => "0000111010110", 77 => "0000101001001", 
    78 => "1110101010000", 79 => "1110111110100", 80 => "0000000011110", 
    81 => "0001010011111", 82 => "0001010001010", 83 => "0000011011001", 
    84 => "1111110011000", 85 => "1111100011010", 86 => "1111100110110", 
    87 => "1111100101110", 88 => "1111100000001", 89 => "1111101110000", 
    90 => "1111111000101", 91 => "0000110110101", 92 => "0000111001010", 
    93 => "0000011011111", 94 => "1111100010000", 95 => "1111011101100", 
    96 => "0000000010110", 97 => "0000111000010", 98 => "0000000000100", 
    99 => "1110011100101", 100 => "1101100110000", 101 => "1110111011011", 
    102 => "0001101010011", 103 => "0100000111101" );


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

entity L3_wlo_218_L2_WEIcdu is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcdu is
    component L3_wlo_218_L2_WEIcdu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcdu_rom_U :  component L3_wlo_218_L2_WEIcdu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


