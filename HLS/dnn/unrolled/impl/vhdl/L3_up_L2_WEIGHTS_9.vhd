-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_9_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110111001011011110010001", 
    1 => "10111101001100100100011101000101", 
    2 => "10111101011011001101010110110111", 
    3 => "10111101000101100110011110110110", 
    4 => "10111100010111011101101100010010", 
    5 => "00111011110011100010110100011111", 
    6 => "00111100000011001110001011010010", 
    7 => "00111100010100001111000111110101", 
    8 => "00111101001011010110010001010010", 
    9 => "00111101011001101001100111001000", 
    10 => "00111100110001011111100111011111", 
    11 => "10111101001011001011001000010000", 
    12 => "10111101110011011000100110001011", 
    13 => "10111101111001100111101011011001", 
    14 => "10111101001100110100110001011110", 
    15 => "00111101010100100100101011110001", 
    16 => "00111110000001010001110011100011", 
    17 => "00111101111110110100111001010101", 
    18 => "00111101000111011100100000110010", 
    19 => "10111101010010111000001110001100", 
    20 => "10111110000000111001011100010100", 
    21 => "10111110000000010011000110101001", 
    22 => "10111101011011101101100010010000", 
    23 => "00111100101101000111000111111000", 
    24 => "00111101110000001101110000110011", 
    25 => "00111101111110000110110010101001", 
    26 => "00111100000010111010110001110001", 
    27 => "10111101100111111010111000110110", 
    28 => "10111110000010000100010001001010", 
    29 => "10111101111101001101110111111000", 
    30 => "10111100111101000110100010001000", 
    31 => "00111101100001001111011001011010", 
    32 => "00111110000010111000001000111101", 
    33 => "00111101111111011000001001110111", 
    34 => "00111101000100011010010000111000", 
    35 => "10111101100111001010110000001000", 
    36 => "10111110000100100111110101000110", 
    37 => "10111110000001110000101110001101", 
    38 => "10111101001111001010101110000010", 
    39 => "00111101100011010011011000101111", 
    40 => "00111110000101010100010101000001", 
    41 => "00111110000011101100011010111101", 
    42 => "00111101001110101010001001011110", 
    43 => "10111101100010110111100110010110", 
    44 => "10111110001000011101010011111010", 
    45 => "10111110000011101000100101100101", 
    46 => "10111101000111011000101101100001", 
    47 => "00111101101100111100101111000101", 
    48 => "00111110001000110110111100111011", 
    49 => "00111101111001110001111001101101", 
    50 => "10111100001010110101100000001000", 
    51 => "10111101111001101111110001011001", 
    52 => "10111101100011010010010101101000", 
    53 => "10111101011101101001101110011101", 
    54 => "10111100011011101011011100000010", 
    55 => "00111101000011001100100110100111", 
    56 => "00111101000001000110011100111000", 
    57 => "00111100110001110000010000110110", 
    58 => "00111100101001100010110010111010", 
    59 => "00111100101111110111110011101110", 
    60 => "00111100001011000011001000100011", 
    61 => "10111100110001100101011000100110", 
    62 => "10111101100100000110001101011010", 
    63 => "10111101101111101110110101000110", 
    64 => "10111101000100111011111000100011", 
    65 => "00111101010000010110110011101000", 
    66 => "00111101111110100000000111101111", 
    67 => "00111101111100110100110001011110", 
    68 => "00111101010010100001010110011000", 
    69 => "10111101100010101011111001101010", 
    70 => "10111110000000111100110011010001", 
    71 => "10111101111111011010100000110111", 
    72 => "10111101010001000101100110010110", 
    73 => "00111101001101110110110001001000", 
    74 => "00111101110111101111000111111110", 
    75 => "00111110000001010001011001010101", 
    76 => "00111101100011100110111010101000", 
    77 => "10111100010010010101001110011100", 
    78 => "10111110000010100101011011011110", 
    79 => "10111101110011100111111101101111", 
    80 => "10111100100001000101110111001000", 
    81 => "00111101101000001101010111101001", 
    82 => "00111110000011101111000010101110", 
    83 => "00111101111101100010000011101111", 
    84 => "00111100101011010010001101001111", 
    85 => "10111101100011111011010111010000", 
    86 => "10111110000100110100010110001101", 
    87 => "10111110000000111000100011101100", 
    88 => "10111101001001001000010100011011", 
    89 => "00111101100111001010101011111100", 
    90 => "00111110000110001010110101101001", 
    91 => "00111110000100000010011010001001", 
    92 => "00111101010010110100000001110000", 
    93 => "10111101100000011010110001011000", 
    94 => "10111110000101101101001111111010", 
    95 => "10111110000100101000010010011101", 
    96 => "10111101001111100011110100011101", 
    97 => "00111101101000011111001100011111", 
    98 => "00111110001011011011111101001000", 
    99 => "00111110000011001011100011100001", 
    100 => "00111100101111010100011010110010", 
    101 => "10111101110111110101010100010101", 
    102 => "10111110000110010101110100001011", 
    103 => "10111101100101011100101011110011" );


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

entity L3_up_L2_WEIGHTS_9 is
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

architecture arch of L3_up_L2_WEIGHTS_9 is
    component L3_up_L2_WEIGHTS_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_9_rom_U :  component L3_up_L2_WEIGHTS_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


