-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_29_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_29_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100010110100001110010110", 
    1 => "00111101101110101100101101000011", 
    2 => "10111011111000100010101000101100", 
    3 => "10111000100011001000001001011010", 
    4 => "00111100111011100111111001100011", 
    5 => "10111101110100011111100100100111", 
    6 => "00111101001100100110001110010101", 
    7 => "10111100010110010101010101110001", 
    8 => "10111110010000110010110001100010", 
    9 => "10111101110111000111000001000011", 
    10 => "10111100010011010000011110000101", 
    11 => "00111100110010001110011010001110", 
    12 => "10111101001011101000111000011101", 
    13 => "10111101101010111000111000001000", 
    14 => "00111101101000000001011000000101", 
    15 => "10111101101010101111110101010100", 
    16 => "00111100111111011101010001000001", 
    17 => "00111101100101001101001101111100", 
    18 => "00111100101110010001001011011100", 
    19 => "10111101010000010000101101100011", 
    20 => "10111101010100001000010011101000", 
    21 => "00111100110001110010100111110110", 
    22 => "10111011111111011101001000101000", 
    23 => "00111101011011110111101100011000", 
    24 => "00111100000111001010100111101111", 
    25 => "00111101010010110011100000001101", 
    26 => "00111110001000011111110110011100", 
    27 => "00111110000011110110101001010001", 
    28 => "10111101101000001111010001010001", 
    29 => "00111101101100000011001000010010", 
    30 => "10111101111101010101100000100001", 
    31 => "10111101010110001010000100010110", 
    32 => "00111101001110110000011100000111", 
    33 => "10111100100110100100100111000011", 
    34 => "10111101011011100010000100010000", 
    35 => "10111110011010001100001110110001", 
    36 => "10111101001010000101110010101011", 
    37 => "10111100101001000010000001110001", 
    38 => "10111110010101011110100000001100", 
    39 => "10111100100010100101010010000010", 
    40 => "00111101100011011110010011000101", 
    41 => "10111011000100011111001011011100", 
    42 => "00111101111100001011000001101100", 
    43 => "00111101100101111011101111111001", 
    44 => "10111101001110111010111011001101", 
    45 => "00111100101010010110011100000010", 
    46 => "10111100010011110010100011001000", 
    47 => "00111101011001011000000111001111", 
    48 => "10111011110000000110100111101000", 
    49 => "00111101101100111110111101101011", 
    50 => "00111110000001000111010010010111", 
    51 => "00111101001000100010010111111010" );


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

entity L2_up_L1_WEIGHTS_29 is
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

architecture arch of L2_up_L1_WEIGHTS_29 is
    component L2_up_L1_WEIGHTS_29_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_29_rom_U :  component L2_up_L1_WEIGHTS_29_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


