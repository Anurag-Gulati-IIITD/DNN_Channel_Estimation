-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcsw_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcsw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "101100101101", 1 => "110101000110", 2 => "111100001111", 
    3 => "000000110111", 4 => "000010011111", 5 => "000100010001", 
    6 => "000111011000", 7 => "001100101101", 8 => "001010100101", 
    9 => "000010010000", 10 => "111000101110", 11 => "110100011000", 
    12 => "110100011001", 13 => "111001011001", 14 => "111101111110", 
    15 => "000011011101", 16 => "000111011110", 17 => "001001100010", 
    18 => "001010100111", 19 => "000110101011", 20 => "000001000000", 
    21 => "111010100001", 22 => "110110001000", 23 => "110100010111", 
    24 => "110101110110", 25 => "111010101010", 26 => "000111101000", 
    27 => "001010110101", 28 => "001100000001", 29 => "000111010101", 
    30 => "000000110101", 31 => "111010110100", 32 => "110111011000", 
    33 => "110111000111", 34 => "111010011010", 35 => "111011101100", 
    36 => "000000010100", 37 => "000101101100", 38 => "001001010100", 
    39 => "001011111011", 40 => "001001000110", 41 => "000000110111", 
    42 => "111001001111", 43 => "110100110111", 44 => "111000010000", 
    45 => "111010000011", 46 => "111100111111", 47 => "111101111000", 
    48 => "111111110010", 49 => "000101110000", 50 => "010000100001", 
    51 => "010011110000", 52 => "000000111111", 53 => "001000011100", 
    54 => "001010010101", 55 => "000111101011", 56 => "000110000010", 
    57 => "000110100101", 58 => "000101001100", 59 => "111110011010", 
    60 => "110111001111", 61 => "110011101111", 62 => "110100110100", 
    63 => "111100011100", 64 => "000010101110", 65 => "001001001011", 
    66 => "001001000100", 67 => "001001010110", 68 => "000101110001", 
    69 => "000100010100", 70 => "111101101011", 71 => "110110111011", 
    72 => "110100010011", 73 => "110100110011", 74 => "111000110011", 
    75 => "111111111000", 76 => "000110100101", 77 => "001011011110", 
    78 => "001000010110", 79 => "000001100100", 80 => "111011011000", 
    81 => "110110000101", 82 => "110100011011", 83 => "110101111000", 
    84 => "111100010010", 85 => "000001000101", 86 => "000110101001", 
    87 => "001000010011", 88 => "001001011111", 89 => "001000000001", 
    90 => "000011011100", 91 => "111110001000", 92 => "110101111011", 
    93 => "110001110011", 94 => "110101101100", 95 => "111101010011", 
    96 => "000011110111", 97 => "000101011100", 98 => "000011010101", 
    99 => "000101000010", 100 => "001000011011", 101 => "001100100101", 
    102 => "000110001110", 103 => "111010011010" );


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

entity L3_wlo_218_L2_WEIcsw is
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

architecture arch of L3_wlo_218_L2_WEIcsw is
    component L3_wlo_218_L2_WEIcsw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcsw_rom_U :  component L3_wlo_218_L2_WEIcsw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


