-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcyx_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcyx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100100", 1 => "110101010", 2 => "110111101", 3 => "111000011", 
    4 => "000010010", 5 => "111111010", 6 => "000011111", 7 => "111110110", 
    8 => "000011100", 9 => "000101001", 10 => "000010100", 11 to 12=> "111100011", 
    13 => "110011100", 14 => "111101010", 15 => "000010010", 16 => "000110100", 
    17 => "000110000", 18 => "111100111", 19 to 20=> "111010111", 21 => "111111010", 
    22 => "000011110", 23 => "000001111", 24 => "000010001", 25 => "111010011", 
    26 => "000001001", 27 => "000010011", 28 => "000000111", 29 => "111011110", 
    30 => "111110111", 31 => "000000000", 32 => "001000110", 33 => "000110110", 
    34 => "000001010", 35 => "111010100", 36 => "110111101", 37 => "111100000", 
    38 => "000000101", 39 => "000011000", 40 => "000001010", 41 => "111101111", 
    42 => "111001101", 43 => "000100011", 44 => "000101000", 45 => "001010110", 
    46 => "000001111", 47 => "111001100", 48 => "110011101", 49 => "110001100", 
    50 => "111000000", 51 => "000110001", 52 => "101101101", 53 => "111100001", 
    54 => "000011001", 55 => "000101001", 56 => "000110000", 57 => "000011100", 
    58 => "111110010", 59 => "000000010", 60 => "000010100", 61 => "111111110", 
    62 => "111010000", 63 => "111101110", 64 => "111100110", 65 => "000010001", 
    66 => "000111000", 67 => "000011111", 68 => "111111101", 69 => "111010000", 
    70 => "111111001", 71 => "111111011", 72 => "000110001", 73 => "000111100", 
    74 => "000010110", 75 => "111101010", 76 to 77=> "111100011", 78 => "000011100", 
    79 => "111111010", 80 => "111101101", 81 => "111111101", 82 => "000110111", 
    83 => "000011010", 84 => "000010000", 85 => "111010001", 86 => "111010100", 
    87 => "111000110", 88 => "111111100", 89 => "001000001", 90 => "000101111", 
    91 => "000011110", 92 => "111110100", 93 => "111000101", 94 => "111111011", 
    95 => "000101011", 96 => "000100001", 97 => "111100110", 98 => "111001011", 
    99 => "110110111", 100 => "111111011", 101 => "001000111", 102 => "001100011", 
    103 => "001010100" );

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

entity L3_wlo_166_L2_WEIcyx is
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

architecture arch of L3_wlo_166_L2_WEIcyx is
    component L3_wlo_166_L2_WEIcyx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcyx_rom_U :  component L3_wlo_166_L2_WEIcyx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


