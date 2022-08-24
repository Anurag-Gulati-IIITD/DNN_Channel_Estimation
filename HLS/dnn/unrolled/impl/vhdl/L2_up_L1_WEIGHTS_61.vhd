-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_61_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_61_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101010010010111111010011001", 
    1 => "00111101110000011001101100001011", 
    2 => "00111000101110001000110010100100", 
    3 => "00111110001011111111101001111111", 
    4 => "10111101100011101010010000100011", 
    5 => "00111100001011110100101011011100", 
    6 => "10111110001011110111110000100100", 
    7 => "10111101101000001000001100010010", 
    8 => "10111110010110101100100011100111", 
    9 => "00111100011100001111010110100001", 
    10 => "10111110000011000011101010000110", 
    11 => "10111100001001101001001101111101", 
    12 => "00111101101100100101100000001100", 
    13 => "00111110001100111011110110011101", 
    14 => "10111100101010110011001001001000", 
    15 => "00111110001110000100001100111101", 
    16 => "00111100001111000111011100010100", 
    17 => "00111101010111010101011011110011", 
    18 => "00111100100100011100000010000111", 
    19 => "00111100110001110000000000000100", 
    20 => "00111101000000110010010001000010", 
    21 => "00111101101000010100101001001101", 
    22 => "00111101010011111111101110001011", 
    23 => "10111110010100111011111100101111", 
    24 => "10111101010101101000000011100000", 
    25 => "10111100100110001111100000011111", 
    26 => "10111110010001000101110101000010", 
    27 => "10111101101100011111010001101111", 
    28 => "00111101010000110010000100011101", 
    29 => "10111100001001001001110000101100", 
    30 => "10111101010010101101010101111100", 
    31 => "00111100000011100011001001011101", 
    32 => "00111101010000010101100011111011", 
    33 => "10111011011000000100001110100010", 
    34 => "10111110001111010100000101110100", 
    35 => "10111100110111111001100111000100", 
    36 => "00111101010101100011010101100001", 
    37 => "00111110001111001100010101110110", 
    38 => "00111101110110101010101011000001", 
    39 => "00111100100010000111100001110101", 
    40 => "00111100111110110001001110011101", 
    41 => "00111100011100011101100000011111", 
    42 => "10111101100010100010110010101010", 
    43 => "10111110001010100011111001111101", 
    44 => "00111101110011000000011010011110", 
    45 => "00111100001010100101100000101110", 
    46 => "10111101110001001111101100010010", 
    47 => "00111011100100010011000111101100", 
    48 => "10111101001100100101010111110011", 
    49 => "00111110010011100011101011000001", 
    50 => "00111110100001101001111010000000", 
    51 => "10111100011110010000010100111010" );


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

entity L2_up_L1_WEIGHTS_61 is
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

architecture arch of L2_up_L1_WEIGHTS_61 is
    component L2_up_L1_WEIGHTS_61_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_61_rom_U :  component L2_up_L1_WEIGHTS_61_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


