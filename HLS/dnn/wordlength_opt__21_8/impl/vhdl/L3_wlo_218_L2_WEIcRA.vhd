-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcRA_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcRA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001011101000", 1 => "001001101100", 2 => "000101011001", 
    3 => "111000101101", 4 => "101110000011", 5 => "110001000011", 
    6 => "110101110010", 7 => "111111001101", 8 => "001010111000", 
    9 => "001111101010", 10 => "001110010100", 11 => "000000010100", 
    12 => "110110101100", 13 => "110000110000", 14 => "101110110000", 
    15 => "110101101101", 16 => "000001101111", 17 => "001010010111", 
    18 => "010000011100", 19 => "001001111110", 20 => "000010010110", 
    21 => "111011110110", 22 => "110000110000", 23 => "110110001111", 
    24 => "111010110001", 25 => "000001111111", 26 => "001010110111", 
    27 => "001100111111", 28 => "001000111111", 29 => "000010100110", 
    30 => "111000110100", 31 => "101110101110", 32 => "101110000111", 
    33 => "110001111011", 34 => "000000011110", 35 => "001101011010", 
    36 => "010000000111", 37 => "001011000111", 38 => "000010010101", 
    39 => "110100001110", 40 => "110001111100", 41 => "110100111010", 
    42 => "111011011111", 43 => "000000001001", 44 => "000111001010", 
    45 => "001011000100", 46 => "001101100101", 47 => "000111000101", 
    48 => "111111001101", 49 => "110011110111", 50 => "101101001001", 
    51 => "110001010100", 52 => "111110100001", 53 => "110111000101", 
    54 => "110011000111", 55 => "110000110101", 56 => "111101010001", 
    57 => "001001101101", 58 => "001110010010", 59 => "010010000001", 
    60 => "001100010101", 61 => "111110011000", 62 => "110001100100", 
    63 => "110001011110", 64 => "110000101001", 65 => "110110011101", 
    66 => "000111001101", 67 => "001110011110", 68 => "010010010100", 
    69 => "000100100101", 70 => "111010100101", 71 => "110010101010", 
    72 => "110001110011", 73 => "110000100111", 74 => "111011110100", 
    75 => "000100011001", 76 => "001111101001", 77 => "001000011000", 
    78 => "001000110101", 79 => "111111000111", 80 => "111000101101", 
    81 => "110100110010", 82 => "101111111011", 83 => "111100011110", 
    84 => "000110100000", 85 => "001110011001", 86 => "010001001100", 
    87 => "001001111101", 88 => "111111000000", 89 => "110111101110", 
    90 => "110000000110", 91 => "110100110111", 92 => "111111100011", 
    93 => "001000001100", 94 => "001100011100", 95 => "001000011001", 
    96 => "000100001110", 97 => "000001110100", 98 => "111111101101", 
    99 => "110111001101", 100 => "101111000100", 101 => "110100111001", 
    102 => "111110011101", 103 => "001001001100" );


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

entity L3_wlo_218_L2_WEIcRA is
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

architecture arch of L3_wlo_218_L2_WEIcRA is
    component L3_wlo_218_L2_WEIcRA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcRA_rom_U :  component L3_wlo_218_L2_WEIcRA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


