-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_72_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_72_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011001010010101011000111", 
    1 => "10111110000110111100100001111110", 
    2 => "10111101001100101010011110111101", 
    3 => "00111101101000000001001101100110", 
    4 => "10111101110111101000001101011110", 
    5 => "00111110011000001000110010000010", 
    6 => "10111101010011000110100000100011", 
    7 => "10111110001100011100100100101110", 
    8 => "10111101001100110000101101011011", 
    9 => "10111101100111110011000111110100", 
    10 => "00111101100001001111110110110001", 
    11 => "00111101110000101110111111010100", 
    12 => "00111110000000100100111010011100", 
    13 => "00111101110001000011111001010011", 
    14 => "10111101010010010110000100111101", 
    15 => "00111100111110010101100100011101", 
    16 => "10111101010101011010100111101011", 
    17 => "10111100110010111111100011111101", 
    18 => "10111011111000001111001111001011", 
    19 => "00111100011000110110000010001101", 
    20 => "00111101100001111011100110011101", 
    21 => "10111100110111000011100110111101", 
    22 => "00111110011011110110100110001000", 
    23 => "00111110001010100001111010000010", 
    24 => "10111101001101001011111010000011", 
    25 => "10111101100001011000100000011010", 
    26 => "10111110010000101001011001110000", 
    27 => "00111110000001001110001010110000", 
    28 => "00111101010101100100110001110011", 
    29 => "10111110000000001010011011111100", 
    30 => "00111101001101100010100001000110", 
    31 => "10111101010010010010110011001111", 
    32 => "00111101110110101111101001110010", 
    33 => "10111101110110101100000001000000", 
    34 => "10111101010111110000100000000011", 
    35 => "00111101000001110001000111011000", 
    36 => "10111101000110010000000010000010", 
    37 => "00111100110111101001110000000010", 
    38 => "10111101110100111001110110100001", 
    39 => "00111101110001000101000010101101", 
    40 => "00111101100001010101010111000101", 
    41 => "00111101101101010000010011000101", 
    42 => "10111011000001100101100101001011", 
    43 => "10111101000001001100100111001001", 
    44 => "00111011101000000111111101100111", 
    45 => "10111100101100101110101111100110", 
    46 => "10111101101000101101110001101110", 
    47 => "10111001011010011101010100011011", 
    48 => "00111101100011111101010000111001", 
    49 => "00111110000101001011110011110001", 
    50 => "00111101000001001110101001001011", 
    51 => "10111101101101011010101101111110" );


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

entity L2_up_L1_WEIGHTS_72 is
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

architecture arch of L2_up_L1_WEIGHTS_72 is
    component L2_up_L1_WEIGHTS_72_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_72_rom_U :  component L2_up_L1_WEIGHTS_72_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


