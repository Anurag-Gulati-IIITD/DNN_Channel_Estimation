-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_21_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_21_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000110011010110001111001", 
    1 => "10111110100100010101111010011110", 
    2 => "10111101001011101101100110011101", 
    3 => "00111101010111001100110010001010", 
    4 => "10111100111110100111011001010011", 
    5 => "00111101101110001010100001101101", 
    6 => "10111101010010010000100000011100", 
    7 => "10111110000011101001001010010010", 
    8 => "00111101111011110010000111110111", 
    9 => "10111101110000000001111011101111", 
    10 => "10111101101101111001110100001010", 
    11 => "10111010110000010001000110101110", 
    12 => "00111101011001101100101000000100", 
    13 => "00111101110000101111010000000110", 
    14 => "10111100101011000011100001101101", 
    15 => "00111100111111101011110100001010", 
    16 => "00111101011101101111110100100010", 
    17 => "00111101100110111001101101100111", 
    18 => "10111010100000011110010001110001", 
    19 => "00111101000011000001100101111110", 
    20 => "10111101100011100011000011001011", 
    21 => "00111101000011001000001001011010", 
    22 => "00111101111110011101100110010000", 
    23 => "00111110011100100000101011111010", 
    24 => "00111011101011111001001000101001", 
    25 => "10111101000101001010101100011101", 
    26 => "10111101001110111111011100100111", 
    27 => "00111000101111001011111001100010", 
    28 => "00111101101001010000000111100010", 
    29 => "10111101110101111101000111111110", 
    30 => "00111100110111110110100110001000", 
    31 => "10111100111111000111001111101111", 
    32 => "10111100000000101111110101110110", 
    33 => "10111101110000010010001001110101", 
    34 => "00111101100001011010001101011101", 
    35 => "10111110001100101001001010000001", 
    36 => "10111101100110101100011000000100", 
    37 => "00111101101001000111101010011110", 
    38 => "10111101001110101111001100011011", 
    39 => "00111100110100010110010101001101", 
    40 => "00111101110001101111111011111000", 
    41 => "00111011101001011101011010111111", 
    42 => "00111101010000000010111100110000", 
    43 => "10111101000001010110011100010010", 
    44 => "00111101111001110111111011100101", 
    45 => "10111101011101111010101000100110", 
    46 => "10111100101110101101111000100010", 
    47 => "10111100101100010010101100011011", 
    48 => "00111110000001100011110000110010", 
    49 => "10111101000111110101101011011001", 
    50 => "10111101100000110101011100011101", 
    51 => "10111101011100101000100001001000" );


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

entity L2_up_L1_WEIGHTS_21 is
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

architecture arch of L2_up_L1_WEIGHTS_21 is
    component L2_up_L1_WEIGHTS_21_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_21_rom_U :  component L2_up_L1_WEIGHTS_21_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


