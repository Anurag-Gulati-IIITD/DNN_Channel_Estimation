-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb5t_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb5t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001000101", 1 => "110100010", 2 => "110101110", 3 => "110001111", 
    4 => "101100101", 5 => "001001110", 6 => "001101011", 7 => "001101000", 
    8 => "010001101", 9 => "111111101", 10 => "101101011", 11 => "110011001", 
    12 => "110101110", 13 => "111100110", 14 => "000100000", 15 => "000010100", 
    16 => "001010100", 17 => "001011000", 18 => "001011011", 19 => "111010100", 
    20 => "110000000", 21 => "110000100", 22 => "000000101", 23 => "111011000", 
    24 => "001110111", 25 => "001100110", 26 => "000101000", 27 => "110110111", 
    28 => "110101010", 29 => "111001100", 30 => "111100100", 31 => "111110111", 
    32 => "001000010", 33 => "000111111", 34 => "000110101", 35 => "010010111", 
    36 => "110010011", 37 => "110100011", 38 => "110000000", 39 => "101100101", 
    40 => "000011011", 41 => "001101111", 42 => "001111110", 43 => "001101100", 
    44 => "000110011", 45 => "110111100", 46 => "110010100", 47 => "110100010", 
    48 => "111000000", 49 => "111110100", 50 => "001000010", 51 => "001011011", 
    52 => "110110001", 53 => "110010011", 54 => "101000101", 55 => "001101110", 
    56 => "001001011", 57 => "001100111", 58 => "010001101", 59 => "110001110", 
    60 => "110011010", 61 => "110100100", 62 => "110101111", 63 => "000001100", 
    64 => "001010000", 65 => "001001010", 66 => "001010111", 67 => "001000001", 
    68 => "000101001", 69 => "111111010", 70 => "110111000", 71 => "110011111", 
    72 => "111110100", 73 => "001000111", 74 => "001010010", 75 => "001110110", 
    76 => "001010010", 77 => "000010001", 78 => "110001011", 79 => "111010000", 
    80 => "111011010", 81 => "111111011", 82 => "001000011", 83 => "001000001", 
    84 => "000100010", 85 => "001100010", 86 => "111011100", 87 => "111001110", 
    88 => "110011110", 89 => "101001001", 90 => "001001011", 91 => "010010000", 
    92 => "010011101", 93 => "001110000", 94 => "000011110", 95 => "110101000", 
    96 => "110011000", 97 => "110010000", 98 => "111000000", 99 => "001000111", 
    100 => "001011100", 101 => "000110100", 102 => "010000001", 103 => "010000010" );

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

entity L3_wlo_218_L2_WEIb5t is
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

architecture arch of L3_wlo_218_L2_WEIb5t is
    component L3_wlo_218_L2_WEIb5t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb5t_rom_U :  component L3_wlo_218_L2_WEIb5t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


