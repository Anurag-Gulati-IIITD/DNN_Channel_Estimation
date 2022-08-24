-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_63_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_63_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011101100010111100010110011", 
    1 => "00111100011111000001110111110011", 
    2 => "10111101001101010101010110000010", 
    3 => "00111100101111110111000001011000", 
    4 => "00111011100101000111000001100101", 
    5 => "10111110001010110101000110111101", 
    6 => "00111101010011010010011011111010", 
    7 => "00111101100100010111110001011111", 
    8 => "00111101001010000101110110110111", 
    9 => "10111110000101001011011001100011", 
    10 => "10111100111000000111101000101001", 
    11 => "10111101100000010000100101001010", 
    12 => "00111110000000101101101100011111", 
    13 => "10111101110001110100100001011110", 
    14 => "00111101100100100001011110001111", 
    15 => "10111101010001011101011000111001", 
    16 => "00111101100100111100111111110110", 
    17 => "00111101001110101001010010111100", 
    18 => "10111101101010111001000010101000", 
    19 => "10111100110010001001010011000100", 
    20 => "00111101001111011111110100100110", 
    21 => "10111101010011110111111111010000", 
    22 => "10111110001001101011010100001011", 
    23 => "00111100011001010001100011110100", 
    24 => "00111110000000011111110100010101", 
    25 => "00111101001100000101010000100110", 
    26 => "10111101101011100111110101010110", 
    27 => "10111011000001110110010110111010", 
    28 => "00111011010000010111011001010111", 
    29 => "00111110001100011111001001010110", 
    30 => "10111101101011110010100101001110", 
    31 => "10111101000000011010010110000111", 
    32 => "10111101101011101100100011010110", 
    33 => "00111100011100010010011111110110", 
    34 => "00111101101110010011011010000010", 
    35 => "00111110000110010111110111010000", 
    36 => "10111011111000110111000101010100", 
    37 => "00111100100110110110000010101111", 
    38 => "00111101101001001000011010101101", 
    39 => "00111011110010110100001010001001", 
    40 => "10111101000001100100001101000110", 
    41 => "10111101100110001111110111100011", 
    42 => "00111101000111000111000001000011", 
    43 => "00111101111100011110001110101000", 
    44 => "10111101101100110110110111101100", 
    45 => "10111100011100101000010000010110", 
    46 => "10111101101001010110101010111110", 
    47 => "10111100011010011001011000110001", 
    48 => "00111101000000101111100000111000", 
    49 => "00111100010000100001010110111010", 
    50 => "10111101001111110001100101010000", 
    51 => "10111101111010100000000010011111" );


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

entity L2_up_L1_WEIGHTS_63 is
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

architecture arch of L2_up_L1_WEIGHTS_63 is
    component L2_up_L1_WEIGHTS_63_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_63_rom_U :  component L2_up_L1_WEIGHTS_63_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


