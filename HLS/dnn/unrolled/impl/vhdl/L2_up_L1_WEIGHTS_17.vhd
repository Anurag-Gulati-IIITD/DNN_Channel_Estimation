-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_17_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_17_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010000110010110110110010", 
    1 => "00111110010101010000000010010011", 
    2 => "00111101100001100101011010101100", 
    3 => "00111101100110101000100010101101", 
    4 => "10111101111011100001111001110001", 
    5 => "00111110000001010100100001100111", 
    6 => "10111100100110101000100010101101", 
    7 => "10111101100101011110110010000001", 
    8 => "10111110010010111000101111110000", 
    9 => "00111110000001100010110000110100", 
    10 => "00111101111010100110011001010110", 
    11 => "10111101001100011110000110001111", 
    12 => "10111110000001010011101101001011", 
    13 => "10111100100011100010001110101111", 
    14 => "00111100110000010110110111110100", 
    15 => "00111101001111100100101010111110", 
    16 => "10111100110110110111101011100101", 
    17 => "10111101111000110010110110110010", 
    18 => "00111100111011001110010101110001", 
    19 => "10111101101001011100110001000010", 
    20 => "10111101001100100000111110110010", 
    21 => "10111101101000011101110110100000", 
    22 => "10111100100011100000000000001000", 
    23 => "10111110010001010100101111001111", 
    24 => "00111100100101011010011011000110", 
    25 => "10111101011010101100010100111011", 
    26 => "00111101110000101011110011111001", 
    27 => "00111101110010101010001100100111", 
    28 => "10111110000111000100100110111010", 
    29 => "10111110000010101011110111100100", 
    30 => "10111101101000000100011111010100", 
    31 => "00111110000110101001001010100011", 
    32 => "00111110000001000010011001111000", 
    33 => "00111101101110100101110110101111", 
    34 => "10111101100000110100111010111010", 
    35 => "00111101000111101110111111100101", 
    36 => "00111011100101111101000001101100", 
    37 => "10111101101011011000010001001101", 
    38 => "10111101010001101110011111100110", 
    39 => "10111101111111000001011100100010", 
    40 => "00111100010000111100111000100001", 
    41 => "00111110010000111001001001011100", 
    42 => "10111110010101010010111001110011", 
    43 => "10111011101111011100001001101110", 
    44 => "00111100010100111001100101110000", 
    45 => "00111110000001000000000100111111", 
    46 => "10111101100000110001100111000110", 
    47 => "00111100011011001011101110000000", 
    48 => "10111101101001110010011101010111", 
    49 => "00111101001010010100100010011001", 
    50 => "00111110000111000000111100000010", 
    51 => "00111110000100101111111011000101" );


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

entity L2_up_L1_WEIGHTS_17 is
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

architecture arch of L2_up_L1_WEIGHTS_17 is
    component L2_up_L1_WEIGHTS_17_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_17_rom_U :  component L2_up_L1_WEIGHTS_17_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


