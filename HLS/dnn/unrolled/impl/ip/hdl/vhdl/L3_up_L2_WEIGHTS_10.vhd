-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_10_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_10_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110011001010000011000011", 
    1 => "10111101011101110101111110110011", 
    2 => "10111101101110011001001011001001", 
    3 => "10111101101011010100100100001110", 
    4 => "10111101000010111101110110111010", 
    5 => "00111101001101111010111101100100", 
    6 => "00111101111001010100101101001001", 
    7 => "00111110000010110100000011110110", 
    8 => "00111101110010001101100001100110", 
    9 => "10111100111011011100110000100001", 
    10 => "10111110000010001100011010010011", 
    11 => "10111110001010111101001011111010", 
    12 => "10111101111001110110100011100000", 
    13 => "00111100111000110001101101011000", 
    14 => "00111101111001001101011001011110", 
    15 => "00111110000100101001011000101101", 
    16 => "00111101111000000101100110100111", 
    17 => "00111101010000011111110010001111", 
    18 => "10111101001010110000010100110010", 
    19 => "10111110000011100111000000111011", 
    20 => "10111110000001010001101011001010", 
    21 => "10111101101100111100010101111010", 
    22 => "00111011001010101100100101101101", 
    23 => "00111101110100010011101011010110", 
    24 => "00111110000001011100000001110110", 
    25 => "00111101110110001000011001011001", 
    26 => "10111101010011010111001110000110", 
    27 => "10111101100111001001110101011010", 
    28 => "10111101010100001000110101001100", 
    29 => "00111011000111001100001100011010", 
    30 => "10111100100000010000111010001000", 
    31 => "10111100101000010101011101101001", 
    32 => "10111100100101011011100110100110", 
    33 => "00111100100010010011001100011010", 
    34 => "00111101101110100100001011110010", 
    35 => "00111101111101110000001001100000", 
    36 => "00111101011100111100110001001011", 
    37 => "10111101010010110111101000011100", 
    38 => "10111110000011010101101010011111", 
    39 => "10111110000101000010010011100110", 
    40 => "10111101010101010110011111011100", 
    41 => "00111101100010110110110100000001", 
    42 => "00111110000010100001111110001110", 
    43 => "00111101110110000101001011111000", 
    44 => "00111101000101000100100010001100", 
    45 => "10111101011101101101011001010110", 
    46 => "10111101101000101101101001010101", 
    47 => "10111101101000110110111010110101", 
    48 => "10111101000010101110000100000101", 
    49 => "00111010000001010110111001101001", 
    50 => "00111101010110010101101110111100", 
    51 => "00111101011001001000100001000000", 
    52 => "10111101100001011000000111001111", 
    53 => "10111101000111100111100101101000", 
    54 => "10111100100101101010111100000100", 
    55 => "00111101001101100100100111010100", 
    56 => "00111101110010001111001110101010", 
    57 => "00111101111100000101011000111111", 
    58 => "00111101100101011100010010101000", 
    59 => "10111101000010010101111000011000", 
    60 => "10111110000000010001100001111110", 
    61 => "10111110001000100010100000010011", 
    62 => "10111101110000111011110101011010", 
    63 => "00111100111100110110111011111000", 
    64 => "00111110000010000110100111000110", 
    65 => "00111110000111011111010011000011", 
    66 => "00111101110111100100010011111010", 
    67 => "00111100110010010111111110100110", 
    68 => "10111101101101110111110110010101", 
    69 => "10111110000011011011000010011010", 
    70 => "10111110000010001101101100000101", 
    71 => "10111101100011001110101110111100", 
    72 => "00111101001000001111101100100010", 
    73 => "00111101111101000010111111101000", 
    74 => "00111110000010110011101010101100", 
    75 => "00111101110001001011001111000100", 
    76 => "00111101000000100110100110011100", 
    77 => "10111101100011101101110111001110", 
    78 => "10111101100011111011101110010101", 
    79 => "10111100111010110001010111111001", 
    80 => "00111100110110001001001001101000", 
    81 => "00111100111011010000101100110001", 
    82 => "00111010101100100010000001111001", 
    83 => "00111100101001011001011111010101", 
    84 => "00111101100010010110101100110011", 
    85 => "00111101100011001010111101110001", 
    86 => "00111101011101100111101100011100", 
    87 => "10111101000000111101001101011111", 
    88 => "10111110000000001100110101000010", 
    89 => "10111110000111000100100011110001", 
    90 => "10111101010111010110011110111010", 
    91 => "00111101100011001010100100100110", 
    92 => "00111110000101000011101101110001", 
    93 => "00111110000001001010100000111011", 
    94 => "00111101001101100010000011101111", 
    95 => "10111101101011100010001000011101", 
    96 => "10111101111011000010110011100100", 
    97 => "10111101110110110001011111001110", 
    98 => "10111101001010011001110110001000", 
    99 => "00111101001111110011001110000111", 
    100 => "00111101011100111111001000001010", 
    101 => "00111101100000101010101010011111", 
    102 => "00111101100010000000001110001010", 
    103 => "00111101001100101001000110111000" );


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

entity L3_up_L2_WEIGHTS_10 is
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

architecture arch of L3_up_L2_WEIGHTS_10 is
    component L3_up_L2_WEIGHTS_10_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_10_rom_U :  component L3_up_L2_WEIGHTS_10_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


