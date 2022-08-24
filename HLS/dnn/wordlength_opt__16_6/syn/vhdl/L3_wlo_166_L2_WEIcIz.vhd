-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcIz_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcIz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100100", 1 => "000101100", 2 => "000111010", 3 => "000100101", 
    4 => "000001101", 5 => "111111001", 6 => "111110111", 7 => "111110010", 
    8 => "111010100", 9 => "111000110", 10 => "111100111", 11 => "000101011", 
    12 => "001100110", 13 => "001110010", 14 => "000101100", 15 => "111001011", 
    16 => "101111011", 17 => "110000010", 18 => "111011000", 19 => "000110010", 
    20 => "010000011", 21 => "010000000", 22 => "000111011", 23 => "111101001", 
    24 => "110011111", 25 => "110000100", 26 => "111110111", 27 => "001001111", 
    28 => "010000111", 29 => "001111001", 30 => "000011110", 31 => "110111101", 
    32 => "101110101", 33 => "110000001", 34 => "111011011", 35 => "001001110", 
    36 => "010010001", 37 => "010000110", 38 => "000101110", 39 => "110111001", 
    40 => "101101011", 41 => "101110001", 42 => "111010001", 43 => "001000101", 
    44 => "010100001", 45 => "010001101", 46 => "000100111", 47 => "110100110", 
    48 => "101011101", 49 => "110001100", 50 => "000001010", 51 => "001110010", 
    52 => "001000110", 53 => "000111101", 54 => "000001110", 55 => "111011100", 
    56 => "111011111", 57 => "111100111", 58 => "111101011", 59 => "111101000", 
    60 => "111110101", 61 => "000011000", 62 => "001000111", 63 => "001011111", 
    64 => "000100100", 65 => "111001111", 66 => "110000011", 67 => "110000110", 
    68 => "111001101", 69 => "001000101", 70 => "010000011", 71 => "001111110", 
    72 => "000110001", 73 => "111010010", 74 => "110010000", 75 => "101111011", 
    76 => "110111001", 77 => "000001100", 78 => "010001001", 79 => "001100110", 
    80 => "000010000", 81 => "110101111", 82 => "101110001", 83 => "110000101", 
    84 => "111101010", 85 => "001000111", 86 => "010010010", 87 => "010000010", 
    88 => "000101000", 89 => "110110001", 90 => "101100111", 91 => "101110000", 
    92 => "111001101", 93 => "001000000", 94 => "010010110", 95 => "010010001", 
    96 => "000101111", 97 => "110101111", 98 => "101010010", 99 => "101110011", 
    100 => "111101000", 101 => "001101111", 102 => "010011000", 103 => "001001010" );

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

entity L3_wlo_166_L2_WEIcIz is
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

architecture arch of L3_wlo_166_L2_WEIcIz is
    component L3_wlo_166_L2_WEIcIz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcIz_rom_U :  component L3_wlo_166_L2_WEIcIz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


