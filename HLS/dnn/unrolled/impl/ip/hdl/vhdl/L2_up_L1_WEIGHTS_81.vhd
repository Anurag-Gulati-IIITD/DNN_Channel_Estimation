-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_81_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_81_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101011001010111111110110111", 
    1 => "00111110011011101000011101001101", 
    2 => "00111101000100111111111000011001", 
    3 => "00111101001110000100001000110001", 
    4 => "00111101011101101111000110011001", 
    5 => "10111101111001101001100000110101", 
    6 => "10111101111000101101000111110010", 
    7 => "00111100110000111010010000101111", 
    8 => "10111010110100001010101010101000", 
    9 => "00111100011100101100111110010110", 
    10 => "10111101100010111010010010010100", 
    11 => "00111110001011000000100000110001", 
    12 => "00111101110111010010100001001010", 
    13 => "10111101000010101111001111100100", 
    14 => "10111110001011010000000010110100", 
    15 => "10111110010111111001111101000101", 
    16 => "00111101000111011110011110100111", 
    17 => "00111101111101010101000111010111", 
    18 => "10111101010000110110111010110101", 
    19 => "00111101100001111100001100001101", 
    20 => "00111101000000010111111111000111", 
    21 => "00111101001011011001010110011010", 
    22 => "10111100100111011010011110110001", 
    23 => "10111110010011111001100010110111", 
    24 => "10111101010110001011000111011101", 
    25 => "10111101001010001011001110110011", 
    26 => "10111101101111011010011000011110", 
    27 => "10111101001011110011000110110001", 
    28 => "00111100101111110110101000001110", 
    29 => "00111101011000000010100001011111", 
    30 => "00111110010011110000100100001111", 
    31 => "10111101001110010100010000100100", 
    32 => "00111101101110101111010010101110", 
    33 => "10111100100011110111101110011110", 
    34 => "10111101100010100011100100111111", 
    35 => "10111110001100011111010100111000", 
    36 => "10111101010100101110011000100001", 
    37 => "00111100111011101100100111100010", 
    38 => "00111101100000110000001000101110", 
    39 => "10111101001001111100000101111011", 
    40 => "00111101000011011101110101101110", 
    41 => "10111101100000111110011111010001", 
    42 => "10111110000000011010000011001111", 
    43 => "00111110010100011001110110101010", 
    44 => "00111101011000001110101001011011", 
    45 => "00111101011010000111001010110000", 
    46 => "00111101001100000101110110010110", 
    47 => "00111101010111011110001101110110", 
    48 => "10111101100101111101100011001111", 
    49 => "00111110000101010011011110100000", 
    50 => "10111101010110001111100100101011", 
    51 => "10111101011101011010001100011010" );


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

entity L2_up_L1_WEIGHTS_81 is
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

architecture arch of L2_up_L1_WEIGHTS_81 is
    component L2_up_L1_WEIGHTS_81_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_81_rom_U :  component L2_up_L1_WEIGHTS_81_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


