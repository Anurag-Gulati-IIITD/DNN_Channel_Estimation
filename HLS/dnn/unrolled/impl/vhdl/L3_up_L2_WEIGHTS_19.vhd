-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_19_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_19_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100010111000100011001010", 
    1 => "00111011110111011000001011111101", 
    2 => "10111010101010001000111100000000", 
    3 => "10111100001101101001110110110110", 
    4 => "10111100010011000001110010100100", 
    5 => "10111011010010100110000000001011", 
    6 => "00111011111010011100010001010100", 
    7 => "00111011110100111111100111101000", 
    8 => "00111010101101011010101001110001", 
    9 => "10111011011111111001011100100100", 
    10 => "10111011100101001010101100011101", 
    11 => "00111011011010011010001011000110", 
    12 => "00111100000110011001000100110110", 
    13 => "00111010101111011000011110110101", 
    14 => "00111011010110000011010000001001", 
    15 => "10111100001101001111011000010110", 
    16 => "10111100000010000001010111100100", 
    17 => "10111011101100101000010100100011", 
    18 => "00111011100011001001001100100001", 
    19 => "00111100011100011111010101111011", 
    20 => "00111011101111000010111111000111", 
    21 => "10111001101011101001011010000001", 
    22 => "10111011101011101111001011000111", 
    23 => "10111100000001011011111000011011", 
    24 => "00111010111111001101011010000000", 
    25 => "00111011101111011101001100110101", 
    26 => "00111011100111100011110010010111", 
    27 => "10111100100010100100001110111011", 
    28 => "10111100100110111100001101000000", 
    29 => "10111100010001000111000110110100", 
    30 => "00111011101000000110011000111100", 
    31 => "00111100100001111001110001000001", 
    32 => "00111100011101001001110011110101", 
    33 => "00111011101001101000011011101000", 
    34 => "10111100011110100101000010010100", 
    35 => "10111100100100011001100010101111", 
    36 => "10111100001010001110101101000110", 
    37 => "00111011011110000110000110100110", 
    38 => "00111100010010011000000110111111", 
    39 => "00111011101011010010010101101000", 
    40 => "10111010101100001101000011101110", 
    41 => "10111100010110110111101011100101", 
    42 => "10111001101101000101101011100110", 
    43 => "00111100000101001110000110100100", 
    44 => "00111011101111100111001010010111", 
    45 => "10111011011001000010000101111101", 
    46 => "10111100011000001101101010100001", 
    47 => "10111100000000000000111010101110", 
    48 => "10111010101110011101110000101111", 
    49 => "00111011100100101110011000100001", 
    50 => "00111100011110011100111010001110", 
    51 => "10111001000110010001011110010100", 
    52 => "10111011001110101101011111011000", 
    53 => "10111100011110101101011011001011", 
    54 => "10111100011000111001111101110111", 
    55 => "10111011100110011000010010100001", 
    56 => "00111011000101110010000001000011", 
    57 => "00111100000100001010111111100110", 
    58 => "00111011111001010010110111101101", 
    59 => "10111010100100100100011010111111", 
    60 => "10111011111000000100110000000110", 
    61 => "00111011000100000000110001010010", 
    62 => "00111010110010011111101101100001", 
    63 => "00111010111010010111000001110010", 
    64 => "00111011000001000110000111111010", 
    65 => "10111011101011100010000100010000", 
    66 => "10111011100000001100111110011110", 
    67 => "10111011101110111010100110001111", 
    68 => "00111011001001010001010111001111", 
    69 => "00111011101110101111000100000010", 
    70 => "00111100001101111001100101011111", 
    71 => "00111011010000111111001111100000", 
    72 => "10111011110110100100110011101000", 
    73 => "10111100001110011010100111011010", 
    74 => "10111100001000101111100010111110", 
    75 => "00111011110001000011011011111100", 
    76 => "00111011111010100100001000101001", 
    77 => "00111100000100100111010011100010", 
    78 => "10111100100001011011111000011011", 
    79 => "10111100000011100000010000111010", 
    80 => "10111010001100001111001001111100", 
    81 => "00111100011100001000000000110000", 
    82 => "00111100101000111010101100000000", 
    83 => "00111011011011011110010101001011", 
    84 => "10111100011110101000111101111110", 
    85 => "10111100010110010101100110100011", 
    86 => "10111100001001011000011100001110", 
    87 => "00111011000100011101000101001110", 
    88 => "00111100011011000011100101111010", 
    89 => "00111100100011110110011010100101", 
    90 => "00111011011101110010001011100010", 
    91 => "10111010101111011010100101000011", 
    92 => "10111011101100000001100001100001", 
    93 => "00111011010101110011100001100001", 
    94 => "00111011101001111010010000011110", 
    95 => "00111011111111011110101101010011", 
    96 => "10111011110101000000101010101111", 
    97 => "10111011111001101110101010000101", 
    98 => "10111011111000000000000010000110", 
    99 => "00111011010001011111101111111000", 
    100 => "00111100100000000111011110001010", 
    101 => "00111011101010010011111100101001", 
    102 => "10111011101001100110010101011010", 
    103 => "10111100010010111101100110001000" );


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

entity L3_up_L2_WEIGHTS_19 is
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

architecture arch of L3_up_L2_WEIGHTS_19 is
    component L3_up_L2_WEIGHTS_19_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_19_rom_U :  component L3_up_L2_WEIGHTS_19_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


