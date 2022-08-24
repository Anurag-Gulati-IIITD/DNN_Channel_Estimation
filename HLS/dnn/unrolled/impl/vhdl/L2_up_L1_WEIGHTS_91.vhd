-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_91_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_91_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101101011010111000001100001", 
    1 => "10111101110011010110000100101100", 
    2 => "10111101001010011101000111110110", 
    3 => "10111100111000100000101010110111", 
    4 => "00111100111000001000100011010111", 
    5 => "10111110011010011100010101100001", 
    6 => "00111011010110001110110010010110", 
    7 => "00111101100011000110101101001000", 
    8 => "00111101110101001011001110000001", 
    9 => "00111101100011011100101110011011", 
    10 => "00111101100111011001110110111011", 
    11 => "00111101010000010101110000100001", 
    12 => "00111101101011101010011011000010", 
    13 => "10111101100100010001101001010100", 
    14 => "00111101100001100111011100101101", 
    15 => "00111110001011111101100001101011", 
    16 => "00111101001110110101010010100000", 
    17 => "00111101100111011011001111000000", 
    18 => "00111100100100001000000111000011", 
    19 => "10111101100100001011101111110101", 
    20 => "10111101000101101001001010110100", 
    21 => "00111101101011011011100101000001", 
    22 => "10111110000111101101010011100101", 
    23 => "00111101111111111001000101100000", 
    24 => "10111101010010010000110001001110", 
    25 => "10111101101000010010100000111001", 
    26 => "10111101000011100101110101011011", 
    27 => "10111100000010000010101011011100", 
    28 => "10111010101010000100101111100100", 
    29 => "00111110000111110000111101011010", 
    30 => "10111101100101110101001100011110", 
    31 => "00111100110111101100110000111110", 
    32 => "00111101000001111110101011100110", 
    33 => "00111100110011001000101111001010", 
    34 => "00111101000100010110001100110101", 
    35 => "10111100111110110100111001010101", 
    36 => "10111101100010101101000000111110", 
    37 => "10111100111101111001010000100001", 
    38 => "10111101100000000111110111010100", 
    39 => "00111101011100001011110100000001", 
    40 => "00111101010011000001100101111110", 
    41 => "00111010110001000101100010001010", 
    42 => "10111110000100000110100111101000", 
    43 => "10111110000001110101000000111100", 
    44 => "00111101100110110011101101110101", 
    45 => "00111101001100000101110110010110", 
    46 => "10111101000001001001010101011011", 
    47 => "10111100101011111111101100000101", 
    48 => "10111101011111000101001101101101", 
    49 => "10111100101010010011001010010100", 
    50 => "10111100111000111110110100001111", 
    51 => "10111101100100101101111011001010" );


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

entity L2_up_L1_WEIGHTS_91 is
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

architecture arch of L2_up_L1_WEIGHTS_91 is
    component L2_up_L1_WEIGHTS_91_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_91_rom_U :  component L2_up_L1_WEIGHTS_91_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


