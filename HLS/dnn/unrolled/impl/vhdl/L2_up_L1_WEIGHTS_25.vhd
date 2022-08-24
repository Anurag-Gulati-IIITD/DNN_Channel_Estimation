-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_25_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_25_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101101100110010100100111101", 
    1 => "00111110100000100010100111101001", 
    2 => "00111101111010111111000110100110", 
    3 => "10111101011101010110010000110000", 
    4 => "00111101010110110001111010011111", 
    5 => "10111100000011101010110000000000", 
    6 => "00111101011110000110001110111111", 
    7 => "00111101111110100001101000001101", 
    8 => "00111101000001111000100001010101", 
    9 => "00111101000010101110110010001101", 
    10 => "00111101010001001000111000000100", 
    11 => "00111101111100010101001001101110", 
    12 => "00111100000111011010000101100110", 
    13 => "10111110001000110001000110100101", 
    14 => "10111011110110100011001110111110", 
    15 => "10111110001010010011110101010011", 
    16 => "00111011111110101011010100111101", 
    17 => "10111110000111000101011010010011", 
    18 => "10111100111010110110001110010001", 
    19 => "00111101100010010110000010110111", 
    20 => "00111101111011100100001010011110", 
    21 => "10111101101000101010000010101001", 
    22 => "10111101000111100101001110101000", 
    23 => "10111110011010001001011110100110", 
    24 => "10111011101011001010011110010011", 
    25 => "10111100010110011001110010111111", 
    26 => "00111100101100001000110111010010", 
    27 => "10111110001100100100010111110110", 
    28 => "00111011100001011110001111011010", 
    29 => "10111100101000100101111110100110", 
    30 => "10111011001100100100001000000111", 
    31 => "10111101001111010001111111100110", 
    32 => "10111101100011101111111001010000", 
    33 => "00111100111011000011100101111010", 
    34 => "00111101100100000011111110110011", 
    35 => "00111101110100101011100110010001", 
    36 => "00111101000000010111101010001001", 
    37 => "10111101100010011111110011110100", 
    38 => "00111110000100001111110101111110", 
    39 => "10111100111100001001001100010000", 
    40 => "10111101101100110111100011101110", 
    41 => "10111110000000110010110100101100", 
    42 => "10111101000001010110010011111001", 
    43 => "00111101110001100010101100101000", 
    44 => "10111101110001001111000110100010", 
    45 => "10111011000110111001010100011100", 
    46 => "00111100101111111010111101000010", 
    47 => "10111101101100110100000001001111", 
    48 => "10111101111111101100000111000010", 
    49 => "10111110001001000011101000100001", 
    50 => "10111101011110001000001100110100", 
    51 => "00111101010110101011110000001110" );


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

entity L2_up_L1_WEIGHTS_25 is
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

architecture arch of L2_up_L1_WEIGHTS_25 is
    component L2_up_L1_WEIGHTS_25_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_25_rom_U :  component L2_up_L1_WEIGHTS_25_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


