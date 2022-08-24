-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_14_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_14_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010100001101001110001101", 
    1 => "10111101011110001110110000010000", 
    2 => "00111101100111010011000110111010", 
    3 => "10111101111001011010101000101110", 
    4 => "00111101111100001000111011011110", 
    5 => "00111101111101000001100101011101", 
    6 => "00111100101000100000101111000100", 
    7 => "00111100011011101111101000011110", 
    8 => "00111110001000110010110010100101", 
    9 => "10111110000000011000111111000101", 
    10 => "00111110001010011001001110010010", 
    11 => "00111110001000110001001110111110", 
    12 => "00111101011100110110010001111100", 
    13 => "10111101100011011011001101111101", 
    14 => "00111100111000001111101000010110", 
    15 => "10111101100000100100111011011111", 
    16 => "00111100111010100100110010100101", 
    17 => "10111101001011000011111010111000", 
    18 => "10111101100011000010110011100100", 
    19 => "00111101101111110110010111011100", 
    20 => "00111101111100000110111001011101", 
    21 => "10111110001000110001001101111011", 
    22 => "00111101000110110001000011111101", 
    23 => "00111101111010110100101111111001", 
    24 => "00111101110111110000000110111000", 
    25 => "00111100111110010000110110011101", 
    26 => "10111100100010010000110101011010", 
    27 => "00111101001100111001010111000100", 
    28 => "00111101100111011100111110001001", 
    29 => "10111110000100110110110000010110", 
    30 => "00111101010010000111000000010001", 
    31 => "10111101000010010001000010000000", 
    32 => "10111100000110010101101010101111", 
    33 => "10111101000100010110001100110101", 
    34 => "00111101100111111010110110110000", 
    35 => "00111101010000100110000100111001", 
    36 => "00111000001000111001001111101110", 
    37 => "10111110000000001111000000100000", 
    38 => "10111101111000011010001011101000", 
    39 => "00111110001010001010111001110101", 
    40 => "10111101110101100000010010011111", 
    41 => "10111110000000010100101101011010", 
    42 => "00111101011110100000011100101101", 
    43 => "00111110000101001011011111110110", 
    44 => "00111100100111110011000111110100", 
    45 => "10111101100101001111111110000110", 
    46 => "00111110000110001110111101111000", 
    47 => "10111101101001011101000001110100", 
    48 => "00111101011001110110110110011000", 
    49 => "10111110010011010100001101001010", 
    50 => "10111110001111100001000110011001", 
    51 => "10111011001000110000110110110111" );


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

entity L2_up_L1_WEIGHTS_14 is
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

architecture arch of L2_up_L1_WEIGHTS_14 is
    component L2_up_L1_WEIGHTS_14_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_14_rom_U :  component L2_up_L1_WEIGHTS_14_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


