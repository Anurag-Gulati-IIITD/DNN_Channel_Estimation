-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb2s_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb2s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010101", 1 => "000111100", 2 => "000011011", 3 => "000001010", 
    4 => "111001000", 5 => "111100000", 6 => "110011010", 7 => "111101110", 
    8 => "111101010", 9 => "111111100", 10 => "000110000", 11 => "001010111", 
    12 => "000010000", 13 => "111110011", 14 => "110111011", 15 => "000001100", 
    16 => "000010001", 17 => "000001010", 18 => "000000111", 19 => "110101011", 
    20 => "111111001", 21 => "111110010", 22 => "000000110", 23 => "001010100", 
    24 => "000001001", 25 => "111100111", 26 => "101100011", 27 => "111100100", 
    28 => "000100100", 29 => "001101000", 30 => "001100101", 31 => "111111110", 
    32 => "000011110", 33 => "111111101", 34 => "111011011", 35 => "000011010", 
    36 => "111110110", 37 => "111110001", 38 => "000101111", 39 => "000011111", 
    40 => "000011011", 41 => "111101111", 42 => "110111111", 43 => "000000110", 
    44 => "001101110", 45 => "001100010", 46 => "111001000", 47 => "101100001", 
    48 => "101011011", 49 => "111110110", 50 => "010110011", 51 => "011000100", 
    52 => "010011001", 53 => "000110101", 54 => "000001000", 55 => "110110001", 
    56 => "111010010", 57 => "111011001", 58 => "000010001", 59 => "000001101", 
    60 => "001000010", 61 => "000111011", 62 => "001011010", 63 => "000001101", 
    64 => "111001110", 65 => "111010110", 66 => "111100000", 67 => "000110111", 
    68 => "000011010", 69 => "000100110", 70 => "111010010", 71 => "000000001", 
    72 => "000001110", 73 => "001011000", 74 => "000001100", 75 => "111010001", 
    76 => "110100110", 77 => "110110110", 78 => "000100101", 79 => "000111000", 
    80 => "000101101", 81 => "111110010", 82 => "111011000", 83 => "111010000", 
    84 => "111100110", 85 => "111100101", 86 => "111111101", 87 => "000000001", 
    88 => "000101000", 89 => "110111000", 90 => "111011111", 91 => "111111100", 
    92 => "111000100", 93 => "110111100", 94 => "000010101", 95 => "000101100", 
    96 => "000001001", 97 => "110011100", 98 => "110010011", 99 => "111000001", 
    100 => "001110010", 101 => "011110000", 102 => "001110001", 103 => "110111110" );

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

entity L3_wlo_218_L2_WEIb2s is
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

architecture arch of L3_wlo_218_L2_WEIb2s is
    component L3_wlo_218_L2_WEIb2s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb2s_rom_U :  component L3_wlo_218_L2_WEIb2s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


