-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_33_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_33_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100101001011110000100111011", 
    1 => "10111101100101001001000101101101", 
    2 => "10111101000001111011010001011111", 
    3 => "00111101100000110111100110110111", 
    4 => "10111101101011011011101111100000", 
    5 => "10111101100001100000011011111011", 
    6 => "10111101000100101110000111101111", 
    7 => "00111101001000101110010111011110", 
    8 => "00111101110100000001001010011101", 
    9 => "00111110001001010010110001011010", 
    10 => "00111100100110111000101010100000", 
    11 => "00111100001011101101010101101011", 
    12 => "00111101110011001011101110000000", 
    13 => "00111110000000011101010010110111", 
    14 => "00111101001101001100100100000000", 
    15 => "00111110011000011001101001000001", 
    16 => "00111011110100001100001111010010", 
    17 => "10111101000001011010110101010100", 
    18 => "00111100000100000000001111101111", 
    19 => "00111100100010000110110111111000", 
    20 => "00111101011101111011101011101101", 
    21 => "00111101010110101100000001000000", 
    22 => "10111101000101110100101101000000", 
    23 => "00111101111011010010111101011110", 
    24 => "10111100100011010001001100001110", 
    25 => "10111100001010110110110100000001", 
    26 => "10111110100000101101101001110111", 
    27 => "00111100101110001111100110110001", 
    28 => "10111101000110101110101000110001", 
    29 => "00111011001010011000101010101000", 
    30 => "00111101000111011000111110010011", 
    31 => "10111101000110100100010010000101", 
    32 => "00111101110111111101100000100111", 
    33 => "10111101001110101000001011101000", 
    34 => "00111100100000110000000110101000", 
    35 => "00111110010101110011101010111101", 
    36 => "10111010011111001111100000001110", 
    37 => "00111101100101001111001111111110", 
    38 => "00111100011010010100111011100100", 
    39 => "00111110000010110110111011010110", 
    40 => "00111101110000100000110101010110", 
    41 => "00111101000001111010111100100001", 
    42 => "10111110001011110100111001000100", 
    43 => "10111110011001111011101100110000", 
    44 => "10111100001110000111101111011101", 
    45 => "00111100011111001011100100100100", 
    46 => "10111101110101110111110110010101", 
    47 => "10111101010010011010101110110000", 
    48 => "00111011011110111011100101001001", 
    49 => "10111101000111100001000010001100", 
    50 => "10111101101011110101010101011000", 
    51 => "10111110000101000110101011100100" );


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

entity L2_up_L1_WEIGHTS_33 is
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

architecture arch of L2_up_L1_WEIGHTS_33 is
    component L2_up_L1_WEIGHTS_33_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_33_rom_U :  component L2_up_L1_WEIGHTS_33_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


