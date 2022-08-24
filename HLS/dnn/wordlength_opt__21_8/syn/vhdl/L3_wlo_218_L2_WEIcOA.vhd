-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcOA_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcOA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10110011110", 1 => "11101011101", 2 => "00111011101", 
    3 => "01101001000", 4 => "01011100000", 5 => "00100001000", 
    6 => "11101010101", 7 => "10100011011", 8 => "11000010101", 
    9 => "11010110010", 10 => "11101101010", 11 => "00001001111", 
    12 => "00111101000", 13 => "01011111010", 14 => "01000111010", 
    15 => "11010110011", 16 => "10100000111", 17 => "10100011000", 
    18 => "10110111100", 19 => "00000010010", 20 => "01000110111", 
    21 => "01100011010", 22 => "01001000000", 23 => "11110010100", 
    24 => "10101110101", 25 => "10111111001", 26 => "00001001011", 
    27 => "00011101100", 28 => "00010111010", 29 => "00100010001", 
    30 => "00010011110", 31 => "00001101001", 32 => "11101001110", 
    33 => "10111001011", 34 => "11000110101", 35 => "11010111101", 
    36 => "11111110001", 37 => "00111001100", 38 => "00110100100", 
    39 => "00101010001", 40 => "00000110000", 41 => "11100111011", 
    42 => "11011000001", 43 => "11010101110", 44 => "10111110101", 
    45 => "10111001010", 46 => "11110110110", 47 => "00011010010", 
    48 => "01110111111", 49 => "01010101101", 50 => "00111110101", 
    51 => "11000110110", 52 => "01000010110", 53 => "01101010110", 
    54 => "00110111110", 55 => "00101010110", 56 => "10111100100", 
    57 => "10101001100", 58 => "10101110001", 59 => "11011110000", 
    60 => "00001011010", 61 => "00110011000", 62 => "00111011001", 
    63 => "00110011110", 64 => "00111000100", 65 => "11100011100", 
    66 => "11001000010", 67 => "10101011011", 68 => "10110100011", 
    69 => "11100111011", 70 => "01011000111", 71 => "01100101111", 
    72 => "01100001100", 73 => "00010100000", 74 => "10100111101", 
    75 => "10111100001", 76 => "11101010100", 77 => "00000100100", 
    78 => "00110110011", 79 => "00011110100", 80 => "00011001110", 
    81 => "00000100111", 82 => "11100000000", 83 => "11010010110", 
    84 => "11001110111", 85 => "11100100011", 86 => "00011000000", 
    87 => "01000100111", 88 => "00110111010", 89 => "00110110000", 
    90 => "00011001001", 91 => "11110011111", 92 => "11010101110", 
    93 => "11011101010", 94 => "11100101100", 95 => "11010011101", 
    96 => "00001000110", 97 => "00010011100", 98 => "01010001110", 
    99 => "01111101001", 100 => "00101110001", 101 => "10111010101", 
    102 => "10101001111", 103 => "10111110110" );


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

entity L3_wlo_218_L2_WEIcOA is
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

architecture arch of L3_wlo_218_L2_WEIcOA is
    component L3_wlo_218_L2_WEIcOA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcOA_rom_U :  component L3_wlo_218_L2_WEIcOA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


