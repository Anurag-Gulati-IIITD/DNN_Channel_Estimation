-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_82_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_82_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110100000110100110100101", 
    1 => "00111101101111101000100110101001", 
    2 => "00111101001110100001110100110010", 
    3 => "00111100001000000010001100100001", 
    4 => "10111011011110000100000000011000", 
    5 => "00111101100100110100000011010101", 
    6 => "10111101110111100000000101011000", 
    7 => "10111011111001111001001001001011", 
    8 => "00111110001000110011111000110110", 
    9 => "00111101000110000111011000011001", 
    10 => "10111101110000000001000101001101", 
    11 => "00111100100011100001101101001100", 
    12 => "00111101100101100110001011111110", 
    13 => "00111110001010111100110000101001", 
    14 => "10111101101101100111111011001000", 
    15 => "10111101010011101101100100010111", 
    16 => "00111010111000011111011111010111", 
    17 => "10111101101000001110011110111100", 
    18 => "10111100110000111000100011101100", 
    19 => "00111101001101000110100110010100", 
    20 => "00111101101000001100100001000111", 
    21 => "10111100101010001001110110101110", 
    22 => "10111101110010110000000100000000", 
    23 => "10111101001001110011000111010011", 
    24 => "00111101100000000111001011010010", 
    25 => "10111100111001111111100100001110", 
    26 => "10111110001111100111100101101000", 
    27 => "10111110001011000010111111000111", 
    28 => "00111011010111110100011111111010", 
    29 => "10111101101000101010110010111000", 
    30 => "00111110000101010010111101111111", 
    31 => "10111101100010100010000000010100", 
    32 => "10111101000111011000101001010101", 
    33 => "10111101110000100000000011000001", 
    34 => "00111101000001111011000000101101", 
    35 => "10111011000110110110001011000111", 
    36 => "10111100101011110100100011000011", 
    37 => "00111101010000110010010101001110", 
    38 => "00111110000110101110101100111110", 
    39 => "00111101111011011011100111000111", 
    40 => "10111101100001111000110110010011", 
    41 => "00111011101010010111100111100001", 
    42 => "10111101101010000110111110001011", 
    43 => "00111101110010111101001111000011", 
    44 => "00111101001111010011111001001111", 
    45 => "00111100001000100011110000000000", 
    46 => "10111101110010110010101011110001", 
    47 => "00111100010011000111100011101010", 
    48 => "00111100000011100110110100010110", 
    49 => "00111101001000101101001011111110", 
    50 => "10111110000100011111110110011100", 
    51 => "10111110010001011100011100000100" );


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

entity L2_up_L1_WEIGHTS_82 is
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

architecture arch of L2_up_L1_WEIGHTS_82 is
    component L2_up_L1_WEIGHTS_82_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_82_rom_U :  component L2_up_L1_WEIGHTS_82_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


