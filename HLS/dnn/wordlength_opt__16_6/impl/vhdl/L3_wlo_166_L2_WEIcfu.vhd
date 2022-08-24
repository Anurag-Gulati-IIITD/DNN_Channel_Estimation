-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcfu_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcfu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100000", 1 => "11100010", 2 => "11001000", 3 => "11101101", 
    4 => "00010011", 5 => "00001111", 6 => "11010010", 7 => "11011001", 
    8 => "11110100", 9 => "00101110", 10 => "01000000", 11 => "00001101", 
    12 => "11011100", 13 => "11001101", 14 => "00001000", 15 => "01000111", 
    16 => "00101011", 17 => "11010111", 18 => "10100000", 19 => "10101111", 
    20 => "00010110", 21 => "01011111", 22 => "01000101", 23 => "11110101", 
    24 => "10110001", 25 => "10111001", 26 => "00110111", 27 => "00110010", 
    28 => "11110010", 29 => "11000100", 30 => "11100101", 31 => "00010100", 
    32 => "00110010", 33 => "00100001", 34 => "11111110", 35 => "11101101", 
    36 => "11111011", 37 => "00011011", 38 => "00010100", 39 => "11101000", 
    40 => "11001011", 41 => "11101011", 42 => "00011000", 43 => "00110000", 
    44 => "00100011", 45 => "11011000", 46 => "11000001", 47 => "11101100", 
    48 => "01001100", 49 => "01011000", 50 => "00000111", 51 => "10000011", 
    52 => "10011101", 53 => "10100101", 54 => "00000001", 55 => "00100111", 
    56 => "00001011", 57 => "11100011", 58 => "11100010", 59 => "00001101", 
    60 => "01000011", 61 => "00100101", 62 => "11100101", 63 => "11010101", 
    64 => "11011010", 65 => "00010111", 66 => "00101100", 67 => "00001000", 
    68 => "10111011", 69 => "11001001", 70 => "11110011", 71 => "01000100", 
    72 => "01100000", 73 => "00011010", 74 => "10111111", 75 => "10010001", 
    76 => "11010110", 77 => "00100100", 78 => "00100101", 79 => "11001100", 
    80 => "10110100", 81 => "11101010", 82 => "00011111", 83 => "01000001", 
    84 => "00011110", 85 => "11011100", 86 => "11011111", 87 => "00001111", 
    88 => "00011011", 89 => "00000010", 90 => "11001000", 91 => "11001110", 
    92 => "00000100", 93 => "00100000", 94 => "00110111", 95 => "00000101", 
    96 => "11010101", 97 => "11000110", 98 => "00001011", 99 => "01001000", 
    100 => "00100011", 101 => "11011100", 102 => "10000010", 103 => "10100110" );

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

entity L3_wlo_166_L2_WEIcfu is
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

architecture arch of L3_wlo_166_L2_WEIcfu is
    component L3_wlo_166_L2_WEIcfu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcfu_rom_U :  component L3_wlo_166_L2_WEIcfu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


