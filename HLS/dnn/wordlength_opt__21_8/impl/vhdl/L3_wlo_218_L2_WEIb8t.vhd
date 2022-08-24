-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb8t_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb8t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011010001", 1 => "00100010011", 2 => "00001000100", 
    3 => "00010000100", 4 => "11111010110", 5 => "00001011100", 
    6 => "00101001010", 7 => "00110011010", 8 => "00000010011", 
    9 => "11111010011", 10 => "11010101110", 11 => "11001001011", 
    12 => "11011111001", 13 => "11110010100", 14 => "00101101000", 
    15 => "00011000101", 16 => "00001001110", 17 => "00000101001", 
    18 => "11011100000", 19 => "00101011110", 20 => "00100101110", 
    21 => "00000010000", 22 => "10110110011", 23 => "10111001000", 
    24 => "11011110110", 25 => "00000111001", 26 => "01010010111", 
    27 => "00101110110", 28 => "00001000110", 29 => "11101000001", 
    30 => "11001110111", 31 => "11011001100", 32 => "11000101011", 
    33 => "11110100000", 34 => "11101111010", 35 => "00011001111", 
    36 => "00101011110", 37 => "00100000001", 38 => "11111100010", 
    39 => "11100111011", 40 => "11011001111", 41 => "00010111111", 
    42 => "00011011110", 43 => "00100000000", 44 => "00000011101", 
    45 => "11110100011", 46 => "11100011110", 47 => "11001011110", 
    48 => "11101010110", 49 => "00011100101", 50 => "00111000001", 
    51 => "01010011101", 52 => "00001110011", 53 => "01000010100", 
    54 => "00010001010", 55 => "11101001110", 56 => "11111000011", 
    57 => "11111111010", 58 => "00011000111", 59 => "11111110001", 
    60 => "11010110010", 61 => "10110101110", 62 => "11001010110", 
    63 => "11101001111", 64 => "01000110010", 65 => "00110001011", 
    66 => "00100010101", 67 => "11110101100", 68 => "11101110011", 
    69 => "11110000100", 70 => "00011101110", 71 => "00001100000", 
    72 => "11110001110", 73 => "11010001100", 74 => "11111100001", 
    75 => "00010010111", 76 => "01000000010", 77 => "01010001100", 
    78 => "00001010111", 79 => "11110000000", 80 => "10111101100", 
    81 => "11101010000", 82 => "11011111011", 83 => "00000001010", 
    84 => "00001101000", 85 => "00100011011", 86 => "00010000001", 
    87 => "00011010101", 88 => "00000000001", 89 => "11110011011", 
    90 => "11101001111", 91 => "11101111100", 92 => "00010010010", 
    93 => "00001110111", 94 => "00000011101", 95 => "11010111000", 
    96 => "11000101000", 97 => "11100101010", 98 => "00000011100", 
    99 => "00010110101", 100 => "00111110100", 101 => "00110010101", 
    102 => "00010010110", 103 => "11001010011" );


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

entity L3_wlo_218_L2_WEIb8t is
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

architecture arch of L3_wlo_218_L2_WEIb8t is
    component L3_wlo_218_L2_WEIb8t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb8t_rom_U :  component L3_wlo_218_L2_WEIb8t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


