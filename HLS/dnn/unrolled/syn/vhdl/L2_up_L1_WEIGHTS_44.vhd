-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_44_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_44_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011110001001100000101101", 
    1 => "00111101111011010000100110011110", 
    2 => "00111100100100101011101000010111", 
    3 => "10111101000011101001101000101100", 
    4 => "10111110000111000010010101001010", 
    5 => "00111110000100101110110011110010", 
    6 => "00111100101101010110100101101110", 
    7 => "10111110000100100111011110000001", 
    8 => "10111101001001101101110111110000", 
    9 => "10111101111100111101001000001111", 
    10 => "10111101001001000011000000101011", 
    11 => "10111100011000110011101011001101", 
    12 => "10111100100100100011000111000110", 
    13 => "00111110001000011000000110011101", 
    14 => "10111110000100011010001111110100", 
    15 => "00111100111011100000101100001011", 
    16 => "00111011111111000110000100001111", 
    17 => "10111101100001010001011101100001", 
    18 => "10111101110001011001100111101101", 
    19 => "00111101010110101001001100101001", 
    20 => "00111100010011101000000100000010", 
    21 => "00111010111000000100001110100010", 
    22 => "00111110001100100001001001010001", 
    23 => "10111101010111111011000111100010", 
    24 => "00111101100001001101111011000010", 
    25 => "10111100010101010000011001010111", 
    26 => "10111101111101000001010100101011", 
    27 => "10111101001111110110101000001110", 
    28 => "00111100000001000000111000010111", 
    29 => "10111110000010010101010000100010", 
    30 => "00111110010111011001100101000110", 
    31 => "00111101100011110010010110100010", 
    32 => "00111110010000111001001100100101", 
    33 => "10111100101110110010001101010111", 
    34 => "00111101111111111101011000001111", 
    35 => "00111101001110101101111000100010", 
    36 => "10111100111100010001101101100001", 
    37 => "10111100110010000100001011111010", 
    38 => "00111101110110011011000110111000", 
    39 => "00111100100001111001000111000101", 
    40 => "10111011001110110010101110111011", 
    41 => "00111101111001001110010100001100", 
    42 => "00111110010101110100010011110110", 
    43 => "10111100011111011011110100110000", 
    44 => "00111101011100011110001110101000", 
    45 => "00111101101101010011110011011110", 
    46 => "10111100111010100100111010111110", 
    47 => "10111101011101110001001100100111", 
    48 => "00111100110111000101011100011001", 
    49 => "10111101101010011100011101111010", 
    50 => "00111100111101011010111110110000", 
    51 => "10111101110101001000000010100110" );


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

entity L2_up_L1_WEIGHTS_44 is
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

architecture arch of L2_up_L1_WEIGHTS_44 is
    component L2_up_L1_WEIGHTS_44_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_44_rom_U :  component L2_up_L1_WEIGHTS_44_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


