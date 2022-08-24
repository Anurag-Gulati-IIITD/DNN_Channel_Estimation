-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_6_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110101101000000111101101", 
    1 => "10111101101111111111001011100101", 
    2 => "10111101100011110010000011101010", 
    3 => "10111100011001111100110100000011", 
    4 => "10111101011000011000010110001100", 
    5 => "10111101111110101001111100111000", 
    6 => "00111101001100011111110011010010", 
    7 => "00111101111011110011001111001010", 
    8 => "10111101101110011101101110101001", 
    9 => "10111101100000000011001101100001", 
    10 => "00111101111110001111110111100011", 
    11 => "10111110010011001101100011011100", 
    12 => "00111100101101111100101110110100", 
    13 => "10111101011110110111011000101110", 
    14 => "00111101001110001000001100110100", 
    15 => "10111110000101000101110101000010", 
    16 => "10111101001111011110101001000110", 
    17 => "00111110000011000111000110010011", 
    18 => "10111100111010110110000101111000", 
    19 => "10111101011011010011100001000111", 
    20 => "10111101010101111010110111010001", 
    21 => "00111100100001001100101011010101", 
    22 => "10111110000011110001111100010101", 
    23 => "00111101111011110001101010100000", 
    24 => "10111100101001101111011000001110", 
    25 => "10111101010100001111001100000010", 
    26 => "00111110000100011001001101110001", 
    27 => "10111110011001110100001011011101", 
    28 => "10111101011001110010110110100001", 
    29 => "00111101101101001000100110001111", 
    30 => "10111101000101111000000010111011", 
    31 => "10111100101001100010000000100101", 
    32 => "00111101010000011110001101100101", 
    33 => "00111100100011001111010110110010", 
    34 => "10111101000111000111001101101001", 
    35 => "00111100111101100110000111110010", 
    36 => "00111100000110000110101110011100", 
    37 => "10111101001001101010010001000100", 
    38 => "00111110000001101001111100000110", 
    39 => "00111101010010100010001100111010", 
    40 => "10111100111010010100101010110010", 
    41 => "00111101110100011001110001011010", 
    42 => "10111001011100010010110000101000", 
    43 => "00111110000000100011111010011111", 
    44 => "10111100110001110101101000110010", 
    45 => "00111110000001110011100010100100", 
    46 => "10111101010000110010110110110010", 
    47 => "00111101100000001101000000100100", 
    48 => "10111101011100011100100001100101", 
    49 => "10111100010010110110110001111010", 
    50 => "00111100010100101100001110000111", 
    51 => "10111101110011001100001011010111" );


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

entity L2_up_L1_WEIGHTS_6 is
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

architecture arch of L2_up_L1_WEIGHTS_6 is
    component L2_up_L1_WEIGHTS_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_6_rom_U :  component L2_up_L1_WEIGHTS_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


