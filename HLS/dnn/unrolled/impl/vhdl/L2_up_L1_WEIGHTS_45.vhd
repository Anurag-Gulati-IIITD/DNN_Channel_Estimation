-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_45_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_45_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100111101101001011001011111", 
    1 => "00111101111000100011010000100010", 
    2 => "00111101100000010111110010100010", 
    3 => "00111101100111011000111110010011", 
    4 => "10111110100000111010100011100111", 
    5 => "10111101011001111010011101000100", 
    6 => "10111101110100000011111000100001", 
    7 => "10111101111111101011000011111011", 
    8 => "00111110000111000000000011011010", 
    9 => "10111110000100111001010100111110", 
    10 => "10111101111011010011110011111111", 
    11 => "00111100111001100110000000011100", 
    12 => "10111101001100010100000000010100", 
    13 => "10111101100000000001011010001011", 
    14 => "10111101110100111100110001001011", 
    15 => "10111101010001100011011010110001", 
    16 => "10111101011111011100010010000111", 
    17 => "10111100101011110001110010111001", 
    18 => "00111101010011000000011010011110", 
    19 => "00111011000110010110101101110110", 
    20 => "00111101100010011100011101111010", 
    21 => "10111100110001101101001111111010", 
    22 => "00111100101000000011000111001111", 
    23 => "10111101011110110101000001101110", 
    24 => "10111101010000100011101101111001", 
    25 => "10111100011011110000011010110011", 
    26 => "10111110000100111011110010010000", 
    27 => "10111100000100111101100101100110", 
    28 => "10111101101010100111000011010010", 
    29 => "10111100100111001000010000110000", 
    30 => "00111101101100001110010101100000", 
    31 => "00111100111111111010101000000100", 
    32 => "00111110000011111000010010001000", 
    33 => "00111101111000110000010001000111", 
    34 => "10111101001001110111011100001000", 
    35 => "00111101111010000100000101101000", 
    36 => "00111100111000000110110110010100", 
    37 => "00111101100101101110110001011011", 
    38 => "00111101000100010101011110101100", 
    39 => "10111101100111101001110000000010", 
    40 => "00111101011111010000010010100011", 
    41 => "00111110001100001001001100010000", 
    42 => "00111110001000000011011001000100", 
    43 => "10111100001110111001000001100100", 
    44 => "00111010111111110011001001111011", 
    45 => "00111100111111001100000110000111", 
    46 => "10111101111100001101001100000111", 
    47 => "00111100011010000000101111101101", 
    48 => "10111101001111010011111001001111", 
    49 => "10111011100000011001000010001110", 
    50 => "10111101001011101101110111001110", 
    51 => "00111101100000000011100000011001" );


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

entity L2_up_L1_WEIGHTS_45 is
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

architecture arch of L2_up_L1_WEIGHTS_45 is
    component L2_up_L1_WEIGHTS_45_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_45_rom_U :  component L2_up_L1_WEIGHTS_45_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


