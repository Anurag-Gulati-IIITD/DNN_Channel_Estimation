-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_g8j_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_g8j_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101001100010011100010111101", 
    1 => "00111101001011110101001000110011", 
    2 => "10111101101101101001010101010011", 
    3 => "10111101000000011000011100011110", 
    4 => "10111110100100110101011000110010", 
    5 => "10111110011000000011100000011001", 
    6 => "10111100001000000101110111011001", 
    7 => "00111011100100100100011010111111", 
    8 => "00111101101100111011011001000110", 
    9 => "10111110101011110101111001000010", 
    10 => "00111100110111001001011000000011", 
    11 => "00111110010100100001111101101101", 
    12 => "00111101000011010111101111101010", 
    13 => "10111110000110011111111011001010", 
    14 => "10111100110001111111100110010100", 
    15 => "00111101111000100111011111000100", 
    16 => "10111101011110001101110101100001", 
    17 => "00111101000101111011011000110101", 
    18 => "00111101000010110100101011101101", 
    19 => "10111110001100111100010001101110", 
    20 => "00111101000001011101010000100000", 
    21 => "00111101001110001110000010000111", 
    22 => "00111101100000101101101001010101", 
    23 => "10111101110110001100001000011110", 
    24 => "10111101101111011010110101110101", 
    25 => "00111011110011011111101011001010", 
    26 => "00111101000100100010000011111111", 
    27 => "10111010100011010100101110101101", 
    28 => "10111110001100011010011011010111", 
    29 => "00111110001101100111000001011101", 
    30 => "00111101111001100000000100110110", 
    31 => "10111010110001001011110100110100", 
    32 => "00111101111101111111101101101010", 
    33 => "00111110011101100110011100110000", 
    34 => "10111100101100011011011110011110", 
    35 => "10111101000100011101010110000000", 
    36 => "10111101010101000001100101011101", 
    37 => "10111010100111011000110001101101", 
    38 => "00111100110110110011100111100010", 
    39 => "00111101101001010100110001010101", 
    40 => "00111101100100101011111101010101", 
    41 => "00111110000000010110100111000010", 
    42 => "00111110000011011001110000101000", 
    43 => "10111110000110111111110001100101", 
    44 => "00111101010010110101011001110101", 
    45 => "00111101011110100110000101011011", 
    46 => "00111101110110111010101010011011", 
    47 => "00111100110000000110011111001111", 
    48 => "10111101011001011111010100100111", 
    49 => "00111101011101110010001111101110", 
    50 => "10111101011111101110100100010100", 
    51 => "10111101110111100000101001000010" );


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

entity L2_up_L1_WEIGHTS_g8j is
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

architecture arch of L2_up_L1_WEIGHTS_g8j is
    component L2_up_L1_WEIGHTS_g8j_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_g8j_rom_U :  component L2_up_L1_WEIGHTS_g8j_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


