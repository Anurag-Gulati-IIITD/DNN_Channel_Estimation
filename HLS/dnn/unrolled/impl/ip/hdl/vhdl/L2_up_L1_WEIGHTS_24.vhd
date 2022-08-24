-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_24_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_24_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001010111110100111001001", 
    1 => "00111110000011100111110110011010", 
    2 => "00111101011101011100001110011100", 
    3 => "00111100111000010000110011110110", 
    4 => "10111010100110111001010100011100", 
    5 => "10111101111100001100110111001000", 
    6 => "10111101110110101101011001000101", 
    7 => "10111100110010010100111101101010", 
    8 => "10111101101110100110110111110000", 
    9 => "00111110000010110100111111101000", 
    10 => "00111110000001111000100011011011", 
    11 => "10111100001001110101110011010001", 
    12 => "00111101011111011110011100100001", 
    13 => "10111101111101110010110111100100", 
    14 => "10111100100001100000011110000001", 
    15 => "10111101010001001100000001011001", 
    16 => "00111101010010111000001010000000", 
    17 => "10111101000010101011000011001001", 
    18 => "10111101001110001111010001110011", 
    19 => "00111100111000100000110011010000", 
    20 => "00111101100010101010010111000110", 
    21 => "10111100000011110011101010011011", 
    22 => "10111101000101010111001101100100", 
    23 => "10111110100010110010001100010100", 
    24 => "00111100000110010100010110110111", 
    25 => "10111101011111000110101110001011", 
    26 => "10111101111010000001010011010111", 
    27 => "00111110001111110000110010111011", 
    28 => "00111101101000010010011110110011", 
    29 => "00111101101000010110110011101000", 
    30 => "10111011111110100011111111001101", 
    31 => "10111101001001001010000001011110", 
    32 => "10111101001010001111011011001111", 
    33 => "10111100101010100100111111001010", 
    34 => "10111101110110001011100110111011", 
    35 => "00111101010011001111100111100100", 
    36 => "00111101011001010110101111001010", 
    37 => "10111101111001011101110100001001", 
    38 => "10111101001001111001101110111011", 
    39 => "10111011000100101101110110111110", 
    40 => "00111100110101110100101101000000", 
    41 => "00111100001011110100111100001110", 
    42 => "10111101101111100100000101001110", 
    43 => "00111101100001100001010110101001", 
    44 => "00111101010010000101111000111110", 
    45 => "00111101101011011110000000001101", 
    46 => "00111100100110010101101010101111", 
    47 => "10111100001000101010010011011011", 
    48 => "10111110000110010110110001000000", 
    49 => "00111101101111110110001000110000", 
    50 => "00111110000100011010100110111001", 
    51 => "10111101010011101110011111000101" );


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

entity L2_up_L1_WEIGHTS_24 is
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

architecture arch of L2_up_L1_WEIGHTS_24 is
    component L2_up_L1_WEIGHTS_24_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_24_rom_U :  component L2_up_L1_WEIGHTS_24_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


