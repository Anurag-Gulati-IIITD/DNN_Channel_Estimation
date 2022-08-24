-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_56_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_56_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100010001100100111111011011", 
    1 => "10111101111110100011101100010101", 
    2 => "10111101011011101000001110100001", 
    3 => "00111101111011111111110010011000", 
    4 => "10111101101110110011100111100010", 
    5 => "10111101001111110100000000011100", 
    6 => "10111101001010010011110100010000", 
    7 => "00111101000100111101111010100100", 
    8 => "10111110000101100111000010100000", 
    9 => "00111101111110111000010111101000", 
    10 => "00111101101010010110000111000011", 
    11 => "10111110000111001111001011010000", 
    12 => "10111100100001001010001011111101", 
    13 => "00111110000100011101011111011100", 
    14 => "10111100100001101010010011001010", 
    15 => "10111110000111101110010100100110", 
    16 => "10111101001100110010010010000101", 
    17 => "00111101111010001100111101111101", 
    18 => "00111100100111111011101001000101", 
    19 => "10111101101101100101011011101111", 
    20 => "10111101100011010001101101110001", 
    21 => "10111100010110011000001110010100", 
    22 => "10111101101000101100011011101111", 
    23 => "00111110000111100101101000110110", 
    24 => "10111101100001110111111011100101", 
    25 => "10111101100110110000100000010100", 
    26 => "00111101110010110101110111001100", 
    27 => "10111110011111010100101110101101", 
    28 => "00111001111110100001010111011011", 
    29 => "00111101101101110011101110000110", 
    30 => "10111101000011100000011001010011", 
    31 => "10111101010010010010101111000011", 
    32 => "00111101101110000000000000100010", 
    33 => "10111011110111110000010011011110", 
    34 => "10111101011001111101101110110001", 
    35 => "00111100111001000011001001000100", 
    36 => "10111101000100111000011010010000", 
    37 => "10111101110001011100100110100011", 
    38 => "00111110000110100100110001100010", 
    39 => "00111011111111110101010000001001", 
    40 => "00111100010000101110011101110001", 
    41 => "00111101101111111011100110111111", 
    42 => "10111100100111111010100101111110", 
    43 => "00111110001101111100111111100110", 
    44 => "10111100100101100010100011001100", 
    45 => "00111101010110110000011110001110", 
    46 => "10111101011001010111111010101010", 
    47 => "00111100001010010001000100000110", 
    48 => "00111011110111110010011001101100", 
    49 => "00111101011100101000101001100001", 
    50 => "00111110001100010000101010011010", 
    51 => "10111100011011001000010011111001" );


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

entity L2_up_L1_WEIGHTS_56 is
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

architecture arch of L2_up_L1_WEIGHTS_56 is
    component L2_up_L1_WEIGHTS_56_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_56_rom_U :  component L2_up_L1_WEIGHTS_56_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


