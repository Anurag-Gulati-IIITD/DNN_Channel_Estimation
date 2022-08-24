-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_94_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_94_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100110100100101011001111", 
    1 => "00111101110111011010011110110001", 
    2 => "00111101000011101000101001110010", 
    3 => "10111101100111100100101010111110", 
    4 => "10111101100111110110011011101000", 
    5 => "00111101101101001001011110110111", 
    6 => "10111011111100100111101110110011", 
    7 => "10111101110111010010000001101101", 
    8 => "10111101011011100011000011001011", 
    9 => "10111110001111111110101011000100", 
    10 => "00111101100110111100001000110011", 
    11 => "10111010110011001101110110010100", 
    12 => "00111101011100111100111001100100", 
    13 => "00111110000110101100101011111111", 
    14 => "10111110100000101010010010011000", 
    15 => "10111101010000110011001111111101", 
    16 => "00111100100010110110100101010101", 
    17 => "10111101101010101010001010100001", 
    18 => "10111101001001100111111010000100", 
    19 => "00111101110010101111011110010000", 
    20 => "00111101001000110010010011001000", 
    21 => "10111100111110100011000100011111", 
    22 => "00111101101101100010101011100101", 
    23 => "10111110000010110010100101011111", 
    24 => "00111101001011011001101011011000", 
    25 => "10111101010000011101111100110011", 
    26 => "10111110010101000011111101100000", 
    27 => "10111101000010010101010110110100", 
    28 => "00111101001101100000111100011011", 
    29 => "10111101100000000001000001000001", 
    30 => "00111110010110000111110100101100", 
    31 => "00111101100100000010100010100010", 
    32 => "10111011110000111101101010110110", 
    33 => "10111101101010001011111010110110", 
    34 => "00111101111100110100100000101100", 
    35 => "00111100110100100111101000100000", 
    36 => "00111100011010110011100110011111", 
    37 => "10111100111101110001010000110100", 
    38 => "10111011001001001000111110010111", 
    39 => "10111101101010000111010101001111", 
    40 => "10111100100011010001100101011001", 
    41 => "00111101101110111000101110101100", 
    42 => "00111110000100110110010001111100", 
    43 => "00111101000101111011100001001110", 
    44 => "00111101110001110000001000011101", 
    45 => "00111101101011011001110011110001", 
    46 => "00111010111110111010100010000010", 
    47 => "10111101011000010000010010010010", 
    48 => "10111100100010010001100111110000", 
    49 => "10111110000101110010111110111010", 
    50 => "00111101101011011111011100011111", 
    51 => "10111101001111110011011110111001" );


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

entity L2_up_L1_WEIGHTS_94 is
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

architecture arch of L2_up_L1_WEIGHTS_94 is
    component L2_up_L1_WEIGHTS_94_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_94_rom_U :  component L2_up_L1_WEIGHTS_94_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


