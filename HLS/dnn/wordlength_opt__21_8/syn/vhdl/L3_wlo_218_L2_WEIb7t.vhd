-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb7t_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb7t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000001101", 1 => "11010100001", 2 => "00010000010", 
    3 => "00111001110", 4 => "01000001111", 5 => "00000001111", 
    6 => "11101001001", 7 => "11011101101", 8 => "00000101000", 
    9 => "00100110101", 10 => "00011101001", 11 => "11101110010", 
    12 => "11000110010", 13 => "11011101011", 14 => "00010010100", 
    15 => "00111011000", 16 => "00110010010", 17 => "00010010000", 
    18 => "11101111100", 19 => "11100100100", 20 => "00000000101", 
    21 => "00010001101", 22 => "00001001110", 23 => "11101100000", 
    24 => "11100100101", 25 => "11111011110", 26 => "00110110111", 
    27 => "00100011001", 28 => "11111001101", 29 => "11100011011", 
    30 => "11011101101", 31 => "11111111100", 32 => "00000100111", 
    33 => "11110111010", 34 => "11101011101", 35 => "11111111101", 
    36 => "00011001101", 37 => "00101101001", 38 => "00011110100", 
    39 => "11110110010", 40 => "11010101001", 41 => "11010101000", 
    42 => "11111111101", 43 => "00011000001", 44 => "00001011010", 
    45 => "11111011011", 46 => "11110010011", 47 => "00001100110", 
    48 => "00010101101", 49 => "00011111010", 50 => "00000001101", 
    51 => "11100101000", 52 => "11110101100", 53 => "00111111100", 
    54 => "01001001011", 55 => "00011001111", 56 => "11100100110", 
    57 => "11001000000", 58 => "11011110100", 59 => "00010111011", 
    60 => "00100011100", 61 => "00000101110", 62 => "11011101010", 
    63 => "11010010000", 64 => "11111010010", 65 => "00110001010", 
    66 => "01000011010", 67 => "00011010111", 68 => "11100101010", 
    69 => "11001000100", 70 => "11100000010", 71 => "00001010100", 
    72 => "00001111101", 73 => "00001100110", 74 => "11110101111", 
    75 => "11110001011", 76 => "00001111011", 77 => "00101111110", 
    78 => "00000101110", 79 => "11100011111", 80 => "11010100101", 
    81 => "11100110010", 82 => "00001100101", 83 => "00001001001", 
    84 => "00001001101", 85 => "11111110100", 86 => "00001001101", 
    87 => "00011000111", 88 => "00011000011", 89 => "11111011010", 
    90 => "11100100000", 91 => "11001101110", 92 => "11101011011", 
    93 => "00010111010", 94 => "00011101000", 95 => "00010011010", 
    96 => "11110100111", 97 => "11111010011", 98 => "11111100110", 
    99 => "00010010111", 100 => "00001100101", 101 => "11100101101", 
    102 => "11100001000", 103 => "11010111110" );


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

entity L3_wlo_218_L2_WEIb7t is
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

architecture arch of L3_wlo_218_L2_WEIb7t is
    component L3_wlo_218_L2_WEIb7t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb7t_rom_U :  component L3_wlo_218_L2_WEIb7t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


