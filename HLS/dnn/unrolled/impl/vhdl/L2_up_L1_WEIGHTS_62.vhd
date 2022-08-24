-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_62_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_62_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100101011111100000001010", 
    1 => "10111100111010001001011001010111", 
    2 => "00111100111110101010001001011110", 
    3 => "00111110000110110001101110111101", 
    4 => "10111101101000100100001011010000", 
    5 => "10111110000100010001100001111110", 
    6 => "10111101110000001011110010111110", 
    7 => "00111100011111100101110010010010", 
    8 => "10111110001001010111111111111010", 
    9 => "10111101101101110001001010100001", 
    10 => "10111110000111100101111000100100", 
    11 => "10111110011000011001101101001110", 
    12 => "00111101001010101110000110001011", 
    13 => "10111100101111010001010001011110", 
    14 => "00111101010000110001110011101011", 
    15 => "00111100111110100000011100101101", 
    16 => "10111010110001101011010010000101", 
    17 => "10111100111101011110001000000100", 
    18 => "10111011001111101010010011101100", 
    19 => "10111100000101011000100101101010", 
    20 => "10111101100110101100101010111100", 
    21 => "00111100111110010110000110000000", 
    22 => "10111101111101101001000000010101", 
    23 => "00111011111100011000100001101110", 
    24 => "10111101010111010010100011010000", 
    25 => "00111101100010110111010001011000", 
    26 => "10111101100110011010000101110111", 
    27 => "10111110001000101001110111000111", 
    28 => "10111101100010011111101101100001", 
    29 => "00111101110111110010100110010001", 
    30 => "10111101100000010110110101101110", 
    31 => "10111101110110110100101000100011", 
    32 => "10111101100010111010001110000111", 
    33 => "10111101010101111110010101100100", 
    34 => "10111101000110011101101010011101", 
    35 => "00111110010001110111100000010100", 
    36 => "10111011010010010100001011010101", 
    37 => "00111101101100101001101100101000", 
    38 => "00111101110001100010010011011101", 
    39 => "00111100110110001111001011100000", 
    40 => "00111101100001101000111111010010", 
    41 => "00111100111100100110101011101100", 
    42 => "00111101110100110100010110001101", 
    43 => "00111100110010111000000101110011", 
    44 => "00111101111001111110000111111100", 
    45 => "10111101110000010110011010011101", 
    46 => "10111101111100100101101010101011", 
    47 => "00111101101001011001101011111010", 
    48 => "10111101010001100000110111001100", 
    49 => "00111101101110101101110000001010", 
    50 => "00111101111100001111111100010001", 
    51 => "10111101101011001010001111101000" );


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

entity L2_up_L1_WEIGHTS_62 is
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

architecture arch of L2_up_L1_WEIGHTS_62 is
    component L2_up_L1_WEIGHTS_62_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_62_rom_U :  component L2_up_L1_WEIGHTS_62_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


