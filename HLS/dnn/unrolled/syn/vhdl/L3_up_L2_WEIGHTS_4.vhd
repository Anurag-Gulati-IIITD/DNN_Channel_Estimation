-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_4_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101010111111001101111011100", 
    1 => "00111110000101110000110110100110", 
    2 => "00111110000011111110100011101110", 
    3 => "00111101100110101100011110010111", 
    4 => "10111101000110000110001000101100", 
    5 => "10111101101011110001001111001111", 
    6 => "10111101110001010000001111111011", 
    7 => "10111100110010111111110100101111", 
    8 => "00111011101000100000000101000111", 
    9 => "10111011111001000110010010011001", 
    10 => "10111011110011101110010110101100", 
    11 => "00111101000000001100111010010010", 
    12 => "00111101011011101000110000000101", 
    13 => "00111101110010001011111000101111", 
    14 => "00111100110001101111100110111010", 
    15 => "10111101001110100011111111001101", 
    16 => "10111101110111101001010010101011", 
    17 => "10111101110001011100111111101110", 
    18 => "00111100000001000111111101010110", 
    19 => "00111101100111100011100001100101", 
    20 => "00111101110110010011010101110110", 
    21 => "00111101000101010100011001001110", 
    22 => "10111101001110111111011000011011", 
    23 => "10111101001111101010000010111010", 
    24 => "10111100101001000100000111111111", 
    25 => "00111100101100000010000011000101", 
    26 => "10111100011001011010111111110011", 
    27 => "10111101001011010010111011011000", 
    28 => "10110110111010101110000110001011", 
    29 => "00111101100001100111010110011011", 
    30 => "00111101011111011100110111110111", 
    31 => "00111100100110100010011000011100", 
    32 => "10111101011101110110000111001100", 
    33 => "10111101101110111101111100001001", 
    34 => "10111101010001100010101000011011", 
    35 => "00111101001100011111010101111011", 
    36 => "00111101110111100011010010111001", 
    37 => "00111101011110011100111110011010", 
    38 => "10111100100100011000110000011001", 
    39 => "10111101100111000010010000111110", 
    40 => "10111101000100001100010111101011", 
    41 => "00111101001110001011010110001001", 
    42 => "00111101101101010001111001110101", 
    43 => "00111100011000000100001110100010", 
    44 => "10111101100011110001100010000111", 
    45 => "10111110000011100110010110111111", 
    46 => "10111101100011000010000011010101", 
    47 => "00111101101010000010101011011100", 
    48 => "00111110001101000001001000000110", 
    49 => "00111110001111110101100001111101", 
    50 => "00111101001100111000001111110001", 
    51 => "10111101111111111111011000001010", 
    52 => "00111110010000101001011010110011", 
    53 => "00111101101111001100000110000111", 
    54 => "10111101000100001110000100101111", 
    55 => "10111110000100011110011000000100", 
    56 => "10111101111001011111111100011110", 
    57 => "10111101010010111011011011101101", 
    58 => "00111101000101111110001000111111", 
    59 => "00111101010001001010101101100000", 
    60 => "00111100111110101001110000010011", 
    61 => "00111100110011100101000011000110", 
    62 => "00111101001101010010111010110110", 
    63 => "00111101010110111001011100110101", 
    64 => "00111100101100111000001011100100", 
    65 => "10111100111101111100011001110110", 
    66 => "10111101110111100101011001000111", 
    67 => "10111101101110110001111010011111", 
    68 => "10111100100011010110000010100110", 
    69 => "00111101101011001001101011111110", 
    70 => "00111101110011010011111010010010", 
    71 => "00111101100001001001111011001011", 
    72 => "10111100111100001111101111101100", 
    73 => "10111101110001101001011100101001", 
    74 => "10111101100000011000001001100110", 
    75 => "10111100000100001011010000011000", 
    76 => "00111101001100100001010111111101", 
    77 => "00111101001000110000100001111000", 
    78 => "10111100111000011111011111010111", 
    79 => "00111010100000011010000101010101", 
    80 => "00111101001111010000000001110001", 
    81 => "00111101000110001001010110001110", 
    82 => "10111101000000011010011010010011", 
    83 => "10111101101000110010000100011101", 
    84 => "10111101011111100111010010110000", 
    85 => "00111100001101010110111110111001", 
    86 => "00111101110001001001101010011001", 
    87 => "00111101101001100111110011110010", 
    88 => "00111100100110011010011000101111", 
    89 => "10111101101100101101110010110001", 
    90 => "10111101101101110101001100011110", 
    91 => "10111100101010110101001111010110", 
    92 => "00111101010000100111011000110010", 
    93 => "00111101011101100110111110010011", 
    94 => "10111100011110100100100000110000", 
    95 => "10111101110010110111011001110001", 
    96 => "10111101101110100000101011011001", 
    97 => "00111100111111010110111110010111", 
    98 => "00111110000010001010100011110100", 
    99 => "00111110000110100100000001010011", 
    100 => "00111101010000111010100001100001", 
    101 => "10111101110010100001100010111101", 
    102 => "10111110010111000001111010111101", 
    103 => "10111110001100101101101110100101" );


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

entity L3_up_L2_WEIGHTS_4 is
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

architecture arch of L3_up_L2_WEIGHTS_4 is
    component L3_up_L2_WEIGHTS_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_4_rom_U :  component L3_up_L2_WEIGHTS_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


