-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_80_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_80_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101001011001100100000010101", 
    1 => "00111101111001011101000110000001", 
    2 => "10111101101010010001001110100101", 
    3 => "10111101100101000011100001001100", 
    4 => "00111101100111001100000001111011", 
    5 => "10111110101011000011011100011110", 
    6 => "10111101010111111000111101000111", 
    7 => "10111100001011000111110110100010", 
    8 => "10111101111000011011101010000000", 
    9 => "10111101100110011011001011000100", 
    10 => "00111110001000010110101100010010", 
    11 => "00111101000111000010010111010000", 
    12 => "00111101110011010001100111011111", 
    13 => "10111101100001100010000100110010", 
    14 => "10111101000101111100010111101111", 
    15 => "10111101101110111010010111100011", 
    16 => "00111101011100111110111111110010", 
    17 => "00111100010110001010110110101100", 
    18 => "00111100111011111010110001100000", 
    19 => "10111100011000100101010000011110", 
    20 => "00111100111000101000101010100100", 
    21 => "00111100111000011011010010111011", 
    22 => "10111001111011011000000010100001", 
    23 => "10111110000001011101101010101101", 
    24 => "10111101110000110110100001101010", 
    25 => "10111100100011111111111110111101", 
    26 => "10111101100011000011100001101101", 
    27 => "00111110000111000011110111101110", 
    28 => "00111101110011000010000001001111", 
    29 => "00111110100100010111110010100010", 
    30 => "00111011001001010011011101011101", 
    31 => "10111100100110010000101011111110", 
    32 => "00111100000001000011001111010111", 
    33 => "10111100100101001111111100000000", 
    34 => "00111011001101101001010101010011", 
    35 => "10111110011010011101000000100000", 
    36 => "10111100111011100111010111111111", 
    37 => "10111101101111010001101100101110", 
    38 => "10111101100100111010001101100110", 
    39 => "00111100000001111011000100111010", 
    40 => "00111101010011110011001101000100", 
    41 => "10111101110110011111011011101100", 
    42 => "00111101100111011111111010111001", 
    43 => "00111110000100110000110000100100", 
    44 => "00111101110001011010110101010100", 
    45 => "10111100111010110010000001110101", 
    46 => "00111101111110100100100111000011", 
    47 => "10111011101010111001001011000000", 
    48 => "10111011000100000111000011111100", 
    49 => "00111101101100111111001110011101", 
    50 => "00111110000010110001010110110101", 
    51 => "10111101100011000101010101000011" );


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

entity L2_up_L1_WEIGHTS_80 is
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

architecture arch of L2_up_L1_WEIGHTS_80 is
    component L2_up_L1_WEIGHTS_80_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_80_rom_U :  component L2_up_L1_WEIGHTS_80_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


