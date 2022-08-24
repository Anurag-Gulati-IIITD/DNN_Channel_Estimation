-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_8_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100000001001011011111111", 
    1 => "10111101110010101010111110111100", 
    2 => "10111101011100001110000110110101", 
    3 => "10111101101011010000100000001011", 
    4 => "00111010000000111101101111000010", 
    5 => "10111100110011101010001010010000", 
    6 => "00111101010111101000010111111101", 
    7 => "10111100001101111101100001001001", 
    8 => "00111110001010111101011100101100", 
    9 => "00111101000001101110101100001011", 
    10 => "00111101111000001100011100111011", 
    11 => "00111011110001101000101010010011", 
    12 => "10111101010010100011010000000001", 
    13 => "00111100100001011110111001010111", 
    14 => "10111110000100011001101100001011", 
    15 => "00111101010001001100110011101110", 
    16 => "00111100101110010011001001010001", 
    17 => "00111101100001001010101011011010", 
    18 => "10111100010110111011111000000001", 
    19 => "00111100000111010100110110000011", 
    20 => "10111101001011110101110110111100", 
    21 => "10111101011011110110000111101101", 
    22 => "00111100110011110001100000000001", 
    23 => "00111101101001111110011111000000", 
    24 => "10111101011010110010111100100011", 
    25 => "10111101001111011100100010111000", 
    26 => "00111110000111010001000001101111", 
    27 => "00111110001111000110000111011000", 
    28 => "00111101111000100101000001110010", 
    29 => "00111101110000110111000111011010", 
    30 => "00111110000001111001101000101000", 
    31 => "00111101100101010011101111010001", 
    32 => "10111100010110000110001000101100", 
    33 => "10111101000001110100100101101011", 
    34 => "00111100111110010101010011101011", 
    35 => "10111110001001110011001001011001", 
    36 => "00111100101110010000010000101110", 
    37 => "10111101001100101000110001111010", 
    38 => "10111101111000011010011010010011", 
    39 => "10111010000111111110100001101000", 
    40 => "00111100001001001011100110001000", 
    41 => "10111101010010100101000001010000", 
    42 => "10111101100000011110011110010110", 
    43 => "00111101110000101001011100111001", 
    44 => "10111101000100001111100101001101", 
    45 => "00111101111000111001000001000011", 
    46 => "00111110000111110010000001100100", 
    47 => "10111101001101100101000100101011", 
    48 => "10111101010000101100110100111010", 
    49 => "10111101101000001100011100111011", 
    50 => "10111101110001001010011000100010", 
    51 => "00111101011011001010000000111100" );


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

entity L2_up_L1_WEIGHTS_8 is
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

architecture arch of L2_up_L1_WEIGHTS_8 is
    component L2_up_L1_WEIGHTS_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_8_rom_U :  component L2_up_L1_WEIGHTS_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


