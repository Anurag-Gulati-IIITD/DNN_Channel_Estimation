-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_59_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_59_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100011101000010010101101", 
    1 => "00111100100000110000101000001011", 
    2 => "10111011100101101100001111111100", 
    3 => "10111101000111110100111101010001", 
    4 => "10111100100100110000101111100001", 
    5 => "00111101110011010100101010100001", 
    6 => "00111100111011011101111100000001", 
    7 => "10111101110101000110110010111001", 
    8 => "00111100111011001010101010111001", 
    9 => "00111101001101101101000000001011", 
    10 => "00111100011110100101010011000101", 
    11 => "00111101100110111100110100110110", 
    12 => "10111101100110010101101100110110", 
    13 => "00111101100111111001011100100100", 
    14 => "10111101110111011110101011001101", 
    15 => "10111100110100000010011010001001", 
    16 => "00111101100010011100010011011011", 
    17 => "00111100100110101110110101010111", 
    18 => "10111101001000100000110111011100", 
    19 => "00111101010011000001011101100101", 
    20 => "10111101001011001101000001111000", 
    21 => "10111101100010001011110110101001", 
    22 => "00111110000010010101111101100111", 
    23 => "10111101001000111010001110101001", 
    24 => "10111101001100111001111100110100", 
    25 => "10111100011110110011001100010010", 
    26 => "00111100100101111000011100000101", 
    27 => "00111101100011011101101011001111", 
    28 => "00111101110000011100101111001101", 
    29 => "10111101011100110011111111001000", 
    30 => "00111110000101101101110010100000", 
    31 => "00111101111000010000101011011101", 
    32 => "10111101100010001111100011101000", 
    33 => "10111101101011011001011100101101", 
    34 => "00111101001000101101100000111100", 
    35 => "10111101111010011000010111110000", 
    36 => "10111101101111011101101010001100", 
    37 => "00111011111001110101111111110110", 
    38 => "10111110001111001011100011100001", 
    39 => "10111101000110101101110110011100", 
    40 => "00111101010010000011000000011010", 
    41 => "10111101110001101111000001001010", 
    42 => "10111101010100100000000001111110", 
    43 => "10111101010110010111111001010110", 
    44 => "10111101100100010110101100010010", 
    45 => "00111101001111011010111010000010", 
    46 => "00111010100111011100111110001001", 
    47 => "10111100110111110100101000010010", 
    48 => "10111101011101110110100100100011", 
    49 => "10111101101010110110011111000011", 
    50 => "10111100110110001101000101010010", 
    51 => "00111101110001110001101000111011" );


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

entity L2_up_L1_WEIGHTS_59 is
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

architecture arch of L2_up_L1_WEIGHTS_59 is
    component L2_up_L1_WEIGHTS_59_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_59_rom_U :  component L2_up_L1_WEIGHTS_59_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


