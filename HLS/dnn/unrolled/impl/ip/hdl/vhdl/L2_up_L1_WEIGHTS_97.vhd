-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_97_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 52
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L2_up_L1_WEIGHTS_97_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100100100100011010111111000", 
    1 => "10111110000001100101010000001101", 
    2 => "00111101010101100111110110111011", 
    3 => "10111100010011100010110100011111", 
    4 => "10111011111101010011110001011000", 
    5 => "10111101010010010100111001011101", 
    6 => "00111100000001100011001110001011", 
    7 => "00111101000101100000111010010101", 
    8 => "00111101110110110110111011010110", 
    9 => "00111110001010011110011101110101", 
    10 => "10111101000110000000111101010110", 
    11 => "00111101101100110110100010101101", 
    12 => "10111101110011011110011001011000", 
    13 => "10111110001001101010100111000101", 
    14 => "00111101110101011011001101011011", 
    15 => "10111100111111100101101001111001", 
    16 => "10111100000110111011111100001110", 
    17 => "10111110000000111110001101011100", 
    18 => "10111101100100100110110100000101", 
    19 => "00111100000100111100000000111100", 
    20 => "00111101100000010000111110010101", 
    21 => "00111010000001111100101001100100", 
    22 => "10111100101100011001101001000001", 
    23 => "00111100111000001000100011010111", 
    24 => "00111000110110100001101010010011", 
    25 => "00111001110111011100011000011001", 
    26 => "00111100110101010000101010001001", 
    27 => "00111101000000010110001101111000", 
    28 => "10111110001011010111101011011101", 
    29 => "00111100010111110001111000001000", 
    30 => "10111101110001000000100101011111", 
    31 => "00111101111010010111100101011011", 
    32 => "10111101010000000100001100011100", 
    33 => "00111101111011001001010100111010", 
    34 => "00111011101011100001100010101101", 
    35 => "00111101111001111110010100100001", 
    36 => "10111010110010110010100101011111", 
    37 => "00111101001101000100110000111000", 
    38 => "10111100111111101000000000111001", 
    39 => "10111101111100110000111010000000", 
    40 => "10111010111101100000010110101011", 
    41 => "00111100101001000010010010100010", 
    42 => "10111110000110101010101100000100", 
    43 => "10111100110111111110011101011100", 
    44 => "10111100100110111000100010000111", 
    45 => "10111101011010100001110101110101", 
    46 => "10111011110111111110011101011100", 
    47 => "10111100100101000110010111101001", 
    48 => "00111101001010101110100011100010", 
    49 => "00111101100100011001011110100010", 
    50 => "10111110000100111101010001101011", 
    51 => "00111101000110101000001001100010" );


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

entity L2_up_L1_WEIGHTS_97 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_up_L1_WEIGHTS_97 is
    component L2_up_L1_WEIGHTS_97_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_97_rom_U :  component L2_up_L1_WEIGHTS_97_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


