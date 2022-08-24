-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_47_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_47_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100011100110001010011001", 
    1 => "10111101110001000010100011010100", 
    2 => "00111011000110001111011000000110", 
    3 => "10111011111001110101011110010011", 
    4 => "00111101011111110001111010001110", 
    5 => "00111100001101110110011100001010", 
    6 => "10111101110001111000001100010111", 
    7 => "00111101101110010101010001100101", 
    8 => "00111101100011111101010010111111", 
    9 => "00111110010000100100110111010011", 
    10 => "10111101111011010100010001010110", 
    11 => "00111101000100010000111001000101", 
    12 => "10111110000101001101011111110001", 
    13 => "00111011100101110010100010100110", 
    14 => "00111110011000011100001001011101", 
    15 => "10111110000011011011011110101110", 
    16 => "00111101011011101101100110011101", 
    17 => "10111100101100000100000000111010", 
    18 => "10111101100010100011101001001011", 
    19 => "00111101000001011101011000111001", 
    20 => "00111101110000001000111000010101", 
    21 => "10111101000010100000000110101100", 
    22 => "10111100011011111001100110000000", 
    23 => "00111101100110010110001000000111", 
    24 => "10111100000010110011001011001111", 
    25 => "00111011110111101010000000110100", 
    26 => "10111101101011100111001101100000", 
    27 => "00111100101000101111001001110011", 
    28 => "10111100100011101001100100100000", 
    29 => "10111101100101000111101001011011", 
    30 => "10111110010000100111010100100101", 
    31 => "00111110001101010010000011010001", 
    32 => "00111101001011011000111001000011", 
    33 => "10111101000010001001011011011101", 
    34 => "10111101101011111110100100110010", 
    35 => "00111101101011100000000100010101", 
    36 => "10111101000001010111000110001111", 
    37 => "00111101011001111011011011111110", 
    38 => "00111011000111011010110111111011", 
    39 => "10111110000101100100000111110110", 
    40 => "10111100101011001011100001011010", 
    41 => "10111100000011100000010000111010", 
    42 => "10111110001011100011110011011010", 
    43 => "00111101010101001001100000111101", 
    44 => "10111100011011000010010010000001", 
    45 => "00111100111000110001011100100111", 
    46 => "10111101000010011101101111101100", 
    47 => "10111101000110011110000111110100", 
    48 => "10111011001110011001100100010011", 
    49 => "00111110001010111100010011010010", 
    50 => "10111101000000000110110100001101", 
    51 => "00111110000011110110110000100111" );


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

entity L2_up_L1_WEIGHTS_47 is
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

architecture arch of L2_up_L1_WEIGHTS_47 is
    component L2_up_L1_WEIGHTS_47_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_47_rom_U :  component L2_up_L1_WEIGHTS_47_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


