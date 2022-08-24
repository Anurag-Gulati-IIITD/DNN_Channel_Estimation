-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_54_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_54_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100101000100001101001110010", 
    1 => "00111110001100110101111001110100", 
    2 => "00111110001011101100010111110100", 
    3 => "00111011101000110110000110011001", 
    4 => "10111100111111011001000100100101", 
    5 => "00111110100000101011011001101011", 
    6 => "00111011111100101010111000001000", 
    7 => "10111101101100100010011000111110", 
    8 => "10111101101110001001110001011110", 
    9 => "10111101100011000011101100001100", 
    10 => "00111101010000101111100101000100", 
    11 => "00111110010110100101100111000000", 
    12 => "10111100011101100001011001110010", 
    13 => "10111100110011001001001000010100", 
    14 => "00111110001110011100110100111110", 
    15 => "10111100011000110100001100110001", 
    16 => "00111101011111110011010010010100", 
    17 => "10111110010011101100010101101101", 
    18 => "10111101010000010110001101111000", 
    19 => "00111100101001100000101100101101", 
    20 => "10111100110000011000000011010100", 
    21 => "10111110001001011011011111010000", 
    22 => "00111101000101111111100101010001", 
    23 => "10111101111011110100000111110010", 
    24 => "10111010110000101110011101110001", 
    25 => "10111100101001110001111111111111", 
    26 => "00111110001011101001000110000110", 
    27 => "10111101100000010011100100000000", 
    28 => "00111100110001101001001011110111", 
    29 => "10111110100101001011001111000100", 
    30 => "10111110011010111101111001000000", 
    31 => "10111011111011101011011100000010", 
    32 => "00111100101101011101010001100011", 
    33 => "00111100111011000001011111101100", 
    34 => "00111101011000111110110100001111", 
    35 => "10111101001111000100010111001100", 
    36 => "00111101110000111100110110011010", 
    37 => "10111101100111110100111011001010", 
    38 => "10111011010011010111010010010010", 
    39 => "00111110000101011101101010101101", 
    40 => "10111101001110111111100000110100", 
    41 => "00111101100110111001111100010010", 
    42 => "00111101100001101011010110010001", 
    43 => "10111101001011101011110001000001", 
    44 => "10111101000001000101111111100001", 
    45 => "10111101111011100000011111100110", 
    46 => "00111101101000101011011010101110", 
    47 => "10111101100001001101101110011100", 
    48 => "00111110001101110100011001000101", 
    49 => "10111110000100001000011111001010", 
    50 => "00111101010100110101110010011110", 
    51 => "10111101100011101000110100010001" );


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

entity L2_up_L1_WEIGHTS_54 is
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

architecture arch of L2_up_L1_WEIGHTS_54 is
    component L2_up_L1_WEIGHTS_54_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_54_rom_U :  component L2_up_L1_WEIGHTS_54_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


