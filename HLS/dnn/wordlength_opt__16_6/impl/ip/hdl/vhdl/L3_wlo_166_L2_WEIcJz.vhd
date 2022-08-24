-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcJz_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcJz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000100111", 1 => "111000101", 2 => "110010101", 3 => "110011011", 
    4 => "111100100", 5 => "001000001", 6 => "001111100", 7 => "001100101", 
    8 => "000001011", 9 => "110101100", 10 => "101111001", 11 => "110011000", 
    12 => "111111111", 13 => "001001101", 14 => "001110011", 15 => "001000110", 
    16 => "111110110", 17 => "111000000", 18 => "111000001", 19 => "111101110", 
    20 => "111110111", 21 => "111111000", 22 => "111111111", 23 => "000010001", 
    24 => "000111100", 25 => "000111001", 26 => "110101000", 27 => "110010010", 
    28 => "111001111", 29 => "000111110", 30 => "010011110", 31 => "001101111", 
    32 => "111101100", 33 => "101110000", 34 => "101010011", 35 => "110110110", 
    36 => "001000011", 37 => "010010110", 38 => "010000001", 39 => "000100110", 
    40 => "111001010", 41 => "110100100", 42 => "110101010", 43 => "111010001", 
    44 => "111101010", 45 => "000100010", 46 => "001001000", 47 => "001100111", 
    48 => "001001100", 49 => "111110010", 50 => "110000100", 51 => "101101110", 
    52 => "110001100", 53 => "110010001", 54 => "111100101", 55 => "001000101", 
    56 => "001110011", 57 => "001100001", 58 => "000001101", 59 => "110110011", 
    60 => "101111111", 61 => "110010011", 62 => "111110010", 63 => "001010100", 
    64 => "010000001", 65 => "001011000", 66 => "111111100", 67 to 68=> "110101001", 
    69 => "111010100", 70 => "000001100", 71 => "000100001", 72 => "000010001", 
    73 => "000010000", 74 => "000011110", 75 => "000100111", 76 => "111111100", 
    77 => "111000110", 78 => "110111101", 79 => "000100101", 80 => "001111001", 
    81 => "001111000", 82 => "000011000", 83 => "110001111", 84 => "101001100", 
    85 => "110011111", 86 => "000101001", 87 => "010100001", 88 => "010011100", 
    89 => "000111000", 90 => "110111000", 91 => "101111100", 92 => "110011101", 
    93 => "111011101", 94 => "000010110", 95 => "001000001", 96 => "001001100", 
    97 => "001001101", 98 => "000111101", 99 => "111110001", 100 => "110100011", 
    101 => "101111001", 102 => "110100110", 103 => "000010111" );

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

entity L3_wlo_166_L2_WEIcJz is
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

architecture arch of L3_wlo_166_L2_WEIcJz is
    component L3_wlo_166_L2_WEIcJz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcJz_rom_U :  component L3_wlo_166_L2_WEIcJz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


