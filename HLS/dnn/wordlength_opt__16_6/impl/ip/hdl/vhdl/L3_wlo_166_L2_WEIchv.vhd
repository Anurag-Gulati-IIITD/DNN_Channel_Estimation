-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIchv_rom is 
    generic(
             DWIDTH     : integer := 9; 
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


architecture rtl of L3_wlo_166_L2_WEIchv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111010110", 1 => "000111100", 2 => "001101111", 3 => "001101000", 
    4 => "000011100", 5 => "110111011", 6 => "101111111", 7 => "110010110", 
    8 => "111110100", 9 => "001010110", 10 => "010001011", 11 => "001101011", 
    12 => "000000000", 13 => "110101111", 14 => "110001000", 15 => "110110111", 
    16 => "000001010", 17 => "001000010", 18 => "001000001", 19 => "000010010", 
    20 to 21=> "000001000", 22 => "000000000", 23 => "111101110", 24 => "111000001", 
    25 => "111000100", 26 => "001011010", 27 => "001110001", 28 => "000110010", 
    29 => "110111111", 30 => "101011011", 31 => "110001011", 32 => "000010011", 
    33 => "010010101", 34 => "010110010", 35 => "001001100", 36 => "110111001", 
    37 => "101100011", 38 => "101111001", 39 => "111010111", 40 => "000110111", 
    41 => "001011111", 42 => "001011000", 43 => "000101111", 44 => "000010110", 
    45 => "111011011", 46 => "110110100", 47 => "110010100", 48 => "110110000", 
    49 => "000001101", 50 => "010000000", 51 => "010010111", 52 => "001110111", 
    53 => "001110010", 54 => "000011100", 55 => "110110111", 56 => "110001000", 
    57 => "110011010", 58 => "111110001", 59 => "001001111", 60 => "010000101", 
    61 => "001110000", 62 => "000001110", 63 => "110100111", 64 => "101111001", 
    65 => "110100100", 66 => "000000011", 67 to 68=> "001011001", 69 => "000101100", 
    70 => "111110011", 71 => "111011100", 72 => "111101101", 73 => "111101110", 
    74 => "111100000", 75 => "111010111", 76 => "000000011", 77 => "000111011", 
    78 => "001000101", 79 => "111011000", 80 => "110000001", 81 => "110000011", 
    82 => "111100111", 83 => "001110100", 84 => "010111010", 85 => "001100100", 
    86 => "111010100", 87 => "101011000", 88 => "101011101", 89 => "111000101", 
    90 => "001001010", 91 => "010001000", 92 => "001100110", 93 => "000100011", 
    94 => "111101000", 95 => "110111011", 96 => "110110000", 97 => "110101111", 
    98 => "111000000", 99 => "000001111", 100 => "001011111", 101 => "010001011", 
    102 => "001011100", 103 => "111100111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity L3_wlo_166_L2_WEIchv is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIchv is
    component L3_wlo_166_L2_WEIchv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIchv_rom_U :  component L3_wlo_166_L2_WEIchv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


