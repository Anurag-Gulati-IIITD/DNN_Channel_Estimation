-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb8t_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb8t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011010", 1 => "00100010", 2 => "00001000", 3 => "00010000", 
    4 => "11111010", 5 => "00001011", 6 => "00101001", 7 => "00110011", 
    8 => "00000010", 9 => "11111010", 10 => "11010101", 11 => "11001001", 
    12 => "11011111", 13 => "11110010", 14 => "00101101", 15 => "00011000", 
    16 => "00001001", 17 => "00000101", 18 => "11011100", 19 => "00101011", 
    20 => "00100101", 21 => "00000010", 22 => "10110110", 23 => "10111001", 
    24 => "11011110", 25 => "00000111", 26 => "01010010", 27 => "00101110", 
    28 => "00001000", 29 => "11101000", 30 => "11001110", 31 => "11011001", 
    32 => "11000101", 33 => "11110100", 34 => "11101111", 35 => "00011001", 
    36 => "00101011", 37 => "00100000", 38 => "11111100", 39 => "11100111", 
    40 => "11011001", 41 => "00010111", 42 => "00011011", 43 => "00100000", 
    44 => "00000011", 45 => "11110100", 46 => "11100011", 47 => "11001011", 
    48 => "11101010", 49 => "00011100", 50 => "00111000", 51 => "01010011", 
    52 => "00001110", 53 => "01000010", 54 => "00010001", 55 => "11101001", 
    56 => "11111000", 57 => "11111111", 58 => "00011000", 59 => "11111110", 
    60 => "11010110", 61 => "10110101", 62 => "11001010", 63 => "11101001", 
    64 => "01000110", 65 => "00110001", 66 => "00100010", 67 => "11110101", 
    68 => "11101110", 69 => "11110000", 70 => "00011101", 71 => "00001100", 
    72 => "11110001", 73 => "11010001", 74 => "11111100", 75 => "00010010", 
    76 => "01000000", 77 => "01010001", 78 => "00001010", 79 => "11110000", 
    80 => "10111101", 81 => "11101010", 82 => "11011111", 83 => "00000001", 
    84 => "00001101", 85 => "00100011", 86 => "00010000", 87 => "00011010", 
    88 => "00000000", 89 => "11110011", 90 => "11101001", 91 => "11101111", 
    92 => "00010010", 93 => "00001110", 94 => "00000011", 95 => "11010111", 
    96 => "11000101", 97 => "11100101", 98 => "00000011", 99 => "00010110", 
    100 => "00111110", 101 => "00110010", 102 => "00010010", 103 => "11001010" );

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

entity L3_wlo_166_L2_WEIb8t is
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

architecture arch of L3_wlo_166_L2_WEIb8t is
    component L3_wlo_166_L2_WEIb8t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb8t_rom_U :  component L3_wlo_166_L2_WEIb8t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


