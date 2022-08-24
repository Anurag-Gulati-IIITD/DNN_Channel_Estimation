-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_75_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_75_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011100011101110111100011100", 
    1 => "00111110011101101111010010111111", 
    2 => "00111101101010100110010111001111", 
    3 => "00111101011111100111100111101110", 
    4 => "00111110000000000101000001111010", 
    5 => "10111100110010011110101010011010", 
    6 => "10111100100011110101000110101101", 
    7 => "00111110000000110100101001000101", 
    8 => "10111101111001011110101110110111", 
    9 => "00111110000110010111011111001001", 
    10 => "00111101110111011001011001100100", 
    11 => "10111100111111010101000000100010", 
    12 => "10111101011010010001101001110110", 
    13 => "10111110010010010011110111011001", 
    14 => "00111000110000001111000000100000", 
    15 => "10111101100011000001101100010001", 
    16 => "10111011010011101011001101010111", 
    17 => "10111100110100110110011100011011", 
    18 => "10111101000100000001111100110010", 
    19 => "00111101011100010111101111011001", 
    20 => "10111010011111011100000101100001", 
    21 => "00111100010011101110000101111010", 
    22 => "10111101110101011111110000111011", 
    23 => "10111110010111110110101001010001", 
    24 => "00111101110100101110011110110100", 
    25 => "00111101110000110011101101010100", 
    26 => "00111100101110110010110111010011", 
    27 => "10111101101110111001000001100100", 
    28 => "00111100010000111101111011101000", 
    29 => "10111100100110011001101110110010", 
    30 => "00111100010001110100011101010010", 
    31 => "00111101100101110110111101101101", 
    32 => "10111101110001000000001100010101", 
    33 => "00111101101001110010101001111100", 
    34 => "10111101101010110001101110111101", 
    35 => "00111110001001110001111001101101", 
    36 => "00111101011101111110110000110101", 
    37 => "10111100010101111100111101011111", 
    38 => "00111101100011110010000101110001", 
    39 => "10111101100110001000110000011110", 
    40 => "00111100100011001110111101100111", 
    41 => "10111100001111011111100011110100", 
    42 => "10111101111111101000001011011000", 
    43 => "00111101011110000011100011000001", 
    44 => "00111100111101000000100000010000", 
    45 => "00111110000001111110000101110110", 
    46 => "10111100111011010000101100110001", 
    47 => "10111101100000001000100011010111", 
    48 => "10111101100000101111000001011010", 
    49 => "00111101100111000100010010111111", 
    50 => "00111101100010110011111011011110", 
    51 => "00111101100001111100001010000111" );


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

entity L2_up_L1_WEIGHTS_75 is
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

architecture arch of L2_up_L1_WEIGHTS_75 is
    component L2_up_L1_WEIGHTS_75_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_75_rom_U :  component L2_up_L1_WEIGHTS_75_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


