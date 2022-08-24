-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcnw_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcnw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010010010", 1 => "001111011", 2 => "000010111", 3 => "111000010", 
    4 => "110100100", 5 => "111001111", 6 => "000001111", 7 => "000110101", 
    8 => "000011101", 9 => "111011111", 10 => "111101111", 11 => "111100111", 
    12 => "000000110", 13 => "001000010", 14 => "111100000", 15 => "110111111", 
    16 => "110111000", 17 => "111110011", 18 => "000110110", 19 => "001111000", 
    20 => "001100010", 21 => "000010101", 22 => "111100101", 23 => "111101011", 
    24 => "000101011", 25 => "001000001", 26 => "110111110", 27 => "110000110", 
    28 => "110111010", 29 => "000100111", 30 => "000101100", 31 => "000111111", 
    32 => "000000100", 33 => "111100101", 34 => "000001001", 35 => "000000011", 
    36 => "000101110", 37 => "111000100", 38 => "110011011", 39 => "111011011", 
    40 => "111101000", 41 => "111111001", 42 => "001010110", 43 => "000001111", 
    44 => "000100000", 45 => "111110110", 46 to 47=> "111011010", 48 => "111000000", 
    49 => "111100011", 50 => "111111100", 51 => "001001110", 52 => "000011000", 
    53 => "110101000", 54 => "110001101", 55 => "110100010", 56 => "000001100", 
    57 => "001000001", 58 => "001001110", 59 => "000010110", 60 => "111001010", 
    61 => "111010001", 62 => "000000110", 63 => "000101101", 64 => "111100000", 
    65 => "111101001", 66 => "110001011", 67 => "111101000", 68 => "000111101", 
    69 => "001000111", 70 => "001001101", 71 => "111110011", 72 => "111000111", 
    73 => "110101000", 74 => "000000010", 75 => "000001011", 76 => "000100011", 
    77 => "111111000", 78 => "111011001", 79 => "000001010", 80 => "001001010", 
    81 => "001110101", 82 => "000101101", 83 => "111111001", 84 => "111111000", 
    85 => "111100110", 86 => "000000100", 87 => "111001010", 88 => "111101100", 
    89 => "110101100", 90 => "111011011", 91 => "000011101", 92 => "001010010", 
    93 => "000101111", 94 => "000010101", 95 => "111111011", 96 => "111001110", 
    97 => "111010101", 98 => "111010011", 99 => "000000001", 100 => "111011011", 
    101 => "000110100", 102 => "001010001", 103 => "000001101" );

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

entity L3_wlo_218_L2_WEIcnw is
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

architecture arch of L3_wlo_218_L2_WEIcnw is
    component L3_wlo_218_L2_WEIcnw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcnw_rom_U :  component L3_wlo_218_L2_WEIcnw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


