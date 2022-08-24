-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_40_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_40_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111010100001100001011000101111", 
    1 => "10111110000101011101000011111010", 
    2 => "10111101111110001010100101111010", 
    3 => "10111011110000100001010110111010", 
    4 => "10111101011000111111000101000001", 
    5 => "10111110000011011001101101011111", 
    6 => "10111100100101010011110111101010", 
    7 => "00111101010111100110101111000110", 
    8 => "00111101101000100010001011010101", 
    9 => "00111110001100011011001101101100", 
    10 => "10111101100010010011011101001100", 
    11 => "00111100100110110101010000011001", 
    12 => "00111101100001001101101110011100", 
    13 => "10111101110111010011100100010001", 
    14 => "00111110000101001101011011100100", 
    15 => "00111101101110100100011010011101", 
    16 => "10111101111111100110101010111010", 
    17 => "00111101101100011011110101100010", 
    18 => "00111101101001100100111101010101", 
    19 => "10111101100101010111001101100100", 
    20 => "10111100110101000101100001000111", 
    21 => "10111100100011110100110101111011", 
    22 => "10111101001010011001001100001100", 
    23 => "00111101110010001111110110100000", 
    24 => "10111100011110010001111001100100", 
    25 => "10111101001110100101011011011110", 
    26 => "00111110010110111011001111001000", 
    27 => "00111101000000100101110100000111", 
    28 => "10111101110010000111110010100110", 
    29 => "00111110000111000111011011010001", 
    30 => "10111110010001011000000111001111", 
    31 => "00111010011001001001011011101110", 
    32 => "00111101001101001100001111000010", 
    33 => "00111110001010001001010110001110", 
    34 => "10111101110011101010111010011111", 
    35 => "10111101111111011000110101111010", 
    36 => "00111101100110100010010010001001", 
    37 => "00111101111011100011010110000011", 
    38 => "10111101100000110111101011000100", 
    39 => "00111101101100010110000110100010", 
    40 => "00111101001001101001000001011000", 
    41 => "00111101110111101100110111010001", 
    42 => "10111110000111100100111110111001", 
    43 => "10111101111100001110111111011101", 
    44 => "10111100110101111011011000110101", 
    45 => "00111100001111010000010110101111", 
    46 => "10111100101000000011000111001111", 
    47 => "00111100000111000011110011100010", 
    48 => "00111101001010001100010001111010", 
    49 => "00111110000001101010010011001010", 
    50 => "10111110000001011000010001101111", 
    51 => "10111101100100011010111111000000" );


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

entity L2_up_L1_WEIGHTS_40 is
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

architecture arch of L2_up_L1_WEIGHTS_40 is
    component L2_up_L1_WEIGHTS_40_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_40_rom_U :  component L2_up_L1_WEIGHTS_40_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


