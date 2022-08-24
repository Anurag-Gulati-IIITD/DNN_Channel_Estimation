-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_55_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_55_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000101001001111110010101", 
    1 => "10111101010100000100101100111100", 
    2 => "00111101111110111001001100000011", 
    3 => "00111101001110000100111011000110", 
    4 => "10111110001100001010001111010111", 
    5 => "00111101110110001111000111010100", 
    6 => "00111011000010001101011011010100", 
    7 => "10111100010100000010010001110000", 
    8 => "10111101111010011001011100111110", 
    9 => "00111101000101100000011100111110", 
    10 => "00111101101011010001011000110011", 
    11 => "00111101100011011111011100011111", 
    12 => "00111011110110010100100011011100", 
    13 => "00111011110111000101110101100100", 
    14 => "00111110010001001100101101011100", 
    15 => "10111101110101011101110101001100", 
    16 => "10111101101000001101100000000010", 
    17 => "10111101101101011100000110000011", 
    18 => "10111100000001000111111101010110", 
    19 => "00111101000101101100111110000101", 
    20 => "00111100001100010100111011000010", 
    21 => "10111100110011111011001100110001", 
    22 => "00111101110010111001001000111010", 
    23 => "00111101011000011001111010110110", 
    24 => "00111101101100011001001001100100", 
    25 => "00111101001001011000111001100101", 
    26 => "00111110000011111110110011011101", 
    27 => "10111110101011101111011010110110", 
    28 => "10111100011010010001110010001111", 
    29 => "10111101101111010110011110111010", 
    30 => "10111101101110111011000011100110", 
    31 => "10111110000011011011000101100100", 
    32 => "00111101000110110010001011010001", 
    33 => "00111101000000011100111101111000", 
    34 => "10111100110111000110000110010101", 
    35 => "00111011000111110001111100010101", 
    36 => "00111101001110001110010111000101", 
    37 => "10111101100100010011100000110111", 
    38 => "00111110100011001001101011011101", 
    39 => "00111110000000001000011001111011", 
    40 => "00111011010010100001110011101111", 
    41 => "00111110000111101101011000110100", 
    42 => "10111101100111111000110010101000", 
    43 => "00111110001010101101001110100110", 
    44 => "10111101101010010001000110001100", 
    45 => "10111101011010011011101011100100", 
    46 => "10111011111001111110011000101110", 
    47 => "10111101100111001100111110101111", 
    48 => "10111100100100001010011110000011", 
    49 => "00111101001010010011111000011101", 
    50 => "00111101111010111111000000010011", 
    51 => "10111101011000001000100111100011" );


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

entity L2_up_L1_WEIGHTS_55 is
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

architecture arch of L2_up_L1_WEIGHTS_55 is
    component L2_up_L1_WEIGHTS_55_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_55_rom_U :  component L2_up_L1_WEIGHTS_55_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


