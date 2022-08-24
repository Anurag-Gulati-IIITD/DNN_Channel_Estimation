-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_50_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_50_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100000100000000110001010010", 
    1 => "00111101110011110010100011001000", 
    2 => "10111101001101100000000101111001", 
    3 => "00111101010100110110110101100101", 
    4 => "10111101000111000000000000010001", 
    5 => "00111101010010110010101001101011", 
    6 => "00111101101111110000101100101000", 
    7 => "10111101000010100000010111011110", 
    8 => "10111101011010010010100100100100", 
    9 => "10111101100101000001000001110011", 
    10 => "10111101100110011000111100011101", 
    11 => "10111110100010011111001110100101", 
    12 => "00111101100011011010110100110010", 
    13 => "10111100011100001101110001110111", 
    14 => "10111110010111111101110001011001", 
    15 => "00111110000001101000010000000110", 
    16 => "10111101100010001001011101100011", 
    17 => "00111101011000001100111000001100", 
    18 => "10111100111011011000100100000101", 
    19 => "10111110000001111111010010011001", 
    20 => "10111101000111101101011010111011", 
    21 => "00111101001111110000000000100110", 
    22 => "00111100111101001001101011011101", 
    23 => "10111100110001111010000101111111", 
    24 => "10111100011111001110101101111001", 
    25 => "00111101000000001110111000000111", 
    26 => "00111110010110101001100101110100", 
    27 => "00111101010111111111001111110001", 
    28 => "10111101110111110011100111010010", 
    29 => "10111110001100000010110010010001", 
    30 => "00111110011001001100011010100100", 
    31 => "10111101101010101010100101110001", 
    32 => "10111101100011010010001111010101", 
    33 => "00111110000110111100101101100000", 
    34 => "00111100110000101010001000111100", 
    35 => "00111101101001101010000010011001", 
    36 => "00111101000111010111100010000001", 
    37 => "00111100010010000001010011010111", 
    38 => "10111101011000001111100100001001", 
    39 => "00111101101000100110100110011100", 
    40 => "10111100101011010101011110111100", 
    41 => "00111101001011000100010100000010", 
    42 => "00111101001100001100000100110011", 
    43 => "10111110001101111000100001010101", 
    44 => "10111101101000000110111100100110", 
    45 => "10111101100000000010011011001100", 
    46 => "00111101011101111111011110111110", 
    47 => "00111101011000010001010001001101", 
    48 => "10111011111100111100001011011011", 
    49 => "10111110001011100001101011000101", 
    50 => "00111101001100010101101101010111", 
    51 => "10111101110000100111100111011101" );


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

entity L2_up_L1_WEIGHTS_50 is
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

architecture arch of L2_up_L1_WEIGHTS_50 is
    component L2_up_L1_WEIGHTS_50_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_50_rom_U :  component L2_up_L1_WEIGHTS_50_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


