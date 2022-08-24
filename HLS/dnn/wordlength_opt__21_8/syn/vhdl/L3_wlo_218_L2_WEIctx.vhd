-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIctx_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L3_wlo_218_L2_WEIctx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010100001", 1 => "010101100111", 2 => "010111110001", 
    3 => "000111101011", 4 => "110110001001", 5 => "101101111000", 
    6 => "110110101101", 7 => "000011011010", 8 => "001010000010", 
    9 => "001000111000", 10 => "111111000010", 11 => "110110000100", 
    12 => "110111111100", 13 => "111101011101", 14 => "001010001111", 
    15 => "001101111101", 16 => "000111100110", 17 => "111011011011", 
    18 => "110001100000", 19 => "110010010110", 20 => "111001000000", 
    21 => "000110100111", 22 => "001111101111", 23 => "001101011001", 
    24 => "000100101101", 25 => "110110110111", 26 => "110010110010", 
    27 => "111110110111", 28 => "001001001111", 29 => "001011001101", 
    30 => "001001101100", 31 => "000000100100", 32 => "111010000001", 
    33 => "111001011010", 34 => "111011100001", 35 to 36=> "111101100110", 
    37 => "111111110111", 38 => "000011010001", 39 => "001000001001", 
    40 => "001000010111", 41 => "000011100011", 42 => "111010110100", 
    43 => "110101110111", 44 => "110100111011", 45 => "111100101101", 
    46 => "000010101001", 47 => "000111000100", 48 => "000111100011", 
    49 => "000101010001", 50 => "000010100101", 51 => "000000001101", 
    52 => "010111111010", 53 => "001100000110", 54 => "111001100100", 
    55 => "101101000101", 56 => "101110110111", 57 => "111101011100", 
    58 => "001001100011", 59 => "001101000111", 60 => "000100100100", 
    61 => "111000100001", 62 => "110100010001", 63 => "111011110000", 
    64 => "000101111100", 65 => "001100001000", 66 => "001000111000", 
    67 => "111100011000", 68 => "110011011101", 69 => "110010010001", 
    70 => "111010010100", 71 => "000101110110", 72 => "001101101101", 
    73 => "001110111101", 74 => "000101111000", 75 => "111000001101", 
    76 => "101110010100", 77 => "110000100101", 78 => "001001111001", 
    79 => "010000011001", 80 => "001010010000", 81 => "000000000001", 
    82 => "111000011010", 83 => "110101101111", 84 => "111001010101", 
    85 => "111111010011", 86 => "000001000101", 87 => "000011111001", 
    88 => "000011110100", 89 => "000110111000", 90 => "000100111000", 
    91 => "000001101100", 92 => "111100100101", 93 => "110101101001", 
    94 => "110101010011", 95 => "111110000000", 96 => "000101100110", 
    97 => "001010010001", 98 => "001001011001", 99 => "000011101010", 
    100 => "111111010110", 101 => "111100001011", 102 => "111001011100", 
    103 => "110100110110" );


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

entity L3_wlo_218_L2_WEIctx is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIctx is
    component L3_wlo_218_L2_WEIctx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIctx_rom_U :  component L3_wlo_218_L2_WEIctx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


