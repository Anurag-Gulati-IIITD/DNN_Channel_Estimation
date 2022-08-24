-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIckv_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIckv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11110011", 1 => "00001010", 2 => "00010010", 3 => "11111100", 
    4 => "00010011", 5 => "00000111", 6 => "00000011", 7 => "11100100", 
    8 => "00000100", 9 => "00010101", 10 => "00001100", 11 => "00000100", 
    12 => "00011100", 13 => "00010110", 14 => "00000100", 15 => "10110111", 
    16 => "11101111", 17 => "00100001", 18 => "11000001", 19 => "11101001", 
    20 => "11000011", 21 => "01000001", 22 => "01001101", 23 => "00100001", 
    24 => "11000101", 25 => "10100110", 26 => "00010101", 27 => "00111100", 
    28 => "00110111", 29 => "00001100", 30 => "10111110", 31 => "11100011", 
    32 => "11001011", 33 => "11101010", 34 => "01100100", 35 => "00000000", 
    36 => "00000100", 37 => "00010000", 38 => "00000100", 39 => "00001011", 
    40 => "10110101", 41 => "10011110", 42 => "11001111", 43 => "11011111", 
    44 => "00010111", 45 => "00001011", 46 => "01010011", 47 => "11111100", 
    48 => "00100110", 49 => "11000111", 50 => "11100101", 51 => "11011001", 
    52 => "11100000", 53 to 54=> "11010000", 55 => "00011111", 56 => "11011010", 
    57 => "00011111", 58 => "11110001", 59 => "11101100", 60 => "00000000", 
    61 => "00101000", 62 => "11111111", 63 => "11111010", 64 => "00010110", 
    65 => "11000010", 66 => "00001001", 67 => "11010010", 68 => "11110000", 
    69 => "11011011", 70 => "11101001", 71 => "11111101", 72 => "00101001", 
    73 => "00111000", 74 => "11100101", 75 => "11100011", 76 => "11111110", 
    77 => "11001101", 78 => "01110001", 79 => "00011100", 80 => "00001000", 
    81 => "11100110", 82 => "10110100", 83 => "11101111", 84 => "00111001", 
    85 => "01000011", 86 => "00110010", 87 => "11100000", 88 => "11010011", 
    89 => "00111000", 90 => "00100001", 91 => "11101001", 92 => "11010101", 
    93 => "11111011", 94 => "00011101", 95 => "01001100", 96 => "00111101", 
    97 => "00011000", 98 => "11111011", 99 => "00011110", 100 => "11110001", 
    101 => "11001110", 102 => "00001100", 103 => "01001111" );

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

entity L3_wlo_218_L2_WEIckv is
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

architecture arch of L3_wlo_218_L2_WEIckv is
    component L3_wlo_218_L2_WEIckv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIckv_rom_U :  component L3_wlo_218_L2_WEIckv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


