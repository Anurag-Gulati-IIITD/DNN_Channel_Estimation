-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIccu_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIccu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100110011", 1 => "111000010001", 2 => "110100011001", 
    3 => "110101001010", 4 => "111011101000", 5 => "000101101111", 
    6 => "001110010101", 7 => "010001011010", 8 => "001100100011", 
    9 => "111100010010", 10 => "101110111001", 11 => "101010100001", 
    12 => "110001100010", 13 => "000011100011", 14 => "001110010011", 
    15 => "010010010100", 16 => "001110000001", 17 => "000110000011", 
    18 => "111010101001", 19 => "101110001100", 20 => "101111010111", 
    21 => "110100110000", 22 => "000000010101", 23 => "001101000100", 
    24 => "010000101110", 25 => "001101100010", 26 => "111001100101", 
    27 => "110110001101", 28 => "111001011110", 29 => "000000010011", 
    30 => "111101111110", 31 => "111101011110", 32 => "111101101010", 
    33 => "000010001001", 34 => "001011101001", 35 => "001111011100", 
    36 => "000111100111", 37 => "111001101001", 38 => "101110010101", 
    39 => "101101011110", 40 => "111001010101", 41 => "001000101101", 
    42 => "010001010000", 43 => "001101100001", 44 => "000100101000", 
    45 => "111000010010", 46 => "110101110100", 47 => "110101110010", 
    48 => "111011101010", 49 => "000000000100", 50 => "000110110010", 
    51 => "000111001001", 52 => "110111101001", 53 => "111011000011", 
    54 => "111101101001", 55 => "000101101100", 56 => "001100100011", 
    57 => "001111000001", 58 => "001001010111", 59 => "111011101101", 
    60 => "101111110111", 61 => "101011101110", 62 => "110011110001", 
    63 => "000011110011", 64 => "010001000011", 65 => "010011101111", 
    66 => "001101111001", 67 => "000011001001", 68 => "110100100010", 
    69 => "101110010010", 70 => "101110111001", 71 => "110111001100", 
    72 => "000101000001", 73 => "001111010000", 74 => "010001011001", 
    75 => "001100010010", 76 => "000100000100", 77 => "110111000100", 
    78 => "110111000001", 79 => "111100010100", 80 => "000011011000", 
    81 => "000011101101", 82 => "000000001011", 83 => "000010100101", 
    84 => "001000100101", 85 => "001000110010", 86 => "000111101100", 
    87 => "111011111000", 88 => "101111111001", 89 => "101100011101", 
    90 => "111001000101", 91 => "001000110010", 92 => "010010100001", 
    93 => "010000100101", 94 => "000101101100", 95 => "110101000111", 
    96 => "110001001111", 97 => "110010010011", 98 => "111010101100", 
    99 => "000101111110", 100 => "000111100111", 101 => "001000001010", 
    102 => "001000100000", 103 => "000101100101" );


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

entity L3_wlo_218_L2_WEIccu is
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

architecture arch of L3_wlo_218_L2_WEIccu is
    component L3_wlo_218_L2_WEIccu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIccu_rom_U :  component L3_wlo_218_L2_WEIccu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


