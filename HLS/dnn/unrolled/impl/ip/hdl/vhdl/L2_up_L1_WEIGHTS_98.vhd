-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_98_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_98_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101101001011110100000001100", 
    1 => "10111110000000011000010011000010", 
    2 => "00111101100000001010000011110101", 
    3 => "10111011001111100101000100001001", 
    4 => "00111101110001010001111111000101", 
    5 => "10111100100001000011111001010011", 
    6 => "10111100000101110110011110010000", 
    7 => "00111101000100010001111000000000", 
    8 => "10111011001010010011011011000110", 
    9 => "00111110100011110010000011001001", 
    10 => "10111011111100100001011100001001", 
    11 => "00111101011010010000011110010110", 
    12 => "10111101100001100010101110101110", 
    13 => "00111110000001111000100011011011", 
    14 => "00111110010000111001110000001111", 
    15 => "10111101100100101101000100101000", 
    16 => "10111101001110000001011000100111", 
    17 => "10111101110001001010110011110011", 
    18 => "00111100101101001011101101011110", 
    19 => "00111100100100000010010101111101", 
    20 => "00111101011010110011000100111100", 
    21 => "00111011011010011010001011000110", 
    22 => "10111101101100001111100011000110", 
    23 => "00111110001011111010110010100011", 
    24 => "00111101001001011100100000010001", 
    25 => "00111011001000101011100111010100", 
    26 => "00111101100110000010011001100111", 
    27 => "00111101100011001111001110011001", 
    28 => "00111101001101010111100100101001", 
    29 => "10111101110001010011100111111100", 
    30 => "10111110001100001000100110100000", 
    31 => "10111010110000010001000110101110", 
    32 => "10111101101000101101101011011100", 
    33 => "10111100000101001100110010101011", 
    34 => "10111101110010110010010100101101", 
    35 => "10111101111100111000100100101111", 
    36 => "00111100110010010001110100010101", 
    37 => "00111101110000011011010111001000", 
    38 => "10111100111100101000010000010110", 
    39 => "00111101000010101010000100001110", 
    40 => "10111101101000010011111111010001", 
    41 => "10111101110101110110001101011110", 
    42 => "10111110001110111011111101010001", 
    43 => "00111110000011011010101110011111", 
    44 => "10111100100111101001011011000100", 
    45 => "10111101110000100101010000011110", 
    46 => "10111101010001110000100101110100", 
    47 => "00111100000000011111010100111000", 
    48 => "00111101111000100010101100111001", 
    49 => "00111101000011001000011110011000", 
    50 => "00111100010000010000010100011000", 
    51 => "10111011010100110000011010100011" );


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

entity L2_up_L1_WEIGHTS_98 is
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

architecture arch of L2_up_L1_WEIGHTS_98 is
    component L2_up_L1_WEIGHTS_98_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_98_rom_U :  component L2_up_L1_WEIGHTS_98_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


