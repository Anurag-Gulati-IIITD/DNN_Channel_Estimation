-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_up_L2_WEIGHTS_34_rom is 
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


architecture rtl of L3_up_L2_WEIGHTS_34_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000100101010101101101001", 
    1 => "10111101010000101001100111011001", 
    2 => "00111100000100110111110100100000", 
    3 => "10111100011110110100001111011001", 
    4 => "10111101000100110101101110010010", 
    5 => "10111100111101110111001010010011", 
    6 => "00111100000001111010010010100101", 
    7 => "00111101001110001101111001101110", 
    8 => "00111101100001111100111100011100", 
    9 => "00111100101110110000110001000110", 
    10 => "10111101010111011111111111000101", 
    11 => "10111101110101100111001010111001", 
    12 => "10111101100000010010001001110101", 
    13 => "10111100101111111010111101000010", 
    14 => "00111101010000010110000001010010", 
    15 => "00111101100000110000011101101100", 
    16 => "00111100101101011010011001000000", 
    17 => "10111100110011110100010000001011", 
    18 => "10111011100110100011010011001010", 
    19 => "00111101001001001100100000110110", 
    20 => "00111100100100011100010010111001", 
    21 => "10111100111100011100100101110001", 
    22 => "10111101100101001100101000001100", 
    23 => "10111110000000110101100100110110", 
    24 => "10111101011100100000111010100110", 
    25 => "00111101010100010101001101111010", 
    26 => "00111101111000110011001001101010", 
    27 => "00111101011100011000110110101100", 
    28 => "10111101010101111101100111011100", 
    29 => "10111110000010010011000100000001", 
    30 => "10111101101001110001011000001001", 
    31 => "10111101101000010001001010111010", 
    32 => "00111011000000000011000000111100", 
    33 => "00111101010110010101101010101111", 
    34 => "00111101101101101101110110101101", 
    35 => "00111101110000001010101001100101", 
    36 => "00111101011000100011011011000001", 
    37 => "10111100101110101111110110010111", 
    38 => "10111101101110010001101010111001", 
    39 => "10111101111101001010000110101101", 
    40 => "10111101101000100000001111100110", 
    41 => "00111011000010001111100001100010", 
    42 => "00111101101001111001011100000011", 
    43 => "00111110000010001011110010011101", 
    44 => "00111101100000111001101101000101", 
    45 => "00111010110000010111011001010111", 
    46 => "10111101110100111110110011001100", 
    47 => "10111101110011101100101101110101", 
    48 => "10111101010011110000011100111010", 
    49 => "00111011101111101111000001101011", 
    50 => "00111101000100110110100100110100", 
    51 => "00111101100001101110100011110011", 
    52 => "10111100010000010100110001100110", 
    53 => "10111100101010011000110011000001", 
    54 => "00111100000001011001010000101001", 
    55 => "00111100110111100011000100001110", 
    56 => "00111100000111011101011111101101", 
    57 => "00111101000011110100110101111011", 
    58 => "00111101000001000100000101111000", 
    59 => "00111100101100011100011001001100", 
    60 => "10111100111010001101100101110011", 
    61 => "10111101101001000011110011000000", 
    62 => "10111101100100110100100110111111", 
    63 => "10111100010011010110110000101111", 
    64 => "00111101001111101101100001001101", 
    65 => "00111101101011001010110011010010", 
    66 => "00111101010000111110010000100110", 
    67 => "10111100101110011010100111011010", 
    68 => "10111100110011111000010100001110", 
    69 => "10111100010001010001110110101100", 
    70 => "00111100001011101010111110101011", 
    71 => "00111011101000111100011001000011", 
    72 => "10111101011001110011011100010001", 
    73 => "10111101100111111100001100101111", 
    74 => "10111101011111010001100110011100", 
    75 => "00111101001010001010001111111001", 
    76 => "00111101101010100011000011011011", 
    77 => "00111101110010101010100001100101", 
    78 => "10111101101000100110100100010110", 
    79 => "10111110000000110110000100010011", 
    80 => "10111101110111000000101000000111", 
    81 => "10111101100000100101100111100010", 
    82 => "00111101001110010110100011010111", 
    83 => "00111101101100001110101110101011", 
    84 => "00111101100001000111101100100100", 
    85 => "00111101101000110001110011101011", 
    86 => "00111100110101001101100000110100", 
    87 => "10111100110000100000110101010110", 
    88 => "10111101101001111001110011000111", 
    89 => "10111101110011110111110010101010", 
    90 => "10111101101011000110111001101110", 
    91 => "00111011100111001100001100011010", 
    92 => "00111101110100100000111100101100", 
    93 => "00111110000011000110101110001011", 
    94 => "00111101101110110101100111011110", 
    95 => "00111100101011001111101101110110", 
    96 => "10111101100101010101101000111010", 
    97 => "10111101111010010010000000111010", 
    98 => "10111101000111110000111101011010", 
    99 => "00111100010011001001101001111000", 
    100 => "00111101100100111100100000011001", 
    101 => "00111101100111000000010011001001", 
    102 => "00111101001011111110110101100011", 
    103 => "00111100011000010110100100111100" );


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

entity L3_up_L2_WEIGHTS_34 is
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

architecture arch of L3_up_L2_WEIGHTS_34 is
    component L3_up_L2_WEIGHTS_34_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_up_L2_WEIGHTS_34_rom_U :  component L3_up_L2_WEIGHTS_34_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


