-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_99_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_99_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110011000000101111011101", 
    1 => "00111010111010000110010000000010", 
    2 => "10111100101100110110110111101100", 
    3 => "10111101100111011011001100111001", 
    4 => "00111110100001101111101001100001", 
    5 => "00111101101010111010000111110101", 
    6 => "00111100000100000011011001000100", 
    7 => "00111101111001101001000001011000", 
    8 => "10111101110011000110001111110001", 
    9 => "00111110001011001000011100010010", 
    10 => "00111101010001110000100001101000", 
    11 => "10111100110011001001101001111000", 
    12 => "00111101010101100111100110001001", 
    13 => "00111101111010011011000001101000", 
    14 => "10111101001011001110100010010110", 
    15 => "00111101101010001001101000000010", 
    16 => "00111101100110010100110010001000", 
    17 => "00111101011110001100100101110101", 
    18 => "10111101011111111101100100110100", 
    19 => "10111101100101101000101111100011", 
    20 => "00111001000001110100010000101100", 
    21 => "10111101010101000110010111101001", 
    22 => "10111101100101000111000001100101", 
    23 => "10111101100111010011101110110000", 
    24 => "10111100001101000110111111011111", 
    25 => "10111001111001001001011011101110", 
    26 => "00111101100100100110110001111111", 
    27 => "00111101010000110111011100011000", 
    28 => "00111101101010011110101100100000", 
    29 => "10111101110000000010100101101011", 
    30 => "10111011001011010111100101001010", 
    31 => "00111100100110011010000111111101", 
    32 => "10111101111010100001011100101011", 
    33 => "10111101110010010010111001100010", 
    34 => "00111110000101110101101111000100", 
    35 => "00111100000001010011011111100011", 
    36 => "00111101000111001001110001001110", 
    37 => "10111100010110001001110011100101", 
    38 => "10111011110000100101000001110010", 
    39 => "00111101111001110111110111011000", 
    40 => "10111100111111100010110001010110", 
    41 => "10111110100111111010001010101101", 
    42 => "10111110001111010101010101100001", 
    43 => "10111101101000101111010110011001", 
    44 => "00111100010000011100011000001001", 
    45 => "10111101100000101111111010000010", 
    46 => "00111101111010111011010101011011", 
    47 => "10111100101100000001111010101100", 
    48 => "00111101111000100011111010011111", 
    49 => "10111101001100110110010001111100", 
    50 => "00111110000111011101011100100011", 
    51 => "10111101000110001010010101001000" );


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

entity L2_up_L1_WEIGHTS_99 is
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

architecture arch of L2_up_L1_WEIGHTS_99 is
    component L2_up_L1_WEIGHTS_99_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_99_rom_U :  component L2_up_L1_WEIGHTS_99_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


