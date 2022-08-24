-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_77_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_77_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110111011110010110001110", 
    1 => "10111101110000010100111100000101", 
    2 => "00111101101011000010101101010010", 
    3 => "10111100111011101010001000001010", 
    4 => "00111110000001001010100110001011", 
    5 => "00111110101001011001100110101010", 
    6 => "00111100111110101101000010000001", 
    7 => "00111011101111110110111000111111", 
    8 => "00111110010000111110001100011001", 
    9 => "00111101011100111110100110100111", 
    10 => "10111110001101011001001000010000", 
    11 => "10111010010000000110100111101000", 
    12 => "10111101010001100010001011000100", 
    13 => "00111101001011111001001100110110", 
    14 => "00111100110011110011000100101011", 
    15 => "10111101001110100111100001101100", 
    16 => "00111101100100010101110011101010", 
    17 => "10111100111101101000110111111100", 
    18 => "10111011101101010100010111001000", 
    19 => "00111010101010100000000000011001", 
    20 => "10111101100110000100100110001000", 
    21 => "10111011010001101000001000110000", 
    22 => "00111001011011001111101001101010", 
    23 => "00111101111000110010000010010110", 
    24 => "10111100101011001010001101100010", 
    25 => "10111101010110011011110000110100", 
    26 => "00111101111010001010010100000101", 
    27 => "10111101011100010010000010011111", 
    28 => "10111100001010011110111101010010", 
    29 => "10111110100000111011111101010001", 
    30 => "00111101001100111011101110000100", 
    31 => "00111101101101001100001000101111", 
    32 => "10111101101001100100101110101001", 
    33 => "00111101000110111010001010111110", 
    34 => "00111101010101001010101000010001", 
    35 => "00111100100001111001000111000101", 
    36 => "10111101001100011101110101011101", 
    37 => "00111110010010011010110010111101", 
    38 => "00111110000010001001111010111010", 
    39 => "10111101110111110100011101110011", 
    40 => "10111101011100100010001010010010", 
    41 => "10111101000000011110011110010110", 
    42 => "10111100100011101011011001111100", 
    43 => "00111101001111010010110001111100", 
    44 => "10111101010010100001101011010110", 
    45 => "10111101010011101110000101111010", 
    46 => "00111101110001001010011110110101", 
    47 => "10111101010001110100100001011110", 
    48 => "00111101000011001010001011011011", 
    49 => "10111110000100010000001110000110", 
    50 => "10111101111011001011110010001100", 
    51 => "10111100000011010011111100011000" );


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

entity L2_up_L1_WEIGHTS_77 is
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

architecture arch of L2_up_L1_WEIGHTS_77 is
    component L2_up_L1_WEIGHTS_77_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_77_rom_U :  component L2_up_L1_WEIGHTS_77_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


