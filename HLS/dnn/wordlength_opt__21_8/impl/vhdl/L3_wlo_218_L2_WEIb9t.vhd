-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb9t_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb9t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111100011", 1 => "00100000100", 2 => "00001001001", 
    3 => "11011011011", 4 => "11111101010", 5 => "00010011100", 
    6 => "01100010100", 7 => "00111010001", 8 => "11011101111", 
    9 => "10111001001", 10 => "11001100001", 11 => "00001100110", 
    12 => "01011110101", 13 => "01000100011", 14 => "00011010111", 
    15 => "10111111100", 16 => "10110010111", 17 => "00000000001", 
    18 => "01000111101", 19 => "01010100000", 20 => "00000100101", 
    21 => "11000100111", 22 => "10110000011", 23 => "11010100010", 
    24 => "00110010011", 25 => "01010110110", 26 => "11111100100", 
    27 => "11001101000", 28 => "11000001001", 29 => "11010100001", 
    30 => "00000011100", 31 => "00101000011", 32 => "00011010011", 
    33 => "00011101000", 34 => "00110000011", 35 => "00011110011", 
    36 => "11011011110", 37 => "10111111100", 38 => "10100110110", 
    39 => "11100010100", 40 => "00100100000", 41 => "01010010110", 
    42 => "01010010001", 43 => "00010100100", 44 => "11000101100", 
    45 => "10101110001", 46 => "11001000010", 47 => "11110011101", 
    48 => "00010100111", 49 => "00001111110", 50 => "00100010011", 
    51 => "00011101101", 52 => "11101100111", 53 => "11101010110", 
    54 => "11110000010", 55 => "00001111101", 56 => "00100000101", 
    57 => "00101111000", 58 => "11101101001", 59 => "11001010011", 
    60 => "10111010011", 61 => "11100011000", 62 => "00011111110", 
    63 => "01011000101", 64 => "00101011011", 65 => "11011001110", 
    66 => "10111011110", 67 => "11000110001", 68 => "00001110001", 
    69 => "01001100001", 70 => "00111110000", 71 => "11011101000", 
    72 => "10100001011", 73 => "11010001001", 74 => "00011100010", 
    75 => "01010101100", 76 => "01001100101", 77 => "00000011111", 
    78 => "11001000101", 79 => "11101101101", 80 => "00000000011", 
    81 => "00100000010", 82 => "00101001100", 83 => "00010001000", 
    84 => "00100010111", 85 => "00001000100", 86 => "11100100000", 
    87 => "11011001110", 88 => "10111010000", 89 => "11110101111", 
    90 => "00011110111", 91 => "01010001101", 92 => "01011100101", 
    93 => "00010011001", 94 => "11000001101", 95 => "10110111001", 
    96 => "11000100111", 97 => "11111000011", 98 => "00001110000", 
    99 => "00110001001", 100 => "00100110011", 101 => "00001110100", 
    102 => "00001110010", 103 => "11001001100" );


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

entity L3_wlo_218_L2_WEIb9t is
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

architecture arch of L3_wlo_218_L2_WEIb9t is
    component L3_wlo_218_L2_WEIb9t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb9t_rom_U :  component L3_wlo_218_L2_WEIb9t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


