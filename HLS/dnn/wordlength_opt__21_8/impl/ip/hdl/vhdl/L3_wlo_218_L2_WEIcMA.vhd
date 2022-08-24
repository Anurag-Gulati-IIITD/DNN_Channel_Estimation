-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcMA_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcMA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110110110", 1 => "101101110", 2 => "110010101", 3 => "111110111", 
    4 => "001011100", 5 => "001001110", 6 => "000001001", 7 => "111011010", 
    8 => "111001011", 9 => "111110100", 10 => "000111000", 11 => "001000110", 
    12 => "000100000", 13 => "000000001", 14 => "111001110", 15 => "000100011", 
    16 => "010000111", 17 => "000000110", 18 => "000100111", 19 => "110101000", 
    20 => "110110000", 21 => "000011100", 22 => "010001100", 23 => "000111101", 
    24 => "000000101", 25 => "110111101", 26 => "000000101", 27 => "000101010", 
    28 => "001000001", 29 => "000001010", 30 => "111000011", 31 => "111101000", 
    32 => "000000101", 33 => "000001111", 34 => "000010100", 35 => "111111101", 
    36 => "000000110", 37 => "000010111", 38 => "000100000", 39 => "111100111", 
    40 => "111100010", 41 => "110111000", 42 => "111110101", 43 => "000010010", 
    44 => "000110110", 45 => "000011100", 46 => "000000010", 47 => "000000101", 
    48 => "111001101", 49 => "111011100", 50 => "111111011", 51 => "000100010", 
    52 => "101110011", 53 => "000000010", 54 => "001001100", 55 => "001111101", 
    56 => "001010000", 57 => "000001100", 58 => "110101100", 59 => "111010010", 
    60 => "000011111", 61 => "001011000", 62 => "000111011", 63 => "000010100", 
    64 => "110110000", 65 => "111111110", 66 => "001011000", 67 => "000101110", 
    68 => "000000101", 69 => "111010110", 70 => "110000101", 71 => "111010101", 
    72 to 73=> "001001000", 74 => "000011110", 75 => "111001100", 76 => "110001001", 
    77 => "111110011", 78 => "001001100", 79 => "000101001", 80 => "111010101", 
    81 => "110110001", 82 => "111101010", 83 => "111110000", 84 => "001010000", 
    85 => "000001111", 86 => "000100000", 87 => "111110101", 88 => "000010100", 
    89 => "111110011", 90 => "111101111", 91 => "111011011", 92 => "111001100", 
    93 => "000001110", 94 => "000100101", 95 => "001000101", 96 => "000011001", 
    97 => "111110111", 98 => "110101110", 99 => "111010001", 100 => "111100111", 
    101 => "000110011", 102 => "001000000", 103 => "111111000" );

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

entity L3_wlo_218_L2_WEIcMA is
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

architecture arch of L3_wlo_218_L2_WEIcMA is
    component L3_wlo_218_L2_WEIcMA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcMA_rom_U :  component L3_wlo_218_L2_WEIcMA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


