-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcPA_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcPA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000110010", 1 => "000011111", 2 => "111110011", 3 => "000000111", 
    4 => "000100100", 5 => "000011000", 6 => "111100110", 7 => "110111111", 
    8 => "110111110", 9 => "111101100", 10 => "001000101", 11 => "001111011", 
    12 => "001001010", 13 => "000011100", 14 => "110111111", 15 => "110110111", 
    16 => "111100110", 17 => "000010110", 18 => "000010011", 19 => "111000111", 
    20 => "111011111", 21 => "000011011", 22 => "001100100", 23 => "010011001", 
    24 => "001000110", 25 => "111001011", 26 => "101110010", 27 => "110110011", 
    28 => "000101111", 29 => "010001011", 30 => "001100011", 31 => "001011011", 
    32 => "000010110", 33 => "111010001", 34 => "110110000", 35 => "110011010", 
    36 => "110111000", 37 => "000001000", 38 => "001011000", 39 => "001111101", 
    40 => "001011100", 41 => "111110100", 42 => "110100101", 43 => "101110001", 
    44 => "111000000", 45 => "000000011", 46 => "001101111", 47 => "001110111", 
    48 => "000111001", 49 => "111101110", 50 => "111000110", 51 => "110011101", 
    52 => "000000101", 53 => "111111000", 54 => "111110000", 55 => "111101110", 
    56 => "111111001", 57 => "111011110", 58 => "111010110", 59 => "111101011", 
    60 => "000101100", 61 => "001101100", 62 => "001011011", 63 => "000010101", 
    64 => "110110101", 65 => "110011001", 66 => "111000011", 67 => "000011010", 
    68 => "000011111", 69 => "000010010", 70 => "111101001", 71 => "111110110", 
    72 => "000111100", 73 => "001011110", 74 => "000111101", 75 => "111010000", 
    76 => "110010100", 77 => "101111110", 78 => "001001000", 79 => "010000010", 
    80 => "010000011", 81 => "001000110", 82 => "111100001", 83 => "110101011", 
    84 => "110111100", 85 => "110100100", 86 => "111100000", 87 => "000001011", 
    88 => "001001111", 89 => "001100111", 90 => "001011010", 91 => "000000010", 
    92 => "110010101", 93 => "101110101", 94 => "110100110", 95 => "111111100", 
    96 => "001011110", 97 => "001111001", 98 => "000100100", 99 => "111101010", 
    100 => "110100000", 101 => "110100001", 102 => "111001110", 103 => "000001000" );

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

entity L3_wlo_166_L2_WEIcPA is
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

architecture arch of L3_wlo_166_L2_WEIcPA is
    component L3_wlo_166_L2_WEIcPA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcPA_rom_U :  component L3_wlo_166_L2_WEIcPA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


