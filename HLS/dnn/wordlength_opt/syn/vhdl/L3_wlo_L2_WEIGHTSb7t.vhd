-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSb7t_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSb7t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110010110001", 1 => "0010101010001101", 2 => "1010010011101011", 
    3 => "1010110001100000", 4 => "1010110011111011", 5 => "1001101100001100", 
    6 => "0010011010101111", 7 => "0010100100011111", 8 => "1001110010110101", 
    9 => "1010100110100000", 10 => "1010100001000010", 11 => "0010010101000111", 
    12 => "0010110001001000", 13 => "0010100100001011", 14 => "1010010110111100", 
    15 => "1010110001110000", 16 => "1010101110001101", 17 => "1010010101100100", 
    18 => "0010010100000100", 19 => "0010100000100011", 20 => "1000110100011101", 
    21 => "1010010100110010", 22 => "1010000110111111", 23 => "0010010111100111", 
    24 => "0010100000010001", 25 => "0001110011011001", 26 => "1010110000011100", 
    27 => "1010100101000111", 28 => "0001111101111000", 29 => "0010100001001011", 
    30 => "0010100100110101", 31 => "0001001101010101", 32 => "1001110101100111", 
    33 => "0010000100001111", 34 => "0010011000000101", 35 => "0000111100000111", 
    36 => "1010011110100101", 37 => "1010101010111100", 38 => "1010100010011100", 
    39 => "0010000100111110", 40 => "0010101001001101", 41 => "0010101001100111", 
    42 => "0001010000001100", 43 => "1010011011011100", 44 => "1010001001010010", 
    45 => "0001110111001111", 46 => "0010001111000110", 47 => "1010001111111110", 
    48 => "1010011010101011", 49 => "1010100011000000", 50 => "1001100100110010", 
    51 => "0010100000000101", 52 => "0010000111011100", 53 => "1010110011001000", 
    54 => "1010110110001000", 55 => "1010011111110000", 56 => "0010100000001111", 
    57 => "0010110000111001", 58 => "0010100100011111", 59 => "1010011010111001", 
    60 => "1010100100110101", 61 => "1001111011100101", 62 => "0010100100010001", 
    63 => "0010101011000111", 64 => "0001110111111011", 65 => "1010101101101000", 
    66 => "1010110100000110", 67 => "1010011111110111", 68 => "0010100000001100", 
    69 => "0010110000101001", 70 => "0010100011001011", 71 => "1010001000110000", 
    72 => "1010010010101110", 73 => "1010001111011100", 74 => "0010000111000110", 
    75 => "0010010001000110", 76 => "1010010010011111", 77 => "1010101100100100", 
    78 => "1001111011100011", 79 => "0010100000110011", 80 => "0010101010001001", 
    81 => "0010011111001000", 82 => "1010001101010111", 83 => "1010000110100000", 
    84 => "1010001000000101", 85 => "0001010011111001", 86 => "1010000110101110", 
    87 => "1010011101110110", 88 => "1010011101001110", 89 => "0001110100011101", 
    90 => "0010100000011110", 91 => "0010101110000001", 92 => "0010011001010010", 
    93 => "1010011010100110", 94 => "1010100000111110", 95 => "1010010111000010", 
    96 => "0010001000111011", 97 => "0001110110000110", 98 => "0001101000110001", 
    99 => "1010010110111010", 100 => "1010001110000101", 101 => "0010011111111100", 
    102 => "0010100010110001", 103 => "0010101000010100" );


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

entity L3_wlo_L2_WEIGHTSb7t is
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

architecture arch of L3_wlo_L2_WEIGHTSb7t is
    component L3_wlo_L2_WEIGHTSb7t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSb7t_rom_U :  component L3_wlo_L2_WEIGHTSb7t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

