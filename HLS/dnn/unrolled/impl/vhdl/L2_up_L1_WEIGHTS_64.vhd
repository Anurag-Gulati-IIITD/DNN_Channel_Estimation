-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_64_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_64_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101101011011011001001110000", 
    1 => "10111101001010010001100101101001", 
    2 => "00111101101110111001110110000000", 
    3 => "10111101110101010100111000101011", 
    4 => "00111101111000001111010111100100", 
    5 => "10111101011100111001010010111000", 
    6 => "10111010101000110111001001100000", 
    7 => "00111100101011110000010110100111", 
    8 => "00111110000110010011010001101010", 
    9 => "10111101100110001000010001000000", 
    10 => "00111110000010010011100100100010", 
    11 => "00111010110011011000010101011001", 
    12 => "00111101100000111110101001110000", 
    13 => "10111110000000001111010010010101", 
    14 => "00111100011011111010101001000111", 
    15 => "10111110000000111101001001010010", 
    16 => "00111101100011110100001001111000", 
    17 => "10111110001000111011110100010110", 
    18 => "10111101001101000000010011101010", 
    19 => "00111100000010111101011001100010", 
    20 => "10111011111100000011100011100011", 
    21 => "10111100110000111001110111100101", 
    22 => "10111001001001111100010110101100", 
    23 => "00111101011000010101110110110011", 
    24 => "00111100010110011000011111000110", 
    25 => "00111100101010000011111101001111", 
    26 => "10111100110100010010101010010101", 
    27 => "00111101101001001000000011101001", 
    28 => "00111101000100100001001101011110", 
    29 => "10111100010010001001101100001111", 
    30 => "10111100111101010111011100010000", 
    31 => "00111101000110101000001001100010", 
    32 => "10111101000001110111100110100111", 
    33 => "00111101100111111000111111001101", 
    34 => "00111101110100111110011110001110", 
    35 => "00111101111011011000011001100110", 
    36 => "00111101110111010011110101000011", 
    37 => "10111101110100100010100101100011", 
    38 => "10111101110010111000010110100101", 
    39 => "00111101001110100001111101001011", 
    40 => "10111101100001110101011000000000", 
    41 => "10111101001011110001011101111010", 
    42 => "00111101111110010110101101110110", 
    43 => "00111110000011100100100011101001", 
    44 => "10111101100111001001001111101010", 
    45 => "10111101110011000101101100001000", 
    46 => "00111101111110100010100000110101", 
    47 => "10111101100101101001110110110110", 
    48 => "00111110000000101011001011000000", 
    49 => "10111101110101001010011101110010", 
    50 => "10111110001010010111110010000001", 
    51 => "10111101101011110111111000111101" );


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

entity L2_up_L1_WEIGHTS_64 is
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

architecture arch of L2_up_L1_WEIGHTS_64 is
    component L2_up_L1_WEIGHTS_64_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_64_rom_U :  component L2_up_L1_WEIGHTS_64_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


