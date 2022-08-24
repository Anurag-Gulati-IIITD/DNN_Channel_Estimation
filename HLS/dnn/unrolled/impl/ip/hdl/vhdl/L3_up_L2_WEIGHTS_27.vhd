-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_27_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_27_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100101000010011111000111110", 
    1 => "00111110001011001111111110101000", 
    2 => "00111110001111100010010101000010", 
    3 => "00111101011101011111111101100001", 
    4 => "10111101100111011000100101001000", 
    5 => "10111110000100001110001101000111", 
    6 => "10111101100101001010001111000110", 
    7 => "00111100110110101001011001001111", 
    8 => "00111101101000001010000101111011", 
    9 => "00111101100011100011000101010001", 
    10 => "10111011111101011010100101100101", 
    11 => "10111101100111101101000011110110", 
    12 => "10111101100000001100011000101110", 
    13 => "10111100101000101011000101110000", 
    14 => "00111101101000111110110110010110", 
    15 => "00111101110111110111100111001000", 
    16 => "00111101011100110111011001001111", 
    17 => "10111101000100100110111010011000", 
    18 => "10111101111001111101010011100001", 
    19 => "10111101110110100100111110000111", 
    20 => "10111101010111111111110001010100", 
    21 => "00111101010100111111000001111000", 
    22 => "00111101111110111110110100110001", 
    23 => "00111101110101100101001010111101", 
    24 => "00111101000101101111111111000001", 
    25 => "10111101100100100011001111011111", 
    26 => "10111101110100110110101111010011", 
    27 => "10111100000100000110100010011000", 
    28 => "00111101100100111111010000100011", 
    29 => "00111101101100110101011101100000", 
    30 => "00111101100110110010010011101010", 
    31 => "00111011100100001110011001101101", 
    32 => "10111101001111110111101111100001", 
    33 => "10111101010100101001010101100100", 
    34 => "10111101000011110100100000111101", 
    35 => "10111100100110010001100110101100", 
    36 => "10111100100110011101011001101011", 
    37 => "10111010100010111111110000100010", 
    38 => "00111100110100010000010011010101", 
    39 => "00111101100000100101100111100010", 
    40 => "00111101100001011111011000110100", 
    41 => "00111100111000111111111111101111", 
    42 => "10111101001001011011101001101111", 
    43 => "10111101101000100001100101100101", 
    44 => "10111101101100010000010101011100", 
    45 => "10111100110100101000001010000100", 
    46 => "00111100101010011011011010110011", 
    47 => "00111101011000100111001010000110", 
    48 => "00111101011100011110001110101000", 
    49 => "00111101001010001101000100001111", 
    50 => "00111100101001010010001001100100", 
    51 => "00111010110111110011011100110011", 
    52 => "00111110001111110100011011101101", 
    53 => "00111101110000011000010100000110", 
    54 => "10111101010011011100110110110011", 
    55 => "10111110000101110101100110101011", 
    56 => "10111110000010010000000011000101", 
    57 => "10111100101000110000111111010000", 
    58 => "00111101100110001101001001011111", 
    59 => "00111101110100011101000101001110", 
    60 => "00111101000100100001110111011010", 
    61 => "10111101011011110000111100010111", 
    62 => "10111101101110111000111011010010", 
    63 => "10111101000001111110111100010111", 
    64 => "00111101001111100100001101100111", 
    65 => "00111101110000100001111010100011", 
    66 => "00111101100011100011001101101010", 
    67 => "10111100111001110111011100001000", 
    68 => "10111101110010001001101110010101", 
    69 => "10111101110110111011101011011100", 
    70 => "10111101001101011010110110010111", 
    71 => "00111101001110110010101110111011", 
    72 => "00111101110110110111010000010101", 
    73 => "00111101111011110100100011000011", 
    74 => "00111101001111000010011001010111", 
    75 => "10111101011110010111011110000101", 
    76 => "10111110000011010111000101101101", 
    77 => "10111101111101101011101110011001", 
    78 => "00111101100111100100011010001101", 
    79 => "00111110000000110010001010101111", 
    80 => "00111101101001000011101100101110", 
    81 => "00111001000011111010011110101000", 
    82 => "10111101011100101111101110100000", 
    83 => "10111101101001000001011001111011", 
    84 => "10111101010101010101100000100001", 
    85 => "10111011101100000111010010100111", 
    86 => "00111100000010110100011111000111", 
    87 => "00111100111110010000101110000101", 
    88 => "00111100111101000111000011101011", 
    89 => "00111101010111000001110001100001", 
    90 => "00111101000111000101011100011001", 
    91 => "00111100010110010011100000010101", 
    92 => "10111100110110100011110000100001", 
    93 => "10111101101001011010111111110011", 
    94 => "10111101101010110000110110010101", 
    95 => "10111100011111101000001001010001", 
    96 => "00111101001100110111100101110100", 
    97 => "00111101101001000100001010000101", 
    98 => "00111101100101100111011011101010", 
    99 => "00111100111010101011000101001111", 
    100 => "10111011101001100011001100000101", 
    101 => "10111100111101000110100010001000", 
    102 => "10111101010100011000100011110100", 
    103 => "10111101101100100111101010100111" );


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

entity L3_up_L2_WEIGHTS_27 is
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

architecture arch of L3_up_L2_WEIGHTS_27 is
    component L3_up_L2_WEIGHTS_27_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_27_rom_U :  component L3_up_L2_WEIGHTS_27_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

