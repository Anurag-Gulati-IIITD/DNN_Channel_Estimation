-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_84_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_84_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000101011011101010110010", 
    1 => "10111101111000111110110100001111", 
    2 => "00111101010000010101101000001000", 
    3 => "00111110010001011001101011111010", 
    4 => "10111101100111100011011001001100", 
    5 => "00111101011010000001011001101010", 
    6 => "00111101010110110010000111000100", 
    7 => "00111100101011100101011110010111", 
    8 => "00111101010000000011110111011110", 
    9 => "00111101001000101001100001000110", 
    10 => "00111011110010001010101111010110", 
    11 => "00111101000001010010110001011010", 
    12 => "10111100001000110011001101110110", 
    13 => "10111100001110001110100011101010", 
    14 => "00111101011001001000111110010111", 
    15 => "00111110100001110000110010111011", 
    16 => "10111101110010001100001111110100", 
    17 => "10111101011010000001101010011100", 
    18 => "10111101101000101100010001010000", 
    19 => "10111101100100011001100010101111", 
    20 => "10111101010010011101100011000111", 
    21 => "00111100100110011001100110011010", 
    22 => "00111011110011000011010111001110", 
    23 => "00111101100010101101100010100001", 
    24 => "00111101110110001011001111110110", 
    25 => "00111100110111110001100111010110", 
    26 => "10111100100100010111101101010011", 
    27 => "00111010110011010100001000111110", 
    28 => "10111100110111010001100000001001", 
    29 => "10111100101110001111110111100011", 
    30 => "10111101011110010011110011001101", 
    31 => "00111100100111001011111011101000", 
    32 => "00111101101011100101111111111010", 
    33 => "00111101001011001110000000110011", 
    34 => "00111101010101100010100011001100", 
    35 => "00111101100000011001100111111110", 
    36 => "00111101101110010110010100101100", 
    37 => "10111101001100101111101110100000", 
    38 => "10111100100011000111100111110110", 
    39 => "10111101100101110001011001001100", 
    40 => "10111101000001111001111101100110", 
    41 => "00111101110010010111101001101000", 
    42 => "10111010110010001010101111010110", 
    43 => "10111110011011010110100110010000", 
    44 => "00111100110000001100111010010010", 
    45 => "10111100101011111100101011001001", 
    46 => "10111101110101010010101010000100", 
    47 => "10111100010011110010010010010110", 
    48 => "00111101010110100101010101001100", 
    49 => "00111011111000011110011100010000", 
    50 => "10111101100000101101001011111110", 
    51 => "10111100101100011001000111011110" );


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

entity L2_up_L1_WEIGHTS_84 is
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

architecture arch of L2_up_L1_WEIGHTS_84 is
    component L2_up_L1_WEIGHTS_84_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_84_rom_U :  component L2_up_L1_WEIGHTS_84_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


