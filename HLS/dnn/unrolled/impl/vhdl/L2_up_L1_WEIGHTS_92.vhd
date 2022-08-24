-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_92_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_92_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011001100011011000101010", 
    1 => "10111100001010110110110100000001", 
    2 => "10111101110110011001010101101000", 
    3 => "10111100101000101000001101001101", 
    4 => "00111101100100001100011101111110", 
    5 => "10111110000011101010101110111101", 
    6 => "00111011000110111000010001010101", 
    7 => "10111100001101010010100001101011", 
    8 => "10111101111001101000101110100000", 
    9 => "00111101110111011111100101111011", 
    10 => "00111101010111001100101101111101", 
    11 => "00111101111111101000000010111111", 
    12 => "00111011110111001000011101010101", 
    13 => "00111101011111000011000011010011", 
    14 => "00111101101110111010011101110110", 
    15 => "00111101010010001000101001001000", 
    16 => "00111101010100111110111001011111", 
    17 => "00111010101000100100010001100011", 
    18 => "10111101001111001100011111010010", 
    19 => "00111101010111011010100010111101", 
    20 => "00111101100011110110000001011011", 
    21 => "00111100100001010110111001101001", 
    22 => "10111101101110000010101100011111", 
    23 => "00111101110100001010010111110000", 
    24 => "00111011100111001100101101111101", 
    25 => "00111100111101001110001000101010", 
    26 => "10111110000100010000111010001000", 
    27 => "10111100101101101100010110001111", 
    28 => "00111100110100111111111000011001", 
    29 => "00111101101011111101110100100011", 
    30 => "10111101000101100110001001111000", 
    31 => "00111011101110100101101000000100", 
    32 => "00111101000101000010101100110000", 
    33 => "10111110010000001011110100000001", 
    34 => "00111101001010111010111000000100", 
    35 => "10111110100110000011101110000010", 
    36 => "10111101111100101110101101011111", 
    37 => "10111110001100010011101110011111", 
    38 => "00111101000101100001100100010001", 
    39 => "10111101110100100111000110111101", 
    40 => "00111101001011011011010000000011", 
    41 => "10111101111000100011100001010100", 
    42 => "00111100011001101111001011101001", 
    43 => "10111101100000100101101011101110", 
    44 => "00111101001011000000011000011000", 
    45 => "10111100111110100001101000001101", 
    46 => "10111101000111111000101000001001", 
    47 => "00111101111001010000001111111011", 
    48 => "10111100110010111010010100011010", 
    49 => "10111101010111001000010100111100", 
    50 => "00111101000010010010111011101000", 
    51 => "00111101011110101100101000110110" );


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

entity L2_up_L1_WEIGHTS_92 is
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

architecture arch of L2_up_L1_WEIGHTS_92 is
    component L2_up_L1_WEIGHTS_92_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_92_rom_U :  component L2_up_L1_WEIGHTS_92_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


