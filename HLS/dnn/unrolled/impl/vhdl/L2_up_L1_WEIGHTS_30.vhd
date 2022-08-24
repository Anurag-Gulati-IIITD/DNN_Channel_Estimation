-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_30_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_30_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101111100110110110011011111", 
    1 => "00111110000010101000110001011000", 
    2 => "10111101100100111011100101101011", 
    3 => "10111110000100000100000011000000", 
    4 => "00111101011100101100110101111101", 
    5 => "10111110001000100011101010110000", 
    6 => "10111101010101111011001100010000", 
    7 => "00111101010001100110101100011110", 
    8 => "10111110000111011110001011101111", 
    9 => "10111101111010111111111011000001", 
    10 => "00111011110001010011101100001000", 
    11 => "00111101100000111110000100000000", 
    12 => "00111101010010000001000110110010", 
    13 => "10111010011000011011010010111011", 
    14 => "10111101000110001110101001111101", 
    15 => "10111110010001010111101000110101", 
    16 => "00111001010001010010000111011110", 
    17 => "00111100100010000001111001000111", 
    18 => "10111011100000111110110010001001", 
    19 => "10111101010001111111000000100100", 
    20 => "00111100100001100111011010100111", 
    21 => "00111101000111001000001100100011", 
    22 => "10111100100000010111010101001011", 
    23 => "10111110001001011101010110110010", 
    24 => "10111101010110100011110100101110", 
    25 => "00111010100001000110000111111010", 
    26 => "10111100000111110000010111101010", 
    27 => "10111101000011111001101000000111", 
    28 => "00111101111001100101001001111010", 
    29 => "00111110001111010011001011000110", 
    30 => "00111101101100100010111010100001", 
    31 => "10111101011011110111011111110010", 
    32 => "10111101100000111100010010110001", 
    33 => "10111101100110000111111110001000", 
    34 => "10111101101110000101001001110010", 
    35 => "10111101111110000100011111110101", 
    36 => "10111101100100011100001100100110", 
    37 => "00111101000100011000010011000010", 
    38 => "10111101011110111010001000111000", 
    39 => "00111101100110100101100011110111", 
    40 => "10111101001001110100001110100110", 
    41 => "10111101010110110111011010110100", 
    42 => "00111101000111001011110011001111", 
    43 => "00111110000111001101000111001000", 
    44 => "10111101100000100001110010001010", 
    45 => "10111101110111011111000000001011", 
    46 => "00111101100010000011001111000110", 
    47 => "00111101101010011000000110111111", 
    48 => "00111011000101010111110011010100", 
    49 => "00111101101001110000010101000010", 
    50 => "00111101101000010111111101000001", 
    51 => "10111101101000110111000011001110" );


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

entity L2_up_L1_WEIGHTS_30 is
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

architecture arch of L2_up_L1_WEIGHTS_30 is
    component L2_up_L1_WEIGHTS_30_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_30_rom_U :  component L2_up_L1_WEIGHTS_30_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


