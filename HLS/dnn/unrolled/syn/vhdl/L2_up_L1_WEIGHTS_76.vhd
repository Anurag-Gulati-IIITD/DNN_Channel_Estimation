-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_76_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_76_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010101111001101011110010", 
    1 => "00111110000100100101001110010111", 
    2 => "00111101001010000001000000011111", 
    3 => "10111101110100010000001000110110", 
    4 => "00111101111100110000011000011100", 
    5 => "00111110000001000101110001111001", 
    6 => "00111101111110110001101001101101", 
    7 => "00111101100111111100100001101101", 
    8 => "00111100100000010110101011001111", 
    9 => "00111100001100110100000111100001", 
    10 => "10111101000100111100111111110110", 
    11 => "00111101101110101111100011011111", 
    12 => "10111100000010111100100111001101", 
    13 => "10111100101010011001001100001100", 
    14 => "10111010110100000010010001110000", 
    15 => "10111110000011100000100100110101", 
    16 => "10111100110010100010010101010011", 
    17 => "10111101101111100100000101001110", 
    18 => "10111101000000000101001111100011", 
    19 => "10111100010011110001110000110010", 
    20 => "00111100100110011000010010100001", 
    21 => "10111101100111000111011010001110", 
    22 => "10111101111111111101100000100111", 
    23 => "10111101111001010000100000101101", 
    24 => "00111101001001001110110111110110", 
    25 => "00111101001000111100011101010000", 
    26 => "00111110000110011000010111110000", 
    27 => "10111110000110101110110001001010", 
    28 => "00111011011001101110001000100010", 
    29 => "10111101011111110100001101000010", 
    30 => "00111100110110010011110001000111", 
    31 => "00111100111101110010000011001001", 
    32 => "10111101100010011011111100010110", 
    33 => "10111100110100000101111100101001", 
    34 => "00111110001000101110011110110100", 
    35 => "00111101110100010010000110101011", 
    36 => "10111100100111101010101110111101", 
    37 => "00111100101000000001001001011010", 
    38 => "00111110000110000111111001111100", 
    39 => "00111100101100111101000001111101", 
    40 => "10111101101001000111001101000111", 
    41 => "10111100110010111110111010000000", 
    42 => "10111110001101010110100000011111", 
    43 => "00111101101101010110011101010101", 
    44 => "10111101101100100000011011001000", 
    45 => "00111101010011010111100111010001", 
    46 => "00111110000010001011010110001001", 
    47 => "00111100100111011110010010000010", 
    48 => "00111100111011110101011001100101", 
    49 => "10111101101101111101000111111110", 
    50 => "10111101101111101010010101110010", 
    51 => "00111100100101111100110000111010" );


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

entity L2_up_L1_WEIGHTS_76 is
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

architecture arch of L2_up_L1_WEIGHTS_76 is
    component L2_up_L1_WEIGHTS_76_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_76_rom_U :  component L2_up_L1_WEIGHTS_76_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


