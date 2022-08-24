-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_12_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_12_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110110011101110111000010", 
    1 => "10111101001000000001100010100100", 
    2 => "10111110000001111001101000101000", 
    3 => "00111110000010001001011001010111", 
    4 => "00111101000000101010000100110000", 
    5 => "10111110011000100010011111010000", 
    6 => "00111100111101100010110110000100", 
    7 => "00111110001010100110001110110111", 
    8 => "10111101000000100011110010000110", 
    9 => "10111101101000010010100010111111", 
    10 => "10111110000010000110000110100110", 
    11 => "10111101111000001100101111110011", 
    12 => "10111010011111100000010001111101", 
    13 => "10111101001011010101011010110000", 
    14 => "00111101110100001000100100011010", 
    15 => "10111100100111010110110011111000", 
    16 => "00111011100111110110001000110000", 
    17 => "00111101110111111100001110110101", 
    18 => "00111100100010000100011000100000", 
    19 => "10111011010100111110000010111101", 
    20 => "00111101100100100110110100000101", 
    21 => "00111100111100101110010010001111", 
    22 => "10111101101101011001111101101111", 
    23 => "10111101010111010010010010011110", 
    24 => "00111101100110110000010011101110", 
    25 => "10111101101100010001100111001110", 
    26 => "10111101111101101100011110101000", 
    27 => "10111101000101100010101111110001", 
    28 => "00111100001011111001001000101001", 
    29 => "00111110000110100010000110100111", 
    30 => "10111101000001101101110101101010", 
    31 => "10111101000000010100010100001111", 
    32 => "10111101100010101111110101010100", 
    33 => "10111101010110110101100001001011", 
    34 => "00111101000111101000110001001000", 
    35 => "00111110000000001110000011101011", 
    36 => "10111101110001000101001000111111", 
    37 => "00111011111110110110110111001010", 
    38 => "00111101111111110010110111000011", 
    39 => "00111101001100110000011000011100", 
    40 => "10111100100000111111100100011110", 
    41 => "10111101011110100110000101011011", 
    42 => "00111101001000110011110111110011", 
    43 => "00111011010111010001111001010100", 
    44 => "00111100101100011011110111101000", 
    45 => "10111101110010001010110001011100", 
    46 => "10111100001101000010100010010001", 
    47 => "10111100100101001100001000101111", 
    48 => "10111011001110100000111010000100", 
    49 => "10111100011011011110100101111101", 
    50 => "00111100111111011000001001110111", 
    51 => "10111101011011010111000111110011" );


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

entity L2_up_L1_WEIGHTS_12 is
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

architecture arch of L2_up_L1_WEIGHTS_12 is
    component L2_up_L1_WEIGHTS_12_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_12_rom_U :  component L2_up_L1_WEIGHTS_12_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


