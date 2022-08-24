-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcBy_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcBy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101110", 1 => "001100000", 2 => "001000101", 3 => "000101101", 
    4 => "000100100", 5 => "000110011", 6 => "000010111", 7 => "111100110", 
    8 => "110100000", 9 => "110001000", 10 => "110110101", 11 => "000001010", 
    12 => "001001000", 13 => "001000111", 14 => "000110000", 15 => "000011111", 
    16 => "000100101", 17 => "000001101", 18 => "111101100", 19 => "110111110", 
    20 => "110011100", 21 => "110110011", 22 => "111011010", 23 => "000010000", 
    24 => "000101011", 25 => "000111011", 26 => "001011001", 27 => "000101000", 
    28 => "111011101", 29 => "110000111", 30 => "101110001", 31 => "110100101", 
    32 => "000001011", 33 => "001010000", 34 => "001011010", 35 => "000100101", 
    36 => "000010101", 37 => "000100011", 38 => "000101110", 39 => "000010111", 
    40 => "111001110", 41 => "101111110", 42 => "101110101", 43 => "111000000", 
    44 => "000111100", 45 => "001110000", 46 => "001100111", 47 => "000101101", 
    48 => "000001111", 49 => "000001100", 50 => "000001110", 51 => "111010011", 
    52 => "010001110", 53 => "000110001", 54 => "111111100", 55 => "111101001", 
    56 => "111110100", 57 => "111100101", 58 => "110111000", 59 => "110011001", 
    60 => "111000001", 61 => "000011111", 62 => "001011100", 63 => "001110101", 
    64 => "000111101", 65 => "000001010", 66 => "111100111", 67 => "111100100", 
    68 => "111011011", 69 => "111001010", 70 => "110111000", 71 => "110111100", 
    72 => "111111010", 73 => "000100010", 74 => "001001001", 75 => "001001111", 
    76 => "001000011", 77 => "000100111", 78 => "111001000", 79 => "110001000", 
    80 => "101111011", 81 => "110110110", 82 => "000010101", 83 => "001101010", 
    84 => "010000000", 85 => "001001011", 86 => "000001100", 87 => "111100001", 
    88 => "111110001", 89 => "000000001", 90 => "111001111", 91 => "110101011", 
    92 => "110010000", 93 => "111000100", 94 => "000110110", 95 => "010001101", 
    96 => "010000111", 97 => "000111011", 98 => "111100100", 99 => "110111100", 
    100 => "111001110", 101 => "111100101", 102 => "110101110", 103 => "110010111" );

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

entity L3_wlo_166_L2_WEIcBy is
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

architecture arch of L3_wlo_166_L2_WEIcBy is
    component L3_wlo_166_L2_WEIcBy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcBy_rom_U :  component L3_wlo_166_L2_WEIcBy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


