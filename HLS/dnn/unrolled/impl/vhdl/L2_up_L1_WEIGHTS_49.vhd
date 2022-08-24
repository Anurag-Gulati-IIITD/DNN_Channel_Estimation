-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_49_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_49_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101011011000100000111011101", 
    1 => "10111101110000111110010000100110", 
    2 => "00111101100110011001100010001101", 
    3 => "10111101011100101110110111111110", 
    4 => "00111110010101001000011111111101", 
    5 => "00111110011111110110110011110000", 
    6 => "00111100010001100001000011110001", 
    7 => "10111100000011101010110000000000", 
    8 => "10111110000001010010001111110110", 
    9 => "00111101100101010100011001001110", 
    10 => "10111101000101111000010111111001", 
    11 => "10111110100111001100110001000111", 
    12 => "10111101000100101101100110001100", 
    13 => "00111110000010100110000100010111", 
    14 => "10111101110110111010101110101000", 
    15 => "10111101001001101110010000111011", 
    16 => "00111101110000101011000111110111", 
    17 => "10111101011100110001101000001001", 
    18 => "10111101001010010110010111110101", 
    19 => "10111101101000111101100110101001", 
    20 => "10111100110010000111001100110110", 
    21 => "10111101101011011110111000110101", 
    22 => "00111100110010101100011011001110", 
    23 => "10111100101100111101011011000111", 
    24 => "10111100000111100001011011010111", 
    25 => "10111100101010010010110001001001", 
    26 => "00111101000011100111101010110111", 
    27 => "00111100101011100000111000110000", 
    28 => "00111110000010001110101111001100", 
    29 => "10111110000110110101111010010110", 
    30 => "00111101010001110110010010101110", 
    31 => "10111100011010101110111000100000", 
    32 => "10111110001001110011000100001010", 
    33 => "10111101010001010011001010100101", 
    34 => "10111100001010110011001001001000", 
    35 => "00111101010001001001100010000001", 
    36 => "00111101000010111011010011010101", 
    37 => "10111101001010111000010100011111", 
    38 => "10111101101100010110010001000001", 
    39 => "00111101000001110011011110010111", 
    40 => "10111110000001101001101011010100", 
    41 => "10111110011000100110010101101011", 
    42 => "10111110010001101111010010111111", 
    43 => "10111101001100110100110101101010", 
    44 => "10111101101010110001000010111010", 
    45 => "10111110000100110011101011001101", 
    46 => "00111100001001110101100010011111", 
    47 => "10111101100010110001001101011001", 
    48 => "00111110001100110000011010100011", 
    49 => "00111100110010010100010011101101", 
    50 => "00111110000010110110001011000111", 
    51 => "10111101011111011111111100111111" );


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

entity L2_up_L1_WEIGHTS_49 is
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

architecture arch of L2_up_L1_WEIGHTS_49 is
    component L2_up_L1_WEIGHTS_49_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_49_rom_U :  component L2_up_L1_WEIGHTS_49_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


