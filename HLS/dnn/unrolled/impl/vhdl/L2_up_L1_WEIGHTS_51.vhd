-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_51_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_51_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110101010111100010100011", 
    1 => "00111110000111001011000011000000", 
    2 => "10111110001001001001000001100000", 
    3 => "10111101101010010000110011010100", 
    4 => "10111101111010000001101100100010", 
    5 => "10111110001101100011011010110001", 
    6 => "00111101101100111100100100100101", 
    7 => "00111101011111000111100100101101", 
    8 => "00111101100000010000111110010101", 
    9 => "10111110011010000110001101111100", 
    10 => "00111101101100101111010011001111", 
    11 => "10111100101000010010100101000101", 
    12 => "00111101111000100001111100101010", 
    13 => "10111110011100000001100101101110", 
    14 => "10111110000110011011110011111101", 
    15 => "00111110010011111011101110010101", 
    16 => "10111101110011100001111101111101", 
    17 => "00111101111001111000011000111100", 
    18 => "00111101001100111010111111111011", 
    19 => "10111110000010111101011110110010", 
    20 => "10111101110100001100101110110000", 
    21 => "00111101101111000000011011100010", 
    22 => "10111101000001000101111111100001", 
    23 => "10111110001010011000100010010000", 
    24 => "10111100110100010101001001101110", 
    25 => "10111100110011111010110011100110", 
    26 => "00111110101001100101100011100110", 
    27 => "00111101101101000100110000111000", 
    28 => "10111110010101111100110100000011", 
    29 => "00111101100101011101100010010101", 
    30 => "00111110000110001101100000100011", 
    31 => "10111110001110000010000000011101", 
    32 => "00111110000011100000110110101010", 
    33 => "00111110000100111100110110011010", 
    34 => "00111101010100111011010010110011", 
    35 => "10111011101111110100110010110010", 
    36 => "00111010110100111000110011011010", 
    37 => "10111101011001101001100010111011", 
    38 => "10111100010011101100110010000001", 
    39 => "00111110100111101101001010001001", 
    40 => "00111101000111010111010001001111", 
    41 => "00111101111111101110100000001000", 
    42 => "00111110100100101110101100111110", 
    43 => "10111110011011110001001111001111", 
    44 => "10111101001111001100000110000111", 
    45 => "00111101111001011101011010111111", 
    46 => "00111100000001011111010010100001", 
    47 => "10111101100010101010110010010111", 
    48 => "00111100001110110011110010000010", 
    49 => "10111101000001010110011100010010", 
    50 => "10111101010001010101011101011000", 
    51 => "10111110010100010101011011100010" );


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

entity L2_up_L1_WEIGHTS_51 is
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

architecture arch of L2_up_L1_WEIGHTS_51 is
    component L2_up_L1_WEIGHTS_51_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_51_rom_U :  component L2_up_L1_WEIGHTS_51_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


