-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_4_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100100100001000001111011100", 
    1 => "00111101111101001100101100011001", 
    2 => "00111110001111011111111001110110", 
    3 => "10111100111000011000000001001110", 
    4 => "10111101100010101000001000011111", 
    5 => "00111110100111010110110011010111", 
    6 => "00111101100101110100110101011001", 
    7 => "10111101010100100100010110110011", 
    8 => "10111101101011110110000101100111", 
    9 => "00111011001001001101001010110011", 
    10 => "10111101010111010111110010110011", 
    11 => "00111110000010100100011011100001", 
    12 => "00111101111001010001010011000010", 
    13 => "00111100010011001110111001011011", 
    14 => "00111110000001100101110111000000", 
    15 => "10111101100011000111101001111101", 
    16 => "00111100110010011110011001101000", 
    17 => "10111110010101011100001001001100", 
    18 => "10111011001000001001000000101110", 
    19 => "00111101101101001000001111001011", 
    20 => "10111100110011011001011000100000", 
    21 => "10111110001001100110111110010011", 
    22 => "00111101001001001110100010111000", 
    23 => "10111101100111111100011001010100", 
    24 => "00111100001000000100000001111101", 
    25 => "00111101000011000010010100000111", 
    26 => "00111110001000010011110001101000", 
    27 => "10111101100011100100011111011100", 
    28 => "10111101101110010111111101100011", 
    29 => "10111110011010011000001100001110", 
    30 => "10111110010100110010001111111111", 
    31 => "10111101101000101010000000100011", 
    32 => "00111101010011001101111010100000", 
    33 => "00111100110011111001101000000111", 
    34 => "00111101100001011101010100101100", 
    35 => "00111110000000101011000011101010", 
    36 => "00111101000010000110110011101100", 
    37 => "00111110001000010000101101100011", 
    38 => "00111101101110001001101111011000", 
    39 => "00111100111000100010110001000101", 
    40 => "10111101101011000100100010101110", 
    41 => "00111100111010010100111011100100", 
    42 => "00111101001011000101001110110001", 
    43 => "00111100111100100110001010001001", 
    44 => "10111101101010111000010110100101", 
    45 => "10111101111101010100111110111110", 
    46 => "00111011000111110100000010100011", 
    47 => "00111011101111101011010110110011", 
    48 => "00111101100101100110010100010111", 
    49 => "00111101000010100110011101100010", 
    50 => "00111110001010000101110100110001", 
    51 => "10111110000110100100101001001001" );


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

entity L2_up_L1_WEIGHTS_4 is
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

architecture arch of L2_up_L1_WEIGHTS_4 is
    component L2_up_L1_WEIGHTS_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_4_rom_U :  component L2_up_L1_WEIGHTS_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


