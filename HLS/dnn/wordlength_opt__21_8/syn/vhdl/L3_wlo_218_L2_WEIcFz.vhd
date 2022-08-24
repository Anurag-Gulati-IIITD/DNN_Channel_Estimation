-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcFz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcFz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "101010101011", 1 => "101111001100", 2 => "111101111000", 
    3 => "001010010101", 4 => "001110010110", 5 => "010000010111", 
    6 => "000110110000", 7 => "111100011010", 8 => "110100000010", 
    9 => "101111011100", 10 => "110101100011", 11 => "111100110010", 
    12 => "000110101001", 13 => "001001011000", 14 => "001010101111", 
    15 => "000111110010", 16 => "000000101001", 17 => "110101110100", 
    18 => "110011110110", 19 => "110100010100", 20 => "111100000010", 
    21 => "000100001011", 22 => "000111000000", 23 => "001101011000", 
    24 => "001001100101", 25 => "000000011110", 26 => "110010110001", 
    27 => "110011010101", 28 => "111000101001", 29 => "000011111101", 
    30 => "001011100010", 31 => "001101110011", 32 => "001011100010", 
    33 => "000001100110", 34 => "110101010101", 35 => "110000010010", 
    36 => "110000101101", 37 => "110110100101", 38 => "000100011010", 
    39 => "001001011101", 40 => "001101011000", 41 => "001100000010", 
    42 => "000101111110", 43 => "111111000001", 44 => "111001011110", 
    45 => "110101001110", 46 => "110010110111", 47 => "110101000000", 
    48 => "111110001001", 49 => "001101111110", 50 => "010011111110", 
    51 => "010010011101", 52 => "111111111000", 53 => "001100000011", 
    54 => "010100111011", 55 => "001110011001", 56 => "001000101010", 
    57 => "111100101000", 58 => "110011101001", 59 => "110000100010", 
    60 => "110101101100", 61 => "111110011000", 62 => "000110010101", 
    63 => "001110010001", 64 => "001001011100", 65 => "000010111011", 
    66 => "111101100000", 67 => "110110000000", 68 => "110101010011", 
    69 => "110101001010", 70 => "111001111000", 71 => "000100011000", 
    72 => "001010100100", 73 => "000111010111", 74 => "000110110101", 
    75 => "111101101111", 76 => "111001011010", 77 => "110010011010", 
    78 => "111101110011", 79 => "000101011101", 80 => "001100100001", 
    81 => "001110110001", 82 => "000111111000", 83 => "000010100001", 
    84 => "110111010101", 85 => "101111001010", 86 => "110000011101", 
    87 => "111001100100", 88 => "000110111000", 89 => "001111101110", 
    90 => "001101011100", 91 => "001001100000", 92 => "000010010100", 
    93 => "111100000111", 94 => "110101011111", 95 => "110011000110", 
    96 => "110011111111", 97 => "111011001001", 98 => "000110110010", 
    99 => "001011101001", 100 => "010010011100", 101 => "010000110111", 
    102 => "000001101110", 103 => "101111101100" );


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

entity L3_wlo_218_L2_WEIcFz is
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

architecture arch of L3_wlo_218_L2_WEIcFz is
    component L3_wlo_218_L2_WEIcFz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcFz_rom_U :  component L3_wlo_218_L2_WEIcFz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


