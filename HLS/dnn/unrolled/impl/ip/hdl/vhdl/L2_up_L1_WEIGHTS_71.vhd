-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_71_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_71_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100111111100010101000111101", 
    1 => "10111110011000010100001101111100", 
    2 => "00111011110111111110011101011100", 
    3 => "10111101100010100101110111110010", 
    4 => "00111101010111011000100000111100", 
    5 => "00111100111011111000001001101111", 
    6 => "10111011100000101101011110110110", 
    7 => "00111101001110101100110001001111", 
    8 => "00111101100110011011100000000010", 
    9 => "10111110001000110100000010010010", 
    10 => "10111100100011100110110100010110", 
    11 => "00111101110110000110010011001011", 
    12 => "00111101100110001110100111110111", 
    13 => "00111101111111111000101010001111", 
    14 => "00111100011010010110100000001110", 
    15 => "00111100000101110000011100011000", 
    16 => "00111101101100101100111010001001", 
    17 => "00111101011111000101000001001000", 
    18 => "00111101011100001011101011101001", 
    19 => "10111011100010110000000001111010", 
    20 => "00111101110101100010011100111001", 
    21 => "00111101010100100011110101001111", 
    22 => "00111100000110111110100011111111", 
    23 => "00111110000111100001000010001100", 
    24 => "10111101011010111110001001110001", 
    25 => "00111101000001000001100010010011", 
    26 => "10111101110100001110100010000110", 
    27 => "10111100100001110001101000111011", 
    28 => "00111101111111001101001001001110", 
    29 => "00111101010110101001101110001101", 
    30 => "10111100100000000010110000001010", 
    31 => "00111100100100110000101111100001", 
    32 => "10111100000111000111011110011010", 
    33 => "10111101100101111010101100110010", 
    34 => "00111101100100110000101011010100", 
    35 => "10111101111000101110000110101100", 
    36 => "10111100101011010101011110111100", 
    37 => "00111101100101011111111011011010", 
    38 => "00111100000110100010010000000011", 
    39 => "00111101010100001110011001101101", 
    40 => "00111011011010110101011011111100", 
    41 => "10111101010111000111100110110011", 
    42 => "00111110011100001110000101110010", 
    43 => "00111100101010001100101111010001", 
    44 => "00111101001010100100000100011100", 
    45 => "10111110000011000110100000100011", 
    46 => "00111101100111011010101101011100", 
    47 => "10111101101111110010011101111000", 
    48 => "00111101110110101001101010000000", 
    49 => "00111011011000100011101011110011", 
    50 => "10111101110010001101101001111111", 
    51 => "10111011110101111100011011111100" );


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

entity L2_up_L1_WEIGHTS_71 is
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

architecture arch of L2_up_L1_WEIGHTS_71 is
    component L2_up_L1_WEIGHTS_71_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_71_rom_U :  component L2_up_L1_WEIGHTS_71_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


