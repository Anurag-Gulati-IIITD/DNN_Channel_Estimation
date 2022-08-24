-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_79_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_79_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100111100100111101110110011", 
    1 => "10111101110001110110100001011010", 
    2 => "10111110000011011011001111000000", 
    3 => "10111100011010101100100001100000", 
    4 => "00111100100010010110011110001000", 
    5 => "10111110010110010111100010010010", 
    6 => "10111101111100000101000110000111", 
    7 => "10111101100000000001110011010110", 
    8 => "10111110001110110000011011000100", 
    9 => "10111101110111001100110000000011", 
    10 => "00111101001001010100001111110010", 
    11 => "10111101110001010110110011010111", 
    12 => "10111101100100111110100110100111", 
    13 => "10111110001111110000110101000001", 
    14 => "00111101000011100010100011101101", 
    15 => "00111100100011000011110100100101", 
    16 => "00111101010000011111101001110110", 
    17 => "00111101101110000100011011101001", 
    18 => "10111100001111110111001001110001", 
    19 => "10111101100110110011011111001010", 
    20 => "10111101100000000001101000110111", 
    21 => "00111101011011000101011011010110", 
    22 => "00111101011100110011101110010111", 
    23 => "00111011110111001001100000011100", 
    24 => "10111101110001101101111110000011", 
    25 => "00111100101101001110100110000001", 
    26 => "00111010010110000000000110110100", 
    27 => "00111110010010010000001010011011", 
    28 => "10111101001011110000000101110101", 
    29 => "00111110010100111010111110111000", 
    30 => "10111101100011001111010110110010", 
    31 => "00111100000001110111011010000001", 
    32 => "10111101000110011011100000000010", 
    33 => "00111101001110100101111101000010", 
    34 => "10111101101001011101111000010110", 
    35 => "10111101110011001111010110110010", 
    36 => "10111101000010110011011100000000", 
    37 => "00111100101111111010100011111000", 
    38 => "10111110011100001110000101110010", 
    39 => "00111101011010101100101110000110", 
    40 => "00111101111000001110110001110100", 
    41 => "00111101011001111011010011100101", 
    42 => "00111110001100010110111000110111", 
    43 => "00111100100011111110011010010010", 
    44 => "10111101000010001101001110101110", 
    45 => "00111101100001100101011110111000", 
    46 => "00111101100001111000011011000010", 
    47 => "00111101111111100011101100000100", 
    48 => "10111101000110000111011100100101", 
    49 => "00111110000011001100010111111100", 
    50 => "00111110001100101110010101011000", 
    51 => "10111101100101101010101101011000" );


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

entity L2_up_L1_WEIGHTS_79 is
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

architecture arch of L2_up_L1_WEIGHTS_79 is
    component L2_up_L1_WEIGHTS_79_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_79_rom_U :  component L2_up_L1_WEIGHTS_79_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


