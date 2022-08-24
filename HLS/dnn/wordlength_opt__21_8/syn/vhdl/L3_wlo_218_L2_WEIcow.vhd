-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcow_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcow_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000011011", 1 => "11100000010", 2 => "11110110111", 
    3 => "00100011110", 4 => "00000010101", 5 => "11101101001", 
    6 => "10011111110", 7 => "11000111001", 8 => "00100001000", 
    9 => "01000100111", 10 => "00110010100", 11 => "11110011100", 
    12 => "10100011100", 13 => "10111101011", 14 => "11100101110", 
    15 => "00111110111", 16 => "01001011001", 17 => "11111111101", 
    18 => "10111001111", 19 => "10101101110", 20 => "11111011011", 
    21 => "00111001110", 22 => "01001101101", 23 => "00101010101", 
    24 => "11001110110", 25 => "10101011100", 26 => "00000011010", 
    27 => "00110001101", 28 => "00111101000", 29 => "00101010100", 
    30 => "11111100011", 31 => "11011000101", 32 => "11100110010", 
    33 => "11100011110", 34 => "11010000110", 35 => "11100010010", 
    36 => "00100011001", 37 => "00111110110", 38 => "01010111000", 
    39 => "00011100110", 40 => "11011100111", 41 => "10101111010", 
    42 => "10101111111", 43 => "11101011110", 44 => "00111000111", 
    45 => "01001111110", 46 => "00110110010", 47 => "00001100000", 
    48 => "11101011100", 49 => "11110000100", 50 => "11011110011", 
    51 => "11100011000", 52 => "00010010101", 53 => "00010100101", 
    54 => "00001111010", 55 => "11110000110", 56 => "11100000000", 
    57 => "11010001111", 58 => "00010010001", 59 => "00110100001", 
    60 => "01000011110", 61 => "00011100010", 62 => "11100001000", 
    63 => "10101001100", 64 => "11010101101", 65 => "00100101010", 
    66 => "01000010011", 67 => "00111000011", 68 => "11110010000", 
    69 => "10110101100", 70 => "11000011010", 71 => "00100010000", 
    72 => "01011100011", 73 => "00101101101", 74 => "11100100011", 
    75 => "10101100100", 76 => "10110101001", 77 => "11111100001", 
    78 => "00110101101", 79 => "00010001101", 80 => "11111111100", 
    81 => "11100000101", 82 => "11010111100", 83 => "11101111100", 
    84 => "11011101111", 85 => "11110111100", 86 => "00011011000", 
    87 => "00100101010", 88 => "01000100001", 89 => "00001001110", 
    90 => "11100001111", 91 => "10110000010", 92 => "10100101100", 
    93 => "11101101010", 94 => "00111100110", 95 => "01000111000", 
    96 => "00111001101", 97 => "00000111010", 98 => "11110010001", 
    99 => "11001111111", 100 => "11011010011", 101 => "11110001101", 
    102 => "11110010000", 103 => "00110101001" );


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

entity L3_wlo_218_L2_WEIcow is
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

architecture arch of L3_wlo_218_L2_WEIcow is
    component L3_wlo_218_L2_WEIcow_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcow_rom_U :  component L3_wlo_218_L2_WEIcow_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


