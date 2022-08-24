-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_89_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_89_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101101110000001101001011000", 
    1 => "00111100101111010000101111111010", 
    2 => "10111101111111100111111010100110", 
    3 => "00111101010000000111010101110001", 
    4 => "10111110000011111000000011011100", 
    5 => "00111101100001101111111011111000", 
    6 => "00111101100011101001110011001011", 
    7 => "10111101101111100000000101011000", 
    8 => "00111110010000011111011011001011", 
    9 => "00111101111101101111000110011001", 
    10 => "10111110010111010100101011100100", 
    11 => "10111101111101010001000111100000", 
    12 => "00111101110010110011110101001011", 
    13 => "00111100110010010101100111100110", 
    14 => "10111101100010110010101111111110", 
    15 => "10111100110001000010111010011001", 
    16 => "10111101101100110010000101100000", 
    17 => "00111101100111001000100111110100", 
    18 => "10111101001100001110000110110101", 
    19 => "10111100111100100110110100000101", 
    20 => "10111101001000110101100100110110", 
    21 => "00111101110000111111011110001100", 
    22 => "00111101100011000000110011101001", 
    23 => "00111101100000011111101110000011", 
    24 => "10111101010101111001011011000000", 
    25 => "10111100100010000001001111001011", 
    26 => "00111101011110111011001011111111", 
    27 => "00111100110001101100011101100101", 
    28 => "10111101010111001000100101101110", 
    29 => "10111101100111100100111001101010", 
    30 => "00111110001100100100010001100011", 
    31 => "10111110000011111101011110100001", 
    32 => "00111110000010000010000100101001", 
    33 => "00111100101100011111111011101011", 
    34 => "10111101100011001101010010101010", 
    35 => "10111100100110000111111001111100", 
    36 => "00111101101100001101111010001111", 
    37 => "00111101111001100010001111010001", 
    38 => "00111101100110001100010010111101", 
    39 => "00111101111011000011100011110011", 
    40 => "00111101101000001001001011001101", 
    41 => "00111110000001110001010000110100", 
    42 => "10111100101100110010111100000001", 
    43 => "10111100100110110110110101000100", 
    44 => "00111100000001110010101100000010", 
    45 => "10111101001000100101110010000001", 
    46 => "10111011101100001110000110110101", 
    47 => "10111100100101011010001010010100", 
    48 => "00111100110110001110110010010110", 
    49 => "00111110000011110111011001100000", 
    50 => "10111101110110011100000011101100", 
    51 => "10111101111101010010010111001100" );


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

entity L2_up_L1_WEIGHTS_89 is
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

architecture arch of L2_up_L1_WEIGHTS_89 is
    component L2_up_L1_WEIGHTS_89_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_89_rom_U :  component L2_up_L1_WEIGHTS_89_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


