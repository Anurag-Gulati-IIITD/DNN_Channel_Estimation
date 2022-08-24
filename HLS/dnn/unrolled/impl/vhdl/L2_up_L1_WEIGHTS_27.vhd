-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_27_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_27_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011111110011110011110111", 
    1 => "10111110001101110111111100101000", 
    2 => "00111100101011111111011011010011", 
    3 => "00111011100100001010101110110100", 
    4 => "10111101011011000111001100100110", 
    5 => "00111101010000011101101100000001", 
    6 => "00111101011011100101111111111010", 
    7 => "00111100001111101000001101011110", 
    8 => "10111101101000101101111000000001", 
    9 => "10111101010100001011110110001000", 
    10 => "10111101110001000110010010011001", 
    11 => "10111110010010000110001011110110", 
    12 => "10111101100101000100110101000100", 
    13 => "00111101111111001001101111000111", 
    14 => "00111101011111100011111000101001", 
    15 => "00111110000111101111010010011101", 
    16 => "10111101101011110111010101010011", 
    17 => "00111100101011001111010100101100", 
    18 => "00111100111110111101010010001101", 
    19 => "10111101100011011011011110101110", 
    20 => "10111101111011100100011111011100", 
    21 => "10111101110110011001100010001101", 
    22 => "00111101000101010010100111111110", 
    23 => "00111110010001110011100111110011", 
    24 => "00111101011000111010010010110101", 
    25 => "10111100010000010101110100101101", 
    26 => "00111110001000001101101110101101", 
    27 => "10111101000001001101111111001110", 
    28 => "10111101011000001000011010111110", 
    29 => "10111101100010001011011101011111", 
    30 => "10111101110001101101101101010001", 
    31 => "10111101001000000010110110011101", 
    32 => "00111101001011100000100111111111", 
    33 => "00111101011011110010110110000000", 
    34 => "00111110000000100011001010010000", 
    35 => "10111100011100101000010000010110", 
    36 => "00111100100010111001110111000011", 
    37 => "00111110001100101111011111110101", 
    38 => "10111100101110011100111110011010", 
    39 => "10111101110011110100100111001111", 
    40 => "10111101001000011001011001010011", 
    41 => "00111101010000001011001101001110", 
    42 => "10111100111101100110000111110010", 
    43 => "10111110011000110101100110111100", 
    44 => "10111100101001011011111110101101", 
    45 => "10111101100111110111110011101110", 
    46 => "10111101100101100110010000001010", 
    47 => "10111001010111110101100011000001", 
    48 => "10111011100111101110010001011100", 
    49 => "10111101001001010010001001100100", 
    50 => "10111101011110100100010100001011", 
    51 => "00111101011011010001111100011101" );


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

entity L2_up_L1_WEIGHTS_27 is
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

architecture arch of L2_up_L1_WEIGHTS_27 is
    component L2_up_L1_WEIGHTS_27_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_27_rom_U :  component L2_up_L1_WEIGHTS_27_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


