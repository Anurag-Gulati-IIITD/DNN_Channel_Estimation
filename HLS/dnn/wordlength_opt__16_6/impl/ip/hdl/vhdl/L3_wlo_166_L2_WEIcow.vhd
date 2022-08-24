-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcow_rom is 
    generic(
             DWIDTH     : integer := 8; 
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


architecture rtl of L3_wlo_166_L2_WEIcow_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000011", 1 => "11100000", 2 => "11110110", 3 => "00100011", 
    4 => "00000010", 5 => "11101101", 6 => "10011111", 7 => "11000111", 
    8 => "00100001", 9 => "01000100", 10 => "00110010", 11 => "11110011", 
    12 => "10100011", 13 => "10111101", 14 => "11100101", 15 => "00111110", 
    16 => "01001011", 17 => "11111111", 18 => "10111001", 19 => "10101101", 
    20 => "11111011", 21 => "00111001", 22 => "01001101", 23 => "00101010", 
    24 => "11001110", 25 => "10101011", 26 => "00000011", 27 => "00110001", 
    28 => "00111101", 29 => "00101010", 30 => "11111100", 31 => "11011000", 
    32 => "11100110", 33 => "11100011", 34 => "11010000", 35 => "11100010", 
    36 => "00100011", 37 => "00111110", 38 => "01010111", 39 => "00011100", 
    40 => "11011100", 41 to 42=> "10101111", 43 => "11101011", 44 => "00111000", 
    45 => "01001111", 46 => "00110110", 47 => "00001100", 48 => "11101011", 
    49 => "11110000", 50 => "11011110", 51 => "11100011", 52 => "00010010", 
    53 => "00010100", 54 => "00001111", 55 => "11110000", 56 => "11100000", 
    57 => "11010001", 58 => "00010010", 59 => "00110100", 60 => "01000011", 
    61 => "00011100", 62 => "11100001", 63 => "10101001", 64 => "11010101", 
    65 => "00100101", 66 => "01000010", 67 => "00111000", 68 => "11110010", 
    69 => "10110101", 70 => "11000011", 71 => "00100010", 72 => "01011100", 
    73 => "00101101", 74 => "11100100", 75 => "10101100", 76 => "10110101", 
    77 => "11111100", 78 => "00110101", 79 => "00010001", 80 => "11111111", 
    81 => "11100000", 82 => "11010111", 83 => "11101111", 84 => "11011101", 
    85 => "11110111", 86 => "00011011", 87 => "00100101", 88 => "01000100", 
    89 => "00001001", 90 => "11100001", 91 => "10110000", 92 => "10100101", 
    93 => "11101101", 94 => "00111100", 95 => "01000111", 96 => "00111001", 
    97 => "00000111", 98 => "11110010", 99 => "11001111", 100 => "11011010", 
    101 => "11110001", 102 => "11110010", 103 => "00110101" );

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

entity L3_wlo_166_L2_WEIcow is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIcow is
    component L3_wlo_166_L2_WEIcow_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcow_rom_U :  component L3_wlo_166_L2_WEIcow_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


