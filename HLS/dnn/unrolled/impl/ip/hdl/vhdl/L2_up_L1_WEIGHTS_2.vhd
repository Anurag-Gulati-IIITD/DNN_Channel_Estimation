-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_2_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100000010111111111000111", 
    1 => "00111110011000011000001001100110", 
    2 => "10111101011111001011101100111101", 
    3 => "10111101011111011101001100110101", 
    4 => "00111110001011110001001111001111", 
    5 => "10111101101011001011011101001110", 
    6 => "10111101011000010001110110111101", 
    7 => "10111100111000111111100110100101", 
    8 => "00111101011011011000110100110111", 
    9 => "10111101111110010001101010111001", 
    10 => "10111100100011110111100110000101", 
    11 => "00111101110011100101010101111110", 
    12 => "10111011000010100000010011010001", 
    13 => "10111110001011100111101010110111", 
    14 => "10111101100010110110111110100000", 
    15 => "00111110000111100111100001011011", 
    16 => "10111101001000001111110000101111", 
    17 => "10111100001100011000100101111010", 
    18 => "10111100010110111111000001010110", 
    19 => "00111101000101000001011101000100", 
    20 => "00111101100100011001110111101101", 
    21 => "10111101001101010010110010011101", 
    22 => "10111101011101110001111110111100", 
    23 => "10111110100011000111100000100001", 
    24 => "00111101110100010010011001100011", 
    25 => "10111100101101111100100110011011", 
    26 => "10111101110000101110100100000011", 
    27 => "00111110101011001101000101100011", 
    28 => "10111100110000111001011110011010", 
    29 => "00111101100011111001111010111111", 
    30 => "00111101111001110011010001110010", 
    31 => "10111101010000001001000010110100", 
    32 => "10111101101001001101010001000101", 
    33 => "00111011110000110001000101100010", 
    34 => "00111101100110000011000111110000", 
    35 => "00111110010101011011001110011110", 
    36 => "00111101100111001011110001001001", 
    37 => "00111101000100101011101100100011", 
    38 => "10111110100000010010011000100000", 
    39 => "10111101010001000010100101011010", 
    40 => "00111100111011100000000010001111", 
    41 => "10111101100100101011111011001111", 
    42 => "00111101100010000101110100110001", 
    43 => "10111110011000111111111101101001", 
    44 => "10111101001100110000101001001110", 
    45 => "10111101010001010101000000000001", 
    46 => "00111100110100011000010011000010", 
    47 => "10111101010111100000010100000011", 
    48 => "00111101100011010101000101110010", 
    49 => "00111011011110101100111001101000", 
    50 => "10111101111110010110100011010111", 
    51 => "10111100101001100011000011101100" );


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

entity L2_up_L1_WEIGHTS_2 is
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

architecture arch of L2_up_L1_WEIGHTS_2 is
    component L2_up_L1_WEIGHTS_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_2_rom_U :  component L2_up_L1_WEIGHTS_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


