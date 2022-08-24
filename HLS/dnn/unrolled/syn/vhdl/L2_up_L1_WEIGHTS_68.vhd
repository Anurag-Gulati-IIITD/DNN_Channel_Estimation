-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_68_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_68_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110111011111001100110000", 
    1 => "00111101011101100110111010000111", 
    2 => "10111101100001000101000000100111", 
    3 => "00111100011110101010010001110110", 
    4 => "00111101101101011000100101101010", 
    5 => "10111110001110000111100011111011", 
    6 => "10111100001101101111010111001011", 
    7 => "00111101110010110111100010001001", 
    8 => "10111101001100001111101111101100", 
    9 => "00111101101111101001101011110110", 
    10 => "10111110000001111000010011101100", 
    11 => "10111101011100101110100011000000", 
    12 => "10111101001111110111100111001000", 
    13 => "10111110000100101100111010001001", 
    14 => "00111100110011110011111111011001", 
    15 => "00111101111011001001111010101010", 
    16 => "00111100100011100111001101100000", 
    17 => "00111110001010110110100110011000", 
    18 => "00111101100101100110110101111010", 
    19 => "10111101101111101110001011001010", 
    20 => "10111101011011010010110010111111", 
    21 => "10111100100111110001101011100011", 
    22 => "10111110000111110001111101011000", 
    23 => "10111101111000100110100000001010", 
    24 => "10111101100000101010011101111010", 
    25 => "10111100101000000010001100100001", 
    26 => "00111101111111001100101011110111", 
    27 => "10111110001001100110010011010100", 
    28 => "10111101101100011100001000011010", 
    29 => "00111110001111001111111010011011", 
    30 => "00111101000010100010010101010011", 
    31 => "00111101011101010111100000011100", 
    32 => "10111101010000010011101010010011", 
    33 => "00111110000110011001110000111001", 
    34 => "10111101111000111100110100010100", 
    35 => "10111101110100001110000100101111", 
    36 => "00111100111111010001001101010001", 
    37 => "00111110000011010101000111111000", 
    38 => "00111110010001001011000100100101", 
    39 => "10111101000000110101110011100010", 
    40 => "00111100001010100001110101110101", 
    41 => "10111100000000000011100010100000", 
    42 => "10111101110100011100101001111101", 
    43 => "10111101110000101110001111000101", 
    44 => "10111100110110111001000111110111", 
    45 => "00111101100010110000010000100101", 
    46 => "10111100001110101100111101110100", 
    47 => "10111100101111011101001100110101", 
    48 => "10111101111000111110111100101000", 
    49 => "00111101011111000100000110011010", 
    50 => "00111100101000001010010100100111", 
    51 => "00111110000111111000010011001011" );


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

entity L2_up_L1_WEIGHTS_68 is
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

architecture arch of L2_up_L1_WEIGHTS_68 is
    component L2_up_L1_WEIGHTS_68_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_68_rom_U :  component L2_up_L1_WEIGHTS_68_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


