-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_58_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_58_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110011001010000000111100", 
    1 => "10111101101010011111010000001010", 
    2 => "10111101110100001001000011110111", 
    3 => "10111110000111001011111001100010", 
    4 => "00111101001101100001010001011001", 
    5 => "10111101110111111001000111100110", 
    6 => "00111101000100111101010100110100", 
    7 => "00111101000111000001010100001001", 
    8 => "00111110000010101101000011000100", 
    9 => "10111101101010101011000001000010", 
    10 => "00111101101111100001001100101011", 
    11 => "00111101001100001111010110100001", 
    12 => "10111101110010111101001100111101", 
    13 => "10111101101100110010001001101100", 
    14 => "10111101110010000000101101100111", 
    15 => "10111101100110100010110011101101", 
    16 => "00111101100010111101101010010100", 
    17 => "00111110001010100010000001011000", 
    18 => "00111101101001010001111010111000", 
    19 => "10111101000000111111010111111001", 
    20 => "10111101100011011000111101010000", 
    21 => "00111101011010001101111110111101", 
    22 => "10111101011011000111111010101110", 
    23 => "00111101100101001101001001110000", 
    24 => "10111101100011000100101111010011", 
    25 => "10111101100110000010101110100110", 
    26 => "00111100111111101111100111011011", 
    27 => "00111101101100010100001100111001", 
    28 => "00111100011000001100000101110110", 
    29 => "00111110010001111011100000001011", 
    30 => "00111101100101111111000011101101", 
    31 => "00111101101010000101111011000100", 
    32 => "10111101111110111000101010100000", 
    33 => "10111101010010110001110111010110", 
    34 => "10111100101000000011110001001011", 
    35 => "10111110000010011011110111000111", 
    36 => "00111101000001011001011001000010", 
    37 => "10111110000100110111110110100110", 
    38 => "10111110001110100100101101010101", 
    39 => "10111101111001101001011100101001", 
    40 => "00111101001010010011011111010010", 
    41 => "10111110001010011110001111001001", 
    42 => "00111101000001011111000101111100", 
    43 => "00111101101010000111101010001101", 
    44 => "10111011100110011010011000101111", 
    45 => "10111101000011100111001001010100", 
    46 => "00111110000101111011001011001100", 
    47 => "00111100110100110101011001010100", 
    48 => "10111100101001111101001001000010", 
    49 => "10111101100000100011110000000000", 
    50 => "10111110000111011000011101110010", 
    51 => "00111101010111010000110110001101" );


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

entity L2_up_L1_WEIGHTS_58 is
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

architecture arch of L2_up_L1_WEIGHTS_58 is
    component L2_up_L1_WEIGHTS_58_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_58_rom_U :  component L2_up_L1_WEIGHTS_58_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


