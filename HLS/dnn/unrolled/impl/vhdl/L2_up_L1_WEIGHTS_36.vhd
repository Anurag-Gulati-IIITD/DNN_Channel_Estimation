-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_36_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_36_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010011011100100001110101", 
    1 => "00111101000101000101111010010010", 
    2 => "00111101111110100011110110110100", 
    3 => "10111101101000001110011010110000", 
    4 => "00111110010010000001101110101000", 
    5 => "00111101000110111011001001111001", 
    6 => "00111101100010010000111011101101", 
    7 => "00111101001011000101001110110001", 
    8 => "10111110011001100010000001101000", 
    9 => "10111101111110110100100010010001", 
    10 => "00111101011011111100000101011001", 
    11 => "00111011111010010001010000101011", 
    12 => "10111101100111111011101001000101", 
    13 => "10111101000010100011101101011000", 
    14 => "00111110001001000110110010111001", 
    15 => "10111101111011110100000101101100", 
    16 => "10111100000011011100100110000010", 
    17 => "10111100010000101001011111000000", 
    18 => "10111101011110110100101000100011", 
    19 => "00111100100010101000100011110000", 
    20 => "00111101101010111001100100001011", 
    21 => "10111101110001100011101111101111", 
    22 => "10111101100110110101100011010001", 
    23 => "10111101110000100000110011010000", 
    24 => "00111100100011110101111001000010", 
    25 => "00111011011000010101000000010010", 
    26 => "10111100110100100101000000101111", 
    27 => "10111101100011110010010100011100", 
    28 => "00111101000110111001000011101011", 
    29 => "10111101001101011101010001100011", 
    30 => "10111101100001111111000010101010", 
    31 => "00111100010110100010111110001100", 
    32 => "10111101101011101001001101011100", 
    33 => "10111101101100110100011000010011", 
    34 => "00111101100001111101110101000100", 
    35 => "00111101011000100101111110100110", 
    36 => "00111101100100100110100011010011", 
    37 => "10111110000101011000111100101110", 
    38 => "10111100010001100100011101111000", 
    39 => "10111101111111000111110011011001", 
    40 => "10111101000110011010100101010100", 
    41 => "10111101101010101011001001011011", 
    42 => "00111110000000001111011010101101", 
    43 => "00111101110111111101110101100110", 
    44 => "10111101010010111010011000100110", 
    45 => "10111101010001000010111010011001", 
    46 => "10111100100111111000011111110000", 
    47 => "10111101000001001111001010101110", 
    48 => "10111100101011001010110111011110", 
    49 => "10111101100000010100011110101110", 
    50 => "00111110001111000000011101101000", 
    51 => "00111101101100100111010001011100" );


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

entity L2_up_L1_WEIGHTS_36 is
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

architecture arch of L2_up_L1_WEIGHTS_36 is
    component L2_up_L1_WEIGHTS_36_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_36_rom_U :  component L2_up_L1_WEIGHTS_36_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


