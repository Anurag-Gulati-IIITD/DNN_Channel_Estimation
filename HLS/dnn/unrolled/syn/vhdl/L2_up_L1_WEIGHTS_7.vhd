-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_7_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100011011100110000100001", 
    1 => "10111110000101010011111010110100", 
    2 => "10111101100011100000011011011001", 
    3 => "10111101001110010011010101110110", 
    4 => "10111100100101010001011000010010", 
    5 => "10111101111010101111000111001100", 
    6 => "00111101000001001000010010010100", 
    7 => "00111101000100000100101100111100", 
    8 => "00111110001101110001100011101100", 
    9 => "10111101010000000010100111110001", 
    10 => "00111110000001110010110001010010", 
    11 => "00111101011001011010000101000101", 
    12 => "10111101101100111000101011000010", 
    13 => "10111101100010000100000101101000", 
    14 => "10111101100011000110111001101110", 
    15 => "10111110010011010111000010100100", 
    16 => "00111101101000101110110100110101", 
    17 => "10111011110011001011110000000110", 
    18 => "00111100101001100111110001101100", 
    19 => "10111101011010000100101111100100", 
    20 => "00111100110100010011110101110101", 
    21 => "10111100000000100101100111100010", 
    22 => "00111011101010110011011001111010", 
    23 => "00111110000011011101010101001110", 
    24 => "00111011011111000111000111010110", 
    25 => "00111011100100010110110010100100", 
    26 => "00111101111100010110011111101100", 
    27 => "00111100111011101011000010111000", 
    28 => "10111101110011100101100000011101", 
    29 => "00111101101111001000111000100110", 
    30 => "00111101111000010101010001000011", 
    31 => "10111100011000011011000010001010", 
    32 => "10111100101100101111011001100010", 
    33 => "00111100100011011110110100101001", 
    34 => "00111100101101000011100101011000", 
    35 => "10111101010010101010010101000000", 
    36 => "00111101011111011011001111000000", 
    37 => "10111110000000100001000000111000", 
    38 => "10111101101101111110110000110101", 
    39 => "10111101111011000011101010000110", 
    40 => "00111101010000101000100100010010", 
    41 => "00111100101100100011100110100100", 
    42 => "00111100000100110111100011101110", 
    43 => "00111110000001001010110001101101", 
    44 => "10111101010110101100010101111110", 
    45 => "00111001001111101101011101000001", 
    46 => "00111101110111010110000101110000", 
    47 => "10111101101000110000000110101000", 
    48 => "10111101001001011100010111111000", 
    49 => "10111101100101000110111101011000", 
    50 => "10111110010000010001010011010011", 
    51 => "00111101100011000000110111110110" );


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

entity L2_up_L1_WEIGHTS_7 is
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

architecture arch of L2_up_L1_WEIGHTS_7 is
    component L2_up_L1_WEIGHTS_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_7_rom_U :  component L2_up_L1_WEIGHTS_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


