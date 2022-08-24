-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcxx_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcxx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010101100", 1 => "001110101", 2 => "111111101", 3 => "111000101", 
    4 => "111000000", 5 => "110011010", 6 => "111100101", 7 => "000100101", 
    8 => "001011110", 9 => "001101001", 10 => "000110110", 11 => "000101000", 
    12 => "111100100", 13 => "110111001", 14 => "111001100", 15 => "111010110", 
    16 => "000000101", 17 => "001010110", 18 => "001001011", 19 => "001001101", 
    20 => "000010110", 21 => "111000011", 22 => "111011110", 23 => "110010110", 
    24 => "110101011", 25 => "111100101", 26 => "001010011", 27 => "001001011", 
    28 => "000100111", 29 => "111100110", 30 => "110101010", 31 => "110110111", 
    32 => "111001100", 33 => "000101000", 34 => "001011111", 35 => "001101001", 
    36 => "001011001", 37 => "000101010", 38 => "111011000", 39 => "111100101", 
    40 => "110111110", 41 => "110110100", 42 => "110111111", 43 => "111111011", 
    44 => "000011100", 45 => "001001100", 46 => "001011110", 47 => "001001011", 
    48 => "000000111", 49 => "110100001", 50 => "110000110", 51 => "110000000", 
    52 => "000001101", 53 => "110101001", 54 => "101100001", 55 => "110110101", 
    56 => "110101111", 57 => "111110001", 58 to 59=> "001001111", 60 => "000110001", 
    61 => "000010111", 62 => "111101101", 63 => "110010110", 64 => "111000111", 
    65 => "111111101", 66 => "000001010", 67 => "001000110", 68 => "000110000", 
    69 => "001101001", 70 => "001000101", 71 => "111110101", 72 => "110111111", 
    73 => "111101001", 74 => "111001011", 75 => "000001001", 76 => "000001010", 
    77 => "001110001", 78 => "111110101", 79 => "111001111", 80 => "110011111", 
    81 => "110001000", 82 => "111011110", 83 => "111110000", 84 => "001000100", 
    85 => "001101011", 86 => "001011001", 87 => "000100011", 88 => "111001000", 
    89 => "110001010", 90 => "110111101", 91 => "111010001", 92 => "111011100", 
    93 => "111111000", 94 => "000100000", 95 => "001011100", 96 => "010000001", 
    97 => "000110001", 98 => "111000101", 99 => "110100010", 100 => "110010111", 
    101 => "110001001", 102 => "000000011", 103 => "010000110" );

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

entity L3_wlo_166_L2_WEIcxx is
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

architecture arch of L3_wlo_166_L2_WEIcxx is
    component L3_wlo_166_L2_WEIcxx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcxx_rom_U :  component L3_wlo_166_L2_WEIcxx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


