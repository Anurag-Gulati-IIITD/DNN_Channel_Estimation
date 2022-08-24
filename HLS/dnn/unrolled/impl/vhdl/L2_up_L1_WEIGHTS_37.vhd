-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_37_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_37_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100011010010111011011000", 
    1 => "00111101010111011000100000111100", 
    2 => "00111100101010110001000010111010", 
    3 => "10111101000110110000011110001110", 
    4 => "00111101111101010110110010010100", 
    5 => "00111110010000101011100110010001", 
    6 => "00111100100000001010001110010100", 
    7 => "10111100111010111000101101101001", 
    8 => "10111101111100000111001000001000", 
    9 => "10111101100111000110011011010011", 
    10 => "10111100001111000110011001001101", 
    11 => "00111100101110010100000011111111", 
    12 => "00111011101100001110000110110101", 
    13 => "00111101111011101011101100110100", 
    14 => "10111101101011111101110000010110", 
    15 => "10111110100000011100110100011100", 
    16 => "00111101101100111010111001101000", 
    17 => "10111101111000011001100111111110", 
    18 => "00111100000011111001011011100001", 
    19 => "00111011001111010110011000100111", 
    20 => "00111101110000101101111100001101", 
    21 => "10111101111100100000010100110110", 
    22 => "00111101000001110010100011101001", 
    23 => "10111110000101110110011010000100", 
    24 => "00111110000101001011000101101000", 
    25 => "00111101010101101010010110010100", 
    26 => "00111101100111111101011010010101", 
    27 => "10111100110010011010111111100010", 
    28 => "00111101010001000101011101111110", 
    29 => "10111110011000100100010100101100", 
    30 => "00111101100001000111111101010110", 
    31 => "00111100110100100100001110011010", 
    32 => "10111001110010011101100111010011", 
    33 => "10111100100100111010001011100000", 
    34 => "10111101001010000101111011000100", 
    35 => "00111101001011100000100111111111", 
    36 => "00111101000100000010010101111101", 
    37 => "00111101110011001110010001100101", 
    38 => "00111101001011010010000000101001", 
    39 => "10111100011110100101000010010100", 
    40 => "10111101111000010001010011010011", 
    41 => "10111001111100111100101100111110", 
    42 => "00111101111110000110101110011100", 
    43 => "00111110100010111101011100101100", 
    44 => "10111101100110011110011000100101", 
    45 => "00111100011111001001111111111001", 
    46 => "00111101011000010110111110000111", 
    47 => "00111100111011111001100110000000", 
    48 => "00111101001111001001101111000111", 
    49 => "10111011010101010011000001001001", 
    50 => "00111101111000100010000111001001", 
    51 => "00111100111110101011100101101111" );


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

entity L2_up_L1_WEIGHTS_37 is
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

architecture arch of L2_up_L1_WEIGHTS_37 is
    component L2_up_L1_WEIGHTS_37_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_37_rom_U :  component L2_up_L1_WEIGHTS_37_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


