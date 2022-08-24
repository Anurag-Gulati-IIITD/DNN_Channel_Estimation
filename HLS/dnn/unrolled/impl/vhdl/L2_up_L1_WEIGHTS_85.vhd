-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_85_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_85_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111010111100100011100010010111", 
    1 => "10111101100000101011100101001110", 
    2 => "10111011111010101010011011010010", 
    3 => "00111100100110001010111010111000", 
    4 => "00111101100100110111010101000011", 
    5 => "10111101110001011111111110100100", 
    6 => "10111010101011100111010011110011", 
    7 => "10111011001010100010000110100111", 
    8 => "10111011000101010110110000001101", 
    9 => "10111101111100010000010111100010", 
    10 => "00111110010000100110110001111111", 
    11 => "10111110000010000001011110111001", 
    12 => "10111101000101101011101010001100", 
    13 => "10111101111011110001001111001111", 
    14 => "00111110100001010010100011010000", 
    15 => "00111101111001000001110000111111", 
    16 => "10111100100101100111101010010110", 
    17 => "10111101111000010101111101000110", 
    18 => "10111101100011001010011100001101", 
    19 => "00111101010101110111110110010101", 
    20 => "00111100101100010011000101100110", 
    21 => "00111101000010100110000100010111", 
    22 => "10111101101101110100111011101100", 
    23 => "00111110001011011010000111101100", 
    24 => "00111010101001110001110111100111", 
    25 => "00111100001110000000111011010000", 
    26 => "10111101010001011100100110100011", 
    27 => "00111101101010010101001010001111", 
    28 => "10111101100110011011010101100011", 
    29 => "10111100110001001011000010011111", 
    30 => "10111110001010100000110010101110", 
    31 => "00111101110010000110101001001101", 
    32 => "10111101101000100100010111110110", 
    33 => "00111010000110111111100111000110", 
    34 => "00111110000011110100101001010110", 
    35 => "00111110010010111101101000001110", 
    36 => "00111100011000010101000000010010", 
    37 => "10111101111101011001110011010000", 
    38 => "00111100101111000010111111000111", 
    39 => "10111101101011001110100000010000", 
    40 => "10111100110111110001000101110011", 
    41 => "00111100001011101101110111001110", 
    42 => "00111101101111000011010001111111", 
    43 => "10111101110000111110110110010110", 
    44 => "10111101001001100011011000101010", 
    45 => "00111101000011010000100110011110", 
    46 => "00111100001111011101101110011000", 
    47 => "00111101001001000110101111110000", 
    48 => "10111100100100011011111001101110", 
    49 => "10111110000000111000111100110110", 
    50 => "00111101111110111110010011001101", 
    51 => "00111110000110110101000110111101" );


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

entity L2_up_L1_WEIGHTS_85 is
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

architecture arch of L2_up_L1_WEIGHTS_85 is
    component L2_up_L1_WEIGHTS_85_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_85_rom_U :  component L2_up_L1_WEIGHTS_85_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


