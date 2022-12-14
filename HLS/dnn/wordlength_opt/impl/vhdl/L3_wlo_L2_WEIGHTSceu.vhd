-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSceu_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSceu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010000101101001", 1 => "0001011101000010", 2 => "1001111111100010", 
    3 => "0001010111000011", 4 => "0010001011111101", 5 => "0001101011001111", 
    6 => "0001100101100010", 7 => "1010000000110100", 8 => "1001110011110011", 
    9 => "1001011101100011", 10 => "0010010000000100", 11 => "0010010000101100", 
    12 => "0010001101010011", 13 => "0001110000100100", 14 => "1001100110001010", 
    15 => "1010000101110100", 16 => "1001110110110110", 17 => "0001110000110011", 
    18 => "0001110110001011", 19 => "1001100100011000", 20 => "0001111001101001", 
    21 => "1001101101001111", 22 => "0001100000011011", 23 => "1001010111100110", 
    24 => "1010000001000001", 25 => "1001110001000101", 26 => "1001101011110000", 
    27 => "1010000010010111", 28 => "1001101011011110", 29 => "0001101001101010", 
    30 => "0001100111011000", 31 => "0010000111111001", 32 => "0010001101000100", 
    33 => "1001100101111000", 34 => "0010000000001111", 35 => "0001111011001110", 
    36 => "1001101010101110", 37 => "0001011010100011", 38 => "1010001011111100", 
    39 => "1010000001100000", 40 => "1001011111100011", 41 => "0001010001011101", 
    42 => "0010001011001100", 43 => "0010000100111010", 44 => "1001101000000110", 
    45 => "1010001101100011", 46 => "1010001010011100", 47 => "0001110111111111", 
    48 => "0001111111011101", 49 => "0001101111100111", 50 => "1010001001000010", 
    51 => "1010010010110000", 52 => "1010000001010000", 53 => "1001110010010111", 
    54 => "1001100110001000", 55 => "0001010001101001", 56 => "0001110010111111", 
    57 => "1001110111001000", 58 => "1010000010110001", 59 => "1010000010001111", 
    60 => "0010000001010011", 61 => "0010001000001111", 62 => "0010000111010110", 
    63 => "0001110100001011", 64 => "1010001000010101", 65 => "1010001100010001", 
    66 => "1010000011000100", 67 => "1001011100001110", 68 => "1001101000110001", 
    69 => "0010001111011000", 70 => "0001111101111111", 71 => "0001001000000011", 
    72 => "0001010101010110", 73 => "0001100111110001", 74 => "1010000101100111", 
    75 => "1001101001110100", 76 => "0000011000111010", 77 => "1000011100100101", 
    78 => "0001010101010101", 79 => "0001100010000111", 80 => "0001101011100101", 
    81 => "0001100011111011", 82 => "0010000011111100", 83 => "1001111000011110", 
    84 => "0010000001000110", 85 => "1001100001010110", 86 => "1001100011000110", 
    87 => "0001110010100100", 88 => "1010000011110111", 89 => "1010000100000110", 
    90 => "1001001011001111", 91 => "0001001101101010", 92 => "0010001000000000", 
    93 => "0010000010100000", 94 => "1001010001010110", 95 => "1010000110111010", 
    96 => "1010000001101010", 97 => "1001100001110111", 98 => "0001000101101100", 
    99 => "0010000000111000", 100 => "1001100010001011", 101 => "1010000111011011", 
    102 => "1001100110100010", 103 => "0001010100110010" );


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

entity L3_wlo_L2_WEIGHTSceu is
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

architecture arch of L3_wlo_L2_WEIGHTSceu is
    component L3_wlo_L2_WEIGHTSceu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSceu_rom_U :  component L3_wlo_L2_WEIGHTSceu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


