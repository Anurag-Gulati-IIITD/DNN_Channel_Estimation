-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_39_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_39_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101110011101010010100101111", 
    1 => "10111100010111110000010011011110", 
    2 => "10111101101100100000000001111110", 
    3 => "00111101101110011001010001011011", 
    4 => "10111110001001010111100110101111", 
    5 => "10111100100101010110010111000011", 
    6 => "10111101100001100110000000011100", 
    7 => "10111100011111011010100000110111", 
    8 => "00111101110000101101110101111011", 
    9 => "00111101111110110111101101101100", 
    10 => "10111110010110101000101011000110", 
    11 => "10111110000001010001110110101100", 
    12 => "00111101101111001100100011011110", 
    13 => "10111101000111010001100100010101", 
    14 => "10111101100101001101000001010111", 
    15 => "10111011001000010110101001001000", 
    16 => "10111101101010001000110101101101", 
    17 => "00111101000100000100100100100011", 
    18 => "00111011100010001101011011010100", 
    19 => "10111110001000001001011101000010", 
    20 => "10111101101111100110100010100001", 
    21 => "00111101100111010011111011010101", 
    22 => "00111101101011111011001110110111", 
    23 => "00111001000100101100110011110111", 
    24 => "10111101010001110100001100100000", 
    25 => "00111100100001010010101101001110", 
    26 => "00111110001111100100000111010101", 
    27 => "00111101010001000111010111100110", 
    28 => "10111101110001111011000100111010", 
    29 => "00111100001000100100100010010101", 
    30 => "00111100100001010000110111110001", 
    31 => "10111101000100000111011000111010", 
    32 => "00111100000010001000101101010100", 
    33 => "00111110001101001110101101010111", 
    34 => "10111110001000100110100101011001", 
    35 => "00111101100110100111111100111101", 
    36 => "10111100000101000010010011100110", 
    37 => "00111110001010110001010011101100", 
    38 => "10111101100100111110110101010010", 
    39 => "00111101010000010111001000100110", 
    40 => "00111100111101000111111110011001", 
    41 => "00111101101100011101011000000110", 
    42 => "10111110001011100100101110001000", 
    43 => "10111101000110111000000000100100", 
    44 => "00111101100100010111000111100011", 
    45 => "10111100100001111001101000101000", 
    46 => "10111101110111001000000010000100", 
    47 => "00111011111000100111111000001111", 
    48 => "00111101011101101000111100001000", 
    49 => "00111101111101110000010110000101", 
    50 => "10111110001000101110101000010000", 
    51 => "10111100110010001011110010011101" );


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

entity L2_up_L1_WEIGHTS_39 is
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

architecture arch of L2_up_L1_WEIGHTS_39 is
    component L2_up_L1_WEIGHTS_39_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_39_rom_U :  component L2_up_L1_WEIGHTS_39_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


