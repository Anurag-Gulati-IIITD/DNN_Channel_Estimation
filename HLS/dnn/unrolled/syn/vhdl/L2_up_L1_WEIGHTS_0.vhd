-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_0_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100011111111111001101101011", 
    1 => "10111101111100100001111111110011", 
    2 => "10111110010111011000100110001011", 
    3 => "00111101101100110011111111001000", 
    4 => "00111101110100111100011110010011", 
    5 => "10111110100000111001011011110010", 
    6 => "10111110000101100001000010101110", 
    7 => "00111101100011110010100101001110", 
    8 => "00111100011000100101010000011110", 
    9 => "00111100011001011111001100001110", 
    10 => "10111101001000111101110101010101", 
    11 => "10111110100000011001000010001110", 
    12 => "10111101100011011111010100000110", 
    13 => "00111101110000110111000101010100", 
    14 => "10111110001100010011110010101100", 
    15 => "10111101101011110000111010010001", 
    16 => "00111101000101101101111000110011", 
    17 => "00111101111110100001101000001101", 
    18 => "10111101100001111101010011100001", 
    19 => "10111101100110100000010110011010", 
    20 => "00111100000101111010001001001001", 
    21 => "00111110000101011010111110110000", 
    22 => "10111100101000001111100100001001", 
    23 => "00111110000100010111101000000011", 
    24 => "00111100111000001110011100110110", 
    25 => "00111101000000000110010010101010", 
    26 => "10111110011101101000110000100110", 
    27 => "00111101010111000110010010111011", 
    28 => "00111101111110010101100110100011", 
    29 => "00111101111101000001111110100111", 
    30 => "00111110011100001000111001011000", 
    31 => "00111101111110001111110111100011", 
    32 => "00111100100110111110100011111111", 
    33 => "10111110000001101010100111000101", 
    34 => "10111101010101110111100101100100", 
    35 => "00111110001000011110100110101111", 
    36 => "10111101000010000010001001111001", 
    37 => "10111101001100110001001010110010", 
    38 => "10111101111010011100000000100011", 
    39 => "10111110000110010011001000001110", 
    40 => "00111101001000000000100011101010", 
    41 => "10111101011001011001011011001000", 
    42 => "10111101011111001100110000000011", 
    43 => "00111101010100011101010001110100", 
    44 => "00111110000010011111001000110100", 
    45 => "00111101110011001101100001010110", 
    46 => "10111110000100100011101110111100", 
    47 => "10111101010001101010110100101110", 
    48 => "10111101101011011011011110101110", 
    49 => "00111101110011111111101001111111", 
    50 => "10111101000110000001000101101111", 
    51 => "00111101101101001110101100010100" );


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

entity L2_up_L1_WEIGHTS_0 is
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

architecture arch of L2_up_L1_WEIGHTS_0 is
    component L2_up_L1_WEIGHTS_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_0_rom_U :  component L2_up_L1_WEIGHTS_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


