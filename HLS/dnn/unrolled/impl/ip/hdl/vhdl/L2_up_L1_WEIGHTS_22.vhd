-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_22_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_22_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000001111000110110010011", 
    1 => "10111110001110000000010110100011", 
    2 => "10111101000010000011111011001001", 
    3 => "00111110000101111101001001000010", 
    4 => "10111101100010010000110001001110", 
    5 => "00111101101111011001111011000111", 
    6 => "10111101100111010111100110001110", 
    7 => "10111110000111000001000101011110", 
    8 => "10111101010110001011011100011100", 
    9 => "10111101101101101000110101110110", 
    10 => "10111101100100000001010100111100", 
    11 => "00111011110000001100111010010010", 
    12 => "00111100100010100100010111010100", 
    13 => "00111110000101110010100011101001", 
    14 => "00111101111001111110000011110000", 
    15 => "00111100101001100100001111001100", 
    16 => "00111101011000010000100111010000", 
    17 => "00111101010100100111110000111001", 
    18 => "10111101100010001111111100110010", 
    19 => "10111101000100101101001101000001", 
    20 => "10111101010101001100010101010100", 
    21 => "00111101110001001101001100111001", 
    22 => "00111110001000010110101010001100", 
    23 => "00111110011010011100100000000000", 
    24 => "10111101010101010111101111001000", 
    25 => "00111101101010101110011011001001", 
    26 => "10111110001101111010001100010010", 
    27 => "00111110000110110001101011110100", 
    28 => "00111101110000010100011010100010", 
    29 => "10111110001100000011010101111010", 
    30 => "10111101011110100001011011101000", 
    31 => "00111101001101000110100110010100", 
    32 => "00111101110000110100001010101011", 
    33 => "00111100010010010100001011010101", 
    34 => "10111101101001110100111100101111", 
    35 => "00111100110111011001111001000001", 
    36 => "00111100110101111010000100111100", 
    37 => "10111101000110000010110110111110", 
    38 => "10111110001011010011000010101101", 
    39 => "00111101100100001001000011110111", 
    40 => "00111101100010111110111110001101", 
    41 => "00111101110111010100101001011110", 
    42 => "00111101100011001111001000000110", 
    43 => "10111110000010011111111110010011", 
    44 => "00111101010110110100111011011011", 
    45 => "10111011101011110001110010111001", 
    46 => "10111110000110101111100000010110", 
    47 => "10111100001111010011001111010011", 
    48 => "10111101000000110010011101100111", 
    49 => "10111100001010110010111000010111", 
    50 => "10111100100000111100010010110001", 
    51 => "10111100101101000010101010101010" );


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

entity L2_up_L1_WEIGHTS_22 is
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

architecture arch of L2_up_L1_WEIGHTS_22 is
    component L2_up_L1_WEIGHTS_22_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_22_rom_U :  component L2_up_L1_WEIGHTS_22_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


