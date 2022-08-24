-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcOA_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcOA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10110011", 1 => "11101011", 2 => "00111011", 3 => "01101001", 
    4 => "01011100", 5 => "00100001", 6 => "11101010", 7 => "10100011", 
    8 => "11000010", 9 => "11010110", 10 => "11101101", 11 => "00001001", 
    12 => "00111101", 13 => "01011111", 14 => "01000111", 15 => "11010110", 
    16 => "10100000", 17 => "10100011", 18 => "10110111", 19 => "00000010", 
    20 => "01000110", 21 => "01100011", 22 => "01001000", 23 => "11110010", 
    24 => "10101110", 25 => "10111111", 26 => "00001001", 27 => "00011101", 
    28 => "00010111", 29 => "00100010", 30 => "00010011", 31 => "00001101", 
    32 => "11101001", 33 => "10111001", 34 => "11000110", 35 => "11010111", 
    36 => "11111110", 37 => "00111001", 38 => "00110100", 39 => "00101010", 
    40 => "00000110", 41 => "11100111", 42 => "11011000", 43 => "11010101", 
    44 => "10111110", 45 => "10111001", 46 => "11110110", 47 => "00011010", 
    48 => "01110111", 49 => "01010101", 50 => "00111110", 51 => "11000110", 
    52 => "01000010", 53 => "01101010", 54 => "00110111", 55 => "00101010", 
    56 => "10111100", 57 => "10101001", 58 => "10101110", 59 => "11011110", 
    60 => "00001011", 61 => "00110011", 62 => "00111011", 63 => "00110011", 
    64 => "00111000", 65 => "11100011", 66 => "11001000", 67 => "10101011", 
    68 => "10110100", 69 => "11100111", 70 => "01011000", 71 => "01100101", 
    72 => "01100001", 73 => "00010100", 74 => "10100111", 75 => "10111100", 
    76 => "11101010", 77 => "00000100", 78 => "00110110", 79 => "00011110", 
    80 => "00011001", 81 => "00000100", 82 => "11100000", 83 => "11010010", 
    84 => "11001110", 85 => "11100100", 86 => "00011000", 87 => "01000100", 
    88 => "00110111", 89 => "00110110", 90 => "00011001", 91 => "11110011", 
    92 => "11010101", 93 => "11011101", 94 => "11100101", 95 => "11010011", 
    96 => "00001000", 97 => "00010011", 98 => "01010001", 99 => "01111101", 
    100 => "00101110", 101 => "10111010", 102 => "10101001", 103 => "10111110" );

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

entity L3_wlo_166_L2_WEIcOA is
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

architecture arch of L3_wlo_166_L2_WEIcOA is
    component L3_wlo_166_L2_WEIcOA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcOA_rom_U :  component L3_wlo_166_L2_WEIcOA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


