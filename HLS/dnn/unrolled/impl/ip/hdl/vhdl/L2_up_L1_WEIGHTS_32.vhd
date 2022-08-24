-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_32_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_32_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000011111000001011110101", 
    1 => "00111101000010100100100011111001", 
    2 => "10111100101011101100111100100000", 
    3 => "00111100101001110111111001011111", 
    4 => "00111100110101110010001101101000", 
    5 => "00111101110010000101100011111111", 
    6 => "10111101101000000111111001011010", 
    7 => "10111101000111111110010101000011", 
    8 => "00111110001101000001111000010101", 
    9 => "00111110000110111000101111110000", 
    10 => "10111101110000001001001011001101", 
    11 => "00111101010111100001100111111100", 
    12 => "00111101101010010000101000110101", 
    13 => "00111110011011110111101100011000", 
    14 => "10111110010101100101000100101011", 
    15 => "00111100001001001001001111001001", 
    16 => "00111101100000110100010111010000", 
    17 => "10111100101100111111110010000111", 
    18 => "10111100000110011101110010110101", 
    19 => "00111101110000111101010011110001", 
    20 => "00111010111111010011101100101010", 
    21 => "10111101001000000000010111000100", 
    22 => "10111100111001110000110000010011", 
    23 => "10111100001001110101110011010001", 
    24 => "00111100001010010010000111001101", 
    25 => "00111101101001101100000000001110", 
    26 => "10111110011010101101011111011000", 
    27 => "10111101010000001001000010110100", 
    28 => "00111100101101000111101001011011", 
    29 => "10111101110000111101111011101000", 
    30 => "00111110000100110111011010010010", 
    31 => "10111101110101001000100100001001", 
    32 => "00111101101011011011100101000001", 
    33 => "10111101111010010010010001101100", 
    34 => "00111101100101110100011010001000", 
    35 => "10111101011001000110111100010101", 
    36 => "10111101000100001100001011000110", 
    37 => "00111110000010111010111101010011", 
    38 => "00111100110000110010000000010000", 
    39 => "00111101001101110011001110101001", 
    40 => "00111101010111100101001010011100", 
    41 => "00111101110010110011101010101100", 
    42 => "10111101001101001100000110101001", 
    43 => "10111011110001000000010010100111", 
    44 => "00111101100001000000100011011001", 
    45 => "00111100110000010100101001001101", 
    46 => "00111001101111101101011101000001", 
    47 => "00111100111111001010010000101011", 
    48 => "10111100001001101110001100101110", 
    49 => "00111100001111010111111101010010", 
    50 => "10111110010000011110010000101110", 
    51 => "10111110000100011010110110100111" );


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

entity L2_up_L1_WEIGHTS_32 is
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

architecture arch of L2_up_L1_WEIGHTS_32 is
    component L2_up_L1_WEIGHTS_32_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_32_rom_U :  component L2_up_L1_WEIGHTS_32_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


