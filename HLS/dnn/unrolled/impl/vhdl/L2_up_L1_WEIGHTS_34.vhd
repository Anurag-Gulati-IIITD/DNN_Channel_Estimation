-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_34_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_34_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010110010100000001111001", 
    1 => "10111110011100111001010110000001", 
    2 => "00111101011111101110100000001000", 
    3 => "00111101110011010110011101110111", 
    4 => "10111101001101101101100001101111", 
    5 => "10111101001010000001001000111000", 
    6 => "00111101110100000011100011100011", 
    7 => "00111101110010100001000111101101", 
    8 => "00111011100001110001000111011000", 
    9 => "10111011011111010001100110011100", 
    10 => "00111101111111010110100101001101", 
    11 => "00111011001001001100000111101100", 
    12 => "00111101010110100100100010110110", 
    13 => "10111101101010110100111010011000", 
    14 => "00111101001111001011001111100101", 
    15 => "00111110001101110001011001001100", 
    16 => "10111011111001001111101110011000", 
    17 => "10111011100100011000010111001111", 
    18 => "10111101010000011011000000000011", 
    19 => "00111101001011110111100011111111", 
    20 => "00111101100000010100101011010011", 
    21 => "10111100011101001100011011100111", 
    22 => "10111101010000000010001010011010", 
    23 => "00111110001101111010001100010010", 
    24 => "00111110000000001001101000100100", 
    25 => "10111010100011001110011100000100", 
    26 => "10111101111001000010111010011001", 
    27 => "10111011111101001011111010000011", 
    28 => "10111101000000110010000100011101", 
    29 => "00111101101000000001000111010011", 
    30 => "10111110001101011110111111101001", 
    31 => "00111101111001100010101010100010", 
    32 => "00111011100110010111001111011010", 
    33 => "00111101000111111000010111010111", 
    34 => "00111101010010100000010011010001", 
    35 => "00111110001001010111010100111010", 
    36 => "10111100101101011000001010011001", 
    37 => "10111101101111101110011011111011", 
    38 => "10111101111001011100111101101000", 
    39 => "10111101100111101000010101110111", 
    40 => "10111100101001000000110110010001", 
    41 => "00111101100000011000010001111111", 
    42 => "10111101010100000001111100110010", 
    43 => "10111110010111100011010110000011", 
    44 => "00111101000101011001010011110010", 
    45 => "10111100001000001000001110011001", 
    46 => "10111101110000111101000011000000", 
    47 => "00111101110101001110000100011110", 
    48 => "10111101110101000100011011111010", 
    49 => "10111101101100011010100001101001", 
    50 => "10111101010001001010010000001001", 
    51 => "00111101100100010000111001000101" );


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

entity L2_up_L1_WEIGHTS_34 is
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

architecture arch of L2_up_L1_WEIGHTS_34 is
    component L2_up_L1_WEIGHTS_34_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_34_rom_U :  component L2_up_L1_WEIGHTS_34_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


