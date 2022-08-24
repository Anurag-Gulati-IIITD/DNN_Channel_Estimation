-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcgu_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcgu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "101100110100", 1 => "110010000010", 2 => "000000011011", 
    3 => "001011011111", 4 => "010001010001", 5 => "001100010000", 
    6 => "111111000000", 7 => "110100101111", 8 => "110000100010", 
    9 => "110100101110", 10 => "111110011110", 11 => "000101100001", 
    12 => "001001000000", 13 => "000101011011", 14 => "000001100100", 
    15 => "000000111111", 16 => "111100011001", 17 => "111011110001", 
    18 => "111100011100", 19 => "111100111100", 20 => "000001000001", 
    21 => "000001101101", 22 => "000011101100", 23 => "000011000000", 
    24 => "000000101010", 25 => "111010101111", 26 => "111011100000", 
    27 => "000111011110", 28 => "001101001100", 29 => "001010000010", 
    30 => "000000101011", 31 => "110001111101", 32 => "110001100111", 
    33 => "111011111101", 34 => "000110101011", 35 => "001101111110", 
    36 => "000110001101", 37 => "111010010101", 38 => "111001100000", 
    39 => "111110101101", 40 => "001000001010", 41 => "001010110110", 
    42 => "111110111000", 43 => "110100000100", 44 => "110000010101", 
    45 => "111101000110", 46 => "001001100111", 47 => "010001101010", 
    48 => "001011011001", 49 => "111110100010", 50 => "110000101110", 
    51 => "110011010110", 52 => "111111001010", 53 => "001100111101", 
    54 => "010011101001", 55 => "001101001001", 56 => "000001000010", 
    57 => "110011000010", 58 => "101110000111", 59 => "110011011011", 
    60 => "000000000100", 61 => "000111001001", 62 => "001100101111", 
    63 => "001010011001", 64 => "000001110100", 65 => "111100001111", 
    66 => "111000100101", 67 => "111001111111", 68 => "111101100000", 
    69 => "000001100101", 70 => "000001000101", 71 => "000100001111", 
    72 => "000011000011", 73 => "000011100000", 74 => "000001001010", 
    75 => "111010010101", 76 => "110111011100", 77 => "111010010010", 
    78 => "001001101110", 79 => "001001000011", 80 => "000000111111", 
    81 => "110100100100", 82 => "110001001010", 83 => "111001101001", 
    84 => "000100110011", 85 => "001100111111", 86 => "001010110010", 
    87 => "000000100101", 88 => "110111100101", 89 => "110101111001", 
    90 => "111111111110", 91 => "000110001011", 92 => "000101101100", 
    93 => "111001011111", 94 => "110011110101", 95 => "111000100000", 
    96 => "000110100010", 97 => "001111100111", 98 => "010000101100", 
    99 => "000001011001", 100 => "110010001111", 101 => "101111111010", 
    102 => "111000001110", 103 => "000101000010" );


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

entity L3_wlo_218_L2_WEIcgu is
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

architecture arch of L3_wlo_218_L2_WEIcgu is
    component L3_wlo_218_L2_WEIcgu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcgu_rom_U :  component L3_wlo_218_L2_WEIcgu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


