-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_87_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_87_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000110000000010011011010", 
    1 => "00111110000101111011000111000000", 
    2 => "00111101111110110010000000110010", 
    3 => "10111101110110101011001100100101", 
    4 => "00111101100110001001111110000100", 
    5 => "00111110000100100111100111011101", 
    6 => "00111100101001100010110010111010", 
    7 => "10111101000011001010110001001011", 
    8 => "10111110001100100100000011111011", 
    9 => "10111110000001010100010111001000", 
    10 => "00111100010010011101010110100010", 
    11 => "10111100011101001110100001110101", 
    12 => "10111101010011001010101000110010", 
    13 => "00111101001101110010000111010101", 
    14 => "10111101001001100010010101100011", 
    15 => "10111110010100110000101010010001", 
    16 => "10111100111001111100100011010010", 
    17 => "10111101101100101110010110011011", 
    18 => "10111100111111100110000011000100", 
    19 => "00111100100000010001101100011110", 
    20 => "00111011100110111011011010101010", 
    21 => "10111011010000011101101100000001", 
    22 => "00111100100000011001000010001110", 
    23 => "10111110000011101010101110111101", 
    24 => "00111101010001011110101000100101", 
    25 => "10111101000000100101011010111101", 
    26 => "00111110001101100101111101010010", 
    27 => "00111101000001111000101001101110", 
    28 => "00111101101000100100100110100001", 
    29 => "10111110000110010110111100100010", 
    30 => "10111100010110001011101001000001", 
    31 => "00111101101111011100000101100001", 
    32 => "10111101001011100010000100010000", 
    33 => "10111110000001110101101100111110", 
    34 => "10111011111110110011001100010010", 
    35 => "10111101001011001101110000000001", 
    36 => "00111100010111110110100110001000", 
    37 => "10111101100101110001011111011111", 
    38 => "10111100111011000011011101100001", 
    39 => "10111101100110010100110000000001", 
    40 => "10111101111001001011011001100011", 
    41 => "10111101011111101110000010110001", 
    42 => "00111110001000001111000011101001", 
    43 => "00111110100000011010111010010010", 
    44 => "10111101011001101001001101111101", 
    45 => "00111100100010010110111111101011", 
    46 => "00111101111001100110001101000001", 
    47 => "00111101100010011000101110110101", 
    48 => "00111101100100011001011100011100", 
    49 => "00111100011010100101111110000101", 
    50 => "00111110000111101110110101000110", 
    51 => "00111100001000111000011101011001" );


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

entity L2_up_L1_WEIGHTS_87 is
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

architecture arch of L2_up_L1_WEIGHTS_87 is
    component L2_up_L1_WEIGHTS_87_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_87_rom_U :  component L2_up_L1_WEIGHTS_87_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


