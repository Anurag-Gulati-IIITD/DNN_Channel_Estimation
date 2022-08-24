-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcdu_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L3_wlo_166_L2_WEIcdu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1100001000", 1 => "1110001001", 2 => "0001001010", 3 => "0010111001", 
    4 => "0001011101", 5 => "1111000101", 6 => "1101111110", 7 => "1111001110", 
    8 => "0000111010", 9 => "0001101001", 10 => "0000100111", 11 => "1111010100", 
    12 => "1110111000", 13 => "1111110100", 14 to 15=> "0000110111", 16 => "0000001100", 
    17 => "1111000101", 18 => "1111001011", 19 => "0000000100", 20 => "0000011110", 
    21 => "0000100001", 22 => "1111101110", 23 => "1111011111", 24 => "1111110111", 
    25 => "0000101011", 26 => "0000010000", 27 => "1110110101", 28 => "1110100010", 
    29 => "1111000111", 30 => "0000001011", 31 => "0001001000", 32 => "0000111000", 
    33 => "0000011000", 34 => "0000001111", 35 => "1111110110", 36 => "1111111001", 
    37 => "1111100011", 38 => "1110111100", 39 => "1111010011", 40 => "0000001010", 
    41 => "0000110000", 42 => "0000110011", 43 => "1111110011", 44 => "1111101001", 
    45 => "1111111100", 46 => "0001010000", 47 => "0001001110", 48 => "1111011101", 
    49 => "1101000101", 50 => "1100111001", 51 => "1111011000", 52 => "1111110111", 
    53 => "0010101011", 54 => "0010110110", 55 => "0000010001", 56 => "1101111110", 
    57 => "1110000101", 58 => "0000000010", 59 => "0001101001", 60 => "0001011000", 
    61 => "0000000101", 62 => "1110100110", 63 => "1110111000", 64 => "0000001011", 
    65 => "0001001010", 66 => "0000101110", 67 => "1111100101", 68 => "1110111011", 
    69 => "1111011011", 70 => "0000011010", 71 => "0000100110", 72 => "0000001111", 
    73 => "1111010101", 74 => "1111011011", 75 => "0000010010", 76 => "0000111010", 
    77 => "0000101001", 78 => "1110101010", 79 => "1110111110", 80 => "0000000011", 
    81 => "0001010011", 82 => "0001010001", 83 => "0000011011", 84 => "1111110011", 
    85 => "1111100011", 86 => "1111100110", 87 => "1111100101", 88 => "1111100000", 
    89 => "1111101110", 90 => "1111111000", 91 => "0000110110", 92 => "0000111001", 
    93 => "0000011011", 94 => "1111100010", 95 => "1111011101", 96 => "0000000010", 
    97 => "0000111000", 98 => "0000000000", 99 => "1110011100", 100 => "1101100110", 
    101 => "1110111011", 102 => "0001101010", 103 => "0100000111" );


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

entity L3_wlo_166_L2_WEIcdu is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIcdu is
    component L3_wlo_166_L2_WEIcdu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcdu_rom_U :  component L3_wlo_166_L2_WEIcdu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


