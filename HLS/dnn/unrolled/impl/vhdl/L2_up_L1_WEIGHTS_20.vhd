-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_20_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_20_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100100110100011000010011000", 
    1 => "10111110000001110010011001001010", 
    2 => "10111101001101110111110100001111", 
    3 => "10111101101011000010111011111101", 
    4 => "00111101101000000100001100011100", 
    5 => "10111101010001110101101000110010", 
    6 => "00111011110001110011001001011001", 
    7 => "10111100001010000110000011011101", 
    8 => "00111110011110101011101101000101", 
    9 => "10111110010100101100011101110101", 
    10 => "10111101111011111011011111101001", 
    11 => "00111110000110100011100000110010", 
    12 => "10111101100010100100110110110001", 
    13 => "00111110001100100001000100000010", 
    14 => "10111101001100001111001001111100", 
    15 => "10111100010001101000101010010011", 
    16 => "00111101001010000000001110001010", 
    17 => "00111100011001100011000111111001", 
    18 => "00111101100101110011001110101001", 
    19 => "10111010100010111111110000100010", 
    20 => "00111100000101111001000110000010", 
    21 => "10111100110010011101111000000101", 
    22 => "10111101110000001011000000101001", 
    23 => "00111110001011001101111010100000", 
    24 => "10111101011101110111011111010001", 
    25 => "10111100101111011111101100001101", 
    26 => "00111101011110010010111100101011", 
    27 => "10111110000001010010010000111010", 
    28 => "10111101000110110111000001101001", 
    29 => "00111101001010101000100001101010", 
    30 => "10111100010101101101001110110111", 
    31 => "10111010010111000011001101110010", 
    32 => "00111100001101110111110000000011", 
    33 => "10111101110101001101110111111000", 
    34 => "00111110000100000001101000110111", 
    35 => "10111110011110111011001001111001", 
    36 => "10111011011001010011111010110100", 
    37 => "00111101111111010000001110010111", 
    38 => "00111110010100110000110100110000", 
    39 => "10111101010110001110111010101111", 
    40 => "00111101010011100100110110100001", 
    41 => "10111110000010111001101011100001", 
    42 => "00111101101111111101011010010101", 
    43 => "10111100110010000100011100101100", 
    44 => "00111101001101101110011100011101", 
    45 => "10111101101100000110000111001000", 
    46 => "00111101000011100101001111101011", 
    47 => "10111101110111100111001100011101", 
    48 => "00111101100110110100110101001001", 
    49 => "10111110001011101010000110000011", 
    50 => "10111110011100010110101000000101", 
    51 => "00111100100101110110010101110111" );


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

entity L2_up_L1_WEIGHTS_20 is
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

architecture arch of L2_up_L1_WEIGHTS_20 is
    component L2_up_L1_WEIGHTS_20_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_20_rom_U :  component L2_up_L1_WEIGHTS_20_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


