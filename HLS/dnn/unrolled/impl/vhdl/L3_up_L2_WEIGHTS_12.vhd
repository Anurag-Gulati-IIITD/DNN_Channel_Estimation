-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_12_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_12_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100000010111110010100010", 
    1 => "10111101000110111101111010000011", 
    2 => "10111100111110101010000001000101", 
    3 => "00111100101111101001100001010111", 
    4 => "00111101110001001001000010100011", 
    5 => "00111101101001010000010110001110", 
    6 => "00111101011101011011010011101110", 
    7 => "00111100000101011011101110111111", 
    8 => "10111101100111110110100001111011", 
    9 => "10111101101110010100101001101111", 
    10 => "10111101101110110010011001111100", 
    11 => "10111100000101110101001010010111", 
    12 => "00111101010110000000001011000001", 
    13 => "00111110000000011101011010001100", 
    14 => "00111101111010111011101010011001", 
    15 => "00111101100000110110001100101100", 
    16 => "10111100111101110101111110110011", 
    17 => "10111101101010111100100111001101", 
    18 => "10111101111011001100111011100110", 
    19 => "10111101011001010010001001100100", 
    20 => "10111011100110101100101111001001", 
    21 => "00111101011011010111100101001010", 
    22 => "00111101111011100011111001101100", 
    23 => "00111101011111111000100110000011", 
    24 => "00111101000100000111010100101110", 
    25 => "00111001010100011011011100010111", 
    26 => "10111101010111110111011100101001", 
    27 => "10111101100110000001111000000100", 
    28 => "10111101010110101110111001100011", 
    29 => "10111101001101000100010011100001", 
    30 => "00111101000100110100000101011011", 
    31 => "00111101110101000011101011101011", 
    32 => "00111101111010001001000000001100", 
    33 => "00111101101101010010001000100001", 
    34 => "00111100011000110000100001111000", 
    35 => "10111101100111000000001100110110", 
    36 => "10111101101111010100011100111001", 
    37 => "10111101011010101001111101111011", 
    38 => "10111101000000101110010001001011", 
    39 => "00111101010000100100111101100110", 
    40 => "00111101100010110000101001110000", 
    41 => "00111101011110011110010110011111", 
    42 => "00111101001111100110110101011001", 
    43 => "00111100010111001100001000001101", 
    44 => "10111101000001101100100001110001", 
    45 => "10111101100110011111100001111111", 
    46 => "10111101101111111101100010101110", 
    47 => "10111100111110101010011010001111", 
    48 => "00111100101000100101111110100110", 
    49 => "00111101100011110001111011010001", 
    50 => "00111101110100010110111101000100", 
    51 => "00111101101001101001111110001100", 
    52 => "00111011011001011111011101000000", 
    53 => "00111101010010100110011101100010", 
    54 => "00111101100010010011111110101111", 
    55 => "00111101100111100011110100011101", 
    56 => "00111100011110111100101000010000", 
    57 => "10111101010011100101110001001111", 
    58 => "10111101110000101111110011110000", 
    59 => "10111101110011100011100110110100", 
    60 => "10111101100010011100100110010011", 
    61 => "00111100001010110100011101000001", 
    62 => "00111101110011000111101110001001", 
    63 => "00111101110100100110010110101110", 
    64 => "00111101111010010000000011000101", 
    65 => "00111101100100000011110000001000", 
    66 => "10111101011011111001101010001101", 
    67 => "10111101111001101101101111010111", 
    68 => "10111101111111011111001000100100", 
    69 => "10111101000101000000001001001011", 
    70 => "00111101010110000000110000110001", 
    71 => "00111101110100001010111011011010", 
    72 => "00111101110010010001000110001100", 
    73 => "00111101110100101011111111011011", 
    74 => "00111100101101110101100001011100", 
    75 => "10111101000000001111001000111001", 
    76 => "10111101110100101011110010110110", 
    77 => "10111101010111101010110011001001", 
    78 => "10111101011011010010000100110110", 
    79 => "10111010010101100010101111110001", 
    80 => "00111101000110100010010100010000", 
    81 => "00111101100111001000110010010011", 
    82 => "00111101111011000001010101001101", 
    83 => "00111100110010110001101010110001", 
    84 => "10111101001100001011010110101010", 
    85 => "10111101100110111111011110101101", 
    86 => "10111101110011101000011011000110", 
    87 => "10111101100011110100100000111101", 
    88 => "10111100000001001110010000000000", 
    89 => "00111101000010111000000101110011", 
    90 => "00111101101100101000100001001000", 
    91 => "00111101011101010011000111011011", 
    92 => "00111100011100011110000010000011", 
    93 => "10111101000101011101101000100111", 
    94 => "10111101010010110000110000000010", 
    95 => "10111101001010010010111101101111", 
    96 => "10111101001100011001101001000001", 
    97 => "10111100100001101001011000011100", 
    98 => "10111100010001010011101100001000", 
    99 => "00111101011100010010011011101001", 
    100 => "00111101101010010001100111110000", 
    101 => "00111101010101001100101110011111", 
    102 => "10111011101100110111000000000100", 
    103 => "10111101010111100011110110100011" );


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

entity L3_up_L2_WEIGHTS_12 is
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

architecture arch of L3_up_L2_WEIGHTS_12 is
    component L3_up_L2_WEIGHTS_12_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_12_rom_U :  component L3_up_L2_WEIGHTS_12_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

