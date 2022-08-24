-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_46_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_46_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110001101001110101110011", 
    1 => "10111101110110011111001010111011", 
    2 => "00111110000111001000111011101111", 
    3 => "00111100111011101001111111110001", 
    4 => "10111101011010001010001011101100", 
    5 => "10111101011111000101110011011101", 
    6 => "10111101011000100100110011000111", 
    7 => "10111101100010011111111000000000", 
    8 => "00111110000000111011000110001110", 
    9 => "10111101001111000010010000111110", 
    10 => "10111100111001100110000000011100", 
    11 => "00111101110111101100110011000100", 
    12 => "10111101100110110001000110000100", 
    13 => "10111110000110110111101001011111", 
    14 => "00111101101010011001011111000100", 
    15 => "10111101111110111111001001101111", 
    16 => "10111101011001010001000110011101", 
    17 => "10111101110010110000000100000000", 
    18 => "10111100100111110100110100111000", 
    19 => "00111100000011000100011110100001", 
    20 => "00111011011000011000001001100110", 
    21 => "10111101111000101010111001001011", 
    22 => "00111100101001000111100010000101", 
    23 => "00111101101011000100101001000001", 
    24 => "10111011100101011001010111111111", 
    25 => "00111100101110100010011110101111", 
    26 => "00111100011101101000011110110001", 
    27 => "00111101010010100010011101101011", 
    28 => "10111100111101101011110000011111", 
    29 => "10111100100000000010001110100111", 
    30 => "10111110001011001000010011111001", 
    31 => "00111101100111001100001000001101", 
    32 => "00111101111111110101000111110000", 
    33 => "00111101011001001111111111001001", 
    34 => "10111101101100111110001101011100", 
    35 => "00111110001100110010011100100100", 
    36 => "00111100110111001110010110110100", 
    37 => "00111101111100000110101010110001", 
    38 => "10111101010010011111101101100001", 
    39 => "10111101111011010011010010011100", 
    40 => "10111101101101010110010100111101", 
    41 => "00111101100001111111110000110011", 
    42 => "00111101010110101100010101111110", 
    43 => "00111101111111010100000111111010", 
    44 => "00111101101111110100110000101011", 
    45 => "00111101011010111011101110100101", 
    46 => "10111101001010100110111100111111", 
    47 => "10111100111101011100110100001100", 
    48 => "00111101001000011101100101101111", 
    49 => "00111101111111001011101010110110", 
    50 => "10111101001111110001100101010000", 
    51 => "00111110000111110011111001000111" );


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

entity L2_up_L1_WEIGHTS_46 is
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

architecture arch of L2_up_L1_WEIGHTS_46 is
    component L2_up_L1_WEIGHTS_46_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_46_rom_U :  component L2_up_L1_WEIGHTS_46_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


