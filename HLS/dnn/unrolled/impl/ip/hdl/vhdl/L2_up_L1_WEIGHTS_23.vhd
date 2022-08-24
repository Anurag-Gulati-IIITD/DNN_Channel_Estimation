-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_23_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_23_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100001111110000000100110010", 
    1 => "00111011100011100110000010000000", 
    2 => "00111100100111000010110000011011", 
    3 => "00111110000110011001000000101010", 
    4 => "10111110000011101011001111011101", 
    5 => "10111101001010001100011110011111", 
    6 => "10111101100001010010011100011100", 
    7 => "10111110001000000101011011000101", 
    8 => "10111110001110001010011010011000", 
    9 => "10111100000000001110000001100101", 
    10 => "00111110001110100000101111100101", 
    11 => "10111100001100101000100101010101", 
    12 => "00111101110110001000100011111000", 
    13 => "00111101001011011111110101101001", 
    14 => "00111101100011001001011111011001", 
    15 => "00111101000011101001100000010100", 
    16 => "10111110000110111001111110011001", 
    17 => "10111100001010001111110000001101", 
    18 => "10111100000011100100111110111001", 
    19 => "00111011101000110000110110110111", 
    20 => "10111101000000000101111101101100", 
    21 => "00111100011101111010010011101000", 
    22 => "00111101111101010101101101000110", 
    23 => "10111100101000101001000111111011", 
    24 => "00111101100111010010000101111001", 
    25 => "10111100110000000001011000000101", 
    26 => "10111110001110010010011011001000", 
    27 => "00111110010101001000011000100111", 
    28 => "10111010101001100001000101110111", 
    29 => "00111101010100100000011011001000", 
    30 => "10111101010010111101011101101111", 
    31 => "10111011000101111000010011101100", 
    32 => "00111100111111111011010010000001", 
    33 => "00111100101111011001100001111100", 
    34 => "10111110000010001000101100010001", 
    35 => "10111011001001010010011010010110", 
    36 => "10111100101000100010010011101110", 
    37 => "10111101100110010100101101111011", 
    38 => "10111110010001000001111001011000", 
    39 => "10111100110101010101101000111010", 
    40 => "10111011100100100001010001101010", 
    41 => "00111101111101010000010101001011", 
    42 => "00111101000010100010001100111010", 
    43 => "10111100100011110110100010111110", 
    44 => "00111101001011011111000111100001", 
    45 => "00111101101010111011000100101001", 
    46 => "10111110001111111101110101100110", 
    47 => "00111100001111100000100110111011", 
    48 => "00111100110111110011101101100100", 
    49 => "00111110011011101110100110011010", 
    50 => "00111110001101010110001100100100", 
    51 => "10111101011001000101100000000100" );


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

entity L2_up_L1_WEIGHTS_23 is
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

architecture arch of L2_up_L1_WEIGHTS_23 is
    component L2_up_L1_WEIGHTS_23_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_23_rom_U :  component L2_up_L1_WEIGHTS_23_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


