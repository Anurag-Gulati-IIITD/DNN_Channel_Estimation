-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTScgu_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTScgu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010100101101", 1 => "1011000101111000", 2 => "1011001000000101", 
    3 => "1010101111000010", 4 => "0010110011111111", 5 => "0011000010011000", 
    6 => "0010110010111001", 7 => "1010011011100001", 8 => "1010110100011001", 
    9 => "1010110010000010", 10 => "0001111110110001", 11 => "0010110100000111", 
    12 => "0010110000010100", 13 => "0010010100100000", 14 => "1010110100101110", 
    15 => "1010111100010011", 16 => "1010101110110011", 17 => "0010100010101010", 
    18 => "0010111101010100", 19 => "0010111011101011", 20 => "0010101100011010", 
    21 => "1010101010110011", 22 => "1010111111111101", 23 => "1010111011001001", 
    24 => "1010100011001001", 25 => "0010110010011110", 26 => "0010111010110100", 
    27 => "0010000010100110", 28 => "1010110010101010", 29 => "1010110110101000", 
    30 => "1010110011101010", 31 => "1001110010010010", 32 => "0010101000000001", 
    33 => "0010101010100000", 34 => "0010100001111100", 35 => "0010010011001011", 
    36 => "0010010011100010", 37 => "0001010111010001", 38 => "1010011010000111", 
    39 => "1010110000011010", 40 => "1010110000111100", 41 => "1010011100110001", 
    42 => "0010100100111000", 43 => "0010110100011011", 44 => "0010110110010110", 
    45 => "0010011010100101", 46 => "1010010101010000", 47 => "1010101100101010", 
    48 => "1010101110100110", 49 => "1010100101010100", 50 => "1010010100101010", 
    51 => "1001010110101001", 52 => "1011001000001101", 53 => "1010111000010111", 
    54 => "0010101010001010", 55 => "0011000011001010", 56 => "0011000001010110", 
    57 => "0010010100100000", 58 => "1010110011010111", 59 => "1010111010100110", 
    60 => "1010100010100110", 61 => "0010101110001011", 62 => "0010110111101110", 
    63 => "0010100001001001", 64 => "1010100111111100", 65 => "1010111000100100", 
    66 => "1010110001111110", 67 => "0010011101011011", 68 => "0010111001011001", 
    69 => "0010111011110011", 70 => "0010100111000011", 71 => "1010100111101110", 
    72 => "1010111011110001", 73 => "1010111110010011", 74 => "1010100111101110", 
    75 => "0010101111100110", 76 => "0011000001111011", 77 => "0010111111010010", 
    78 => "1010110011111100", 79 => "1011000000100100", 80 => "1010110100110100", 
    81 => "1000011100000011", 82 => "0010101110100011", 83 => "0010110100101100", 
    84 => "0010101010111100", 85 => "0001110110000111", 86 => "1010000001100111", 
    87 => "1010011111001100", 88 => "1010011110101001", 89 => "1010101011101011", 
    90 => "1010100011101101", 91 => "1010001011110110", 92 => "0010011011010010", 
    93 => "0010110100110111", 94 => "0010110101100100", 95 => "0010001111101001", 
    96 => "1010100110101111", 97 => "1010110100101111", 98 => "1010110011000001", 
    99 => "1010011101100111", 100 => "0001110101100011", 101 => "0010011110111111", 
    102 => "0010101010100010", 103 => "0010110110100000" );


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

entity L3_wlo_L2_WEIGHTScgu is
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

architecture arch of L3_wlo_L2_WEIGHTScgu is
    component L3_wlo_L2_WEIGHTScgu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTScgu_rom_U :  component L3_wlo_L2_WEIGHTScgu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


