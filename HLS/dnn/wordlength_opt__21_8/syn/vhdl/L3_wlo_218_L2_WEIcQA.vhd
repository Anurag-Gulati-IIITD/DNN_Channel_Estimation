-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcQA_rom is 
    generic(
             DWIDTH     : integer := 11; 
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


architecture rtl of L3_wlo_218_L2_WEIcQA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011010110", 1 => "10011100101", 2 => "10111010110", 
    3 => "00100001111", 4 => "01100101110", 5 => "01010110101", 
    6 => "00001001011", 7 => "10101110010", 8 => "10011000010", 
    9 => "11101010100", 10 => "00111101101", 11 => "01011110100", 
    12 => "00101101111", 13 => "11010000110", 14 => "10111011000", 
    15 => "11010110011", 16 => "00101001110", 17 => "00111000011", 
    18 => "00001101101", 19 => "11100101101", 20 => "10110000010", 
    21 => "11101101011", 22 => "00111000110", 23 => "01010010010", 
    24 => "00100110001", 25 => "11001011100", 26 => "10110110111", 
    27 => "11111101110", 28 => "01010001001", 29 => "01010001110", 
    30 => "00100011010", 31 => "11010110001", 32 => "10011101001", 
    33 => "10110011100", 34 => "00000001010", 35 => "00111011111", 
    36 => "01100000010", 37 => "00110101111", 38 => "11001110110", 
    39 => "10011110001", 40 => "10101010111", 41 => "11110110000", 
    42 => "01010011110", 43 => "01100101000", 44 => "00100101010", 
    45 => "11001010101", 46 => "10100101100", 47 => "11001110010", 
    48 => "00010011101", 49 => "00110111001", 50 => "00101000000", 
    51 => "11111000111", 52 => "10011110110", 53 => "11100100110", 
    54 => "01001111001", 55 => "01101011011", 56 => "00100010001", 
    57 => "11000101000", 58 => "10010011000", 59 => "11000101110", 
    60 => "00011100101", 61 => "01101001110", 62 => "01000100000", 
    63 => "11101001100", 64 => "10110001101", 65 => "11000000111", 
    66 => "00001000010", 67 => "00110101001", 68 => "00110110011", 
    69 => "11110000100", 70 => "11001011111", 71 => "11001001010", 
    72 => "00001010100", 73 => "00111100010", 74 => "00111010011", 
    75 => "00000011011", 76 => "10101110001", 77 => "10101100101", 
    78 => "00111001101", 79 => "01101110000", 80 => "00111100110", 
    81 => "11101110001", 82 => "10101100101", 83 => "10011100001", 
    84 => "11011101010", 85 => "01000011101", 86 => "01011101110", 
    87 => "00111100101", 88 => "11110000100", 89 => "11000000100", 
    90 => "10100001010", 91 => "11101011000", 92 => "00111001001", 
    93 => "01101010110", 94 => "00111001110", 95 => "11110010000", 
    96 => "10100011000", 97 => "10111101110", 98 => "11110110101", 
    99 => "00110001010", 100 => "01001011001", 101 => "00010100001", 
    102 => "11010010000", 103 => "11000111000" );


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

entity L3_wlo_218_L2_WEIcQA is
    generic (
        DataWidth : INTEGER := 11;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcQA is
    component L3_wlo_218_L2_WEIcQA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcQA_rom_U :  component L3_wlo_218_L2_WEIcQA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


