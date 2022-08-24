-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcau_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcau_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100100011", 1 => "01100000011", 2 => "01000010111", 
    3 => "11011110101", 4 => "10011100110", 5 => "10101011101", 
    6 => "11110110111", 7 => "01001111011", 8 => "01100100101", 
    9 => "00010100111", 10 => "11000100001", 11 => "10100100100", 
    12 => "11010011110", 13 => "00101101111", 14 => "01000010101", 
    15 => "00101000000", 16 => "11010111000", 17 => "11001001000", 
    18 => "11110010110", 19 => "00011001101", 20 => "01001101100", 
    21 => "00010010011", 22 => "11001001000", 23 => "10110000001", 
    24 => "11011010110", 25 => "00110010101", 26 => "01000110101", 
    27 => "00000010000", 28 => "10110001010", 29 => "10110000101", 
    30 => "11011101110", 31 => "00101000101", 32 => "01100000000", 
    33 => "01001010010", 34 => "11111110111", 35 => "11000101101", 
    36 => "10100010011", 37 => "11001011100", 38 => "00101111100", 
    39 => "01011111000", 40 => "01010010100", 41 => "00001001100", 
    42 => "10101110101", 43 => "10011101111", 44 => "11011100000", 
    45 => "00110011111", 46 => "01010111111", 47 => "00110000000", 
    48 => "11101100100", 49 => "11001001110", 50 => "11011000110", 
    51 => "00000110110", 52 => "01011110000", 53 => "00011001111", 
    54 => "10110010101", 55 => "10010111100", 56 => "11011111000", 
    57 => "00111001100", 58 => "01101010000", 59 => "00111000100", 
    60 => "11100100001", 61 => "10011001011", 62 => "10111110001", 
    63 => "00010101101", 64 => "01001011110", 65 => "00111100111", 
    66 => "11110111100", 67 => "11001100010", 68 => "11001011010", 
    69 => "00001111001", 70 => "00110010110", 71 => "00110101001", 
    72 => "11110101110", 73 => "11000101010", 74 => "11000111001", 
    75 => "11111100011", 76 => "01001111000", 77 => "01010000101", 
    78 => "11001000001", 79 => "10010101010", 80 => "11000101001", 
    81 => "00010001011", 82 => "01010000111", 83 => "01100000110", 
    84 => "00100001101", 85 => "10111110001", 86 => "10100100111", 
    87 => "11000100111", 88 => "00001110110", 89 => "00111101100", 
    90 => "01011011111", 91 => "00010100011", 92 => "11001000100", 
    93 => "10011000100", 94 => "11001000000", 95 => "00001101101", 
    96 => "01011010010", 97 => "01000000000", 98 => "00001000101", 
    99 => "11001111101", 100 => "10110110101", 101 => "11101100011", 
    102 => "00101100110", 103 => "00110111110" );


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

entity L3_wlo_218_L2_WEIcau is
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

architecture arch of L3_wlo_218_L2_WEIcau is
    component L3_wlo_218_L2_WEIcau_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcau_rom_U :  component L3_wlo_218_L2_WEIcau_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


