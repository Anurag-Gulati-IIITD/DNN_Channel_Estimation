-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_48_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_48_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100000011111100000011010011", 
    1 => "10111101110110001010101110010011", 
    2 => "00111101101100101001011001110000", 
    3 => "10111100100000110011011000010101", 
    4 => "00111110001101110100011001000101", 
    5 => "00111110001101111010010001100001", 
    6 => "00111101110111101000000000111001", 
    7 => "00111101000001111000110110010011", 
    8 => "10111101110100011101010110000000", 
    9 => "00111110100001100100111111011011", 
    10 => "00111101000110010000110100010111", 
    11 => "10111100010100000101001010010011", 
    12 => "10111101100010010000111111111001", 
    13 => "00111101111110011010000101110111", 
    14 => "00111101101110000001001100000001", 
    15 => "10111101100000001000010000011111", 
    16 => "00111011101001100000000010110000", 
    17 => "10111110001100100001110110010111", 
    18 => "00111100111110101111110010001011", 
    19 => "00111101100000001010111010010111", 
    20 => "00111100111110011100110001110101", 
    21 => "10111101011100101000001100001010", 
    22 => "10111100001100001010101100101110", 
    23 => "00111101101101110110110101010101", 
    24 => "00111101101001110000101110001101", 
    25 => "10111101011011010011110001111001", 
    26 => "00111101101100010101101101010111", 
    27 => "00111101100010000011010111011111", 
    28 => "00111101100100010101011010011111", 
    29 => "10111110010000001111001111001011", 
    30 => "10111101000110011101101110101001", 
    31 => "00111101000001011110000111000001", 
    32 => "10111110000001010100110011011011", 
    33 => "10111101111011110001100110010011", 
    34 => "10111101011010010110010011101001", 
    35 => "00111101000111100100100100101100", 
    36 => "00111011110100011010011001010000", 
    37 => "00111101000110110100001101010010", 
    38 => "00111011111101101000001101111111", 
    39 => "10111101011101111111110011111100", 
    40 => "10111101011010011000011001110111", 
    41 => "10111101111100011111100000011010", 
    42 => "10111110100001001011110101110111", 
    43 => "00111110000101011101111011011111", 
    44 => "00111001100010110111010111101010", 
    45 => "10111101111000000101111111110010", 
    46 => "00111101101000000010111110110110", 
    47 => "10111100100011100011000001000100", 
    48 => "00111110000010010000111000100100", 
    49 => "00111011000101010001100000101011", 
    50 => "00111101011000100101100001001111", 
    51 => "00111101101001101001101011010100" );


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

entity L2_up_L1_WEIGHTS_48 is
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

architecture arch of L2_up_L1_WEIGHTS_48 is
    component L2_up_L1_WEIGHTS_48_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_48_rom_U :  component L2_up_L1_WEIGHTS_48_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


