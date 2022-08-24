-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcvx_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcvx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01001011000", 1 => "00110100011", 2 => "11101100010", 
    3 => "10111010000", 4 => "10110000010", 5 => "11111100011", 
    6 => "00011010101", 7 => "00101000111", 8 => "11111011010", 
    9 => "11010011000", 10 => "11011101111", 11 => "00010101000", 
    12 => "01000100100", 13 => "00101000010", 14 => "11101001000", 
    15 => "10111000111", 16 => "11000011100", 17 => "11101010011", 
    18 => "00010100000", 19 => "00100001000", 20 => "11111111101", 
    21 => "11101011001", 22 => "11110100100", 23 => "00010111100", 
    24 => "00100000100", 25 => "00000100110", 26 => "10111110010", 
    27 => "11010101110", 28 => "00000111011", 29 => "00100010010", 
    30 => "00101001101", 31 => "00000000111", 32 => "11111010100", 
    33 => "00001010000", 34 => "00011000000", 35 => "00000000011", 
    36 => "11100001011", 37 => "11001010000", 38 => "11011011001", 
    39 => "00001010011", 40 => "00110010011", 41 => "00110011001", 
    42 => "00000001000", 43 => "11100100100", 44 => "11110011010", 
    45 => "00000101110", 46 => "00001111100", 47 => "11110000000", 
    48 => "11100101010", 49 => "11011001111", 50 => "11111101011", 
    51 => "00100000001", 52 => "00001011101", 53 => "10110011100", 
    54 => "10100111100", 55 => "11100000001", 56 => "00100000011", 
    57 => "01000011100", 58 => "00101000111", 59 => "11100101000", 
    60 => "11010110010", 61 => "11111001000", 62 => "00101000100", 
    63 => "00110110001", 64 => "00000101111", 65 => "11000100110", 
    66 => "10101111101", 67 => "11100000001", 68 => "00100000010", 
    69 => "01000010100", 70 => "00100110010", 71 => "11110011100", 
    72 => "11101101010", 73 => "11110000010", 74 => "00001011100", 
    75 => "00010001000", 76 => "11101101100", 77 => "11000110111", 
    78 => "11111001000", 79 => "00100001100", 80 => "00110100010", 
    81 => "00011111000", 82 => "11110001010", 83 => "11110100110", 
    84 => "11110011111", 85 => "00000001001", 86 => "11110100101", 
    87 => "11100010001", 88 => "11100010110", 89 => "00000101000", 
    90 => "00100000111", 91 => "00111100000", 92 => "00011001010", 
    93 => "11100101011", 94 => "11011110000", 95 => "11101000111", 
    96 => "00001100011", 97 => "00000101100", 98 => "00000011000", 
    99 => "11101001000", 100 => "11110000111", 101 => "00011111111", 
    102 => "00100101100", 103 => "00110000100" );


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

entity L3_wlo_218_L2_WEIcvx is
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

architecture arch of L3_wlo_218_L2_WEIcvx is
    component L3_wlo_218_L2_WEIcvx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcvx_rom_U :  component L3_wlo_218_L2_WEIcvx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


