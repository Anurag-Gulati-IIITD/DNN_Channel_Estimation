-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_69_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_69_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100001000011111111100110", 
    1 => "00111101100001010011111100111010", 
    2 => "10111110000101101011011101100111", 
    3 => "00111101101000100011010010101000", 
    4 => "00111101101011000000110011101001", 
    5 => "10111110100111100100111111011011", 
    6 => "10111101100011111011001100110001", 
    7 => "00111110001110011001111101011110", 
    8 => "00111100000001110100100001011110", 
    9 => "00111101100011001000011000000101", 
    10 => "10111101110101110111111110101110", 
    11 => "10111100111001100011101001011100", 
    12 => "10111101100010100110010111001111", 
    13 => "10111101110110000111101111011101", 
    14 => "00111011110001110000100001101000", 
    15 => "00111101100011100010001010100011", 
    16 => "00111011010011011010011011100111", 
    17 => "00111101100001100110101100011110", 
    18 => "00111101000000101000111001010000", 
    19 => "10111011101000011111000010000000", 
    20 => "10111101100101100111001010111001", 
    21 => "00111101001111110001110110000010", 
    22 => "10111101110011111011000100011000", 
    23 => "00111100000001110111011010000001", 
    24 => "10111110000100101111101001010001", 
    25 => "00111101011011001010101010111001", 
    26 => "00111101001110001101101101001001", 
    27 => "10111110100000101110001000110011", 
    28 => "10111101101011001110000010111001", 
    29 => "00111110000100111010001100100011", 
    30 => "00111101001000000011101100111111", 
    31 => "00111101100001100110111011001010", 
    32 => "10111100111101011001010001101100", 
    33 => "00111101010010010100011100000110", 
    34 => "10111101011000001110000011101011", 
    35 => "10111101100011101001010111111011", 
    36 => "10111001111111101100110111010001", 
    37 => "00111110000100010000010100011000", 
    38 => "00111110000101011001111100101100", 
    39 => "10111101010010000000111110011001", 
    40 => "00111101100110010001101100111111", 
    41 => "10111101100110101000101001000000", 
    42 => "00111101110010000110111100000101", 
    43 => "10111101110111000011000001001101", 
    44 => "00111101001101000001000110000000", 
    45 => "00111100110000000000001100100101", 
    46 => "10111011111000101111101111100011", 
    47 => "00111100001010000001100110001111", 
    48 => "10111011100101111111101001011101", 
    49 => "00111011111110101000101101001100", 
    50 => "00111100110011110001100000000001", 
    51 => "00111101010100100001111011100110" );


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

entity L2_up_L1_WEIGHTS_69 is
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

architecture arch of L2_up_L1_WEIGHTS_69 is
    component L2_up_L1_WEIGHTS_69_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_69_rom_U :  component L2_up_L1_WEIGHTS_69_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


