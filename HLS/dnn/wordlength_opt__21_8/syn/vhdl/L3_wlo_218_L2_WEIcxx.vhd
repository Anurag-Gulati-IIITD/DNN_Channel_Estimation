-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcxx_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcxx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010101100000", 1 => "001110101111", 2 => "111111101000", 
    3 => "111000101101", 4 => "111000000011", 5 => "110011010101", 
    6 => "111100101011", 7 => "000100101101", 8 => "001011110000", 
    9 => "001101001101", 10 => "000110110111", 11 => "000101000101", 
    12 => "111100100010", 13 => "110111001111", 14 => "111001100011", 
    15 => "111010110111", 16 => "000000101011", 17 => "001010110000", 
    18 => "001001011101", 19 => "001001101111", 20 => "000010110110", 
    21 => "111000011100", 22 => "111011110011", 23 => "110010110111", 
    24 => "110101011100", 25 => "111100101010", 26 => "001010011101", 
    27 => "001001011100", 28 => "000100111000", 29 => "111100110111", 
    30 => "110101010101", 31 => "110110111100", 32 => "111001100001", 
    33 => "000101000101", 34 => "001011111100", 35 => "001101001110", 
    36 => "001011001100", 37 => "000101010101", 38 => "111011000100", 
    39 => "111100101110", 40 => "110111110100", 41 => "110110100101", 
    42 => "110111111101", 43 => "111111011010", 44 => "000011100010", 
    45 => "001001100001", 46 => "001011110001", 47 => "001001011000", 
    48 => "000000111111", 49 => "110100001101", 50 => "110000110110", 
    51 => "110000000011", 52 => "000001101001", 53 => "110101001010", 
    54 => "101100001100", 55 => "110110101100", 56 => "110101111011", 
    57 => "111110001010", 58 => "001001111110", 59 => "001001111101", 
    60 => "000110001101", 61 => "000010111110", 62 => "111101101101", 
    63 => "110010110001", 64 => "111000111110", 65 => "111111101001", 
    66 => "000001010101", 67 => "001000110001", 68 => "000110000101", 
    69 => "001101001100", 70 => "001000101010", 71 => "111110101011", 
    72 => "110111111100", 73 => "111101001110", 74 => "111001011010", 
    75 => "000001001111", 76 => "000001010110", 77 => "001110001100", 
    78 => "111110101101", 79 => "111001111011", 80 => "110011111100", 
    81 => "110001000110", 82 => "111011110101", 83 => "111110000100", 
    84 => "001000100100", 85 => "001101011011", 86 => "001011001011", 
    87 => "000100011110", 88 => "111001000111", 89 => "110001010101", 
    90 => "110111101100", 91 => "111010001101", 92 => "111011100100", 
    93 => "111111000111", 94 => "000100000110", 95 => "001011100110", 
    96 => "010000001011", 97 => "000110001110", 98 => "111000101111", 
    99 => "110100010111", 100 => "110010111011", 101 => "110001001111", 
    102 => "000000011010", 103 => "010000110100" );


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

entity L3_wlo_218_L2_WEIcxx is
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

architecture arch of L3_wlo_218_L2_WEIcxx is
    component L3_wlo_218_L2_WEIcxx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcxx_rom_U :  component L3_wlo_218_L2_WEIcxx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


