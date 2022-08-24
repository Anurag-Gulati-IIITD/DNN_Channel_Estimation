-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110100001001111110100101", 
    1 => "10111101111011011100101000001000", 
    2 => "10111101000111100111101001110100", 
    3 => "10111101001011010011110110000110", 
    4 => "10111110100001110010111110011000", 
    5 => "10111110001001011000101000110011", 
    6 => "10111101100010110110101011101000", 
    7 => "10111101011000101100111011001101", 
    8 => "00111101101110011001011001110100", 
    9 => "10111101111101011100000011111101", 
    10 => "00111101010111011101110100101011", 
    11 => "00111110110011100001011111100011", 
    12 => "10111101101110010100010010101010", 
    13 => "10111101110010111100011110110100", 
    14 => "00111110000001001000011010101101", 
    15 => "10111101101101000101011010110100", 
    16 => "00111100001101101000010010001100", 
    17 => "00111100100111100100010011111010", 
    18 => "00111011101101011100001110011100", 
    19 => "00111010110000101100010111100011", 
    20 => "00111100101000000101001101011101", 
    21 => "00111101011110000111100010111000", 
    22 => "00111101111000111100011111010110", 
    23 => "00111011001010101110101011111011", 
    24 => "10111110000011100111001000010001", 
    25 => "10111101100010100100111111001010", 
    26 => "10111101110000001110010100011101", 
    27 => "10111101001111001111000111000011", 
    28 => "00111100000001100111111100001011", 
    29 => "00111110010001100100101100100011", 
    30 => "10111110010100101011100100001010", 
    31 => "00111101000010101111101100111011", 
    32 => "00111110011010011101000111110110", 
    33 => "00111101011000000000011011010001", 
    34 => "10111011011101000111001100000100", 
    35 => "10111110001001110100111110110101", 
    36 => "10111101001110100110000001001110", 
    37 => "10111101110111010000111000010011", 
    38 => "00111101011101101011110000011111", 
    39 => "10111110001001000100110000111000", 
    40 => "00111011111101000100100100010011", 
    41 => "00111110011001101110010110001010", 
    42 => "00111110001000010001010010010000", 
    43 => "00111101100001111000100011011011", 
    44 => "00111101011101111010110000111111", 
    45 => "00111101100110011110010100011001", 
    46 => "00111011110000001111000000100000", 
    47 => "10111101011000100001111110110000", 
    48 => "10111101111001111101011011111001", 
    49 => "00111101000000101000100000000101", 
    50 => "10111110000101111011010111110010", 
    51 => "00111101101110011110001001111010" );


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

entity L2_up_L1_WEIGHTS is
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

architecture arch of L2_up_L1_WEIGHTS is
    component L2_up_L1_WEIGHTS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_rom_U :  component L2_up_L1_WEIGHTS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


