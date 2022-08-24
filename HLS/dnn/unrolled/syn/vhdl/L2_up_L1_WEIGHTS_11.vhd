-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_11_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_11_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100110010100001010010001", 
    1 => "00111101111001010100010011111110", 
    2 => "10111101001100100111111111100101", 
    3 => "00111110001010100100110101101110", 
    4 => "10111100101100101000000011110001", 
    5 => "10111101000011100001000111011100", 
    6 => "10111110000010110111001111010010", 
    7 => "00111101010111110101101111100110", 
    8 => "10111110011010110110010000010111", 
    9 => "10111101101010101000000100010011", 
    10 => "10111110000110000110000000010011", 
    11 => "10111110000000111000001001011110", 
    12 => "10111100111101110110101000101111", 
    13 => "00111101100101011101011001111100", 
    14 => "00111101001000000010111110110110", 
    15 => "00111101100110100000101011011001", 
    16 => "10111101010011111101100011110001", 
    17 => "00111101100110111000110010111001", 
    18 => "00111101000011011100011001011100", 
    19 => "00111100101010001111000110010001", 
    20 => "10111101101011110011111111011001", 
    21 => "00111100100011111001010011001000", 
    22 => "00111101000011000011000110011100", 
    23 => "10111101110100100110010100101000", 
    24 => "10111101100111010110001110001000", 
    25 => "00111101010110100101001100110011", 
    26 => "10111110011000100000000000111011", 
    27 => "10111110001101001100110110111000", 
    28 => "00111101000000101101001110000100", 
    29 => "00111110000001111001010001100100", 
    30 => "10111101110000000110010110110110", 
    31 => "00111101010111010101100000000000", 
    32 => "00111100101001111100101111110111", 
    33 => "10111101011100100001010011110000", 
    34 => "10111110000000111100100101101001", 
    35 => "10111101010011001100001101011101", 
    36 => "00111101010101111000011100000101", 
    37 => "00111110010000111101100111101100", 
    38 => "00111101010100010110100001110011", 
    39 => "10111100000111000010001110111000", 
    40 => "00111101010000000010001010011010", 
    41 => "10111100101011011001100010111111", 
    42 => "10111100110001001001010101011011", 
    43 => "10111101111011000110001111110001", 
    44 => "00111101010001001111001110111010", 
    45 => "00111100100111011101000110100010", 
    46 => "10111101111000011000110111101111", 
    47 => "00111101010101010011011110100000", 
    48 => "00111101000110011111100100000101", 
    49 => "00111101101100111111011101001001", 
    50 => "00111110000010111100001000110011", 
    51 => "10111100000001100100000000100001" );


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

entity L2_up_L1_WEIGHTS_11 is
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

architecture arch of L2_up_L1_WEIGHTS_11 is
    component L2_up_L1_WEIGHTS_11_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_11_rom_U :  component L2_up_L1_WEIGHTS_11_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


