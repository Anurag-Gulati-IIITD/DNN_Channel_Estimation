-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_38_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_38_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000011010000111111101001", 
    1 => "00111110001110000111101001001010", 
    2 => "00111100001111101100001001001000", 
    3 => "10111100101100010001000111110001", 
    4 => "10111101110011000000101101010110", 
    5 => "00111101001110010100100101100010", 
    6 => "00111100100011010100101110101101", 
    7 => "10111100110101100000100001001010", 
    8 => "00111101100010110000110100001111", 
    9 => "10111101000000111011100100101000", 
    10 => "10111101101000011010001111110100", 
    11 => "10111101110101110010001011100010", 
    12 => "00111101000011100000110110101010", 
    13 => "00111101011110011000101101110010", 
    14 => "10111110000011111000101010001111", 
    15 => "10111110000011011010110110111000", 
    16 => "10111101010010110000011011000100", 
    17 => "10111100110000111001010110000001", 
    18 => "10111101000001011110011011111111", 
    19 => "10111101100001111100110100000011", 
    20 => "10111101110100000010101111000111", 
    21 => "10111101100011000100111001110010", 
    22 => "00111101111111111100100011110011", 
    23 => "10111110000010100001111100001000", 
    24 => "00111100101110110101100111011110", 
    25 => "10111101011010101110100111101110", 
    26 => "00111101111100110101110100100101", 
    27 => "10111100101100001100010001011001", 
    28 => "10111101100010000010010110011110", 
    29 => "10111101101010001010100110111101", 
    30 => "00111101110010110110011000110000", 
    31 => "10111100100110010000010010110100", 
    32 => "00111011110001010010101001000001", 
    33 => "00111101100110101100100000011101", 
    34 => "10111101110011001011010110111011", 
    35 => "00111101101111000010001100110001", 
    36 => "10111011101010110100111110100101", 
    37 => "00111110001110111001011000101001", 
    38 => "10111100101011111101100101110111", 
    39 => "00111110000100011001000001001011", 
    40 => "10111100101011010000111001010110", 
    41 => "10111100001000100010101100111001", 
    42 => "10111101000011001010001011011011", 
    43 => "00111110001101110100100100101000", 
    44 => "10111100010000100001100111101011", 
    45 => "10111101101110111001100001000010", 
    46 => "10111100101111011010010100010010", 
    47 => "10111101000110111111001001101111", 
    48 => "10111101100001000000100101011111", 
    49 => "00111101110100110001011101101010", 
    50 => "10111101111001110010000100001100", 
    51 => "10111100100000101100010011010110" );


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

entity L2_up_L1_WEIGHTS_38 is
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

architecture arch of L2_up_L1_WEIGHTS_38 is
    component L2_up_L1_WEIGHTS_38_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_38_rom_U :  component L2_up_L1_WEIGHTS_38_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


