-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIccu_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIccu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100110", 1 => "111000010", 2 => "110100011", 3 => "110101001", 
    4 => "111011101", 5 => "000101101", 6 => "001110010", 7 => "010001011", 
    8 => "001100100", 9 => "111100010", 10 => "101110111", 11 => "101010100", 
    12 => "110001100", 13 => "000011100", 14 => "001110010", 15 => "010010010", 
    16 => "001110000", 17 => "000110000", 18 => "111010101", 19 => "101110001", 
    20 => "101111010", 21 => "110100110", 22 => "000000010", 23 => "001101000", 
    24 => "010000101", 25 => "001101100", 26 => "111001100", 27 => "110110001", 
    28 => "111001011", 29 => "000000010", 30 => "111101111", 31 => "111101011", 
    32 => "111101101", 33 => "000010001", 34 => "001011101", 35 => "001111011", 
    36 => "000111100", 37 => "111001101", 38 => "101110010", 39 => "101101011", 
    40 => "111001010", 41 => "001000101", 42 => "010001010", 43 => "001101100", 
    44 => "000100101", 45 => "111000010", 46 to 47=> "110101110", 48 => "111011101", 
    49 => "000000000", 50 => "000110110", 51 => "000111001", 52 => "110111101", 
    53 => "111011000", 54 => "111101101", 55 => "000101101", 56 => "001100100", 
    57 => "001111000", 58 => "001001010", 59 => "111011101", 60 => "101111110", 
    61 => "101011101", 62 => "110011110", 63 => "000011110", 64 => "010001000", 
    65 => "010011101", 66 => "001101111", 67 => "000011001", 68 => "110100100", 
    69 => "101110010", 70 => "101110111", 71 => "110111001", 72 => "000101000", 
    73 => "001111010", 74 => "010001011", 75 => "001100010", 76 => "000100000", 
    77 to 78=> "110111000", 79 => "111100010", 80 => "000011011", 81 => "000011101", 
    82 => "000000001", 83 => "000010100", 84 => "001000100", 85 => "001000110", 
    86 => "000111101", 87 => "111011111", 88 => "101111111", 89 => "101100011", 
    90 => "111001000", 91 => "001000110", 92 => "010010100", 93 => "010000100", 
    94 => "000101101", 95 => "110101000", 96 => "110001001", 97 => "110010010", 
    98 => "111010101", 99 => "000101111", 100 => "000111100", 101 => "001000001", 
    102 => "001000100", 103 => "000101100" );

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

entity L3_wlo_166_L2_WEIccu is
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

architecture arch of L3_wlo_166_L2_WEIccu is
    component L3_wlo_166_L2_WEIccu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIccu_rom_U :  component L3_wlo_166_L2_WEIccu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


