-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcgu_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcgu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "101100110", 1 => "110010000", 2 => "000000011", 3 => "001011011", 
    4 => "010001010", 5 => "001100010", 6 => "111111000", 7 => "110100101", 
    8 => "110000100", 9 => "110100101", 10 => "111110011", 11 => "000101100", 
    12 => "001001000", 13 => "000101011", 14 => "000001100", 15 => "000000111", 
    16 => "111100011", 17 => "111011110", 18 => "111100011", 19 => "111100111", 
    20 => "000001000", 21 => "000001101", 22 => "000011101", 23 => "000011000", 
    24 => "000000101", 25 => "111010101", 26 => "111011100", 27 => "000111011", 
    28 => "001101001", 29 => "001010000", 30 => "000000101", 31 => "110001111", 
    32 => "110001100", 33 => "111011111", 34 => "000110101", 35 => "001101111", 
    36 => "000110001", 37 => "111010010", 38 => "111001100", 39 => "111110101", 
    40 => "001000001", 41 => "001010110", 42 => "111110111", 43 => "110100000", 
    44 => "110000010", 45 => "111101000", 46 => "001001100", 47 => "010001101", 
    48 => "001011011", 49 => "111110100", 50 => "110000101", 51 => "110011010", 
    52 => "111111001", 53 => "001100111", 54 => "010011101", 55 => "001101001", 
    56 => "000001000", 57 => "110011000", 58 => "101110000", 59 => "110011011", 
    60 => "000000000", 61 => "000111001", 62 => "001100101", 63 => "001010011", 
    64 => "000001110", 65 => "111100001", 66 => "111000100", 67 => "111001111", 
    68 => "111101100", 69 => "000001100", 70 => "000001000", 71 => "000100001", 
    72 => "000011000", 73 => "000011100", 74 => "000001001", 75 => "111010010", 
    76 => "110111011", 77 => "111010010", 78 => "001001101", 79 => "001001000", 
    80 => "000000111", 81 => "110100100", 82 => "110001001", 83 => "111001101", 
    84 => "000100110", 85 => "001100111", 86 => "001010110", 87 => "000000100", 
    88 => "110111100", 89 => "110101111", 90 => "111111111", 91 => "000110001", 
    92 => "000101101", 93 => "111001011", 94 => "110011110", 95 => "111000100", 
    96 => "000110100", 97 => "001111100", 98 => "010000101", 99 => "000001011", 
    100 => "110010001", 101 => "101111111", 102 => "111000001", 103 => "000101000" );

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

entity L3_wlo_166_L2_WEIcgu is
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

architecture arch of L3_wlo_166_L2_WEIcgu is
    component L3_wlo_166_L2_WEIcgu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcgu_rom_U :  component L3_wlo_166_L2_WEIcgu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


