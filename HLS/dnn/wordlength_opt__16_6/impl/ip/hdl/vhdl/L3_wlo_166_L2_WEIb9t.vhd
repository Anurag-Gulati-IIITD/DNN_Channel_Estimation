-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb9t_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb9t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111100", 1 => "00100000", 2 => "00001001", 3 => "11011011", 
    4 => "11111101", 5 => "00010011", 6 => "01100010", 7 => "00111010", 
    8 => "11011101", 9 => "10111001", 10 => "11001100", 11 => "00001100", 
    12 => "01011110", 13 => "01000100", 14 => "00011010", 15 => "10111111", 
    16 => "10110010", 17 => "00000000", 18 => "01000111", 19 => "01010100", 
    20 => "00000100", 21 => "11000100", 22 => "10110000", 23 => "11010100", 
    24 => "00110010", 25 => "01010110", 26 => "11111100", 27 => "11001101", 
    28 => "11000001", 29 => "11010100", 30 => "00000011", 31 => "00101000", 
    32 => "00011010", 33 => "00011101", 34 => "00110000", 35 => "00011110", 
    36 => "11011011", 37 => "10111111", 38 => "10100110", 39 => "11100010", 
    40 => "00100100", 41 to 42=> "01010010", 43 => "00010100", 44 => "11000101", 
    45 => "10101110", 46 => "11001000", 47 => "11110011", 48 => "00010100", 
    49 => "00001111", 50 => "00100010", 51 => "00011101", 52 => "11101100", 
    53 => "11101010", 54 => "11110000", 55 => "00001111", 56 => "00100000", 
    57 => "00101111", 58 => "11101101", 59 => "11001010", 60 => "10111010", 
    61 => "11100011", 62 => "00011111", 63 => "01011000", 64 => "00101011", 
    65 => "11011001", 66 => "10111011", 67 => "11000110", 68 => "00001110", 
    69 => "01001100", 70 => "00111110", 71 => "11011101", 72 => "10100001", 
    73 => "11010001", 74 => "00011100", 75 => "01010101", 76 => "01001100", 
    77 => "00000011", 78 => "11001000", 79 => "11101101", 80 => "00000000", 
    81 => "00100000", 82 => "00101001", 83 => "00010001", 84 => "00100010", 
    85 => "00001000", 86 => "11100100", 87 => "11011001", 88 => "10111010", 
    89 => "11110101", 90 => "00011110", 91 => "01010001", 92 => "01011100", 
    93 => "00010011", 94 => "11000001", 95 => "10110111", 96 => "11000100", 
    97 => "11111000", 98 => "00001110", 99 => "00110001", 100 => "00100110", 
    101 to 102=> "00001110", 103 => "11001001" );

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

entity L3_wlo_166_L2_WEIb9t is
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

architecture arch of L3_wlo_166_L2_WEIb9t is
    component L3_wlo_166_L2_WEIb9t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb9t_rom_U :  component L3_wlo_166_L2_WEIb9t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


