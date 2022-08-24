-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_1_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100011010010110010111111", 
    1 => "00111101010010010000101000110101", 
    2 => "00111100011001111000000110000100", 
    3 => "10111101110101011111111001010100", 
    4 => "00111110000110010100110000000001", 
    5 => "10111110010100000011100000011001", 
    6 => "00111010100000011110010001110001", 
    7 => "10111101001010001001011001010111", 
    8 => "00111110000011011110010000111111", 
    9 => "10111101001110101110101111000100", 
    10 => "00111011100111100100110101011110", 
    11 => "10111110000011100000001010100111", 
    12 => "10111101100110011011100010001000", 
    13 => "10111110000101011100010000100010", 
    14 => "10111110001111110110000110101010", 
    15 => "00111101110000001111101100100010", 
    16 => "00111100111100011110100011100110", 
    17 => "00111101110100111011110010010000", 
    18 => "10111101010101110101111100101101", 
    19 => "00111101010011010111100111010001", 
    20 => "00111001010101011110100011010101", 
    21 => "00111101001101001010100110001011", 
    22 => "10111101000011110010101111101101", 
    23 => "10111100011011100111100000011000", 
    24 => "00111101011110101111110110010111", 
    25 => "00111101001000001011001111010101", 
    26 => "10111110000010011100110110000001", 
    27 => "00111110101011111011011111101001", 
    28 => "00111100101100100011010101110010", 
    29 => "00111110010101110010101010111111", 
    30 => "00111110001011110100011010101010", 
    31 => "00111101010011110100010000001011", 
    32 => "10111101111001011010001011010111", 
    33 => "10111101001001110100110100010110", 
    34 => "00111101011110110001000110000100", 
    35 => "00111110010101011111000000101100", 
    36 => "10111101000110010000001110100111", 
    37 => "00111101011010111000000011101101", 
    38 => "10111110101001100100010100111101", 
    39 => "10111110000100011100111101111000", 
    40 => "00111100100111100010001101101100", 
    41 => "10111101111111000010011111101001", 
    42 => "00111101111110010100100101100010", 
    43 => "10111101100111001000010100111100", 
    44 => "10111101000111011100010000000000", 
    45 => "10111101001100000101010100110010", 
    46 => "00111101101001010000010110001110", 
    47 => "00111010111101110101010100110111", 
    48 => "10111101010101111101011010110110", 
    49 => "10111100111000010000101011011101", 
    50 => "10111110000010001110000000000001", 
    51 => "00111101010011101001110001000101" );


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

entity L2_up_L1_WEIGHTS_1 is
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

architecture arch of L2_up_L1_WEIGHTS_1 is
    component L2_up_L1_WEIGHTS_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_1_rom_U :  component L2_up_L1_WEIGHTS_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


