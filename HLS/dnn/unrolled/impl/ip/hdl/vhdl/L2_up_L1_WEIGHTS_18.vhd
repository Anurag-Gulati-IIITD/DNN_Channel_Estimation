-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_18_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_18_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101011001011001001010010110", 
    1 => "00111101111000111010111100110010", 
    2 => "10111101010001101000100110000111", 
    3 => "10111101001011010001100011010010", 
    4 => "10111101001010110011010101101110", 
    5 => "10111110000110001011110001011010", 
    6 => "00111101010010111111110000100010", 
    7 => "00111101101000011000000111100000", 
    8 => "10111011111011010100010111101001", 
    9 => "00111101100010011101010010010101", 
    10 => "10111101111110010000010111000000", 
    11 => "10111100110001001101100001110111", 
    12 => "10111110001011001000011100010010", 
    13 => "10111110001001111110110111001000", 
    14 => "00111100110100100001010101110111", 
    15 => "00111101010010000110100010111010", 
    16 => "10111101110110010101101110111100", 
    17 => "10111101000001100011111100010100", 
    18 => "10111101010101010001011000010010", 
    19 => "10111101010000001000001000000110", 
    20 => "00111011100000011101110000001110", 
    21 => "00111101001011001111111010011011", 
    22 => "10111101001011001001000010000010", 
    23 => "10111101100010001010010110001011", 
    24 => "00111101010110100011010011001010", 
    25 => "10111100110000000101101100111010", 
    26 => "00111110010011110110010011010000", 
    27 => "10111101100110001001010100000111", 
    28 => "10111101100001000010111100011111", 
    29 => "00111101100101101011010001000010", 
    30 => "10111100101110011000001000000010", 
    31 => "00111100110110011010001100001010", 
    32 => "10111101010110011001111011011000", 
    33 => "00111101100000100001111000011101", 
    34 => "00111100001010110101001111010110", 
    35 => "10111101100111010000101101110100", 
    36 => "00111101100000110011010010000011", 
    37 => "00111101100110110101001110010011", 
    38 => "00111101101110110001110010000110", 
    39 => "10111101111101111011101011101101", 
    40 => "10111101000101101011111010111110", 
    41 => "00111100101100000111010010100111", 
    42 => "10111100011001001000111010001010", 
    43 => "10111100100111110110111011000110", 
    44 => "10111100101001101001001101111101", 
    45 => "00111100001100010001110001101101", 
    46 => "10111101101001001011100100000010", 
    47 => "10111100010110111101101101011110", 
    48 => "10111101100110011101110111000010", 
    49 => "00111101110001000101111011010101", 
    50 => "00111101100001011111100011010011", 
    51 => "00111110000011011000100111001110" );


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

entity L2_up_L1_WEIGHTS_18 is
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

architecture arch of L2_up_L1_WEIGHTS_18 is
    component L2_up_L1_WEIGHTS_18_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_18_rom_U :  component L2_up_L1_WEIGHTS_18_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


