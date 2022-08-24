-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSb6t_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSb6t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001010010111111", 1 => "1001101011100001", 2 => "1001110111100011", 
    3 => "1001110000010110", 4 => "1001100101000011", 5 => "0001011111101010", 
    6 => "0001101101010110", 7 => "0001101111001001", 8 => "0001100100001000", 
    9 => "0001010000001111", 10 => "1000111111110010", 11 => "1001010110111111", 
    12 => "1001100100011000", 13 => "1001001011100010", 14 => "1000100101010111", 
    15 => "0001000100010000", 16 => "1000111000101001", 17 => "0001001010010000", 
    18 => "0001010110100100", 19 => "0001011010010011", 20 => "0001100100010100", 
    21 => "0001010011011010", 22 => "0001000100111000", 23 => "1001010000010100", 
    24 => "1001101010010011", 25 => "1001010001001011", 26 => "1001001111000100", 
    27 => "0001001110011010", 28 => "0001001010111010", 29 => "0001011010011001", 
    30 => "0001000111110101", 31 => "0001010110001001", 32 => "1001001111100001", 
    33 => "1000111101000010", 34 => "1000110110111100", 35 => "1000111011100010", 
    36 => "1001100001001000", 37 => "1001100101001010", 38 => "1001010110000001", 
    39 => "0001000011100100", 40 => "0001100010010100", 41 => "0001101010000011", 
    42 => "0001101101110110", 43 => "0001010001011100", 44 => "1001000000010000", 
    45 => "1001100110000101", 46 => "1001100111010110", 47 => "1001101111100011", 
    48 => "1001100101100010", 49 => "1000010110110100", 50 => "0001101011000000", 
    51 => "0001110010010001", 52 => "1001110100111000", 53 => "1001111011101101", 
    54 => "1001100011010000", 55 => "0001101101000001", 56 => "0001110001110000", 
    57 => "0001101101111100", 58 => "0001100111001011", 59 => "0001000100111010", 
    60 => "1001100100100010", 61 => "1001101010100111", 62 => "1001100010001000", 
    63 => "1001110000000011", 64 => "1000010011001001", 65 => "0001001010101011", 
    66 => "0001011000100101", 67 => "0001100100101110", 68 => "0001010011000001", 
    69 => "0000111100111110", 70 => "1000001110111100", 71 => "1000011101111001", 
    72 => "1001011100001000", 73 => "1001011001111101", 74 => "1001100110110011", 
    75 => "1001011001010110", 76 => "1001010111001001", 77 => "0000110001100100", 
    78 => "0001011100011001", 79 => "0001100101000101", 80 => "0001010111011101", 
    81 => "1000101001101100", 82 => "1001100000111000", 83 => "1000000111000101", 
    84 => "1001010000000111", 85 => "1000101110110011", 86 => "1001100100010110", 
    87 => "1000110100111010", 88 => "1001000111010001", 89 => "1000100101000111", 
    90 => "0001100110111011", 91 => "0001100001111010", 92 => "0001100011111011", 
    93 => "0001101011110011", 94 => "1000110011101110", 95 => "1001100110111001", 
    96 => "1001101000101010", 97 => "1001101100011010", 98 => "1001011111001011", 
    99 => "0001001100111110", 100 => "0001100000011111", 101 => "0001100101101110", 
    102 => "0001110110010011", 103 => "0001101101110011" );


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

entity L3_wlo_L2_WEIGHTSb6t is
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

architecture arch of L3_wlo_L2_WEIGHTSb6t is
    component L3_wlo_L2_WEIGHTSb6t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSb6t_rom_U :  component L3_wlo_L2_WEIGHTSb6t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


