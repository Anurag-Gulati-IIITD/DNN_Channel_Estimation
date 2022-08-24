-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_88_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_88_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011101101000011100101011000", 
    1 => "00111110000010100011110100101110", 
    2 => "10111100100000001001010011100110", 
    3 => "10111101101000001111110111000001", 
    4 => "10111100111011010001011111000110", 
    5 => "00111101101101000001100011010111", 
    6 => "00111101010001001010111110010010", 
    7 => "10111101111101111110111111100001", 
    8 => "00111101010101000011111000010000", 
    9 => "10111101100011001111011101000100", 
    10 => "10111101110011010000110101001010", 
    11 => "10111100100111101001010010101011", 
    12 => "00111101011011000101000110011000", 
    13 => "00111101101110100001111000111111", 
    14 => "10111101110000111110011011000101", 
    15 => "10111110010110111011100111010000", 
    16 => "00111011110100110011100011111000", 
    17 => "10111011111101011100001010001111", 
    18 => "10111101010001000111110100111101", 
    19 => "10111101000010100010111111001111", 
    20 => "10111101110111000110110100011110", 
    21 => "00111101001001100011010000010001", 
    22 => "00111101100111110110000010011110", 
    23 => "10111110001000010110110001100001", 
    24 => "00111100111100110011011001011001", 
    25 => "10111100100001001001011001101000", 
    26 => "00111110001010100010100000110101", 
    27 => "10111101001110100111101110010001", 
    28 => "10111100010011011111001001100111", 
    29 => "10111101111000111110100011011110", 
    30 => "00111101101111010100111110011100", 
    31 => "10111101010110010100110000000001", 
    32 => "00111100111010001000110111110011", 
    33 => "10111100000100100010000011111111", 
    34 => "10111101001011011000100100000101", 
    35 => "00111011001001011010110011001101", 
    36 => "10111101110011010111101101100011", 
    37 => "00111101101001110010111000100111", 
    38 => "00111101010011110011001000111000", 
    39 => "00111101010101100001100000000101", 
    40 => "10111100110001100011100011001001", 
    41 => "10111101100001100101101101100100", 
    42 => "00111101010111100101011011001101", 
    43 => "00111110011001001101011010100001", 
    44 => "10111100111101101011111000111000", 
    45 => "10111100101001001000001100000010", 
    46 => "10111101001100010010010111011101", 
    47 => "10111100101010101100010100111011", 
    48 => "00111100001001100001000101110111", 
    49 => "00111011010101010101000111010111", 
    50 => "10111101000110001111011000000110", 
    51 => "10111011111111001001101111000111" );


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

entity L2_up_L1_WEIGHTS_88 is
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

architecture arch of L2_up_L1_WEIGHTS_88 is
    component L2_up_L1_WEIGHTS_88_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_88_rom_U :  component L2_up_L1_WEIGHTS_88_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


