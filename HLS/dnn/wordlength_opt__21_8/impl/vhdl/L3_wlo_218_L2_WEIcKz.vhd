-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcKz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcKz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00110010", 1 => "11110000", 2 => "00011000", 3 => "00110100", 
    4 => "00000110", 5 => "11011000", 6 => "00010010", 7 => "11010011", 
    8 => "11101110", 9 => "00001001", 10 => "00011100", 11 => "00011111", 
    12 => "00111001", 13 => "00110110", 14 => "11100100", 15 => "10010111", 
    16 => "11100111", 17 => "11111001", 18 => "00010111", 19 => "00101001", 
    20 => "11001010", 21 => "11101011", 22 => "00110100", 23 => "00100011", 
    24 => "11111011", 25 => "00010111", 26 => "10101110", 27 => "01001100", 
    28 => "11111100", 29 => "00110100", 30 => "00100101", 31 => "10111000", 
    32 => "10110111", 33 => "11010010", 34 => "00000011", 35 => "00001011", 
    36 => "01010011", 37 => "00010000", 38 => "11110011", 39 => "11110100", 
    40 => "00011010", 41 => "11111001", 42 => "11101011", 43 => "11010000", 
    44 => "11111110", 45 => "00000111", 46 => "00100010", 47 => "00111001", 
    48 => "00110101", 49 => "11010011", 50 => "11101011", 51 => "10101101", 
    52 => "00100000", 53 => "00000100", 54 => "11011010", 55 => "11110111", 
    56 => "11101100", 57 => "11100100", 58 => "11110110", 59 => "00100000", 
    60 to 61=> "00001111", 62 => "00101001", 63 => "00100000", 64 => "11101100", 
    65 => "10100010", 66 => "11101010", 67 => "11111001", 68 => "00011000", 
    69 => "00111000", 70 => "11010011", 71 => "11101000", 72 => "00100000", 
    73 => "11110011", 74 => "00010001", 75 => "00011111", 76 => "11100011", 
    77 => "10111100", 78 => "11101011", 79 => "00101011", 80 => "01011010", 
    81 => "10110111", 82 => "11001111", 83 => "11011011", 84 => "11110101", 
    85 => "00011001", 86 => "01100001", 87 => "00010110", 88 => "11101010", 
    89 => "00001000", 90 => "11101110", 91 => "11111101", 92 => "11111111", 
    93 => "00000110", 94 => "00000001", 95 => "00000010", 96 => "00010111", 
    97 => "00100011", 98 => "00000000", 99 => "11100011", 100 => "11101101", 
    101 => "10110000", 102 => "11011111", 103 => "01000010" );

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

entity L3_wlo_218_L2_WEIcKz is
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

architecture arch of L3_wlo_218_L2_WEIcKz is
    component L3_wlo_218_L2_WEIcKz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcKz_rom_U :  component L3_wlo_218_L2_WEIcKz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


