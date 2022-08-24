-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcPA_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcPA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000110010011", 1 => "000011111101", 2 => "111110011101", 
    3 => "000000111111", 4 => "000100100110", 5 => "000011000010", 
    6 => "111100110110", 7 => "110111111001", 8 => "110111110111", 
    9 => "111101100010", 10 => "001000101111", 11 => "001111011110", 
    12 => "001001010011", 13 => "000011100001", 14 => "110111111101", 
    15 => "110110111110", 16 => "111100110011", 17 => "000010110001", 
    18 => "000010011011", 19 => "111000111000", 20 => "111011111010", 
    21 => "000011011110", 22 => "001100100110", 23 => "010011001010", 
    24 => "001000110100", 25 => "111001011011", 26 => "101110010011", 
    27 => "110110011101", 28 => "000101111010", 29 => "010001011011", 
    30 => "001100011001", 31 => "001011011111", 32 => "000010110010", 
    33 => "111010001101", 34 => "110110000100", 35 => "110011010010", 
    36 => "110111000011", 37 => "000001000101", 38 => "001011000111", 
    39 => "001111101101", 40 => "001011100010", 41 => "111110100000", 
    42 => "110100101010", 43 => "101110001100", 44 => "111000000010", 
    45 => "000000011010", 46 => "001101111101", 47 => "001110111001", 
    48 => "000111001101", 49 => "111101110100", 50 => "111000110000", 
    51 => "110011101100", 52 => "000000101011", 53 => "111111000001", 
    54 => "111110000110", 55 => "111101110111", 56 => "111111001110", 
    57 => "111011110100", 58 => "111010110100", 59 => "111101011111", 
    60 => "000101100110", 61 => "001101100010", 62 => "001011011011", 
    63 => "000010101001", 64 => "110110101101", 65 => "110011001111", 
    66 => "111000011011", 67 => "000011010010", 68 => "000011111110", 
    69 => "000010010001", 70 => "111101001011", 71 => "111110110010", 
    72 => "000111100011", 73 => "001011110100", 74 => "000111101000", 
    75 => "111010000001", 76 => "110010100111", 77 => "101111110101", 
    78 => "001001000001", 79 => "010000010101", 80 => "010000011011", 
    81 => "001000110011", 82 => "111100001101", 83 => "110101011111", 
    84 => "110111100000", 85 => "110100100010", 86 => "111100000001", 
    87 => "000001011110", 88 => "001001111000", 89 => "001100111001", 
    90 => "001011010100", 91 => "000000010001", 92 => "110010101001", 
    93 => "101110101001", 94 => "110100110000", 95 => "111111100100", 
    96 => "001011110111", 97 => "001111001000", 98 => "000100100000", 
    99 => "111101010100", 100 => "110100000010", 101 => "110100001010", 
    102 => "111001110101", 103 => "000001000111" );


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

entity L3_wlo_218_L2_WEIcPA is
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

architecture arch of L3_wlo_218_L2_WEIcPA is
    component L3_wlo_218_L2_WEIcPA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcPA_rom_U :  component L3_wlo_218_L2_WEIcPA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


