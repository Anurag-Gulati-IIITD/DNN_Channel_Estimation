-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_41_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_41_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000001000101101010100011", 
    1 => "00111100010010101100110100011000", 
    2 => "10111101110111101001001100011000", 
    3 => "10111101111000100101010010100100", 
    4 => "10111100100110001101001001011111", 
    5 => "10111110001100111001101100000010", 
    6 => "10111101000011011011000101100100", 
    7 => "00111110000101111100011000110010", 
    8 => "00111101101100100110110110001011", 
    9 => "00111110000000111111101000101011", 
    10 => "00111011110011110000011100111010", 
    11 => "00111100100000001000110010000010", 
    12 => "00111010101010101010011111011111", 
    13 => "10111101111010101001011100011000", 
    14 => "00111101110001101111011110100001", 
    15 => "00111110000100101111010110011001", 
    16 => "00111101011010111101011011101001", 
    17 => "00111101101010101011110101011110", 
    18 => "00111101101110010011011110001111", 
    19 => "10111011110000101001001110001110", 
    20 => "10111100111110010111100010010010", 
    21 => "00111101100010011010110010111101", 
    22 => "10111101110110000110011111110001", 
    23 => "00111101101010111110010000000100", 
    24 => "10111101100110100001101100011001", 
    25 => "10111011101010100010000110100111", 
    26 => "00111101100111010111111011001100", 
    27 => "00111101110101011100011011000001", 
    28 => "00111101011010000101111011000100", 
    29 => "00111110000110101110110101010111", 
    30 => "10111110001001110010001001011011", 
    31 => "10111101001011101001001101011100", 
    32 => "00111100100011000011100011110011", 
    33 => "00111011110000100001111000011101", 
    34 => "00111101100111110001111010001110", 
    35 => "10111110001000101011011111111110", 
    36 => "10111101001011001101100011011100", 
    37 => "10111101111001111001101110111011", 
    38 => "10111101100001001111011101100110", 
    39 => "00111101100000110011011010011100", 
    40 => "00111100111110111011001011111111", 
    41 => "10111101011110111011110101111011", 
    42 => "10111101110100101101110010110001", 
    43 => "10111110000010011100100110010011", 
    44 => "00111101001011111100000101011001", 
    45 => "00111101011001100101010010010011", 
    46 => "00111101101001001000100101001100", 
    47 => "00111100100110011010111010010010", 
    48 => "00111100110110010111110101001010", 
    49 => "10111101101001100110001010111011", 
    50 => "00111101011100000001010000101111", 
    51 => "10111101100000010000101111101001" );


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

entity L2_up_L1_WEIGHTS_41 is
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

architecture arch of L2_up_L1_WEIGHTS_41 is
    component L2_up_L1_WEIGHTS_41_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_41_rom_U :  component L2_up_L1_WEIGHTS_41_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


