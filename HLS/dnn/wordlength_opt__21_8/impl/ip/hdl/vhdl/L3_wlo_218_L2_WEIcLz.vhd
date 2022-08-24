-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcLz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcLz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01001100010", 1 => "00010100100", 2 => "11000100000", 
    3 => "10010110101", 4 => "10100011101", 5 => "11011110111", 
    6 => "00010101100", 7 => "01011100111", 8 => "00111101011", 
    9 => "00101001110", 10 => "00010010110", 11 => "11110110001", 
    12 => "11000010101", 13 => "10100000001", 14 => "10111000011", 
    15 => "00101001100", 16 => "01011111011", 17 => "01011101011", 
    18 => "01001000101", 19 => "11111101111", 20 => "10111000110", 
    21 => "10011100001", 22 => "10110111011", 23 => "00001101011", 
    24 => "01010001100", 25 => "01000000111", 26 => "11110110100", 
    27 => "11100010011", 28 => "11101000101", 29 => "11011101111", 
    30 => "11101100000", 31 => "11110010101", 32 => "00010101111", 
    33 => "01000110101", 34 => "00111001011", 35 => "00101000011", 
    36 => "00000001111", 37 => "11000110010", 38 => "11001011010", 
    39 => "11010101101", 40 => "11111001111", 41 => "00011000110", 
    42 => "00100111111", 43 => "00101010001", 44 => "01000001100", 
    45 => "01000110111", 46 => "00001001010", 47 => "11100101011", 
    48 => "10000111010", 49 => "10101001110", 50 => "11000001001", 
    51 => "00111001101", 52 => "10111100111", 53 => "10010101000", 
    54 => "11001000000", 55 => "11010100110", 56 => "01000011100", 
    57 => "01010110101", 58 => "01010010001", 59 => "00100010000", 
    60 => "11110100101", 61 => "11001100101", 62 => "11000100011", 
    63 => "11001011110", 64 => "11000111010", 65 => "00011100011", 
    66 => "00110111111", 67 => "01010100111", 68 => "01001011111", 
    69 => "00011000110", 70 => "10100110110", 71 => "10011001100", 
    72 => "10011101111", 73 => "11101011101", 74 => "01011000110", 
    75 => "01000100000", 76 => "00010101100", 77 => "11111011100", 
    78 => "11001001100", 79 => "11100001100", 80 => "11100110000", 
    81 => "11111011000", 82 => "00011111110", 83 => "00101101001", 
    84 => "00110001001", 85 => "00011011110", 86 => "11100111111", 
    87 => "10111010111", 88 => "11001000100", 89 => "11001001110", 
    90 => "11100110110", 91 => "00001100000", 92 => "00101010001", 
    93 => "00100010101", 94 => "00011010011", 95 => "00101100010", 
    96 => "11110111000", 97 => "11101100011", 98 => "10101101110", 
    99 => "10000010001", 100 => "11010001101", 101 => "01000101101", 
    102 => "01010110100", 103 => "01000001011" );


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

entity L3_wlo_218_L2_WEIcLz is
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

architecture arch of L3_wlo_218_L2_WEIcLz is
    component L3_wlo_218_L2_WEIcLz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcLz_rom_U :  component L3_wlo_218_L2_WEIcLz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


