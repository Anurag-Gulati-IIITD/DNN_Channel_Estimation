-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcBy_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcBy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101110000", 1 => "001100000000", 2 => "001000101111", 
    3 => "000101101110", 4 => "000100100010", 5 => "000110011111", 
    6 => "000010111100", 7 => "111100110011", 8 => "110100000110", 
    9 => "110001000111", 10 => "110110101110", 11 => "000001010111", 
    12 => "001001000010", 13 => "001000111011", 14 => "000110000010", 
    15 => "000011111101", 16 => "000100101011", 17 => "000001101110", 
    18 => "111101100000", 19 => "110111110001", 20 => "110011100111", 
    21 => "110110011010", 22 => "111011010110", 23 => "000010000000", 
    24 => "000101011110", 25 => "000111011000", 26 => "001011001010", 
    27 => "000101000010", 28 => "111011101110", 29 => "110000111001", 
    30 => "101110001100", 31 => "110100101011", 32 => "000001011011", 
    33 => "001010000001", 34 => "001011010100", 35 => "000100101001", 
    36 => "000010101001", 37 => "000100011011", 38 => "000101110011", 
    39 => "000010111101", 40 => "111001110100", 41 => "101111110010", 
    42 => "101110101111", 43 => "111000000110", 44 => "000111100000", 
    45 => "001110000111", 46 => "001100111000", 47 => "000101101100", 
    48 => "000001111011", 49 => "000001100101", 50 => "000001110101", 
    51 => "111010011100", 52 => "010001110000", 53 => "000110001000", 
    54 => "111111100001", 55 => "111101001110", 56 => "111110100110", 
    57 => "111100101000", 58 => "110111000011", 59 => "110011001011", 
    60 => "111000001001", 61 => "000011111010", 62 => "001011100101", 
    63 => "001110101000", 64 => "000111101101", 65 => "000001010111", 
    66 => "111100111010", 67 => "111100100000", 68 => "111011011011", 
    69 => "111001010010", 70 => "110111000001", 71 => "110111100101", 
    72 => "111111010100", 73 => "000100010110", 74 => "001001001101", 
    75 => "001001111011", 76 => "001000011101", 77 => "000100111101", 
    78 => "111001000001", 79 => "110001000110", 80 => "101111011011", 
    81 => "110110110011", 82 => "000010101101", 83 => "001101010111", 
    84 => "010000000101", 85 => "001001011011", 86 => "000001100010", 
    87 => "111100001111", 88 => "111110001101", 89 => "000000001101", 
    90 => "111001111000", 91 => "110101011111", 92 => "110010000001", 
    93 => "111000100001", 94 => "000110110110", 95 => "010001101110", 
    96 => "010000111100", 97 => "000111011110", 98 => "111100100010", 
    99 => "110111100001", 100 => "111001110110", 101 => "111100101001", 
    102 => "110101110000", 103 => "110010111101" );


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

entity L3_wlo_218_L2_WEIcBy is
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

architecture arch of L3_wlo_218_L2_WEIcBy is
    component L3_wlo_218_L2_WEIcBy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcBy_rom_U :  component L3_wlo_218_L2_WEIcBy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


