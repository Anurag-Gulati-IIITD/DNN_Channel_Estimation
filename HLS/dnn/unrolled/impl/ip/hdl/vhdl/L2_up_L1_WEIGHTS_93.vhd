-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_93_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_93_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100101010100011011010100", 
    1 => "00111101110011000011111000110010", 
    2 => "00111100101000011100010001110110", 
    3 => "10111101101111010000101001100111", 
    4 => "00111101110011101000111000011101", 
    5 => "00111101000100010110111111001010", 
    6 => "00111011000110110110001011000111", 
    7 => "10111100100001100101100101001011", 
    8 => "10111110001111111101111001110010", 
    9 => "10111101000101001100010101010100", 
    10 => "00111110010000110111000010001011", 
    11 => "10111100111000001111000110110010", 
    12 => "00111101100001000110000001100111", 
    13 => "00111101111001001011110100110100", 
    14 => "10111101100010010110110001000000", 
    15 => "00111101001111100011011111011111", 
    16 => "00111101101100110000111100000110", 
    17 => "10111101010110101111101011111000", 
    18 => "10111101110001100010000110111000", 
    19 => "00111101101110011010001010000011", 
    20 => "00111101101001000110111110011100", 
    21 => "10111101110000010010101001010010", 
    22 => "00111011000001010100110011011011", 
    23 => "10111101010100011000111000110010", 
    24 => "10111100010100010001101111100111", 
    25 => "10111101001111001010101001110110", 
    26 => "10111110000110010100110000000001", 
    27 => "10111101101010010000010001110001", 
    28 => "00111110010000011101010000110000", 
    29 => "10111101010001110000111110111111", 
    30 => "00111101000011101110001110010011", 
    31 => "00111100101111000101001101101101", 
    32 => "10111101100111001111001001001001", 
    33 => "10111110010110000101101100011000", 
    34 => "00111101100110110111011100111010", 
    35 => "10111101111011100111110001001010", 
    36 => "00111011111010000000011110111100", 
    37 => "10111101101011101011111101100110", 
    38 => "00111101100000000100101101111111", 
    39 => "10111101100001100011010010011000", 
    40 => "10111100110100110000101011010100", 
    41 => "10111110001100001011101110110010", 
    42 => "00111101101010101100000100001001", 
    43 => "10111101010100000010010101111101", 
    44 => "00111101111111111001111001111100", 
    45 => "00111101100000110000101110011110", 
    46 => "10111100110100111001101110001001", 
    47 => "00111101010111110101001001110110", 
    48 => "00111100111001010110001001011010", 
    49 => "10111100100000111101101111000010", 
    50 => "00111110001101001100011110110000", 
    51 => "00111011100011011001011100101101" );


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

entity L2_up_L1_WEIGHTS_93 is
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

architecture arch of L2_up_L1_WEIGHTS_93 is
    component L2_up_L1_WEIGHTS_93_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_93_rom_U :  component L2_up_L1_WEIGHTS_93_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


