-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_90_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_90_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000000101000010011100000", 
    1 => "10111101101011010110010111100100", 
    2 => "10111101110000111100110100010100", 
    3 => "00111100100101000010011011111110", 
    4 => "10111101100100010101111110001001", 
    5 => "10111110001001011111101110110101", 
    6 => "10111100110100111010000111010011", 
    7 => "00111101001100000100011010000100", 
    8 => "00111110001100100011110001000011", 
    9 => "00111101101010000011111011001001", 
    10 => "10111101100010100111101111010101", 
    11 => "10111101000111100110101010111010", 
    12 => "00111101011101100101101010011011", 
    13 => "10111101110110110010000100111110", 
    14 => "00111101010110001111111101110110", 
    15 => "00111110010001000110001011000011", 
    16 => "10111101010011001010000111001111", 
    17 => "00111110000000000001000001000001", 
    18 => "10111011111110010110111000010110", 
    19 => "10111101101010011001101111110110", 
    20 => "10111101100111001111000000110000", 
    21 => "00111100110001110100100101101011", 
    22 => "10111101100001000000101011110010", 
    23 => "00111101101000011001001010100111", 
    24 => "10111110000010111000111001001100", 
    25 => "10111100010100000010110011010100", 
    26 => "00111101001010000011011011101011", 
    27 => "00111101011010010000100010100010", 
    28 => "10111110001100100011111010011111", 
    29 => "00111110010100110101011101100000", 
    30 => "00111100100000010100010100001111", 
    31 => "10111110000000000011000001111111", 
    32 => "00111101101100001011111010010100", 
    33 => "00111101011110101100011100010001", 
    34 => "10111110000100000010101000110101", 
    35 => "10111101111111011110110011100101", 
    36 => "10111100101001011110001101010100", 
    37 => "00111110000110001110110110100010", 
    38 => "10111110000100100010111100100111", 
    39 => "00111101100101100100111010001011", 
    40 => "00111101000000111111110101010000", 
    41 => "00111101100111111010011111101011", 
    42 => "10111110000101111111110011111100", 
    43 => "10111110000010001111000111010100", 
    44 => "00111100110100101010101001011100", 
    45 => "00111101001011001000101000110111", 
    46 => "10111100011111110001000011101101", 
    47 => "10111100111001100111101101011111", 
    48 => "10111100111100110110000001001010", 
    49 => "00111101001000110000101010010001", 
    50 => "10111110010010011011101011100100", 
    51 => "10111101110011000011001000100011" );


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

entity L2_up_L1_WEIGHTS_90 is
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

architecture arch of L2_up_L1_WEIGHTS_90 is
    component L2_up_L1_WEIGHTS_90_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_90_rom_U :  component L2_up_L1_WEIGHTS_90_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


