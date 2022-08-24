-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcwx_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcwx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010011001", 1 => "001101111", 2 => "111111100", 3 => "110100100", 
    4 => "101110110", 5 => "110011101", 6 => "000000111", 7 => "001011001", 
    8 => "001111011", 9 => "001011010", 10 => "000001100", 11 => "111010011", 
    12 => "110111000", 13 => "111010100", 14 => "111110011", 15 => "111111000", 
    16 => "000011100", 17 => "000100001", 18 => "000011100", 19 => "000011000", 
    20 => "111110111", 21 => "111110010", 22 => "111100010", 23 => "111101000", 
    24 => "111111010", 25 => "000101010", 26 => "000100011", 27 => "111000100", 
    28 => "110010110", 29 => "110101111", 30 => "111111010", 31 => "001110000", 
    32 => "001110011", 33 => "000100000", 34 => "111001010", 35 => "110010000", 
    36 => "111001110", 37 => "000101101", 38 => "000110011", 39 => "000001010", 
    40 => "110111110", 41 => "110101001", 42 => "000001001", 43 => "001011111", 
    44 => "001111101", 45 => "000010111", 46 => "110110011", 47 => "101110011", 
    48 => "110100101", 49 => "000001011", 50 => "001111001", 51 => "001100100", 
    52 => "000000110", 53 => "110011000", 54 => "101100011", 55 => "110010111", 
    56 => "111110111", 57 => "001100111", 58 => "010001110", 59 => "001100100", 
    60 => "111111111", 61 => "111000111", 62 => "110011010", 63 => "110101101", 
    64 => "111110001", 65 => "000011110", 66 => "000111011", 67 => "000101111", 
    68 => "000010011", 69 => "111110011", 70 => "111110111", 71 => "111011110", 
    72 => "111100111", 73 => "111100100", 74 => "111110110", 75 => "000101101", 
    76 => "001000100", 77 => "000101101", 78 => "110110010", 79 => "110110111", 
    80 => "111111000", 81 => "001011011", 82 => "001110110", 83 => "000110010", 
    84 => "111011001", 85 => "110011000", 86 => "110101001", 87 => "111111011", 
    88 => "001000010", 89 => "001010000", 90 => "111111111", 91 => "111001110", 
    92 => "111010010", 93 => "000110100", 94 => "001100001", 95 => "000111100", 
    96 => "111001011", 97 => "110000011", 98 => "101111010", 99 => "111110100", 
    100 => "001101101", 101 => "010000000", 102 => "000111101", 103 => "111010111" );

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

entity L3_wlo_166_L2_WEIcwx is
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

architecture arch of L3_wlo_166_L2_WEIcwx is
    component L3_wlo_166_L2_WEIcwx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcwx_rom_U :  component L3_wlo_166_L2_WEIcwx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


