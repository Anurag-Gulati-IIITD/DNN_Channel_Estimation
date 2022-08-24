-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIctx_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIctx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010100", 1 => "010101100", 2 => "010111110", 3 => "000111101", 
    4 => "110110001", 5 => "101101111", 6 => "110110101", 7 => "000011011", 
    8 => "001010000", 9 => "001000111", 10 => "111111000", 11 => "110110000", 
    12 => "110111111", 13 => "111101011", 14 => "001010001", 15 => "001101111", 
    16 => "000111100", 17 => "111011011", 18 => "110001100", 19 => "110010010", 
    20 => "111001000", 21 => "000110100", 22 => "001111101", 23 => "001101011", 
    24 => "000100101", 25 => "110110110", 26 => "110010110", 27 => "111110110", 
    28 => "001001001", 29 => "001011001", 30 => "001001101", 31 => "000000100", 
    32 => "111010000", 33 => "111001011", 34 => "111011100", 35 to 36=> "111101100", 
    37 => "111111110", 38 => "000011010", 39 => "001000001", 40 => "001000010", 
    41 => "000011100", 42 => "111010110", 43 => "110101110", 44 => "110100111", 
    45 => "111100101", 46 => "000010101", 47 => "000111000", 48 => "000111100", 
    49 => "000101010", 50 => "000010100", 51 => "000000001", 52 => "010111111", 
    53 => "001100000", 54 => "111001100", 55 => "101101000", 56 => "101110110", 
    57 => "111101011", 58 => "001001100", 59 => "001101000", 60 => "000100100", 
    61 => "111000100", 62 => "110100010", 63 => "111011110", 64 => "000101111", 
    65 => "001100001", 66 => "001000111", 67 => "111100011", 68 => "110011011", 
    69 => "110010010", 70 => "111010010", 71 => "000101110", 72 => "001101101", 
    73 => "001110111", 74 => "000101111", 75 => "111000001", 76 => "101110010", 
    77 => "110000100", 78 => "001001111", 79 => "010000011", 80 => "001010010", 
    81 => "000000000", 82 => "111000011", 83 => "110101101", 84 => "111001010", 
    85 => "111111010", 86 => "000001000", 87 => "000011111", 88 => "000011110", 
    89 => "000110111", 90 => "000100111", 91 => "000001101", 92 => "111100100", 
    93 => "110101101", 94 => "110101010", 95 => "111110000", 96 => "000101100", 
    97 => "001010010", 98 => "001001011", 99 => "000011101", 100 => "111111010", 
    101 => "111100001", 102 => "111001011", 103 => "110100110" );

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

entity L3_wlo_166_L2_WEIctx is
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

architecture arch of L3_wlo_166_L2_WEIctx is
    component L3_wlo_166_L2_WEIctx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIctx_rom_U :  component L3_wlo_166_L2_WEIctx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


