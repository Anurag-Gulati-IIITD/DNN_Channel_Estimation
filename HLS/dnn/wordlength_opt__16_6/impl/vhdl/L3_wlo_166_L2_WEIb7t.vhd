-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb7t_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb7t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000001", 1 => "11010100", 2 => "00010000", 3 => "00111001", 
    4 => "01000001", 5 => "00000001", 6 => "11101001", 7 => "11011101", 
    8 => "00000101", 9 => "00100110", 10 => "00011101", 11 => "11101110", 
    12 => "11000110", 13 => "11011101", 14 => "00010010", 15 => "00111011", 
    16 => "00110010", 17 => "00010010", 18 => "11101111", 19 => "11100100", 
    20 => "00000000", 21 => "00010001", 22 => "00001001", 23 => "11101100", 
    24 => "11100100", 25 => "11111011", 26 => "00110110", 27 => "00100011", 
    28 => "11111001", 29 => "11100011", 30 => "11011101", 31 => "11111111", 
    32 => "00000100", 33 => "11110111", 34 => "11101011", 35 => "11111111", 
    36 => "00011001", 37 => "00101101", 38 => "00011110", 39 => "11110110", 
    40 to 41=> "11010101", 42 => "11111111", 43 => "00011000", 44 => "00001011", 
    45 => "11111011", 46 => "11110010", 47 => "00001100", 48 => "00010101", 
    49 => "00011111", 50 => "00000001", 51 => "11100101", 52 => "11110101", 
    53 => "00111111", 54 => "01001001", 55 => "00011001", 56 => "11100100", 
    57 => "11001000", 58 => "11011110", 59 => "00010111", 60 => "00100011", 
    61 => "00000101", 62 => "11011101", 63 => "11010010", 64 => "11111010", 
    65 => "00110001", 66 => "01000011", 67 => "00011010", 68 => "11100101", 
    69 => "11001000", 70 => "11100000", 71 => "00001010", 72 => "00001111", 
    73 => "00001100", 74 => "11110101", 75 => "11110001", 76 => "00001111", 
    77 => "00101111", 78 => "00000101", 79 => "11100011", 80 => "11010100", 
    81 => "11100110", 82 => "00001100", 83 to 84=> "00001001", 85 => "11111110", 
    86 => "00001001", 87 to 88=> "00011000", 89 => "11111011", 90 => "11100100", 
    91 => "11001101", 92 => "11101011", 93 => "00010111", 94 => "00011101", 
    95 => "00010011", 96 => "11110100", 97 => "11111010", 98 => "11111100", 
    99 => "00010010", 100 => "00001100", 101 => "11100101", 102 => "11100001", 
    103 => "11010111" );

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

entity L3_wlo_166_L2_WEIb7t is
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

architecture arch of L3_wlo_166_L2_WEIb7t is
    component L3_wlo_166_L2_WEIb7t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb7t_rom_U :  component L3_wlo_166_L2_WEIb7t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


