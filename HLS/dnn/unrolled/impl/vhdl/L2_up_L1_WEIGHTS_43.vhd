-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_43_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_43_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100111001011110100010010010", 
    1 => "00111101110101110010110101011110", 
    2 => "00111101000010011001101011101001", 
    3 => "00111100101011010001001010001000", 
    4 => "00111101101101001101111100000101", 
    5 => "10111101001000000011010011110100", 
    6 => "10111101001100111111010000100011", 
    7 => "00111101011010010101100101100000", 
    8 => "10111110000000110111001001100000", 
    9 => "10111101111000010111001000100110", 
    10 => "00111101111001111010101011101111", 
    11 => "10111101010010100101100111000000", 
    12 => "00111100110011011111001001100111", 
    13 => "00111101110111101001101011110110", 
    14 => "10111101111101011111111101100001", 
    15 => "00111101010010010111101001101000", 
    16 => "00111101011010001100100010101100", 
    17 => "10111101100100000001110010010011", 
    18 => "00111100100011100011110011011010", 
    19 => "00111011100110000100010111011101", 
    20 => "00111101000101101100111110000101", 
    21 => "00111100110001111101111001010001", 
    22 => "10111011111001011001101011111010", 
    23 => "10111101100010010110110101001100", 
    24 => "00111100101100000101010100110010", 
    25 => "10111100000000010000111010001000", 
    26 => "10111110010000010101101100010100", 
    27 => "00111011011101101101111111000110", 
    28 => "00111110100010001100111001001111", 
    29 => "10111100100001100010110101000001", 
    30 => "00111101110010101100100111110011", 
    31 => "00111100011010001001101010001001", 
    32 => "10111100100101010100000000000011", 
    33 => "10111110001000111000011100010110", 
    34 => "00111110001001011110010000011101", 
    35 => "10111101101101000010001011001101", 
    36 => "00111101010001010010001011101010", 
    37 => "10111100111000011100111111111111", 
    38 => "00111101100101101000110101110110", 
    39 => "00111100110101011001110101010110", 
    40 => "00111101100011010010110010111111", 
    41 => "10111101110101010001101111010110", 
    42 => "00111110001010111101000100100100", 
    43 => "00111100101111100110110001001100", 
    44 => "00111101001111110100001101000010", 
    45 => "00111010111110001100011001010000", 
    46 => "00111101110010110100110001111111", 
    47 => "00111101100000010100001101111100", 
    48 => "10111101011111110110111000111111", 
    49 => "10111101111111011011111000111100", 
    50 => "00111101101110100011001000101011", 
    51 => "00111011110011000100011010010101" );


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

entity L2_up_L1_WEIGHTS_43 is
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

architecture arch of L2_up_L1_WEIGHTS_43 is
    component L2_up_L1_WEIGHTS_43_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_43_rom_U :  component L2_up_L1_WEIGHTS_43_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


