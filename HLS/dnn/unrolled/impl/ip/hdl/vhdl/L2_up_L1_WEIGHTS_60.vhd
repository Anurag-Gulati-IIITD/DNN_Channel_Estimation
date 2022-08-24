-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_60_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_60_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111011101101001011011100101100", 
    1 => "00111110010011001001111001100111", 
    2 => "00111101101011101110111010010101", 
    3 => "10111101100011101000111110110000", 
    4 => "00111101100111011111000110011101", 
    5 => "00111110001101101100011100100010", 
    6 => "10111101000010010000011100010000", 
    7 => "10111101010011100010100011101101", 
    8 => "10111101101000010001011011101100", 
    9 => "00111011101000000010001100100001", 
    10 => "10111101011101011001010101111001", 
    11 => "00111101111111010010111110100001", 
    12 => "10111100001001101110001100101110", 
    13 => "00111110000000101101101100011111", 
    14 => "00111011000110100010010000000011", 
    15 => "00111101100010111110101011010101", 
    16 => "00111101001110001111111011101111", 
    17 => "10111101001111111101101101001101", 
    18 => "00111101001110101011011101010110", 
    19 => "00111101001111100111111100101100", 
    20 => "10111011001111000111101101000110", 
    21 => "10111100111000101111011110110001", 
    22 => "00111100101000110001000111101000", 
    23 => "10111110001110111101110010101101", 
    24 => "10111100100111010001101100101110", 
    25 => "00111100100010111011100100000110", 
    26 => "10111110000101001111100111000010", 
    27 => "00111100101111100000001101110001", 
    28 => "00111101101011110111001111000001", 
    29 => "10111101100111011011101010010001", 
    30 => "10111101000001110100011101010010", 
    31 => "00111101000011010100011101111100", 
    32 => "00111100110100111111110000000001", 
    33 => "10111101111000100011100111100111", 
    34 => "00111101010111101111100101010101", 
    35 => "10111101100100101000110001111010", 
    36 => "10111101100101011111010011100100", 
    37 => "00111110001000110000111111010000", 
    38 => "10111101001100101110010110011011", 
    39 => "10111101111001110001110011011010", 
    40 => "00111011101101010100010111001000", 
    41 => "10111101100101110110100010011101", 
    42 => "10111101011111010100000001101000", 
    43 => "10111101101111111100111100111110", 
    44 => "00111100101111001001111011101101", 
    45 => "10111101000000011100111101111000", 
    46 => "00111101000010000011101010010111", 
    47 => "10111100110000111101000000111001", 
    48 => "00111100001001111000001010010000", 
    49 => "00111101101010001111100011101000", 
    50 => "00111101111010110000010000100101", 
    51 => "00111101110000001101111011010011" );


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

entity L2_up_L1_WEIGHTS_60 is
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

architecture arch of L2_up_L1_WEIGHTS_60 is
    component L2_up_L1_WEIGHTS_60_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_60_rom_U :  component L2_up_L1_WEIGHTS_60_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


