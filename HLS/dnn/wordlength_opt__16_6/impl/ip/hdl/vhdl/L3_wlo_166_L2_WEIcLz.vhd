-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcLz_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcLz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01001100", 1 => "00010100", 2 => "11000100", 3 => "10010110", 
    4 => "10100011", 5 => "11011110", 6 => "00010101", 7 => "01011100", 
    8 => "00111101", 9 => "00101001", 10 => "00010010", 11 => "11110110", 
    12 => "11000010", 13 => "10100000", 14 => "10111000", 15 => "00101001", 
    16 => "01011111", 17 => "01011101", 18 => "01001000", 19 => "11111101", 
    20 => "10111000", 21 => "10011100", 22 => "10110111", 23 => "00001101", 
    24 => "01010001", 25 => "01000000", 26 => "11110110", 27 => "11100010", 
    28 => "11101000", 29 => "11011101", 30 => "11101100", 31 => "11110010", 
    32 => "00010101", 33 => "01000110", 34 => "00111001", 35 => "00101000", 
    36 => "00000001", 37 => "11000110", 38 => "11001011", 39 => "11010101", 
    40 => "11111001", 41 => "00011000", 42 => "00100111", 43 => "00101010", 
    44 => "01000001", 45 => "01000110", 46 => "00001001", 47 => "11100101", 
    48 => "10000111", 49 => "10101001", 50 => "11000001", 51 => "00111001", 
    52 => "10111100", 53 => "10010101", 54 => "11001000", 55 => "11010100", 
    56 => "01000011", 57 => "01010110", 58 => "01010010", 59 => "00100010", 
    60 => "11110100", 61 => "11001100", 62 => "11000100", 63 => "11001011", 
    64 => "11000111", 65 => "00011100", 66 => "00110111", 67 => "01010100", 
    68 => "01001011", 69 => "00011000", 70 => "10100110", 71 => "10011001", 
    72 => "10011101", 73 => "11101011", 74 => "01011000", 75 => "01000100", 
    76 => "00010101", 77 => "11111011", 78 => "11001001", 79 => "11100001", 
    80 => "11100110", 81 => "11111011", 82 => "00011111", 83 => "00101101", 
    84 => "00110001", 85 => "00011011", 86 => "11100111", 87 => "10111010", 
    88 => "11001000", 89 => "11001001", 90 => "11100110", 91 => "00001100", 
    92 => "00101010", 93 => "00100010", 94 => "00011010", 95 => "00101100", 
    96 => "11110111", 97 => "11101100", 98 => "10101101", 99 => "10000010", 
    100 => "11010001", 101 => "01000101", 102 => "01010110", 103 => "01000001" );

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

entity L3_wlo_166_L2_WEIcLz is
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

architecture arch of L3_wlo_166_L2_WEIcLz is
    component L3_wlo_166_L2_WEIcLz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcLz_rom_U :  component L3_wlo_166_L2_WEIcLz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


