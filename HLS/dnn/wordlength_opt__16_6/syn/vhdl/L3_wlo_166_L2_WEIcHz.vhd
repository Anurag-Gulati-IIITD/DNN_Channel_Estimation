-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcHz_rom is 
    generic(
             DWIDTH     : integer := 9; 
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


architecture rtl of L3_wlo_166_L2_WEIcHz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111010100", 1 => "110010011", 2 => "110001011", 3 => "111010110", 
    4 => "000011101", 5 => "001101100", 6 => "001011011", 7 => "000100110", 
    8 => "111100010", 9 => "111100101", 10 => "111110111", 11 => "111110001", 
    12 => "111010001", 13 => "111011010", 14 => "111110011", 15 => "000100111", 
    16 => "001011000", 17 => "001001101", 18 => "000001010", 19 => "111000011", 
    20 => "110100000", 21 => "111011001", 22 => "000011110", 23 => "000101011", 
    24 => "000001001", 25 => "000001010", 26 => "000001000", 27 => "000100011", 
    28 => "111111010", 29 => "111001011", 30 => "110111011", 31 => "111101001", 
    32 => "000001110", 33 => "001000010", 34 => "000110010", 35 => "111101111", 
    36 => "110110010", 37 => "111001111", 38 => "000010001", 39 => "001001000", 
    40 => "000100010", 41 => "111010110", 42 => "110111101", 43 => "111010000", 
    44 => "000110011", 45 => "001100010", 46 => "001000110", 47 => "111000110", 
    48 => "101111011", 49 => "101111100", 50 => "111111111", 51 => "001101111", 
    52 => "110010010", 53 => "110101000", 54 => "000010101", 55 => "010001011", 
    56 => "001100000", 57 => "000100100", 58 => "111011110", 59 => "111000011", 
    60 => "111001010", 61 => "111100010", 62 => "111110010", 63 => "111001100", 
    64 => "111111010", 65 => "000010101", 66 to 67=> "001010100", 68 => "000010111", 
    69 => "111000001", 70 => "110001011", 71 => "110110101", 72 => "111111010", 
    73 => "001000011", 74 => "000111010", 75 => "000011100", 76 => "111100010", 
    77 => "111100110", 78 => "000001010", 79 => "000000011", 80 => "111010111", 
    81 => "111010100", 82 => "111111000", 83 => "001001011", 84 => "000111110", 
    85 => "000011000", 86 => "110101110", 87 => "111001101", 88 => "111101100", 
    89 => "000110100", 90 => "001000110", 91 => "111111111", 92 => "111001111", 
    93 => "111100111", 94 => "000010110", 95 => "001010101", 96 => "001010011", 
    97 => "111101111", 98 => "110001000", 99 => "110000100", 100 => "111001000", 
    101 => "000111100", 102 => "010110100", 103 => "010001111" );

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

entity L3_wlo_166_L2_WEIcHz is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIcHz is
    component L3_wlo_166_L2_WEIcHz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcHz_rom_U :  component L3_wlo_166_L2_WEIcHz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


