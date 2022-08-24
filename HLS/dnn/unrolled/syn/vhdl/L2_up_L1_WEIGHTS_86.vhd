-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_86_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_86_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100011011110001101110101100", 
    1 => "00111100101101100000110100000010", 
    2 => "00111101110101011010111100101001", 
    3 => "10111100100110001111011000000110", 
    4 => "00111101001010110010011111001100", 
    5 => "00111101011011101011111001011001", 
    6 => "00111101101101110001110010010111", 
    7 => "10111101010011100100111110111001", 
    8 => "10111110001111111111000110010101", 
    9 => "10111110000011101101100001001101", 
    10 => "00111110000111011101111000110111", 
    11 => "10111100010110010111011011111111", 
    12 => "10111101100010101100010111000001", 
    13 => "10111100111110011010000001101010", 
    14 => "00111110001100001100100110010111", 
    15 => "10111101011110001001000011010110", 
    16 => "00111100110000110101110011100010", 
    17 => "10111101111101001010010011010011", 
    18 => "00111101001100101101110000101011", 
    19 => "00111100110010001100100100110010", 
    20 => "10111101000010001000000011011000", 
    21 => "10111100010011010101011100110110", 
    22 => "00111101000110101010111001101101", 
    23 => "00111100111111000110111110111101", 
    24 => "00111100011111001010110010001110", 
    25 => "00111101011000000111001011010010", 
    26 => "00111101011011011110001000100110", 
    27 => "00111101001111110000111111100000", 
    28 => "00111100100111010011000000100111", 
    29 => "10111010011111010111111001000110", 
    30 => "10111101100111011011111111001111", 
    31 => "00111101011100011011011010010001", 
    32 => "10111101110001110011000011000110", 
    33 => "10111010110000000010011011001100", 
    34 => "00111100100011101100001100010001", 
    35 => "00111101011111101000001001010001", 
    36 => "10111101100101010010011101011111", 
    37 => "10111110000100101111100111001010", 
    38 => "10111101000010111010010000001110", 
    39 => "10111101011110011000001100001110", 
    40 => "10111101011111101111001110010001", 
    41 => "10111101110001111101000100110101", 
    42 => "00111101000100100011001111011111", 
    43 => "00111101010000011111011101010001", 
    44 => "10111101100100000010101101000001", 
    45 => "10111101000100111000011110011100", 
    46 => "00111101111001000011010101101001", 
    47 => "10111010111010110000001100011001", 
    48 => "00111101000010000010111100001110", 
    49 => "10111101110000101111111010000010", 
    50 => "00111110010010111001101001011011", 
    51 => "00111101011101111000011001111111" );


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

entity L2_up_L1_WEIGHTS_86 is
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

architecture arch of L2_up_L1_WEIGHTS_86 is
    component L2_up_L1_WEIGHTS_86_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_86_rom_U :  component L2_up_L1_WEIGHTS_86_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


