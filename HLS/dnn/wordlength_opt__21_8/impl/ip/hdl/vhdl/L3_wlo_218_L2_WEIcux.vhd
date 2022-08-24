-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcux_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcux_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001001", 1 => "1100100", 2 => "1010000", 3 => "1011111", 
    4 => "1101010", 5 => "0001111", 6 => "0011101", 7 => "0011111", 
    8 => "0010100", 9 => "0001000", 10 => "1111100", 11 => "1110100", 
    12 => "1101011", 13 => "1111001", 14 => "1111110", 15 => "0000101", 
    16 => "1111100", 17 => "0000110", 18 => "0001011", 19 => "0001101", 
    20 => "0010100", 21 => "0001001", 22 => "0000101", 23 => "1110111", 
    24 => "1100101", 25 => "1110111", 26 => "1111000", 27 => "0000111", 
    28 => "0000110", 29 => "0001101", 30 => "0000101", 31 => "0001011", 
    32 => "1111000", 33 => "1111100", 34 => "1111101", 35 => "1111100", 
    36 => "1101110", 37 => "1101010", 38 => "1110100", 39 => "0000100", 
    40 => "0010010", 41 => "0011010", 42 => "0011101", 43 => "0001000", 
    44 => "1111011", 45 => "1101001", 46 => "1101000", 47 => "1100000", 
    48 => "1101010", 49 => "1111111", 50 => "0011010", 51 => "0100100", 
    52 => "1010110", 53 => "1001000", 54 => "1101100", 55 => "0011101", 
    56 => "0100011", 57 => "0011101", 58 => "0010111", 59 => "0000101", 
    60 => "1101011", 61 => "1100101", 62 => "1101101", 63 => "1011111", 
    64 => "1111111", 65 => "0000110", 66 => "0001100", 67 => "0010100", 
    68 => "0001001", 69 => "0000011", 70 to 71=> "1111111", 72 => "1110001", 
    73 => "1110011", 74 => "1101001", 75 => "1110011", 76 => "1110100", 
    77 => "0000010", 78 => "0001110", 79 => "0010101", 80 => "0001011", 
    81 => "1111110", 82 => "1101111", 83 => "1111111", 84 => "1110111", 
    85 => "1111110", 86 => "1101011", 87 => "1111101", 88 => "1111010", 
    89 => "1111110", 90 => "0010110", 91 => "0010001", 92 => "0010011", 
    93 => "0011011", 94 => "1111101", 95 => "1101001", 96 => "1100111", 
    97 => "1100011", 98 => "1110000", 99 => "0000111", 100 => "0010000", 
    101 => "0010101", 102 => "0101100", 103 => "0011101" );

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

entity L3_wlo_218_L2_WEIcux is
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

architecture arch of L3_wlo_218_L2_WEIcux is
    component L3_wlo_218_L2_WEIcux_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcux_rom_U :  component L3_wlo_218_L2_WEIcux_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


