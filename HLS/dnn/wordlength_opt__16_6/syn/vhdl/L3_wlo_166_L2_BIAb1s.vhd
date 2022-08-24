-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_BIAb1s_rom is 
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


architecture rtl of L3_wlo_166_L2_BIAb1s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010100000", 1 => "001001001", 2 => "111011011", 3 => "101111110", 
    4 => "110101100", 5 => "111111110", 6 => "001010011", 7 => "000100001", 
    8 => "111111011", 9 => "111100010", 10 => "000000001", 11 => "000100101", 
    12 => "000100000", 13 => "111110011", 14 => "110110100", 15 => "110100110", 
    16 => "111010100", 17 => "000111100", 18 => "001011011", 19 => "001000001", 
    20 => "000010100", 21 => "111101000", 22 => "000000100", 23 => "000001100", 
    24 => "000000111", 25 => "111011101", 26 => "111001010", 27 => "000100110", 
    28 => "001011110", 29 => "001101100", 30 => "000101010", 31 => "111011010", 
    32 => "110111000", 33 => "110111111", 34 => "111001101", 35 => "000000100", 
    36 => "000000101", 37 => "000000010", 38 => "000011101", 39 => "000011100", 
    40 => "000010100", 41 => "000001001", 42 => "000000100", 43 => "000011010", 
    44 => "111101111", 45 => "111101101", 46 => "110110100", 47 => "110111110", 
    48 => "111110100", 49 => "001100111", 50 => "010000111", 51 => "001011010", 
    52 => "000000110", 53 => "110101000", 54 => "101111011", 55 => "111011100", 
    56 => "001000101", 57 => "001011000", 58 => "000011110", 59 => "111101011", 
    60 => "111011000", 61 => "111110010", 62 => "000101001", 63 => "111111111", 
    64 => "111011010", 65 => "110110001", 66 => "111011100", 67 => "000100100", 
    68 => "001100111", 69 => "001000011", 70 => "000010001", 71 => "111101100", 
    72 => "111010000", 73 => "000000110", 74 => "000001111", 75 => "111111000", 
    76 => "111001001", 77 => "111010000", 78 => "001001111", 79 => "001110110", 
    80 => "001000110", 81 => "111011000", 82 => "110101101", 83 => "110101000", 
    84 => "111001101", 85 => "000001101", 86 => "000011101", 87 => "000011001", 
    88 => "000010001", 89 => "000000111", 90 => "000110000", 91 => "000000010", 
    92 => "111111101", 93 => "000000011", 94 => "111110101", 95 => "111100111", 
    96 => "111010110", 97 => "111010010", 98 => "000000011", 99 => "001001000", 
    100 => "001111011", 101 => "000111111", 102 => "111111110", 103 => "101111111" );

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

entity L3_wlo_166_L2_BIAb1s is
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

architecture arch of L3_wlo_166_L2_BIAb1s is
    component L3_wlo_166_L2_BIAb1s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_BIAb1s_rom_U :  component L3_wlo_166_L2_BIAb1s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


