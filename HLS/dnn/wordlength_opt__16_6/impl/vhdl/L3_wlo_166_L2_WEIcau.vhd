-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcau_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcau_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100100", 1 => "01100000", 2 => "01000010", 3 => "11011110", 
    4 => "10011100", 5 => "10101011", 6 => "11110110", 7 => "01001111", 
    8 => "01100100", 9 => "00010100", 10 => "11000100", 11 => "10100100", 
    12 => "11010011", 13 => "00101101", 14 => "01000010", 15 => "00101000", 
    16 => "11010111", 17 => "11001001", 18 => "11110010", 19 => "00011001", 
    20 => "01001101", 21 => "00010010", 22 => "11001001", 23 => "10110000", 
    24 => "11011010", 25 => "00110010", 26 => "01000110", 27 => "00000010", 
    28 => "10110001", 29 => "10110000", 30 => "11011101", 31 => "00101000", 
    32 => "01100000", 33 => "01001010", 34 => "11111110", 35 => "11000101", 
    36 => "10100010", 37 => "11001011", 38 => "00101111", 39 => "01011111", 
    40 => "01010010", 41 => "00001001", 42 => "10101110", 43 => "10011101", 
    44 => "11011100", 45 => "00110011", 46 => "01010111", 47 => "00110000", 
    48 => "11101100", 49 => "11001001", 50 => "11011000", 51 => "00000110", 
    52 => "01011110", 53 => "00011001", 54 => "10110010", 55 => "10010111", 
    56 => "11011111", 57 => "00111001", 58 => "01101010", 59 => "00111000", 
    60 => "11100100", 61 => "10011001", 62 => "10111110", 63 => "00010101", 
    64 => "01001011", 65 => "00111100", 66 => "11110111", 67 => "11001100", 
    68 => "11001011", 69 => "00001111", 70 => "00110010", 71 => "00110101", 
    72 => "11110101", 73 => "11000101", 74 => "11000111", 75 => "11111100", 
    76 => "01001111", 77 => "01010000", 78 => "11001000", 79 => "10010101", 
    80 => "11000101", 81 => "00010001", 82 => "01010000", 83 => "01100000", 
    84 => "00100001", 85 => "10111110", 86 => "10100100", 87 => "11000100", 
    88 => "00001110", 89 => "00111101", 90 => "01011011", 91 => "00010100", 
    92 => "11001000", 93 => "10011000", 94 => "11001000", 95 => "00001101", 
    96 => "01011010", 97 => "01000000", 98 => "00001000", 99 => "11001111", 
    100 => "10110110", 101 => "11101100", 102 => "00101100", 103 => "00110111" );

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

entity L3_wlo_166_L2_WEIcau is
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

architecture arch of L3_wlo_166_L2_WEIcau is
    component L3_wlo_166_L2_WEIcau_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcau_rom_U :  component L3_wlo_166_L2_WEIcau_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


