-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_74_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_74_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100111110011000000011110101", 
    1 => "00111101110001100100110111000010", 
    2 => "00111100010001101000101010010011", 
    3 => "00111101001101111011011111001000", 
    4 => "10111101011010000000101011100001", 
    5 => "10111101101000111110100011011110", 
    6 => "10111110000100010111011010011011", 
    7 => "00111101010110111111000101100011", 
    8 => "10111110001101011100010110110101", 
    9 => "00111101001110001000101010001011", 
    10 => "00111110010100100010011010000001", 
    11 => "10111101011011110101011001100101", 
    12 => "00111100110101100010111000001010", 
    13 => "10111101111111000100010111001100", 
    14 => "00111100111100111011010000101101", 
    15 => "10111101100000000000110100011011", 
    16 => "10111101011000100101110010000001", 
    17 => "10111101000111010101110100111110", 
    18 => "00111011011000011001001100101101", 
    19 => "00111011111010101110100111101110", 
    20 => "00111011000001001100011010100100", 
    21 => "10111101000010010001100111110000", 
    22 => "00111101000111010110011010101110", 
    23 => "10111110010011010100000001101000", 
    24 => "00111101000101100110100111001111", 
    25 => "10111101001101111001011101000110", 
    26 => "10111110000001101001111010000000", 
    27 => "00111101101000011110001011011111", 
    28 => "10111101111000001110000101110010", 
    29 => "00111101101011110111110010101010", 
    30 => "10111100011010000111100011111011", 
    31 => "00111101100011101011000100111110", 
    32 => "10111100100011001110111101100111", 
    33 => "10111101011010011001110110001000", 
    34 => "10111110010001001111010011000111", 
    35 => "00111101111101001110010101001111", 
    36 => "10111011111000111100010100110111", 
    37 => "10111101110111000111101000111010", 
    38 => "10111101111101000101111000001011", 
    39 => "00111101100101110010100000100000", 
    40 => "10111101011110011000111010010111", 
    41 => "00111101010001111011011001111000", 
    42 => "10111101110001110100010100111001", 
    43 => "00111100110111111110011101011100", 
    44 => "00111101110000000111101110111011", 
    45 => "00111101110101110011000100001010", 
    46 => "10111110000001010010110101100110", 
    47 => "10111011101000111001110001010010", 
    48 => "10111110000010011000000010110010", 
    49 => "00111110001110010111110011000100", 
    50 => "00111110010110101110110111011101", 
    51 => "10111100100011100110101011111101" );


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

entity L2_up_L1_WEIGHTS_74 is
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

architecture arch of L2_up_L1_WEIGHTS_74 is
    component L2_up_L1_WEIGHTS_74_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_74_rom_U :  component L2_up_L1_WEIGHTS_74_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


