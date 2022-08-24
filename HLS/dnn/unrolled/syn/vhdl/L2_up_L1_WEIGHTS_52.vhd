-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_52_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_52_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001111110111110111111010", 
    1 => "00111110001000010001100101001000", 
    2 => "00111101100011011111001001100111", 
    3 => "10111101110111000001001111111101", 
    4 => "00111110000110100111110011100001", 
    5 => "10111101100100000001011111011011", 
    6 => "00111100100111110011110001110001", 
    7 => "10111101011001100100111001001000", 
    8 => "00111110010111001111100111100100", 
    9 => "10111101011100110101110000011000", 
    10 => "00111010000111100001001010100101", 
    11 => "10111101000110100011111000111010", 
    12 => "00111101111010100101000101011101", 
    13 => "10111110011001110000110010011001", 
    14 => "10111101000010001110101011000000", 
    15 => "00111110010100011110001010011011", 
    16 => "00111011011101010110111010101101", 
    17 => "00111100011111011100010110010011", 
    18 => "10111101011100111110011010000010", 
    19 => "00111101011010101011110111100100", 
    20 => "00111101000000011100101101000111", 
    21 => "10111101000011101001011100000111", 
    22 => "00111101000000111110101001110000", 
    23 => "10111110000011001111101010101101", 
    24 => "00111101000000110010111111001011", 
    25 => "10111011110001100110100100000101", 
    26 => "00111101011001111110111010010001", 
    27 => "00111110100000111100111011001000", 
    28 => "10111101110001000000001110011011", 
    29 => "00111101010110010000110000001011", 
    30 => "10111100001011111010111110000110", 
    31 => "10111101100111001001111101110011", 
    32 => "10111110000111100110100010100001", 
    33 => "00111101101111011000101101100001", 
    34 => "00111101010000001111111011001110", 
    35 => "00111110011001101001111110001100", 
    36 => "00111101010000110000111101001001", 
    37 => "10111101000101001011110111111101", 
    38 => "10111110110000110111111011010100", 
    39 => "00111101000111100111010000101010", 
    40 => "00111100001111101100011001111010", 
    41 => "10111101000110011000001110010100", 
    42 => "00111101101010000110001101111100", 
    43 => "10111110001011110010011110111011", 
    44 => "10111100111001111110100001000111", 
    45 => "00111100111001001100110101110101", 
    46 => "00111100001010100111100110111100", 
    47 => "10111101000101100011101110101100", 
    48 => "00111101100010010011110100010000", 
    49 => "10111100111000111100001100011110", 
    50 => "10111110000000101111101010010100", 
    51 => "10111011100111011010010110011000" );


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

entity L2_up_L1_WEIGHTS_52 is
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

architecture arch of L2_up_L1_WEIGHTS_52 is
    component L2_up_L1_WEIGHTS_52_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_52_rom_U :  component L2_up_L1_WEIGHTS_52_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


