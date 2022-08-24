-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_26_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_26_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100110001101111101111010", 
    1 => "10111110001110111110110100110001", 
    2 => "00111101111101010000101110010101", 
    3 => "10111101011101101000010110011000", 
    4 => "00111100001001100001000101110111", 
    5 => "00111110100101000010110100000110", 
    6 => "00111101100000110101011010010111", 
    7 => "00111100010100010110011101100110", 
    8 => "00111101110111101001010010101011", 
    9 => "00111101100110000110100110000011", 
    10 => "10111110000000110001100010111001", 
    11 => "00111101110100100011100010010111", 
    12 => "10111100011011010101011010110000", 
    13 => "00111101111100110111001100101010", 
    14 => "10111101000101001111110111110100", 
    15 => "00111101001110100011110110110100", 
    16 => "10111100000100011110011001000111", 
    17 => "10111101101010111100100111001101", 
    18 => "10111101100110001011010110001001", 
    19 => "00111101010111101011011000111001", 
    20 => "10111100100101101011011101100111", 
    21 => "10111101101111100101001100100010", 
    22 => "00111100100110110001110110010011", 
    23 => "00111101111011100101100100101001", 
    24 => "00111101011110100000011100101101", 
    25 => "10111100001011010111110101111100", 
    26 => "00111101110000000101001101011101", 
    27 => "10111110001011110110010101010110", 
    28 => "10111101010011110000000011101111", 
    29 => "10111110100110110101011010111000", 
    30 => "00111101001001110000000010001010", 
    31 => "00111010101100101000010100100011", 
    32 => "10111101010110001101101011000010", 
    33 => "10111101000010011011111010010000", 
    34 => "00111110010000001001010110101111", 
    35 => "00111101100000000110101001101110", 
    36 => "10111100101101100110001011111110", 
    37 => "00111101110000001100011111000001", 
    38 => "00111110001100110011010100001001", 
    39 => "10111101100111010110101111101100", 
    40 => "10111101101010110010010000100000", 
    41 => "10111100110111011100100000110010", 
    42 => "00111100101111011110100000101101", 
    43 => "10111001011011110001001101001001", 
    44 => "10111101101010110100000011110110", 
    45 => "10111011111100111110110011001100", 
    46 => "00111100011110111110111111010000", 
    47 => "10111110000110001100110111101010", 
    48 => "00111010101000010101100110000001", 
    49 => "10111101111111001010001000010010", 
    50 => "10111110000001100101001110000111", 
    51 => "00111101110000101100110000101101" );


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

entity L2_up_L1_WEIGHTS_26 is
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

architecture arch of L2_up_L1_WEIGHTS_26 is
    component L2_up_L1_WEIGHTS_26_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_26_rom_U :  component L2_up_L1_WEIGHTS_26_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


