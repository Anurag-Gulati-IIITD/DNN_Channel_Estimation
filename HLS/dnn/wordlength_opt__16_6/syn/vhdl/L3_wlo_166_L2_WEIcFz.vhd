-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcFz_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcFz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "101010101", 1 => "101111001", 2 => "111101111", 3 => "001010010", 
    4 => "001110010", 5 => "010000010", 6 => "000110110", 7 => "111100011", 
    8 => "110100000", 9 => "101111011", 10 => "110101100", 11 => "111100110", 
    12 => "000110101", 13 => "001001011", 14 => "001010101", 15 => "000111110", 
    16 => "000000101", 17 => "110101110", 18 => "110011110", 19 => "110100010", 
    20 => "111100000", 21 => "000100001", 22 => "000111000", 23 => "001101011", 
    24 => "001001100", 25 => "000000011", 26 => "110010110", 27 => "110011010", 
    28 => "111000101", 29 => "000011111", 30 => "001011100", 31 => "001101110", 
    32 => "001011100", 33 => "000001100", 34 => "110101010", 35 => "110000010", 
    36 => "110000101", 37 => "110110100", 38 => "000100011", 39 => "001001011", 
    40 => "001101011", 41 => "001100000", 42 => "000101111", 43 => "111111000", 
    44 => "111001011", 45 => "110101001", 46 => "110010110", 47 => "110101000", 
    48 => "111110001", 49 => "001101111", 50 => "010011111", 51 => "010010011", 
    52 => "111111111", 53 => "001100000", 54 => "010100111", 55 => "001110011", 
    56 => "001000101", 57 => "111100101", 58 => "110011101", 59 => "110000100", 
    60 => "110101101", 61 => "111110011", 62 => "000110010", 63 => "001110010", 
    64 => "001001011", 65 => "000010111", 66 => "111101100", 67 => "110110000", 
    68 => "110101010", 69 => "110101001", 70 => "111001111", 71 => "000100011", 
    72 => "001010100", 73 => "000111010", 74 => "000110110", 75 => "111101101", 
    76 => "111001011", 77 => "110010011", 78 => "111101110", 79 => "000101011", 
    80 => "001100100", 81 => "001110110", 82 => "000111111", 83 => "000010100", 
    84 => "110111010", 85 => "101111001", 86 => "110000011", 87 => "111001100", 
    88 => "000110111", 89 => "001111101", 90 => "001101011", 91 => "001001100", 
    92 => "000010010", 93 => "111100000", 94 => "110101011", 95 => "110011000", 
    96 => "110011111", 97 => "111011001", 98 => "000110110", 99 => "001011101", 
    100 => "010010011", 101 => "010000110", 102 => "000001101", 103 => "101111101" );

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

entity L3_wlo_166_L2_WEIcFz is
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

architecture arch of L3_wlo_166_L2_WEIcFz is
    component L3_wlo_166_L2_WEIcFz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcFz_rom_U :  component L3_wlo_166_L2_WEIcFz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


