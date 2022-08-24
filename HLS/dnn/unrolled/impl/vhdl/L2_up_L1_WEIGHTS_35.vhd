-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_35_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_35_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100101010111011101010011001", 
    1 => "10111101001111001000110100011001", 
    2 => "10111101001001010001011011011011", 
    3 => "00111100001001100100011111111110", 
    4 => "00111101111100001000101100110011", 
    5 => "10111110001110010101001110011100", 
    6 => "00111101110010000100011000100000", 
    7 => "00111101110100110101110110101011", 
    8 => "10111110000001010010101111010100", 
    9 => "10111101000010001101001110101110", 
    10 => "00111110000111000111110111100101", 
    11 => "00111101000001000100011010110111", 
    12 => "10111011000001111011100110011101", 
    13 => "10111101011000111001100000100000", 
    14 => "00111110000110011101001101000110", 
    15 => "00111101100110110001001000001010", 
    16 => "10111100110011110001110000110010", 
    17 => "10111100110110001110110010010110", 
    18 => "10111101110010011110100110001110", 
    19 => "10111101011010011000110111001110", 
    20 => "00111101101010011101000101110000", 
    21 => "10111100001000101110110000101001", 
    22 => "10111100001100110010110011101001", 
    23 => "00111101111110100000110101111000", 
    24 => "10111101001101101010101001001100", 
    25 => "00111100110100100110001100001111", 
    26 => "10111101110100111011110110011101", 
    27 => "10111101011100010011101111100010", 
    28 => "10111100001010000001110111000001", 
    29 => "00111101111001110101001001010100", 
    30 => "10111110011001110011101110000110", 
    31 => "00111101110111110001011010110001", 
    32 => "10111101100011100110111010101000", 
    33 => "00111101010100010110101110011000", 
    34 => "00111101010000001000011000111000", 
    35 => "00111101111101101100001001101010", 
    36 => "10111101001111100001100001101010", 
    37 => "10111110010001000110001011000011", 
    38 => "10111101010000010000000111110011", 
    39 => "10111101110000011010111101111101", 
    40 => "10111101010011100110000010000000", 
    41 => "10111101100101010010010000111010", 
    42 => "10111100101010101101100000011011", 
    43 => "10111101100010001100111011110110", 
    44 => "00111100100100111111110100001101", 
    45 => "00111100010001000111111001001010", 
    46 => "10111101001001100000011011111011", 
    47 => "10111100010111001000101110000111", 
    48 => "10111101010111111011100000101100", 
    49 => "10111101010100001101100011001011", 
    50 => "00111110000011101011100011011000", 
    51 => "00111101101100100010010010101011" );


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

entity L2_up_L1_WEIGHTS_35 is
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

architecture arch of L2_up_L1_WEIGHTS_35 is
    component L2_up_L1_WEIGHTS_35_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_35_rom_U :  component L2_up_L1_WEIGHTS_35_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


