-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIchv_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIchv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111010110100", 1 => "000111100111", 2 => "001101111000", 
    3 => "001101000011", 4 => "000011100110", 5 => "110111011111", 
    6 => "101111111001", 7 => "110010110110", 8 => "111110100001", 
    9 => "001010110100", 10 => "010001011011", 11 => "001101011011", 
    12 => "000000000110", 13 => "110101111110", 14 => "110001000101", 
    15 => "110110111000", 16 => "000001010001", 17 => "001000010001", 
    18 => "001000001001", 19 => "000010010010", 20 => "000001000011", 
    21 => "000001000001", 22 => "000000000101", 23 => "111101110001", 
    24 => "111000001100", 25 => "111000100100", 26 => "001011010100", 
    27 => "001110001010", 28 => "000110010100", 29 => "110111111010", 
    30 => "101011011111", 31 => "110001011111", 32 => "000010011101", 
    33 => "010010101001", 34 => "010110010101", 35 => "001001100101", 
    36 => "110111001111", 37 => "101100011111", 38 => "101111001100", 
    39 => "111010111101", 40 => "000110111101", 41 => "001011111000", 
    42 => "001011000100", 43 => "000101111110", 44 => "000010110010", 
    45 => "111011011111", 46 => "110110100111", 47 => "110010100010", 
    48 => "110110000010", 49 => "000001101110", 50 => "010000000000", 
    51 => "010010111000", 52 => "001110111111", 53 => "001110010110", 
    54 => "000011100010", 55 => "110110111010", 56 => "110001000000", 
    57 => "110011010111", 58 => "111110001100", 59 => "001001111101", 
    60 => "010000101110", 61 => "001110000001", 62 => "000001110001", 
    63 => "110100111111", 64 => "101111001110", 65 => "110100100001", 
    66 => "000000011101", 67 => "001011001110", 68 => "001011001101", 
    69 => "000101100101", 70 => "111110011001", 71 => "111011100110", 
    72 => "111101101101", 73 => "111101110100", 74 => "111100000101", 
    75 => "111010111010", 76 => "000000011001", 77 => "000111011011", 
    78 => "001000101001", 79 => "111011000111", 80 => "110000001011", 
    81 => "110000011010", 82 => "111100111000", 83 => "001110100001", 
    84 => "010111010000", 85 => "001100100010", 86 => "111010100111", 
    87 => "101011000110", 88 => "101011101110", 89 => "111000101000", 
    90 => "001001010010", 91 => "010001000000", 92 => "001100110010", 
    93 => "000100011100", 94 => "111101000011", 95 => "110111011101", 
    96 => "110110000011", 97 => "110101111011", 98 => "111000000001", 
    99 => "000001111100", 100 => "001011111101", 101 => "010001011011", 
    102 => "001011100110", 103 => "111100111001" );


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

entity L3_wlo_218_L2_WEIchv is
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

architecture arch of L3_wlo_218_L2_WEIchv is
    component L3_wlo_218_L2_WEIchv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIchv_rom_U :  component L3_wlo_218_L2_WEIchv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


