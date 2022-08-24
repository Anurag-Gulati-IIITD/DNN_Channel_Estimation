-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_5_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100101111010000000101111110", 
    1 => "10111101110010110011111111101010", 
    2 => "00111101110111001011111111110100", 
    3 => "00111100101001011011001100011000", 
    4 => "10111110000001100011011110111101", 
    5 => "00111110001000010011111000111110", 
    6 => "00111101001110010100100101100010", 
    7 => "10111101000110000000000110110100", 
    8 => "10111100110010011110010001010000", 
    9 => "10111101011010100000100110001001", 
    10 => "10111011101110000011000001011110", 
    11 => "00111011101111110111011010100011", 
    12 => "00111101011011100111010111111111", 
    13 => "00111101100010101000001010100101", 
    14 => "00111110010100010001001111000111", 
    15 => "10111110001001100010110001110111", 
    16 => "10111100111010100110000110011110", 
    17 => "00111011110100110001111111001101", 
    18 => "00111100110100011101011010001100", 
    19 => "00111101110100111100000111001110", 
    20 => "10111100110010011010100110010111", 
    21 => "10111101001000110100101110010100", 
    22 => "10111101101101001000011101110111", 
    23 => "00111101000011001100101010110100", 
    24 => "00111101100111100110001101100011", 
    25 => "10111101010001101101011100011111", 
    26 => "00111100110010011110010001010000", 
    27 => "10111110100100100101101001000111", 
    28 => "10111100111100000010110001001101", 
    29 => "10111101110000000110100111101000", 
    30 => "10111101111101000100011011111010", 
    31 => "10111101010100010100001010110011", 
    32 => "00111101101110000111110001100011", 
    33 => "00111100111110111000100100001101", 
    34 => "10111101010110110000110011001100", 
    35 => "00111110000110011011011110111111", 
    36 => "00111101000011100111000101000111", 
    37 => "00111100011001110110100001011010", 
    38 => "00111110011011011110001001101001", 
    39 => "00111101100101110000110111101001", 
    40 => "00111101011011010001110100000100", 
    41 => "00111110000000001011110000111000", 
    42 => "10111011101100101001111001001101", 
    43 => "00111110001010000000000011101011", 
    44 => "10111101011110001000011101100110", 
    45 => "10111100111100011000001000100011", 
    46 => "10111110001011110100100010000000", 
    47 => "00111100011010000111010011001001", 
    48 => "00111101011110110101010110101100", 
    49 => "10111011100001010011110000010101", 
    50 => "00111101100101111010000010110110", 
    51 => "00111100001000011000011110100101" );


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

entity L2_up_L1_WEIGHTS_5 is
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

architecture arch of L2_up_L1_WEIGHTS_5 is
    component L2_up_L1_WEIGHTS_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_5_rom_U :  component L2_up_L1_WEIGHTS_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


