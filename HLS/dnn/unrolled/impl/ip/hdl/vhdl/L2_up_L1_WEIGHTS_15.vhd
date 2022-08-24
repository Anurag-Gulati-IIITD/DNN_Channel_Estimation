-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_15_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_15_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101010010010111111010011001", 
    1 => "10111110000001000110111101011000", 
    2 => "00111101110110000000000110110100", 
    3 => "10111101100100111100110011010001", 
    4 => "10111011100110011001010101101000", 
    5 => "00111110011010010111000001110010", 
    6 => "00111110000010110001101011110100", 
    7 => "10111101111011001010101111000101", 
    8 => "10111100110100110111100111111011", 
    9 => "10111011100101111010111011011110", 
    10 => "00111110010000111100101011111011", 
    11 => "00111101101111000001000011011000", 
    12 => "10111101001010000110101101011001", 
    13 => "00111101111110010101101010101111", 
    14 => "10111101011010001100000101010101", 
    15 => "10111101010110000010101110100110", 
    16 => "10111101010000001100101001100000", 
    17 => "10111101000011101111111011010110", 
    18 => "00111100100110010110000011111010", 
    19 => "00111100101001011000001011011100", 
    20 => "00111011100111010101101000011000", 
    21 => "10111001111001000001000010110110", 
    22 => "00111101110101000111110001110100", 
    23 => "00111101000110011110111110010101", 
    24 => "00111101110000101111101101011101", 
    25 => "00111101001101001011110101110111", 
    26 => "00111101010010011101000101110000", 
    27 => "00111110001010011010101001100001", 
    28 => "00111100000110101111100111101100", 
    29 => "10111110001111110001001110001100", 
    30 => "10111100000110101010011000001001", 
    31 => "10111101111000010111100101111101", 
    32 => "10111011000110000010110010110010", 
    33 => "10111101100000010000000101101101", 
    34 => "00111110000010101100111111111010", 
    35 => "00111101110010110011100100011001", 
    36 => "00111101010101111000100100011110", 
    37 => "10111101110000001101110111000110", 
    38 => "10111110011011100010010101000010", 
    39 => "00111100110101000010000111000000", 
    40 => "10111101010110100101101110010110", 
    41 => "00111101011100010101101101010111", 
    42 => "10111100101110001111101111001010", 
    43 => "00111101000110110001111010011111", 
    44 => "10111011010010101010001100100111", 
    45 => "00111100001001000110000101110100", 
    46 => "00111100110000001101101100100111", 
    47 => "10111101100001001101101110011100", 
    48 => "10111101001000111000100001100110", 
    49 => "00111100101011110101100110001010", 
    50 => "00111100011000011111001110100101", 
    51 => "10111101011111010010001100001100" );


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

entity L2_up_L1_WEIGHTS_15 is
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

architecture arch of L2_up_L1_WEIGHTS_15 is
    component L2_up_L1_WEIGHTS_15_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_15_rom_U :  component L2_up_L1_WEIGHTS_15_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


