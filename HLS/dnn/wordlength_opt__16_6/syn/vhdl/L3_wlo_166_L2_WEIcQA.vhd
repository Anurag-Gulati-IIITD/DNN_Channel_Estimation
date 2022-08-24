-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcQA_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcQA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011010", 1 => "10011100", 2 => "10111010", 3 => "00100001", 
    4 => "01100101", 5 => "01010110", 6 => "00001001", 7 => "10101110", 
    8 => "10011000", 9 => "11101010", 10 => "00111101", 11 => "01011110", 
    12 => "00101101", 13 => "11010000", 14 => "10111011", 15 => "11010110", 
    16 => "00101001", 17 => "00111000", 18 => "00001101", 19 => "11100101", 
    20 => "10110000", 21 => "11101101", 22 => "00111000", 23 => "01010010", 
    24 => "00100110", 25 => "11001011", 26 => "10110110", 27 => "11111101", 
    28 to 29=> "01010001", 30 => "00100011", 31 => "11010110", 32 => "10011101", 
    33 => "10110011", 34 => "00000001", 35 => "00111011", 36 => "01100000", 
    37 => "00110101", 38 => "11001110", 39 => "10011110", 40 => "10101010", 
    41 => "11110110", 42 => "01010011", 43 => "01100101", 44 => "00100101", 
    45 => "11001010", 46 => "10100101", 47 => "11001110", 48 => "00010011", 
    49 => "00110111", 50 => "00101000", 51 => "11111000", 52 => "10011110", 
    53 => "11100100", 54 => "01001111", 55 => "01101011", 56 => "00100010", 
    57 => "11000101", 58 => "10010011", 59 => "11000101", 60 => "00011100", 
    61 => "01101001", 62 => "01000100", 63 => "11101001", 64 => "10110001", 
    65 => "11000000", 66 => "00001000", 67 => "00110101", 68 => "00110110", 
    69 => "11110000", 70 => "11001011", 71 => "11001001", 72 => "00001010", 
    73 => "00111100", 74 => "00111010", 75 => "00000011", 76 => "10101110", 
    77 => "10101100", 78 => "00111001", 79 => "01101110", 80 => "00111100", 
    81 => "11101110", 82 => "10101100", 83 => "10011100", 84 => "11011101", 
    85 => "01000011", 86 => "01011101", 87 => "00111100", 88 => "11110000", 
    89 => "11000000", 90 => "10100001", 91 => "11101011", 92 => "00111001", 
    93 => "01101010", 94 => "00111001", 95 => "11110010", 96 => "10100011", 
    97 => "10111101", 98 => "11110110", 99 => "00110001", 100 => "01001011", 
    101 => "00010100", 102 => "11010010", 103 => "11000111" );

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

entity L3_wlo_166_L2_WEIcQA is
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

architecture arch of L3_wlo_166_L2_WEIcQA is
    component L3_wlo_166_L2_WEIcQA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcQA_rom_U :  component L3_wlo_166_L2_WEIcQA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


