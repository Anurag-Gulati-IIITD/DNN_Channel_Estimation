-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_13_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_13_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010111110001011010110001", 
    1 => "10111101111100010001011100101111", 
    2 => "00111100000110111001010100011100", 
    3 => "10111101101100101101001101000001", 
    4 => "00111110001011110111011011100110", 
    5 => "10111110000111010011010111101011", 
    6 => "00111011101000001010100101011000", 
    7 => "00111110000011111111010011111101", 
    8 => "00111110001000011101011010001100", 
    9 => "10111101110010001011010000111001", 
    10 => "00111101010010010001111100101110", 
    11 => "00111100111000101000010001011010", 
    12 => "00111101111011010001101001100101", 
    13 => "10111101011000011100100010101000", 
    14 => "00111101110110010101011001111110", 
    15 => "10111101100001101001001011110111", 
    16 => "00111100100101100010001010000001", 
    17 => "00111101110010010001100101101001", 
    18 => "10111101101001010011001110110001", 
    19 => "00111101011101111010001011001111", 
    20 => "00111101101001001100111100000111", 
    21 => "10111100000011000010011000010100", 
    22 => "10111110001101000100001100001011", 
    23 => "00111101111111010101101100100101", 
    24 => "10111100111000110111000101010100", 
    25 => "10111100111000001010001000000001", 
    26 => "10111110000111111101110010011100", 
    27 => "10111101101100000110100110100101", 
    28 => "00111100100011011010010111011011", 
    29 => "00111101101100010101000101100001", 
    30 => "00111101000000101110111011001000", 
    31 => "10111100100100101010101101101001", 
    32 => "10111110000110001001001101110101", 
    33 => "00111011100000101000110000110111", 
    34 => "00111101010000111000011111011111", 
    35 => "00111101011110101001001110101111", 
    36 => "00111100000011011000011001100110", 
    37 => "00111100011000010110000011011001", 
    38 => "10111100011100010010110000101000", 
    39 => "00111101101001000000001010001110", 
    40 => "10111011110010111100000001011101", 
    41 => "10111101100101110001010101000000", 
    42 => "00111110000000110010110000011111", 
    43 => "00111101010010001100010100000000", 
    44 => "10111101101000001110101111101110", 
    45 => "10111101110001101101110111110000", 
    46 => "00111101111100111000110111100111", 
    47 => "10111101011100101101100100000110", 
    48 => "00111101010011010011001010000011", 
    49 => "10111101011111100000110111101101", 
    50 => "10111110000010011001110110001000", 
    51 => "10111101111111100011011001001100" );


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

entity L2_up_L1_WEIGHTS_13 is
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

architecture arch of L2_up_L1_WEIGHTS_13 is
    component L2_up_L1_WEIGHTS_13_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_13_rom_U :  component L2_up_L1_WEIGHTS_13_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


