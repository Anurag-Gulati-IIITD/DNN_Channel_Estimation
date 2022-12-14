-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTScow_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L3_wlo_L2_WEIGHTScow_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010000010010011", 1 => "1010010010001011", 2 => "1010001010101010", 
    3 => "1001010001001101", 4 => "0010000111001011", 5 => "0010000011101011", 
    6 => "0001010010100001", 7 => "1001110010101100", 8 => "1001111010000001", 
    9 => "1001010111011000", 10 => "0001111100011001", 11 => "0010000001100111", 
    12 => "0001110000001110", 13 => "0000101011100010", 14 => "1001111000100011", 
    15 => "0001110001110000", 16 => "0010010000111000", 17 => "0001001000010010", 
    18 => "0001110011100100", 19 => "1010000101110100", 20 => "1010000011111101", 
    21 => "0001101100100110", 22 => "0010010001100101", 23 => "0001111110110011", 
    24 => "0001000111101000", 25 => "1010000000101111", 26 => "0001000101110101", 
    27 => "0001110101000011", 28 => "0010000000010011", 29 => "0001010100010010", 
    30 => "1001111110011011", 31 => "1001100111000011", 32 => "0001000111010111", 
    33 => "0001011111101000", 34 => "0001100100111111", 35 => "1000110111000000", 
    36 => "0001001010011000", 37 => "0001100111111110", 38 => "0001110000001101", 
    39 => "1001101000101110", 40 => "1001101101110010", 41 => "1010000001111100", 
    42 => "1001010101011000", 43 => "0001100010101011", 44 => "0001111011010001", 
    45 => "0001101100010100", 46 => "0000110011111111", 47 => "0001000110000001", 
    48 => "1001111001000111", 49 => "1001110001111010", 50 => "1001000000111010", 
    51 => "0001110001011111", 52 => "1010010001100111", 53 => "0000110010111000", 
    54 => "0010000011000101", 55 => "0010001111010001", 56 => "0010000100001100", 
    57 => "0001011000000000", 58 => "1010000100110111", 59 => "1001110110101010", 
    60 => "0001101111110011", 61 => "0010000110000011", 62 => "0001111101101001", 
    63 => "0001100100110100", 64 => "1010000011110001", 65 => "1000101001101100", 
    66 => "0010000110000001", 67 => "0001110111001011", 68 => "0001000110001100", 
    69 => "1001110100111101", 70 => "1010001110100110", 71 => "1001110101011000", 
    72 => "0010000010001010", 73 => "0010000010010000", 74 => "0001101110011001", 
    75 => "1001111001100111", 76 => "1010001101101001", 77 => "1001011000100110", 
    78 => "0010000011001101", 79 => "0001110100100100", 80 => "1001110101010110", 
    81 => "1010000011110000", 82 => "1001100101000011", 83 => "1001011111111011", 
    84 => "0010000100000101", 85 => "0001011110010101", 86 => "0001110000000101", 
    87 => "1001010101000011", 88 => "0001100100000010", 89 => "1001011000100000", 
    90 => "1001100000010110", 91 => "1001110010001100", 92 => "1001111001100100", 
    93 => "0001011101000100", 94 => "0001110010100100", 95 => "0010000001011011", 
    96 => "0001101001101011", 97 => "1001010001010101", 98 => "1010000100011110", 
    99 => "1001110111011000", 100 => "1001101000111000", 101 => "0001111001110111", 
    102 => "0010000000001001", 103 => "1001001111010101" );


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

entity L3_wlo_L2_WEIGHTScow is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_L2_WEIGHTScow is
    component L3_wlo_L2_WEIGHTScow_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTScow_rom_U :  component L3_wlo_L2_WEIGHTScow_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


