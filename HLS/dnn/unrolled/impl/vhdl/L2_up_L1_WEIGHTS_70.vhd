-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_70_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_70_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100001110110110000000101", 
    1 => "10111101100001111110001010000010", 
    2 => "10111101100011011000010001001101", 
    3 => "10111110000010010010011011001000", 
    4 => "00111101101110011110010010010011", 
    5 => "10111101101011011110000110100000", 
    6 => "00111101010100111101110010001100", 
    7 => "10111011101111110010101100100100", 
    8 => "00111110000110001111010100111100", 
    9 => "10111110000000110010011010011110", 
    10 => "10111101101110100100111110000111", 
    11 => "00111101011000001110010100011101", 
    12 => "00111100000110001100110000010100", 
    13 => "10111101011101000100111001010001", 
    14 => "00111100000010001000011100100011", 
    15 => "10111101011000110101000111011111", 
    16 => "00111101111100011100100101110001", 
    17 => "00111101100100011110011011001101", 
    18 => "00111101010101100010011110111111", 
    19 => "10111101001101110111000110000110", 
    20 => "10111101010101111101010010011101", 
    21 => "00111101100111011010101001010000", 
    22 => "10111101001000101100011101110101", 
    23 => "00111101100000100011001010010000", 
    24 => "10111101000101010100111110111110", 
    25 => "10111101000111101100100000001100", 
    26 => "10111101110001110111010001101001", 
    27 => "10111100110000110100110000011011", 
    28 => "00111100100111001001000011000101", 
    29 => "00111101110011101111011101111111", 
    30 => "10111010110000110110110110101000", 
    31 => "00111100011111000010001000100101", 
    32 => "10111101100111110000100100001111", 
    33 => "00111100110000100101100011010110", 
    34 => "00111100010101110000101000111101", 
    35 => "10111110000100001001010101101100", 
    36 => "00111100101101111101010000010111", 
    37 => "00111101100101111010100000001101", 
    38 => "00111110010110001101101110001100", 
    39 => "00111101100110000111111110001000", 
    40 => "10111101010100111011000110001110", 
    41 => "10111101111000010010100101000101", 
    42 => "00111110001010010100011000111101", 
    43 => "10111101010100001010110111001101", 
    44 => "00111101010111100110101010111010", 
    45 => "10111101101111100110110101011001", 
    46 => "00111101011000100100010101101111", 
    47 => "10111101110000010101101100010100", 
    48 => "00111101100101100101100110001110", 
    49 => "10111101001011110100010010010001", 
    50 => "10111110000000001011101011101001", 
    51 => "10111100100011010011111100011000" );


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

entity L2_up_L1_WEIGHTS_70 is
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

architecture arch of L2_up_L1_WEIGHTS_70 is
    component L2_up_L1_WEIGHTS_70_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_70_rom_U :  component L2_up_L1_WEIGHTS_70_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


