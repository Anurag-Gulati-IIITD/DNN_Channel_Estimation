-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIczy_rom is 
    generic(
             DWIDTH     : integer := 7; 
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


architecture rtl of L3_wlo_218_L2_WEIczy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010000", 1 => "0010111", 2 => "0000101", 3 => "1111111", 
    4 => "1101111", 5 => "0010011", 6 => "0011100", 7 => "0011000", 
    8 => "1100110", 9 => "1011010", 10 => "1100111", 11 => "0000011", 
    12 => "0011011", 13 => "0110110", 14 => "0000110", 15 => "1101001", 
    16 => "1101000", 17 => "1101001", 18 => "0001111", 19 => "0010111", 
    20 => "1110110", 21 => "1111010", 22 => "1111011", 23 => "0000000", 
    24 => "0000001", 25 => "0010110", 26 => "1111100", 27 => "0000011", 
    28 => "1111110", 29 => "1111101", 30 => "1100111", 31 => "1110000", 
    32 => "1100110", 33 => "0000001", 34 => "0011011", 35 => "0001110", 
    36 => "1111000", 37 => "1101010", 38 => "1110111", 39 => "0010011", 
    40 => "0010111", 41 => "0000110", 42 => "1111000", 43 => "1011000", 
    44 => "1110101", 45 => "0000001", 46 => "0010110", 47 => "0000000", 
    48 => "1110100", 49 => "1111010", 50 => "0010110", 51 => "0011110", 
    52 => "0101000", 53 => "1101000", 54 => "1100101", 55 => "0000111", 
    56 => "0001011", 57 => "0010001", 58 => "1111111", 59 => "1101100", 
    60 => "1011010", 61 => "1101101", 62 => "0011101", 63 to 64=> "0001111", 
    65 => "1110000", 66 => "1100111", 67 => "1101010", 68 => "0001011", 
    69 => "0010110", 70 => "1110001", 71 => "1111010", 72 => "1101001", 
    73 => "1110001", 74 => "0001000", 75 => "0010110", 76 => "0000101", 
    77 => "1111011", 78 => "1111000", 79 => "0000111", 80 => "1111101", 
    81 => "1110011", 82 => "1100101", 83 => "0001100", 84 => "0011000", 
    85 => "0011101", 86 => "1110111", 87 => "1111000", 88 => "1101011", 
    89 => "1111101", 90 => "0010100", 91 => "0001001", 92 => "1111011", 
    93 => "0000011", 94 => "1111010", 95 => "0000100", 96 => "0010100", 
    97 => "0001100", 98 => "1110011", 99 => "1110010", 100 => "1110001", 
    101 => "1111101", 102 => "0100000", 103 => "0001100" );

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

entity L3_wlo_218_L2_WEIczy is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIczy is
    component L3_wlo_218_L2_WEIczy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIczy_rom_U :  component L3_wlo_218_L2_WEIczy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


