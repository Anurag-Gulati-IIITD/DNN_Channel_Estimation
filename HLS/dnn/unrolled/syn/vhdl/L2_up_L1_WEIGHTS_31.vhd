-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_31_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_31_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111011001010000111111000111001", 
    1 => "00111110011000110100000101011011", 
    2 => "10111100110011011110000110100000", 
    3 => "10111101001000010011101100011001", 
    4 => "00111011011111111000011001011101", 
    5 => "10111101101000010000001110000110", 
    6 => "10111011011110001011010110001001", 
    7 => "00111101100000001001010011100110", 
    8 => "00111101110110100000100111001100", 
    9 => "00111101011011110010110110000000", 
    10 => "10111110000101101110101111010101", 
    11 => "00111101100000101011111110011000", 
    12 => "00111110001001101010101001001100", 
    13 => "10111100011101010000000110011111", 
    14 => "10111110101010001010001111010111", 
    15 => "10111110000011101001100101100011", 
    16 => "00111110000111110001100000000001", 
    17 => "00111100001011100101111111111010", 
    18 => "00111101100110010011011010000010", 
    19 => "10111100000111000111101111001100", 
    20 => "10111100110101011000011001000100", 
    21 => "10111100100001101000100110000111", 
    22 => "10111101110010111010101001011000", 
    23 => "10111101100010000100000001011011", 
    24 => "10111100110000100110110111001110", 
    25 => "00111100101110000101010000000100", 
    26 => "10111110010001111011101111111001", 
    27 => "10111101110101111100001111010111", 
    28 => "00111101011001111000100011011011", 
    29 => "00111101100001001011010101010111", 
    30 => "00111110100110111011000010100011", 
    31 => "10111101101011111110001111110011", 
    32 => "00111101011010000001110010110100", 
    33 => "10111101101000011110001111101011", 
    34 => "10111101100111101101100101011010", 
    35 => "10111101111010100010000010011011", 
    36 => "10111100110100010111001111111011", 
    37 => "00111101100111100111001110100011", 
    38 => "00111100000110101100101111001001", 
    39 => "00111101011101001000110100111011", 
    40 => "10111100110000111111100000010010", 
    41 => "00111010101101011110110110001101", 
    42 => "10111100101011101011000111000100", 
    43 => "00111110000110100011101100010101", 
    44 => "00111101101101100001110111001001", 
    45 => "10111010101011011010101110011111", 
    46 => "00111011111011000111110010010101", 
    47 => "10111100011101101011010111010100", 
    48 => "10111100100011011110101100010000", 
    49 => "00111101001010100110101100001110", 
    50 => "10111101010001101111010001111011", 
    51 => "10111101111000001111111101010100" );


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

entity L2_up_L1_WEIGHTS_31 is
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

architecture arch of L2_up_L1_WEIGHTS_31 is
    component L2_up_L1_WEIGHTS_31_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_31_rom_U :  component L2_up_L1_WEIGHTS_31_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


