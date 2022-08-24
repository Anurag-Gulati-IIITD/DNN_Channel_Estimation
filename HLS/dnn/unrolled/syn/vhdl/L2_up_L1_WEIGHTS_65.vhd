-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_65_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_65_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100110101101010000101100", 
    1 => "10111101110101010111011000000100", 
    2 => "00111101111101100100100011000111", 
    3 => "10111101101011011111101101010000", 
    4 => "10111011111101101001010001000110", 
    5 => "00111110010101000001011110000111", 
    6 => "00111101101101100000010010011111", 
    7 => "10111101100000100001010000100111", 
    8 => "00111101101100001110001111001110", 
    9 => "00111100110111100010010001111001", 
    10 => "00111101101111110110111000111111", 
    11 => "00111101001001110001001101101010", 
    12 => "10111100110110000001100011000110", 
    13 => "00111110000011100001000000000110", 
    14 => "10111101101000011010111101111101", 
    15 => "10111101101010100011101101011000", 
    16 => "10111100010010101100100011100111", 
    17 => "10111101110000100111100001001011", 
    18 => "10111100011010001100110011011110", 
    19 => "00111101100101111011101111111001", 
    20 => "00111100101010000011011011101011", 
    21 => "10111100101110111001111100010010", 
    22 => "00111101010101000000110011001000", 
    23 => "00111101100001010101001000011010", 
    24 => "00111100111001100100011011110001", 
    25 => "00111101100100110101101100001100", 
    26 => "00111110000111100011110101100000", 
    27 => "00111101111010010010001111100110", 
    28 => "10111100010010100100001010101111", 
    29 => "10111110010101001010001010111010", 
    30 => "00111100011000110011101011001101", 
    31 => "10111101100100000000111101110111", 
    32 => "00111101010001100110101100011110", 
    33 => "10111011111111110111110111111010", 
    34 => "00111101010100101110011000100001", 
    35 => "00111101100000110101110001011011", 
    36 => "10111011001001010010011010010110", 
    37 => "10111110000001011000111110110100", 
    38 => "10111101111100001000000100111101", 
    39 => "10111011110111010011111111100010", 
    40 => "10111101100000111111110011001010", 
    41 => "00111100001100010101101101010111", 
    42 => "10111100110001101110101100001011", 
    43 => "00111110000011111000111101000111", 
    44 => "10111101101100100000111010100110", 
    45 => "10111101101111001110111100100100", 
    46 => "00111101110101111100101000100001", 
    47 => "10111101010010110011000010110110", 
    48 => "10111101100000110110100011110001", 
    49 => "10111110001110100011110111110111", 
    50 => "10111101101100000011011011001010", 
    51 => "00111101010111110110110110111001" );


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

entity L2_up_L1_WEIGHTS_65 is
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

architecture arch of L2_up_L1_WEIGHTS_65 is
    component L2_up_L1_WEIGHTS_65_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_65_rom_U :  component L2_up_L1_WEIGHTS_65_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


