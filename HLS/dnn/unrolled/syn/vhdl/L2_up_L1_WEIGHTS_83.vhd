-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_83_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_83_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110001011111101111111000", 
    1 => "10111101100001010101101001111101", 
    2 => "10111011110000010000000011100111", 
    3 => "00111101101011001101101001101110", 
    4 => "10111101110111101100111001010111", 
    5 => "10111100101001100101101011011110", 
    6 => "00111100110111100000001011101011", 
    7 => "00111101000110101000110111101011", 
    8 => "00111110010000111010111010101011", 
    9 => "00111100001100011110010111000001", 
    10 => "10111100100100000100011100001011", 
    11 => "10111100110010001001111101000001", 
    12 => "00111101111010110001110011001001", 
    13 => "00111101101111000111101101000110", 
    14 => "10111100110000001011001101001110", 
    15 => "00111110000101110100001101100011", 
    16 => "10111100010011100111110011010000", 
    17 => "10111100001110010001011100001101", 
    18 => "10111101111100100101100100011001", 
    19 => "00111101110000101001000011101111", 
    20 => "00111101101110000100011111110101", 
    21 => "10111101000100011010000000000110", 
    22 => "10111101100101101110100010110000", 
    23 => "00111101011011100100111100110011", 
    24 => "00111011101010011011110011111101", 
    25 => "00111101010101000100000100110101", 
    26 => "10111110001011110100011010101010", 
    27 => "10111101111111110010010111100101", 
    28 => "00111101010001010000000101011100", 
    29 => "10111100111010101111011010000011", 
    30 => "00111101000000110001110111110111", 
    31 => "10111101001100110010100111000011", 
    32 => "10111100010110111011010110011110", 
    33 => "00111101010111001010111100101101", 
    34 => "00111101101011100100011011010000", 
    35 => "00111110011111011001011011101010", 
    36 => "10111101011011000010011010011010", 
    37 => "10111100011011110111001111000001", 
    38 => "00111110000101000001000011111001", 
    39 => "10111100000000100101111000010100", 
    40 => "00111100110110011110011000100101", 
    41 => "00111101100001111111010111101000", 
    42 => "10111100100110101000011010010100", 
    43 => "10111110001111111011010110001101", 
    44 => "00111100001110111001100011001000", 
    45 => "10111100110000100010100010011001", 
    46 => "10111011101001101100101000000100", 
    47 => "10111100001111000101000101010101", 
    48 => "10111101011111110010100100001011", 
    49 => "10111110000011100000111001110011", 
    50 => "10111110011111011000111110010011", 
    51 => "10111101101000010101111101000110" );


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

entity L2_up_L1_WEIGHTS_83 is
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

architecture arch of L2_up_L1_WEIGHTS_83 is
    component L2_up_L1_WEIGHTS_83_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_83_rom_U :  component L2_up_L1_WEIGHTS_83_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


