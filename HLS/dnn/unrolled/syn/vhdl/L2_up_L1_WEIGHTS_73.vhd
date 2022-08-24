-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_73_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_73_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100000111110000111001001110", 
    1 => "00111101110110101111011111010011", 
    2 => "10111101000101010010111100111100", 
    3 => "00111101001100010111100010110011", 
    4 => "10111101111111001011001001010011", 
    5 => "10111010101110010011010001101010", 
    6 => "10111101101010101111010101110111", 
    7 => "10111100000100100001100010011100", 
    8 => "10111110001100101001110111000111", 
    9 => "00111100100100110001010001000100", 
    10 => "00111101110001111010100111100011", 
    11 => "10111010100100110101001100101110", 
    12 => "00111101100111010100110110000011", 
    13 => "00111011101111011100101011010001", 
    14 => "00111101101010110010110100001010", 
    15 => "00111101010010001000100100111011", 
    16 => "10111101011100101001101000011100", 
    17 => "10111011101011010000110000111101", 
    18 => "10111101011001010011100101110101", 
    19 => "00111101100011011000000000011011", 
    20 => "00111100011100001101010000010011", 
    21 => "10111100000111111111110101100001", 
    22 => "00111110000010100111000101011000", 
    23 => "10111101000010111000001010000000", 
    24 => "00111100101011101000110000000101", 
    25 => "10111100110100000100100000010111", 
    26 => "10111110000111001110111001011011", 
    27 => "00111110100000000111000101100001", 
    28 => "00111100110110110110110000110111", 
    29 => "00111101000001100110101100011110", 
    30 => "00111101100011000001101000000101", 
    31 => "10111101100011010000001101010011", 
    32 => "00111100011101001010010101011001", 
    33 => "00111100011100000011010010110001", 
    34 => "10111110000010101101110110011100", 
    35 => "00111101111010100111001101110001", 
    36 => "10111101010011100000001000100001", 
    37 => "10111110011001101101000010010001", 
    38 => "10111101111101001100011101101101", 
    39 => "10111100111111001001010101111101", 
    40 => "00111100010110100000100111001100", 
    41 => "00111101100001101100001110111001", 
    42 => "00111101011011011010011101101110", 
    43 => "10111101110000100100001101010111", 
    44 => "00111101111011000001111101000011", 
    45 => "00111101000111110000100100001111", 
    46 => "10111101011000110000111111010000", 
    47 => "10111100000111001110110100001011", 
    48 => "10111101101110011010101011100111", 
    49 => "00111110000100110111011110011111", 
    50 => "00111101110101101001001010110100", 
    51 => "10111110000110000110011010100001" );


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

entity L2_up_L1_WEIGHTS_73 is
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

architecture arch of L2_up_L1_WEIGHTS_73 is
    component L2_up_L1_WEIGHTS_73_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_73_rom_U :  component L2_up_L1_WEIGHTS_73_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


