-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIclv_rom is 
    generic(
             DWIDTH     : integer := 6; 
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


architecture rtl of L3_wlo_166_L2_WEIclv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010001", 1 => "000110", 2 => "111110", 3 => "110100", 4 => "110011", 
    5 => "111100", 6 => "000111", 7 => "000110", 8 => "000001", 9 => "111100", 
    10 => "111011", 11 => "000011", 12 => "001001", 13 => "000001", 14 => "000011", 
    15 => "110100", 16 => "110111", 17 => "111010", 18 => "000100", 19 => "001111", 
    20 => "000101", 21 => "111111", 22 => "111010", 23 => "110111", 24 => "000001", 
    25 => "000101", 26 => "000100", 27 => "101110", 28 => "101100", 29 => "110011", 
    30 => "000101", 31 => "010000", 32 => "001111", 33 => "000101", 34 => "110000", 
    35 => "101101", 36 => "110101", 37 => "000011", 38 => "001100", 39 => "000101", 
    40 => "111110", 41 => "110010", 42 => "111111", 43 => "001001", 44 => "000101", 
    45 => "111100", 46 => "110001", 47 => "110111", 48 => "111110", 49 => "000100", 
    50 => "001111", 51 => "111111", 52 => "111101", 53 => "110000", 54 => "110001", 
    55 => "111011", 56 => "000010", 57 => "001001", 58 => "000111", 59 => "111110", 
    60 => "111000", 61 => "000010", 62 to 63=> "000001", 64 => "000010", 65 => "111010", 
    66 => "111011", 67 => "111010", 68 => "000010", 69 => "000101", 70 => "001011", 
    71 => "000011", 72 => "111001", 73 => "110100", 74 => "110101", 75 => "000110", 
    76 => "000111", 77 => "001001", 78 => "101111", 79 => "110111", 80 => "111111", 
    81 => "001111", 82 => "010100", 83 => "000011", 84 => "110000", 85 => "110010", 
    86 => "110101", 87 => "000010", 88 => "001110", 89 => "010001", 90 => "000011", 
    91 => "111110", 92 => "111010", 93 => "000011", 94 => "000101", 95 => "000111", 
    96 => "111001", 97 to 98=> "111000", 99 => "000011", 100 => "010000", 101 => "000101", 
    102 => "111010", 103 => "110011" );

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

entity L3_wlo_166_L2_WEIclv is
    generic (
        DataWidth : INTEGER := 6;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIclv is
    component L3_wlo_166_L2_WEIclv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIclv_rom_U :  component L3_wlo_166_L2_WEIclv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


