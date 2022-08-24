-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_96_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_96_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001101001011001011111011", 
    1 => "00111100001111101110110000111001", 
    2 => "00111100000001010011001110110001", 
    3 => "00111110000000010001111101001111", 
    4 => "10111101111100110000011110101111", 
    5 => "00111101111001000010000101111101", 
    6 => "10111101101010111011101100011111", 
    7 => "10111011000000110101010110001010", 
    8 => "00111101100000101010111111011110", 
    9 => "00111100011010101011001101101000", 
    10 => "10111101101100011010001010100101", 
    11 => "10111101011000100000100010011110", 
    12 => "10111101001100100111011001110101", 
    13 => "10111100111011111010011000010110", 
    14 => "00111101101011101110100101010111", 
    15 => "10111100110011010110011111111101", 
    16 => "10111101001000111001001111101110", 
    17 => "00111011101100100101001011001110", 
    18 => "10111101010010100110000000001011", 
    19 => "00111101010101110010111111111101", 
    20 => "00111100100000010111100101111101", 
    21 => "10111101111001111011010111110010", 
    22 => "00111101001010000000000001100101", 
    23 => "00111101001100110111110010011010", 
    24 => "00111101100000000110101001101110", 
    25 => "10111101101000110001000101100010", 
    26 => "00111101000000110000101000001011", 
    27 => "00111101011101110110100000010110", 
    28 => "10111101101110000100100100000010", 
    29 => "00111011110101011100111110101011", 
    30 => "10111101101010000101111111010000", 
    31 => "00111101111111111100101110010010", 
    32 => "00111101100011001101110110010100", 
    33 => "00111101100111001010001100011110", 
    34 => "10111110010100101000100100010010", 
    35 => "00111110001001111111101101101010", 
    36 => "00111101101101011001111101101111", 
    37 => "00111101000100011000001110110110", 
    38 => "10111110000010101110000111001110", 
    39 => "10111100111010111111010001000101", 
    40 => "00111100100101000011011111000101", 
    41 => "00111110000110100101110111110010", 
    42 => "00111101010101110011000100001010", 
    43 => "00111110001011011000110011110100", 
    44 => "10111100011100000010100000011100", 
    45 => "00111100000110111000010001010101", 
    46 => "00111100100010010001110000001000", 
    47 => "00111100111010110101011011111100", 
    48 => "00111100000101001110010111010110", 
    49 => "00111110010110101011001101101000", 
    50 => "10111101000001110010000010000110", 
    51 => "00111101110110010101101110111100" );


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

entity L2_up_L1_WEIGHTS_96 is
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

architecture arch of L2_up_L1_WEIGHTS_96 is
    component L2_up_L1_WEIGHTS_96_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_96_rom_U :  component L2_up_L1_WEIGHTS_96_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


