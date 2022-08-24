-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_57_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_57_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100011100000001101110000110", 
    1 => "10111110000010000000000010101000", 
    2 => "10111101110101110000110011011101", 
    3 => "10111100111000001101101010100001", 
    4 => "10111100001110010101111001011011", 
    5 => "10111110000110101111111101101101", 
    6 => "00111001100001101011110111110101", 
    7 => "00111100101101010001110111101111", 
    8 => "00111101101110011011101010100001", 
    9 => "00111101100011010010100010001101", 
    10 => "00111101010101110101100011100010", 
    11 => "10111110000111000001000111100100", 
    12 => "10111101000101101001101000001011", 
    13 => "10111100100000110001111100000100", 
    14 => "10111101001000010011111101001011", 
    15 => "10111110000100111010001110101001", 
    16 => "10111100110010001010000101011010", 
    17 => "00111110010111101110100001001011", 
    18 => "00111101011010001010000111100000", 
    19 => "10111101011100000011110000001000", 
    20 => "00111011000011000011111100111110", 
    21 => "00111101101100000100111101101110", 
    22 => "10111101111100110100011010011001", 
    23 => "00111110001111010001011011111101", 
    24 => "10111101101001111011000000101101", 
    25 => "00111100011111011001101110100010", 
    26 => "00111101001011100101110011010101", 
    27 => "00111101100101101110001101110001", 
    28 => "00111100101000000011100000011001", 
    29 => "00111110010011010100101101101010", 
    30 => "00111100000111101000100000010110", 
    31 => "00111100111010010100011010000000", 
    32 => "00111011000001001110100000110010", 
    33 => "10111100010111110101110011110010", 
    34 => "00111101100110001001100100111001", 
    35 => "10111110000100011000001011101101", 
    36 => "10111011001111100110000111010000", 
    37 => "00111011110010110010000011111011", 
    38 => "10111100100010000000110110000000", 
    39 => "10111101101011101100010010100100", 
    40 => "00111101110001010011010000110111", 
    41 => "10111100101000001110010000010001", 
    42 => "10111101100111010000000001110001", 
    43 => "00111101111110100000101001010010", 
    44 => "10111100111010000111110100101100", 
    45 => "10111100001101100001111111100010", 
    46 => "00111101001110000110111101001000", 
    47 => "00111101000000101001100111011001", 
    48 => "10111101110101001001011100110001", 
    49 => "00111100101000101101010100010111", 
    50 => "10111101101001101011011010011110", 
    51 => "00111101111011000110011000001010" );


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

entity L2_up_L1_WEIGHTS_57 is
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

architecture arch of L2_up_L1_WEIGHTS_57 is
    component L2_up_L1_WEIGHTS_57_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_57_rom_U :  component L2_up_L1_WEIGHTS_57_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


