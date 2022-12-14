-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTScnw_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTScnw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110011000101", 1 => "0010010100101000", 2 => "1010101101111101", 
    3 => "1010111010010101", 4 => "1010110111000101", 5 => "1010100000100010", 
    6 => "0010010101100010", 7 => "0010110111001111", 8 => "0010101110101100", 
    9 => "0010100100111001", 10 => "0010010010110111", 11 => "1010000011100111", 
    12 => "1010101110101010", 13 => "1010110111111100", 14 => "1010110001111010", 
    15 => "0010100100110001", 16 => "0010110111110111", 17 => "0010110111010111", 
    18 => "0010110010001011", 19 => "1001100000110001", 20 => "1010110001110010", 
    21 => "1010111000111101", 22 => "1010110010001000", 23 => "0010001010110010", 
    24 => "0010110100011001", 25 => "0010110000001111", 26 => "1010000010110010", 
    27 => "1010011101100001", 28 => "1010010111010010", 29 => "1010100001000100", 
    30 => "1010010011111100", 31 => "1010001010100101", 32 => "0010010101111011", 
    33 => "0010110001101100", 34 => "0010101100101101", 35 => "0010100100001110", 
    36 => "0001011111000101", 37 => "1010101100111000", 38 => "1010101010010110", 
    39 => "1010100101001000", 40 => "1001111000010000", 41 => "0010011000110011", 
    42 => "0010100011111101", 43 => "0010100101000111", 44 => "0010110000011000", 
    45 => "0010110001110000", 46 => "0010000010101101", 47 => "1010011010100100", 
    48 => "1010111110001010", 49 => "1010110101100011", 50 => "1010101111011010", 
    51 => "0010101100110111", 52 => "1010110000110000", 53 => "1010111010101110", 
    54 => "1010101011111111", 55 => "1010100101100110", 56 => "0010110000111001", 
    57 => "0010110101101011", 58 => "0010110100100011", 59 => "0010100001000000", 
    60 => "1010000110101001", 61 => "1010101001101100", 62 => "1010101101110001", 
    63 => "1010101010000110", 64 => "1010101100010101", 65 => "0010011100011101", 
    66 => "0010101011111101", 67 => "0010110101001111", 68 => "0010110010111111", 
    69 => "0010011000110010", 70 => "1010110110010011", 71 => "1010111001100110", 
    72 => "1010111000100001", 73 => "1010010100010001", 74 => "0010110110001100", 
    75 => "0010110001000001", 76 => "0010010101101000", 77 => "1001110001110001", 
    78 => "1010101011001101", 79 => "1010011110011111", 80 => "1010011001111111", 
    81 => "1001110011111110", 82 => "0010011111110110", 83 => "0010100110101000", 
    84 => "0010101000100111", 85 => "0010011011110001", 86 => "1010011000000111", 
    87 => "1010110001010010", 88 => "1010101011101100", 89 => "1010101011000111", 
    90 => "1010011001001101", 91 => "0010001000000111", 92 => "0010100101001000", 
    93 => "0010100001010101", 94 => "0010011010011001", 95 => "0010100110001001", 
    96 => "1010000001110010", 97 => "1010010011100010", 98 => "1010110100100011", 
    99 => "1010111111011101", 100 => "1010100111001010", 101 => "0010110001011011", 
    102 => "0010110101101010", 103 => "0010110000010110" );


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

entity L3_wlo_L2_WEIGHTScnw is
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

architecture arch of L3_wlo_L2_WEIGHTScnw is
    component L3_wlo_L2_WEIGHTScnw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTScnw_rom_U :  component L3_wlo_L2_WEIGHTScnw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


