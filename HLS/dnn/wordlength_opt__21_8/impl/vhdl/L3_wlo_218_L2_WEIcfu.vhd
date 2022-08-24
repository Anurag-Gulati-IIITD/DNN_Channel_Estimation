-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcfu_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcfu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100000001", 1 => "11100010011", 2 => "11001000000", 
    3 => "11101101011", 4 => "00010011111", 5 => "00001111000", 
    6 => "11010010101", 7 => "11011001110", 8 => "11110100011", 
    9 => "00101110101", 10 => "01000000100", 11 => "00001101111", 
    12 => "11011100111", 13 => "11001101000", 14 => "00001000100", 
    15 => "01000111101", 16 => "00101011110", 17 => "11010111101", 
    18 => "10100000011", 19 => "10101111101", 20 => "00010110110", 
    21 => "01011111101", 22 => "01000101111", 23 => "11110101000", 
    24 => "10110001000", 25 => "10111001111", 26 => "00110111100", 
    27 => "00110010010", 28 => "11110010011", 29 => "11000100001", 
    30 => "11100101010", 31 => "00010100011", 32 => "00110010010", 
    33 => "00100001101", 34 => "11111110101", 35 => "11101101011", 
    36 => "11111011011", 37 => "00011011101", 38 => "00010100101", 
    39 => "11101000101", 40 => "11001011011", 41 => "11101011000", 
    42 => "00011000110", 43 => "00110000110", 44 => "00100011011", 
    45 => "11011000101", 46 => "11000001010", 47 => "11101100111", 
    48 => "01001100100", 49 => "01011000110", 50 => "00000111011", 
    51 => "10000011010", 52 => "10011101110", 53 => "10100101110", 
    54 => "00000001001", 55 => "00100111101", 56 => "00001011111", 
    57 => "11100011000", 58 => "11100010101", 59 => "00001101001", 
    60 => "01000011110", 61 => "00100101111", 62 => "11100101010", 
    63 => "11010101010", 64 => "11011010101", 65 => "00010111110", 
    66 => "00101100010", 67 => "00001000110", 68 => "10111011100", 
    69 => "11001001000", 70 => "11110011010", 71 => "01000100010", 
    72 => "01100000000", 73 => "00011010110", 74 => "10111111010", 
    75 => "10010001011", 76 => "11010110000", 77 => "00100100011", 
    78 => "00100101101", 79 => "11001100101", 80 => "10110100111", 
    81 => "11101010111", 82 => "00011111110", 83 => "01000001111", 
    84 => "00011110101", 85 => "11011100011", 86 => "11011111000", 
    87 => "00001111001", 88 => "00011011110", 89 => "00000010010", 
    90 => "11001000011", 91 => "11001110110", 92 => "00000100000", 
    93 => "00100000110", 94 => "00110111111", 95 => "00000101010", 
    96 => "11010101110", 97 => "11000110110", 98 => "00001011101", 
    99 => "01001000100", 100 => "00100011010", 101 => "11011100010", 
    102 => "10000010011", 103 => "10100110010" );


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

entity L3_wlo_218_L2_WEIcfu is
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

architecture arch of L3_wlo_218_L2_WEIcfu is
    component L3_wlo_218_L2_WEIcfu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcfu_rom_U :  component L3_wlo_218_L2_WEIcfu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


