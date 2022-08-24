-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_15_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_15_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101001001011100001111011111", 
    1 => "00111101011100111011010000101101", 
    2 => "00111101110111100000110111101101", 
    3 => "00111101110100001110100110010010", 
    4 => "00111100111001100111011100101101", 
    5 => "10111101100010000010111000000010", 
    6 => "10111110000000001101011110111111", 
    7 => "10111101110100100100111100100010", 
    8 => "10111100001111011101101110011000", 
    9 => "00111101101011010001111000010001", 
    10 => "00111110000010110111000110111001", 
    11 => "00111101110101101101110010100000", 
    12 => "00111010010001011010100000010101", 
    13 => "10111101101000000101111001011111", 
    14 => "10111101111011101011110101001101", 
    15 => "10111101100100011101101000111000", 
    16 => "00111100001000101111100010111110", 
    17 => "00111101100001000110100011001011", 
    18 => "00111101100000100100000010111000", 
    19 => "00111100100100101101101110100101", 
    20 => "00111100000001110111001001010000", 
    21 => "00111100000000100100110101001101", 
    22 => "00111010001000111001001111101110", 
    23 => "10111100100011100010100111111010", 
    24 => "10111101011110011011000000100101", 
    25 => "10111101011011011010111011000101", 
    26 => "00111101101101010000111010111011", 
    27 => "00111101111000101001100001000110", 
    28 => "00111101010010100010010101010011", 
    29 => "10111101100000010101010011001010", 
    30 => "10111110001001000001111001011000", 
    31 => "10111101111010000001010111100100", 
    32 => "00111100100111011100100100111111", 
    33 => "00111110000101010010100111111110", 
    34 => "00111110001100101010010010011000", 
    35 => "00111101100110010100011011000011", 
    36 => "10111101100011000011101100001100", 
    37 => "10111110000111000001111001111001", 
    38 => "10111110000001100110011111111001", 
    39 => "10111101001000010001111111010110", 
    40 => "00111101010111101001111100100111", 
    41 => "00111101101111100001011111100011", 
    42 => "00111101101100010011100101000011", 
    43 => "00111101001111110000111111100000", 
    44 => "00111100101100100110011111000111", 
    45 => "10111101000100000100110101010101", 
    46 => "10111101100101100011101000011001", 
    47 => "10111101110101110101110100010100", 
    48 => "10111101100111110101000111110000", 
    49 => "00111100010111010100110001110111", 
    50 => "00111110000000000001101111001010", 
    51 => "00111110000101110001111101111001", 
    52 => "00111101111011111110000111011010", 
    53 => "00111101111001011001001110100011", 
    54 => "00111100111000100101111010011010", 
    55 => "10111101100100010101111110001001", 
    56 => "10111101111011111110010110000110", 
    57 => "10111101110010100001000011100000", 
    58 => "10111100011001100111100101000110", 
    59 => "00111101100111110111101111100001", 
    60 => "00111110000001011100000101000000", 
    61 => "00111101111000000111000010111001", 
    62 => "00111100011000110100101110010100", 
    63 => "10111101101100000000101000111001", 
    64 => "10111110000001100010110101000001", 
    65 => "10111101101101111001001010001110", 
    66 => "00111011011011000000111110001000", 
    67 => "00111101101100111000101000111011", 
    68 => "00111101101100110100001001101000", 
    69 => "00111101001100101001101100101000", 
    70 => "10111100010011000110100000100011", 
    71 => "10111101000011001010010011110100", 
    72 => "10111100100100101100100011000101", 
    73 => "10111100100010111110001011111000", 
    74 => "10111100111110101001100111111010", 
    75 => "10111101001000101001100001000110", 
    76 => "00111011010011111101000010001101", 
    77 => "00111101011011011111111110000010", 
    78 => "00111101100010100110110010100000", 
    79 => "10111101000111000000000000010001", 
    80 => "10111101111111010000000001110001", 
    81 => "10111101111110010110010110110010", 
    82 => "10111100110001111100010100100110", 
    83 => "00111101111010000110101001001101", 
    84 => "00111110001110100001011001100001", 
    85 => "00111101110010001011110100100011", 
    86 => "10111101001011000011010000111011", 
    87 => "10111110001001110011111100110001", 
    88 => "10111110001000100011001001001101", 
    89 => "10111101011010111111101010001111", 
    90 => "00111101100101001010010001001100", 
    91 => "00111110000010000001000011101001", 
    92 => "00111101110011001000001001011010", 
    93 => "00111101000011100001000011001111", 
    94 => "10111100101111000111000011001010", 
    95 => "10111101100010001000001001101011", 
    96 => "10111101100111110000101100101000", 
    97 => "10111101101000010000000011100111", 
    98 => "10111101011111110011010010010100", 
    99 => "00111100011110010001011000000001", 
    100 => "00111101101111110101010100010101", 
    101 => "00111110000010110111001110001110", 
    102 => "00111101101110011000111110100011", 
    103 => "10111100110001100100110111000010" );


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

entity L3_up_L2_WEIGHTS_15 is
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

architecture arch of L3_up_L2_WEIGHTS_15 is
    component L3_up_L2_WEIGHTS_15_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_15_rom_U :  component L3_up_L2_WEIGHTS_15_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


