-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_95_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_95_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001000101000111011010110", 
    1 => "00111101010101011010001010010100", 
    2 => "00111101101111110000001011000101", 
    3 => "00111100100101111111000111111010", 
    4 => "10111101111010111010101101100101", 
    5 => "00111110000101010100011110011101", 
    6 => "00111101110000000001111011101111", 
    7 => "10111101111001111000100111100111", 
    8 => "00111101100110110100111111101000", 
    9 => "10111110000110011010110000110110", 
    10 => "10111101011100011000100101111010", 
    11 => "10111101101110110000010001101000", 
    12 => "00111011011010011011001110001101", 
    13 => "10111101100100110110011010010101", 
    14 => "10111110001011000110001101101011", 
    15 => "10111110000010110101100001001011", 
    16 => "10111101001010000010110101111011", 
    17 => "10111101101010001111011111011011", 
    18 => "10111101011101101010111001111101", 
    19 => "00111100100110001001011110100110", 
    20 => "00111100111110011110100111010001", 
    21 => "00111011001010011001101101101111", 
    22 => "00111101100111110010111001001001", 
    23 => "10111101101000111100001000010010", 
    24 => "00111101100010010010110111011100", 
    25 => "00111101000101111000110101010000", 
    26 => "10111101100101010111011000000100", 
    27 => "10111101011010001111000110010001", 
    28 => "10111101011000111011000101001011", 
    29 => "10111110000101000010000011110111", 
    30 => "00111101111010010010011110010001", 
    31 => "00111100001010101000001000011111", 
    32 => "00111101011111011010011000011110", 
    33 => "10111100111101011011101000101100", 
    34 => "00111101010100101011010111100101", 
    35 => "00111110011011011101111010111110", 
    36 => "10111100110111100001011111100011", 
    37 => "00111101011000001001111011011100", 
    38 => "10111101010010101001001001100000", 
    39 => "10111100001110011100001100000101", 
    40 => "10111101000100010000000010100100", 
    41 => "00111110010001010000001111111011", 
    42 => "00111110010100100011000000110100", 
    43 => "00111110000110101100000101001100", 
    44 => "10111100100011110100000011100110", 
    45 => "10111100110110010101000101000000", 
    46 => "10111101100101101010110011101011", 
    47 => "10111100010101001100001100111011", 
    48 => "10111101000011010111010010010010", 
    49 => "10111100111011011011101101011010", 
    50 => "10111100100011111011011001010110", 
    51 => "00111100101100110000000011011110" );


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

entity L2_up_L1_WEIGHTS_95 is
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

architecture arch of L2_up_L1_WEIGHTS_95 is
    component L2_up_L1_WEIGHTS_95_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_95_rom_U :  component L2_up_L1_WEIGHTS_95_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


