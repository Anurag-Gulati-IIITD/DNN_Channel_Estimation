-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_66_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_66_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110101000101110001111001", 
    1 => "00111100100001111101110101000100", 
    2 => "00111110001010101001000111011010", 
    3 => "00111101001110011010001110010000", 
    4 => "10111110000010111110010100010001", 
    5 => "00111110011110101010011011010010", 
    6 => "00111101101100101011000000100001", 
    7 => "10111110100011010010111010110110", 
    8 => "10111100000000101000001111010011", 
    9 => "00111110001100010101010010000110", 
    10 => "00111100000100100101001101010100", 
    11 => "10111101100001101011101001001001", 
    12 => "10111101101101011001100110101010", 
    13 => "00111101101001000011000010110001", 
    14 => "00111100010101001111000101011110", 
    15 => "10111101011100010010101100011011", 
    16 => "00111101010111101011101101110111", 
    17 => "10111110000111001101100001010110", 
    18 => "10111011111000010011111101001011", 
    19 => "10111101000001110010001010011111", 
    20 => "10111101101111110011011100110011", 
    21 => "10111100100100100000000110001010", 
    22 => "00111110001000111101100001011010", 
    23 => "10111101100001010100110011011011", 
    24 => "00111100010011011010101100011001", 
    25 => "00111101100101111010010101101110", 
    26 => "00111110000100100101011001111010", 
    27 => "00111110001011010100101011100100", 
    28 => "10111100011011001001100111110010", 
    29 => "10111110101011001001001111001001", 
    30 => "10111100001010100111110111101101", 
    31 => "00111101111000101101100101001001", 
    32 => "00111101100100000011001010011000", 
    33 => "10111100110111010110000101110000", 
    34 => "00111101011000000100001110100010", 
    35 => "10111101001001111101100110011001", 
    36 => "00111101101111110001011110111110", 
    37 => "10111101111001010100101000111100", 
    38 => "10111101101011101110000011110100", 
    39 => "10111101111011001010111111110111", 
    40 => "10111100111001010011110010011011", 
    41 => "00111110001000000111001111011110", 
    42 => "10111110010111011001100100000011", 
    43 => "10111100101011101101101110110110", 
    44 => "10111101011000000101101010110100", 
    45 => "00111101110001101100010111010010", 
    46 => "10111101000100101011001011000000", 
    47 => "10111101101010010110000111000011", 
    48 => "10111101100110111010101010011011", 
    49 => "10111100100011000100011110100001", 
    50 => "00111101111111110011110101111101", 
    51 => "00111101110011110100100000111101" );


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

entity L2_up_L1_WEIGHTS_66 is
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

architecture arch of L2_up_L1_WEIGHTS_66 is
    component L2_up_L1_WEIGHTS_66_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_66_rom_U :  component L2_up_L1_WEIGHTS_66_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


