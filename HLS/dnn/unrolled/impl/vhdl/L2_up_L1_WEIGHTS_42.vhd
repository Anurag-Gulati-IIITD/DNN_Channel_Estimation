-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_42_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_42_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001011110001001101001001", 
    1 => "10111101100110010101101100110110", 
    2 => "10111101010000010001110000101010", 
    3 => "10111100110011110011011101110110", 
    4 => "00111101110000111001000111010101", 
    5 => "10111110000110101110100000011001", 
    6 => "10111100010110111010000010100101", 
    7 => "00111101100011100001100100110011", 
    8 => "10111110001011110011000011101000", 
    9 => "00111110000011110101010111011110", 
    10 => "00111101101010001101101001111111", 
    11 => "00111101011100111101100111101100", 
    12 => "00111100111011001010110011010010", 
    13 => "10111100011110010100110010001000", 
    14 => "00111100100101000101100101010011", 
    15 => "00111101010010001001010011000100", 
    16 => "00111101111001100010101000011011", 
    17 => "00111101101010101011001101101000", 
    18 => "00111101100000100010010001101000", 
    19 => "00111101100100110111010101000011", 
    20 => "10111100001011100011101000111011", 
    21 => "10111100101010001110000011001010", 
    22 => "10111101110011110111010011001101", 
    23 => "10111101000100010011000111101100", 
    24 => "00111100110100111111010110110110", 
    25 => "10111101100000001101010111101001", 
    26 => "10111101011010100011010110010011", 
    27 => "10111101111011001110100010010110", 
    28 => "00111101100010011100110100111110", 
    29 => "00111110001111101001001111100010", 
    30 => "10111100110111011011010101010010", 
    31 => "10111100101011001000000111010100", 
    32 => "10111101101010010110011001111011", 
    33 => "10111101101111101011101111111101", 
    34 => "00111101101001011110110101001010", 
    35 => "10111110001010010110001101010110", 
    36 => "10111101111010011100001011000010", 
    37 => "10111110000101011011110111010111", 
    38 => "00111100101110001001011100100000", 
    39 => "10111100001010101100000100001001", 
    40 => "00111100010101100101101000010100", 
    41 => "10111110000000000011001011011011", 
    42 => "10111101110101001111111110000110", 
    43 => "10111101101101001101010100001111", 
    44 => "00111101010110111101111010000011", 
    45 => "00111100110100100011000010111010", 
    46 => "00111100100010111001111111011100", 
    47 => "00111101101100101111110010101101", 
    48 => "10111100111000011111000110001101", 
    49 => "10111011111010001111101100000001", 
    50 => "00111110000110000011001011111101", 
    51 => "00111100101110100011000000010010" );


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

entity L2_up_L1_WEIGHTS_42 is
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

architecture arch of L2_up_L1_WEIGHTS_42 is
    component L2_up_L1_WEIGHTS_42_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_42_rom_U :  component L2_up_L1_WEIGHTS_42_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


