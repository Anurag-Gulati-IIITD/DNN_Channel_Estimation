-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_16_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_16_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100101111011001100001111100", 
    1 => "00111100011111111000001000101100", 
    2 => "00111101111100000000011110011010", 
    3 => "00111101001001011111101101110010", 
    4 => "10111110001011011011100000110101", 
    5 => "00111110001100010011001001110010", 
    6 => "10111101011001011111011101000000", 
    7 => "10111110001000110100101100001110", 
    8 => "10111101100110001001010110001110", 
    9 => "00111110000010101100111100110001", 
    10 => "00111101101000110000110010101010", 
    11 => "10111101001100110011101110010111", 
    12 => "10111101011010100011010110010011", 
    13 => "00111101000011111000100101000000", 
    14 => "00111101000011100001000111011100", 
    15 => "10111100001010010100111111110000", 
    16 => "10111100101001011000010011110101", 
    17 => "10111101100100010101000011011011", 
    18 => "00111101000100101101111111010111", 
    19 => "00111100010001011011100011011100", 
    20 => "10111101000111000010001110111000", 
    21 => "10111101010110000000101000011000", 
    22 => "00111110000101100011100000000000", 
    23 => "00111100000111110101110111111111", 
    24 => "00111101001010001101001100101000", 
    25 => "10111100110001000011011011111100", 
    26 => "00111101110100011101111011110000", 
    27 => "00111110010000010010000011100010", 
    28 => "10111100000110000001011110111001", 
    29 => "10111110011011101101110001111111", 
    30 => "00111101110010111010111110010110", 
    31 => "00111100101001001001010111100001", 
    32 => "00111101011101101010110001100100", 
    33 => "10111101001110100001111101001011", 
    34 => "10111101011001001111110110110001", 
    35 => "00111100001101011011111101101010", 
    36 => "00111101011100010110101000000101", 
    37 => "10111110000110011110010100011001", 
    38 => "10111110001110001110001000011001", 
    39 => "00111101100001011011110000000010", 
    40 => "10111101001110001010110100100101", 
    41 => "00111110000000100000010110111100", 
    42 => "10111101110000011100100000100001", 
    43 => "10111101101001110001111101111001", 
    44 => "10111101000010010110101110111010", 
    45 => "10111101001001100010010101100011", 
    46 => "10111101011001101100111000110110", 
    47 => "10111100101110101010010110000011", 
    48 => "10111001110100001010101010101000", 
    49 => "10111100011011101100011111001001", 
    50 => "00111101101101001111011100100011", 
    51 => "10111100101110100001011011101000" );


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

entity L2_up_L1_WEIGHTS_16 is
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

architecture arch of L2_up_L1_WEIGHTS_16 is
    component L2_up_L1_WEIGHTS_16_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_16_rom_U :  component L2_up_L1_WEIGHTS_16_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


