-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_10_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_10_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101101011010101100101001111", 
    1 => "00111110000001010010010000111010", 
    2 => "10111101100010100011100010111001", 
    3 => "00111101100010011001111100011011", 
    4 => "10111100110011110111000000010101", 
    5 => "00111101110011000110010011111110", 
    6 => "10111101100111100110100100100111", 
    7 => "10111101111011100000100011110010", 
    8 => "10111110000011000110110101100001", 
    9 => "00111100101001001100000111101100", 
    10 => "10111101111100100111110000111001", 
    11 => "00111101100001001001011011101110", 
    12 => "10111100110001100111001110000010", 
    13 => "00111110010101011000010000101011", 
    14 => "10111100001100101101000010100010", 
    15 => "00111110001000011111110111011111", 
    16 => "00111100110000110010000000010000", 
    17 => "00111101100011000110000001000110", 
    18 => "00111101001111001110001000001001", 
    19 => "00111101000110100110011000010011", 
    20 => "00111101100001010110010001110011", 
    21 => "00111101010000110011011100100010", 
    22 => "00111101100000000001111101110101", 
    23 => "10111110000010011001001011001001", 
    24 => "10111100100111111010010101001100", 
    25 => "10111101101010101111010001101011", 
    26 => "10111101100101101001000010011011", 
    27 => "10111101000010000001000110110010", 
    28 => "00111110001011111011110001011110", 
    29 => "10111101110010110101111011011001", 
    30 => "00111101111010100100101100010010", 
    31 => "00111101001100101000101101101110", 
    32 => "00111101101110001011110001011010", 
    33 => "00111100101100111110010101110101", 
    34 => "10111110000100010011101011010110", 
    35 => "10111110000001100111001001110101", 
    36 => "00111101010101101100011000010101", 
    37 => "00111110001000011000100110111110", 
    38 => "10111100110000011001110000010111", 
    39 => "10111101101111111110111010110011", 
    40 => "00111101000010100100001010101111", 
    41 => "10111100111101001110110010100111", 
    42 => "10111101101100100010010000100101", 
    43 => "10111101111101101110100010110000", 
    44 => "00111100001110111010110111000001", 
    45 => "10111101010000111001000101001111", 
    46 => "10111101100100110111011011010101", 
    47 => "00111101010001110000011001001111", 
    48 => "00111101001010101000011001010001", 
    49 => "00111101110010110110111000001101", 
    50 => "00111110000101111110011001110001", 
    51 => "00111101101110011011000000100101" );


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

entity L2_up_L1_WEIGHTS_10 is
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

architecture arch of L2_up_L1_WEIGHTS_10 is
    component L2_up_L1_WEIGHTS_10_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_10_rom_U :  component L2_up_L1_WEIGHTS_10_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


