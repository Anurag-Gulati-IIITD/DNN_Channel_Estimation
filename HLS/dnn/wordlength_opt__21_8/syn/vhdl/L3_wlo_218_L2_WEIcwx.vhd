-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcwx_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcwx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010011001001", 1 => "001101111001", 2 => "111111100101", 
    3 => "110100100010", 4 => "101110110000", 5 => "110011101111", 
    6 => "000000111100", 7 => "001011001100", 8 => "001111011100", 
    9 => "001011010000", 10 => "000001100001", 11 => "111010011111", 
    12 => "110111000000", 13 => "111010100110", 14 => "111110011011", 
    15 => "111111000001", 16 => "000011100101", 17 => "000100001100", 
    18 => "000011100011", 19 => "000011000001", 20 => "111110111101", 
    21 => "111110010011", 22 => "111100010110", 23 => "111101000000", 
    24 => "111111010101", 25 => "000101010000", 26 => "000100011101", 
    27 => "111000100000", 28 => "110010110011", 29 => "110101111101", 
    30 => "111111010100", 31 => "001110000001", 32 => "001110011000", 
    33 => "000100000011", 34 => "111001010111", 35 => "110010000100", 
    36 => "111001110011", 37 => "000101101000", 38 => "000110011100", 
    39 => "000001010000", 40 => "110111110110", 41 => "110101001001", 
    42 => "000001001000", 43 => "001011111011", 44 => "001111101000", 
    45 => "000010111000", 46 => "110110011001", 47 => "101110011000", 
    48 => "110100101010", 49 => "000001011101", 50 => "001111001101", 
    51 => "001100100011", 52 => "000000110101", 53 => "110011000010", 
    54 => "101100011000", 55 => "110010111000", 56 => "111110111100", 
    57 => "001100111100", 58 => "010001110110", 59 => "001100100011", 
    60 => "111111111100", 61 => "111000111001", 62 => "110011010010", 
    63 => "110101101000", 64 => "111110001010", 65 => "000011110000", 
    66 => "000111011000", 67 => "000101111111", 68 => "000010011110", 
    69 => "111110011010", 70 => "111110111001", 71 => "111011110000", 
    72 => "111100111100", 73 => "111100100000", 74 => "111110110100", 
    75 => "000101101001", 76 => "001000100001", 77 => "000101101011", 
    78 => "110110010000", 79 => "110110111011", 80 => "111111000001", 
    81 => "001011011001", 82 => "001110110101", 83 => "000110010111", 
    84 => "111011001101", 85 => "110011000010", 86 => "110101001111", 
    87 => "111111011000", 88 => "001000010111", 89 => "001010000010", 
    90 => "111111111111", 91 => "111001110101", 92 => "111010010101", 
    93 => "000110100011", 94 => "001100001010", 95 => "000111100000", 
    96 => "111001011110", 97 => "110000011010", 98 => "101111010110", 
    99 => "111110100110", 100 => "001101101100", 101 => "010000000000", 
    102 => "000111101101", 103 => "111010111111" );


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

entity L3_wlo_218_L2_WEIcwx is
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

architecture arch of L3_wlo_218_L2_WEIcwx is
    component L3_wlo_218_L2_WEIcwx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcwx_rom_U :  component L3_wlo_218_L2_WEIcwx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


