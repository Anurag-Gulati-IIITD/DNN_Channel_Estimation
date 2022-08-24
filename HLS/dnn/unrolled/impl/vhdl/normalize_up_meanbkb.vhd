-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity normalize_up_meanbkb_rom is 
    generic(
             DWIDTH     : integer := 32; 
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


architecture rtl of normalize_up_meanbkb_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011001101111001000011111011", 
    1 => "10111010101011001110001001001100", 
    2 => "00111010001000100100010001100011", 
    3 => "00111011000110010011100100100010", 
    4 => "00111011010101001010101000010001", 
    5 => "00111011001111100010111101111011", 
    6 => "00111010101000100110010111110001", 
    7 => "10111010100111110100000010100011", 
    8 => "10111011011000101000111011010110", 
    9 => "10111011100010101001001101101100", 
    10 => "10111011001111111000111111001101", 
    11 => "00110111111110111010100010000010", 
    12 => "00111011010100001101110011111101", 
    13 => "00111011100111110111001011110111", 
    14 => "00111011100001101011010110010001", 
    15 => "00111010101000111101011100001010", 
    16 => "10111011000100101111111101001100", 
    17 => "10111011100101110010100010100110", 
    18 => "10111011100110110001111110101100", 
    19 => "10111011001010100100001100110101", 
    20 => "00111010010001101111011110100001", 
    21 => "00111011011100010101111001111101", 
    22 => "00111011100111110111001011110111", 
    23 => "00111011011101100100100011000111", 
    24 => "00111010011100110100010100000111", 
    25 => "10111011000101011101000010110111", 
    26 => "10111011100100100010110110010101", 
    27 => "10111011001001000011101110110100", 
    28 => "00111010000101011111001001000101", 
    29 => "00111011010111100101110100011000", 
    30 => "00111011100110011001010101101000", 
    31 => "00111011011111001110011101000111", 
    32 => "00111010101000110010111101000101", 
    33 => "10111011000010001000001011110001", 
    34 => "10111011100101001000000100101100", 
    35 => "10111011100111111010110110110000", 
    36 => "10111011001100111101010010101110", 
    37 => "00111010011001001101101000001010", 
    38 => "00111011100001100110101000010010", 
    39 => "00111011101010010010010111111111", 
    40 => "00111011011000110110100011110001", 
    41 => "00110110111010101110000110001011", 
    42 => "10111011010100110011100011111000", 
    43 => "10111011100100100001010001101010", 
    44 => "10111011010101101101001110110111", 
    45 => "10111010001111011000011110110101", 
    46 => "00111010110110111111000001010110", 
    47 => "00111011001101100000111100011011", 
    48 => "00111011001001100101010010010011", 
    49 => "00111010110001101101011000010011", 
    50 => "00111001101101100111001111000101", 
    51 => "10111010001111011100101011010001", 
    52 => "00111010110001101101011000010011", 
    53 => "00111011001111010100010010011010", 
    54 => "00111011010000101100010111100011", 
    55 => "00111011000001010011110000010101", 
    56 => "00111001110000010111011001010111", 
    57 => "10111010111000101100000100101011", 
    58 => "10111011011000100110110101001000", 
    59 => "10111011011010010100111011100100", 
    60 => "10111011000100001101010110100110", 
    61 => "00111010001101110011110100011001", 
    62 => "00111011011000110000010001000111", 
    63 => "00111011100110101101110010010000", 
    64 => "00111011011011111010101001000111", 
    65 => "00111010001100001010111101100000", 
    66 => "10111011001100100111010001011100", 
    67 => "10111011101000001110110001110100", 
    68 => "10111011100101010101001011100011", 
    69 => "10111010111100110110011010010101", 
    70 => "00111010110100110010100000110001", 
    71 => "00111011100010000010011010101011", 
    72 => "00111011101000011100011010001111", 
    73 => "00111011010011011111101011001010", 
    74 => "00111001001000000110111010100000", 
    75 => "10111011010000101001001110001110", 
    76 => "10111011100101111111000111111010", 
    77 => "10111011100001101000001100111100", 
    78 => "00111010110010010101001110011100", 
    79 => "00111011011111101000101010110101", 
    80 => "00111011100101010110110000001101", 
    81 => "00111011010101110100100100101000", 
    82 => "00111001110101011110100011010101", 
    83 => "10111011001110000100100110001000", 
    84 => "10111011100101011110000101111110", 
    85 => "10111011100100110110001111110101", 
    86 => "10111011000000100110101010101001", 
    87 => "00111010101100111111011000111100", 
    88 => "00111011100011001100010101110110", 
    89 => "00111011101001011100111001011011", 
    90 => "00111011010011100011110111100110", 
    91 => "10111001111101110111011011000101", 
    92 => "10111011011100000101001000001101", 
    93 => "10111011100111111100011011011010", 
    94 => "10111011011010000110010000000010", 
    95 => "10111001111000011111011111010111", 
    96 => "00111011001010100010000110100111", 
    97 => "00111011011011101001110111011000", 
    98 => "00111011010001011100100110100011", 
    99 => "00111010100001101001110001100111", 
    100 => "10111010001000110000110110110111", 
    101 => "10111010110111011000001011111101", 
    102 => "10111011000001001011010111011101", 
    103 => "10111010111100111110110011001100" );


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

entity normalize_up_meanbkb is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of normalize_up_meanbkb is
    component normalize_up_meanbkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    normalize_up_meanbkb_rom_U :  component normalize_up_meanbkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

