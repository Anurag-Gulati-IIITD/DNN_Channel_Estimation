-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_78_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_78_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101011111100010001011100110", 
    1 => "10111110000010010101111000011000", 
    2 => "10111110000101111011000100111010", 
    3 => "00111101110100010011111010000001", 
    4 => "10111101110100010001100000111011", 
    5 => "10111100101111000010110110101110", 
    6 => "10111011000000011011001000011100", 
    7 => "10111101101100111000011100010110", 
    8 => "10111101110010100110101010000111", 
    9 => "10111101001000111110011111010001", 
    10 => "10111101101101011101111011011111", 
    11 => "10111110010101001000111100010001", 
    12 => "10111100001110000111101111011101", 
    13 => "00111101101010100010010101010011", 
    14 => "00111101101011000101101100001000", 
    15 => "00111110001000101010001011000010", 
    16 => "10111011101010100011101011010010", 
    17 => "00111101100000001101100000000010", 
    18 => "00111101001110110100000010110011", 
    19 => "10111101111001010110110101011101", 
    20 => "10111101100110111000101100100110", 
    21 => "00111101001110000100101010010100", 
    22 => "00111110000110001010101011001001", 
    23 => "00111110001010010001110001001100", 
    24 => "10111101011000110110001110110010", 
    25 => "10111101100011010110110100111011", 
    26 => "00111110010110000011101101100000", 
    27 => "00111110001011001011001111100101", 
    28 => "00111101000100011101011110011001", 
    29 => "10111100011000000101000000110111", 
    30 => "10111100110011111100101001000011", 
    31 => "00111100100100001111110101111110", 
    32 => "00111101100101101111101110001111", 
    33 => "00111100111111001011111101101110", 
    34 => "10111101100010001001110000011011", 
    35 => "10111110010001101010101111011110", 
    36 => "00111100111100011110110100011000", 
    37 => "00111110000001000100000111111111", 
    38 => "10111110000000011011100010101010", 
    39 => "10111101110000001010000011110101", 
    40 => "00111101100101011001100110101010", 
    41 => "00111101111010001111011111011011", 
    42 => "00111101101011010001111010010111", 
    43 => "10111101101100101001000100110010", 
    44 => "00111101101101000110011011110101", 
    45 => "10111101111000111101010001101011", 
    46 => "10111101111001101010000100011111", 
    47 => "00111100011100101001110101000001", 
    48 => "00111100110001101111110111101011", 
    49 => "00111101011001100010011101111100", 
    50 => "00111101100001100011010000010001", 
    51 => "00111101011000110010011111101110" );


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

entity L2_up_L1_WEIGHTS_78 is
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

architecture arch of L2_up_L1_WEIGHTS_78 is
    component L2_up_L1_WEIGHTS_78_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_78_rom_U :  component L2_up_L1_WEIGHTS_78_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


