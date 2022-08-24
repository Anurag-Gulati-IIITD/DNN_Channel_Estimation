-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcpw_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcpw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010101", 1 => "111011011", 2 => "110000011", 3 => "110010001", 
    4 => "111010110", 5 => "000110010", 6 => "001101011", 7 => "001011101", 
    8 => "000010001", 9 => "111001010", 10 => "110101000", 11 => "111001101", 
    12 => "000001001", 13 => "001001100", 14 => "001011001", 15 => "000100111", 
    16 => "111100100", 17 to 18=> "110011000", 19 => "111101001", 20 => "001000011", 
    21 => "010010000", 22 => "001110010", 23 => "000001100", 24 => "110010001", 
    25 => "101101000", 26 => "000101100", 27 => "001101000", 28 => "001011111", 
    29 => "000000101", 30 => "110101110", 31 => "110110111", 32 => "111101101", 
    33 => "000110001", 34 => "001000011", 35 => "000001101", 36 => "111100001", 
    37 => "111001001", 38 => "111010010", 39 => "000000101", 40 => "000101010", 
    41 => "000100011", 42 => "000010110", 43 => "111101011", 44 => "111100010", 
    45 => "111100111", 46 => "000010010", 47 => "000101111", 48 => "000010110", 
    49 => "111101110", 50 to 51=> "111001000", 52 => "110000100", 53 => "101110111", 
    54 => "111000111", 55 => "000100110", 56 => "001101111", 57 => "001101010", 
    58 => "000100101", 59 => "111010000", 60 => "110011010", 61 => "111000010", 
    62 => "111111011", 63 => "000110101", 64 => "001010001", 65 => "000111000", 
    66 => "111101111", 67 => "110101011", 68 => "110100010", 69 => "111001111", 
    70 => "000110010", 71 => "001110010", 72 => "001101011", 73 => "000001010", 
    74 => "110100011", 75 => "101110101", 76 => "110100001", 77 => "000011100", 
    78 => "001110111", 79 => "000110000", 80 => "111000111", 81 => "110100100", 
    82 => "111001100", 83 => "000001100", 84 => "001000010", 85 => "000111000", 
    86 => "111110011", 87 => "110111010", 88 => "111001011", 89 => "000000101", 
    90 => "000101011", 91 => "000111010", 92 => "000010001", 93 => "111110110", 
    94 => "111010011", 95 => "111100101", 96 => "111111000", 97 => "000101011", 
    98 => "000010101", 99 => "111110010", 100 => "111011101", 101 => "111010000", 
    102 => "111100100", 103 => "000011010" );

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

entity L3_wlo_166_L2_WEIcpw is
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

architecture arch of L3_wlo_166_L2_WEIcpw is
    component L3_wlo_166_L2_WEIcpw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcpw_rom_U :  component L3_wlo_166_L2_WEIcpw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


