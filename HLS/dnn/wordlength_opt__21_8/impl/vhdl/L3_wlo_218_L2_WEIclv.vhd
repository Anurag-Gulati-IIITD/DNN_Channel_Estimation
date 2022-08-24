-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIclv_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIclv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010001011", 1 => "000110111", 2 => "111110101", 3 => "110100100", 
    4 => "110011001", 5 => "111100110", 6 => "000111010", 7 => "000110100", 
    8 => "000001011", 9 => "111100000", 10 => "111011010", 11 => "000011101", 
    12 => "001001100", 13 => "000001011", 14 => "000011011", 15 => "110100101", 
    16 => "110111011", 17 => "111010011", 18 => "000100011", 19 => "001111000", 
    20 => "000101111", 21 => "111111101", 22 => "111010100", 23 => "110111101", 
    24 => "000001111", 25 => "000101111", 26 => "000100111", 27 => "101110101", 
    28 => "101100100", 29 => "110011101", 30 => "000101000", 31 => "010000111", 
    32 => "001111010", 33 => "000101001", 34 => "110000010", 35 => "101101110", 
    36 => "110101011", 37 => "000011111", 38 => "001100100", 39 => "000101011", 
    40 => "111110100", 41 => "110010010", 42 => "111111101", 43 => "001001010", 
    44 => "000101111", 45 => "111100011", 46 => "110001111", 47 => "110111111", 
    48 => "111110100", 49 => "000100100", 50 => "001111100", 51 => "111111110", 
    52 => "111101000", 53 => "110000010", 54 => "110001110", 55 => "111011001", 
    56 => "000010010", 57 => "001001000", 58 => "000111001", 59 => "111110110", 
    60 => "111000111", 61 => "000010010", 62 => "000001100", 63 => "000001110", 
    64 => "000010000", 65 => "111010100", 66 => "111011111", 67 => "111010001", 
    68 => "000010100", 69 => "000101110", 70 => "001011011", 71 => "000011000", 
    72 => "111001001", 73 => "110100011", 74 => "110101110", 75 => "000110001", 
    76 => "000111010", 77 => "001001001", 78 => "101111010", 79 => "110111000", 
    80 => "111111010", 81 => "001111000", 82 => "010100011", 83 => "000011101", 
    84 => "110000010", 85 => "110010011", 86 => "110101101", 87 => "000010010", 
    88 => "001110110", 89 => "010001111", 90 => "000011110", 91 => "111110100", 
    92 => "111010011", 93 => "000011010", 94 => "000101001", 95 => "000111111", 
    96 => "111001010", 97 => "111000110", 98 => "111000111", 99 => "000011000", 
    100 => "010000000", 101 => "000101010", 102 => "111010110", 103 => "110011010" );

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

entity L3_wlo_218_L2_WEIclv is
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

architecture arch of L3_wlo_218_L2_WEIclv is
    component L3_wlo_218_L2_WEIclv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIclv_rom_U :  component L3_wlo_218_L2_WEIclv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


