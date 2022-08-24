-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_47_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_47_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111010110100011011011100010111", 
    1 => "00111100011000110010111000111000", 
    2 => "00111100000001000000000110000010", 
    3 => "00111011011100000111001110011011", 
    4 => "10111100000001000010011101000010", 
    5 => "10111100001111100101110110011110", 
    6 => "10111100011010001011001110110011", 
    7 => "10111100001000010110101001001000", 
    8 => "00111011000000101001110011111110", 
    9 => "00111100000111111010100101111110", 
    10 => "00111100001101000110001101001001", 
    11 => "00111100000001100011011110111101", 
    12 => "00111010000110010001011110010100", 
    13 => "10111011101011010111100101001010", 
    14 => "10111011111010111110010110010111", 
    15 => "10111011000000110101010110001010", 
    16 => "10111010101001000011101110110100", 
    17 => "10111011010110110110101000011111", 
    18 => "10111011110010111001011001101100", 
    19 => "00111011010011101011001101010111", 
    20 => "10111011000000010100110101110010", 
    21 => "10111001101110011001100100010011", 
    22 => "00111010101111010110011000100111", 
    23 => "10111010111001110101011110010011", 
    24 => "00111010011101001001010010010010", 
    25 => "00111010100110011110000011100111", 
    26 => "10111011011010001011011111100101", 
    27 => "10111011100110110100000100111010", 
    28 => "10111010100111101101101111111001", 
    29 => "00111010101101001011111110010000", 
    30 => "00111011101101110101111010100110", 
    31 => "00111100010111100110100110101101", 
    32 => "00111011010001010101010000110011", 
    33 => "00111010111110010110111000010110", 
    34 => "10111011101001000001101000100110", 
    35 => "10111011110010111001011001101100", 
    36 => "10111011111111111100100101111001", 
    37 => "10111011110010010111110110001101", 
    38 => "10111010100011101001101100111001", 
    39 => "00111010101011011100110100101101", 
    40 => "00111100001010111111011101101010", 
    41 => "00111100011100010101000111100111", 
    42 => "00111011111000110100011101100011", 
    43 => "10111011000100000011111010100111", 
    44 => "10111100011010001111101100000001", 
    45 => "10111100010010001110001001011101", 
    46 => "10111010111111011110001011101111", 
    47 => "00111011101110000111001101111001", 
    48 => "00111100001100010100011001011111", 
    49 => "00111100001011100011000111010111", 
    50 => "10111011011011110010010000010000", 
    51 => "10111011011010000010000011100110", 
    52 => "00111011111110011011000100110001", 
    53 => "00111011100010111011000010100011", 
    54 => "10111011000010010111111010011001", 
    55 => "10111100011010001010001011101100", 
    56 => "10111100010001010001100101111010", 
    57 => "10111100000100111011011111011000", 
    58 => "00111011111010001000110111110011", 
    59 => "00111100001110011001110101000101", 
    60 => "00111100001001101100111000110110", 
    61 => "00111011101111001011010111111110", 
    62 => "10111011001111010100010010011010", 
    63 => "10111100001111101101101101110011", 
    64 => "10111011110001000001110111010010", 
    65 => "10111011110111101010000000110100", 
    66 => "10111010011100011111010101111011", 
    67 => "00111001010010000100011100101100", 
    68 => "00111010001001001010000001011110", 
    69 => "00111011001001010011011101011101", 
    70 => "10111011001111101111100011001111", 
    71 => "00111011010110110101100101011000", 
    72 => "00111011101001001001011111111010", 
    73 => "10111011010100110011100011111000", 
    74 => "00111011010010010111010100101001", 
    75 => "00111010101101110101111010100110", 
    76 => "10111011011001001000011000100111", 
    77 => "10111001101100000010100100101000", 
    78 => "00110111010110100001101010010011", 
    79 => "00111011011101001001010010010010", 
    80 => "00111011100111000100110110101001", 
    81 => "00111100010010011110011001101000", 
    82 => "00111010100001010010101101001110", 
    83 => "10111001100011101001101100111001", 
    84 => "10111011100011010100001101001010", 
    85 => "10111100001010111110011010100011", 
    86 => "10111100001010101000011001010001", 
    87 => "00111001010110000000000110110100", 
    88 => "10111011000110110001111110101100", 
    89 => "00111011010111111100111000110001", 
    90 => "00111100000011010001110110001010", 
    91 => "00111011111011011110110110101111", 
    92 => "00111011110100101010000111111001", 
    93 => "10111000111010001100100010101100", 
    94 => "10111100001011001001001010011011", 
    95 => "10111100011111000010001000100101", 
    96 => "10111011111001000100001100001011", 
    97 => "00111011011100000111001110011011", 
    98 => "00111100011011000100011000001111", 
    99 => "00111100010001100100011101111000", 
    100 => "10111010110000111000111100110110", 
    101 => "10111011101011000010000101011100", 
    102 => "10111100001101001011001011111011", 
    103 => "10111011111111101100110111010001" );


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

entity L3_up_L2_WEIGHTS_47 is
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

architecture arch of L3_up_L2_WEIGHTS_47 is
    component L3_up_L2_WEIGHTS_47_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_47_rom_U :  component L3_up_L2_WEIGHTS_47_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

