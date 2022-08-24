-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_9_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011010100110111000110011", 
    1 => "00111100100101010000010101001011", 
    2 => "00111101001001101011101001001001", 
    3 => "10111101100011110011110111000000", 
    4 => "10111100010111111111001111110001", 
    5 => "00111110001001111001011011000000", 
    6 => "00111101001101000100111001010001", 
    7 => "10111110000010100111001100101110", 
    8 => "10111101001000110110111000101111", 
    9 => "00111101011111111110011111100010", 
    10 => "10111101011000001001111111101000", 
    11 => "00111101101011100111111001100011", 
    12 => "10111101101001010111111000100100", 
    13 => "00111110010001001000100001000000", 
    14 => "10111101110000101111011000011111", 
    15 => "00111101010010111100010010001111", 
    16 => "00111101100110111010101110101000", 
    17 => "10111100100010011110110111000000", 
    18 => "00111100010011110010110011111001", 
    19 => "00111101000111101001111000011011", 
    20 => "10111011011000011100010110000010", 
    21 => "10111101000110010010101001110011", 
    22 => "00111110001110100010010000000011", 
    23 => "10111101000011100100001000011000", 
    24 => "10111101010001101010101000001000", 
    25 => "00111100100100110111101100000111", 
    26 => "10111100110110001100101100001000", 
    27 => "00111101001111001101101010110010", 
    28 => "00111110000010101100000100001001", 
    29 => "10111110001100100011110101001111", 
    30 => "00111110010010100011010111010110", 
    31 => "00111101100100000000100010100111", 
    32 => "10111101100001111101111011010111", 
    33 => "10111101110111010010010110101011", 
    34 => "00111101010110010110101001101010", 
    35 => "10111110010001100101111100001111", 
    36 => "10111101100101001000111001000111", 
    37 => "00111101110101010010100011110010", 
    38 => "10111110000100100100001100010011", 
    39 => "10111101010000110001101111011111", 
    40 => "00111101010011101011101110111010", 
    41 => "10111000101100100100001000000111", 
    42 => "10111101101100010101100010111000", 
    43 => "10111001101010001101001000011100", 
    44 => "00111100110000011000110101101001", 
    45 => "00111101011001110111001011010110", 
    46 => "00111101110000100101011000110110", 
    47 => "00111011001011000111110110100010", 
    48 => "10111101100101110011001110101001", 
    49 => "10111101010100001001000001110001", 
    50 => "00111100001001000011111111100110", 
    51 => "00111101100000100000011100001100" );


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

entity L2_up_L1_WEIGHTS_9 is
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

architecture arch of L2_up_L1_WEIGHTS_9 is
    component L2_up_L1_WEIGHTS_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_9_rom_U :  component L2_up_L1_WEIGHTS_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


