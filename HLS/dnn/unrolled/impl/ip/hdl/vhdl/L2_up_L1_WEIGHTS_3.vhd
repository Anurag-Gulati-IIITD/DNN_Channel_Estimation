-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_3_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100010011001110110001000", 
    1 => "00111110100001111000111111101111", 
    2 => "00111110010000100010101000101100", 
    3 => "10111100000011001001001100100001", 
    4 => "00111101100010100011110011101010", 
    5 => "00111110001101111011010000011100", 
    6 => "00111100101000101100000000011110", 
    7 => "00111100111001101010000100011111", 
    8 => "10111101000110110110010011100000", 
    9 => "10111101100010000011100100000100", 
    10 => "10111101010100111001101110001001", 
    11 => "00111110010100110000110100110000", 
    12 => "00111101010101001001111110010101", 
    13 => "10111101010100110110100100110100", 
    14 => "00111110001100101111101011010111", 
    15 => "00111101111100000110010011101101", 
    16 => "00111011011001111010101101110101", 
    17 => "10111110001111101011001010001110", 
    18 => "10111110000001100010010011011101", 
    19 => "10111100000110000010100010000000", 
    20 => "00111110000111110111011000011101", 
    21 => "10111101111100011110011101010011", 
    22 => "10111101001100100110101011101100", 
    23 => "10111110000110001011010011000000", 
    24 => "00111101011001011101111100100010", 
    25 => "00111101011101000110111111011111", 
    26 => "10111101011011000010110011100100", 
    27 => "10111100000100011101100110110010", 
    28 => "10111001000100111101100101100110", 
    29 => "10111101111001110000001010100011", 
    30 => "10111101111000111010000110010000", 
    31 => "10111101110000000111101110111011", 
    32 => "10111101100011101001001011010101", 
    33 => "10111100110001101100110110101111", 
    34 => "10111101010110110111101111110010", 
    35 => "00111101010000010101000010011000", 
    36 => "10111101100010010101100011011010", 
    37 => "00111100111110111000101100100110", 
    38 => "10111101100100001011000001101100", 
    39 => "00111101101000111110010010101100", 
    40 => "10111101000001110110111100101010", 
    41 => "10111101000010110110011000110000", 
    42 => "00111101101001111100010110101100", 
    43 => "10111101110000110101101001000010", 
    44 => "10111101011010100001101101011100", 
    45 => "10111110000001011101111101100101", 
    46 => "00111100001001100111011000100001", 
    47 => "00111100111110100010010010001001", 
    48 => "00111101101111111011011100100000", 
    49 => "10111101101001110101111011101010", 
    50 => "00111101100000000100001000001111", 
    51 => "10111110000101110010101111001011" );


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

entity L2_up_L1_WEIGHTS_3 is
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

architecture arch of L2_up_L1_WEIGHTS_3 is
    component L2_up_L1_WEIGHTS_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_3_rom_U :  component L2_up_L1_WEIGHTS_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


