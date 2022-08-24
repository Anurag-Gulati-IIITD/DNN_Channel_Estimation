-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcEy_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L3_wlo_218_L2_WEIcEy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111101011010", 1 => "101010001000", 2 => "100111111011", 
    3 => "111000001111", 4 => "001001111111", 5 => "010010011000", 
    6 => "001001011100", 7 => "111100100011", 8 => "110101110011", 
    9 => "110110111111", 10 => "000000111101", 11 => "001010000011", 
    12 => "001000001001", 13 => "000010100100", 14 => "110101101000", 
    15 => "110001110110", 16 => "111000010011", 17 => "000100101010", 
    18 => "001110101001", 19 => "001101110101", 20 => "000111000110", 
    21 => "111001010011", 22 => "110000000001", 23 => "110010011011", 
    24 => "111011001101", 25 => "001001001111", 26 => "001101011001", 
    27 => "000001001010", 28 => "110110101010", 29 => "110100101011", 
    30 => "110110001011", 31 => "111111011011", 32 => "000110000000", 
    33 => "000110100111", 34 => "000100011111", 35 => "000010011001", 
    36 => "000010011100", 37 => "000000001011", 38 => "111100101111", 
    39 => "110111110011", 40 => "110111100001", 41 => "111100011001", 
    42 => "000101001101", 43 => "001010001101", 44 => "001011001011", 
    45 => "000011010100", 46 => "111101010101", 47 => "111000110101", 
    48 => "111000010110", 49 => "111010101011", 50 => "111101011010", 
    51 => "111111110100", 52 => "100111110011", 53 => "110011110100", 
    54 => "000110100010", 55 => "010011001001", 56 => "010001010101", 
    57 => "000010100011", 58 => "110110010100", 59 => "110010101100", 
    60 => "111011010110", 61 => "000111100010", 62 => "001011110111", 
    63 => "000100010010", 64 => "111010000000", 65 => "110011101101", 
    66 => "110111000000", 67 => "000011101011", 68 => "001100101100", 
    69 => "001101111001", 70 => "000101110000", 71 => "111010000100", 
    72 => "110010000111", 73 => "110000110110", 74 => "111010000100", 
    75 => "000111111001", 76 => "010001111011", 77 => "001111101001", 
    78 => "110110000001", 79 => "101111011100", 80 => "110101100110", 
    81 => "111111111111", 82 => "000111101000", 83 => "001010010110", 
    84 => "000110101111", 85 => "000000101100", 86 => "111110111001", 
    87 => "111100000110", 88 => "111100001010", 89 => "111001000101", 
    90 => "111011000100", 91 => "111110010000", 92 => "000011011010", 
    93 => "001010011011", 94 => "001010110010", 95 => "000001111110", 
    96 => "111010010100", 97 => "110101101000", 98 => "110110011111", 
    99 => "111100010011", 100 => "000000101011", 101 => "000011110111", 
    102 => "000110101000", 103 => "001011010000" );


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

entity L3_wlo_218_L2_WEIcEy is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcEy is
    component L3_wlo_218_L2_WEIcEy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcEy_rom_U :  component L3_wlo_218_L2_WEIcEy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


