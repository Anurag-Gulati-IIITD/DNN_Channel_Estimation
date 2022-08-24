-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_53_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_53_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100000011101101111001010101", 
    1 => "00111110010100101101111010000111", 
    2 => "00111110100001010100011101111100", 
    3 => "10111110001010001111101001111011", 
    4 => "00111101010111001010110100010101", 
    5 => "00111101110101000100001011001000", 
    6 => "00111110000100010011010011001110", 
    7 => "00111100010101000100000100110101", 
    8 => "10111100101000110101111110000001", 
    9 => "10111101100111000100110100100011", 
    10 => "10111100101001011001001110100011", 
    11 => "00111110011001010101010011111100", 
    12 => "00111100111001011111000011110110", 
    13 => "10111110010000111010111010101011", 
    14 => "00111110000010011000010001011110", 
    15 => "00111101110011010001000101111011", 
    16 => "10111100110010000001010011010111", 
    17 => "10111110010110111110110000100101", 
    18 => "10111101011101000010001001000110", 
    19 => "10111100100000011011111010110010", 
    20 => "10111101000110111001111010001100", 
    21 => "10111101110011110001100110010011", 
    22 => "00111100111001010000111001111000", 
    23 => "10111110010101010110001101100111", 
    24 => "00111100111111101000100010011100", 
    25 => "10111101010101110101001010010111", 
    26 => "00111101111000111011111001100110", 
    27 => "00111110001011011101001000101000", 
    28 => "10111101111101110110011110010000", 
    29 => "10111110000001100011101011100010", 
    30 => "10111101110110111110111101001010", 
    31 => "10111101011110111000010011011100", 
    32 => "10111101001111101100010001100001", 
    33 => "10111010011110000100000000011000", 
    34 => "00111101111001110100011001000101", 
    35 => "00111110001000001111111011001110", 
    36 => "00111101010001010100000001000110", 
    37 => "10111101001110111100101100011101", 
    38 => "10111110001000000000110001010010", 
    39 => "00111101010110110101011000110010", 
    40 => "10111100101110100100010100001011", 
    41 => "10111101010100101100001110000111", 
    42 => "00111101111100001111001100000010", 
    43 => "10111101101001000011000100111000", 
    44 => "10111101100010100100101100010010", 
    45 => "10111110000001100110110101111010", 
    46 => "00111101111110100000111110010001", 
    47 => "10111101111000001000011111001010", 
    48 => "00111101010000010101110000100001", 
    49 => "10111101111111010100011010110010", 
    50 => "10111101101000011011010101000010", 
    51 => "10111101101000000011100000011001" );


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

entity L2_up_L1_WEIGHTS_53 is
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

architecture arch of L2_up_L1_WEIGHTS_53 is
    component L2_up_L1_WEIGHTS_53_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_53_rom_U :  component L2_up_L1_WEIGHTS_53_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


