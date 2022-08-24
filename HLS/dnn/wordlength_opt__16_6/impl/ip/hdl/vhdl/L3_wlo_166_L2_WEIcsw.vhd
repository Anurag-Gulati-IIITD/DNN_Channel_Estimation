-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcsw_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcsw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "101100101", 1 => "110101000", 2 => "111100001", 3 => "000000110", 
    4 => "000010011", 5 => "000100010", 6 => "000111011", 7 => "001100101", 
    8 => "001010100", 9 => "000010010", 10 => "111000101", 11 to 12=> "110100011", 
    13 => "111001011", 14 => "111101111", 15 => "000011011", 16 => "000111011", 
    17 => "001001100", 18 => "001010100", 19 => "000110101", 20 => "000001000", 
    21 => "111010100", 22 => "110110001", 23 => "110100010", 24 => "110101110", 
    25 => "111010101", 26 => "000111101", 27 => "001010110", 28 => "001100000", 
    29 => "000111010", 30 => "000000110", 31 => "111010110", 32 => "110111011", 
    33 => "110111000", 34 => "111010011", 35 => "111011101", 36 => "000000010", 
    37 => "000101101", 38 => "001001010", 39 => "001011111", 40 => "001001000", 
    41 => "000000110", 42 => "111001001", 43 => "110100110", 44 => "111000010", 
    45 => "111010000", 46 => "111100111", 47 => "111101111", 48 => "111111110", 
    49 => "000101110", 50 => "010000100", 51 => "010011110", 52 => "000000111", 
    53 => "001000011", 54 => "001010010", 55 => "000111101", 56 => "000110000", 
    57 => "000110100", 58 => "000101001", 59 => "111110011", 60 => "110111001", 
    61 => "110011101", 62 => "110100110", 63 => "111100011", 64 => "000010101", 
    65 => "001001001", 66 => "001001000", 67 => "001001010", 68 => "000101110", 
    69 => "000100010", 70 => "111101101", 71 => "110110111", 72 => "110100010", 
    73 => "110100110", 74 => "111000110", 75 => "111111111", 76 => "000110100", 
    77 => "001011011", 78 => "001000010", 79 => "000001100", 80 => "111011011", 
    81 => "110110000", 82 => "110100011", 83 => "110101111", 84 => "111100010", 
    85 => "000001000", 86 => "000110101", 87 => "001000010", 88 => "001001011", 
    89 => "001000000", 90 => "000011011", 91 => "111110001", 92 => "110101111", 
    93 => "110001110", 94 => "110101101", 95 => "111101010", 96 => "000011110", 
    97 => "000101011", 98 => "000011010", 99 => "000101000", 100 => "001000011", 
    101 => "001100100", 102 => "000110001", 103 => "111010011" );

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

entity L3_wlo_166_L2_WEIcsw is
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

architecture arch of L3_wlo_166_L2_WEIcsw is
    component L3_wlo_166_L2_WEIcsw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcsw_rom_U :  component L3_wlo_166_L2_WEIcsw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


