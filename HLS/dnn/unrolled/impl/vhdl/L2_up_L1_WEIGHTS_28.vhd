-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_28_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_28_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101011110110100001111011001", 
    1 => "10111101101110111000101110101100", 
    2 => "10111101010111101101011111000111", 
    3 => "00111101101011001010001111101000", 
    4 => "10111101001101010000110100101000", 
    5 => "10111101101110000101111010000001", 
    6 => "10111101101001011110000010110101", 
    7 => "10111101110010000010000101101100", 
    8 => "10111101101111110001111000001000", 
    9 => "10111101011100010110100011111001", 
    10 => "10111101101011110110101001010001", 
    11 => "10111110000101101110010011000001", 
    12 => "10111101101010100111100110111100", 
    13 => "10111101000000100111100001001011", 
    14 => "00111101101111010000101011101110", 
    15 => "00111101101110110110010001011010", 
    16 => "10111101011001100111011000100001", 
    17 => "00111101100010001000000001010010", 
    18 => "00111100000111101000110001001000", 
    19 => "10111101001111111100101110010010", 
    20 => "10111101110000100111101001100011", 
    21 => "00111101010001000000010110110100", 
    22 => "10111101011100000011011111010110", 
    23 => "00111110000110110000001110011111", 
    24 => "10111100101001000011010101101001", 
    25 => "10111101010101110011111010101011", 
    26 => "00111101111101100101111001000110", 
    27 => "00111110010001101010010110010100", 
    28 => "10111101101101100001100110011000", 
    29 => "00111101000110111110010011001101", 
    30 => "10111101110101010110011001001001", 
    31 => "00111101000110011011010111101001", 
    32 => "00111101100001011001110100010011", 
    33 => "00111101110000100011010100101111", 
    34 => "10111101111100110001010111010111", 
    35 => "10111101111001110100011011001100", 
    36 => "00111101110000010011001111000010", 
    37 => "10111011111010110101111101011111", 
    38 => "10111110000010100110001001100111", 
    39 => "10111110000011010100101001011110", 
    40 => "00111100110110010000011111011001", 
    41 => "00111101000010011110101010011010", 
    42 => "00111101011111111101100000100111", 
    43 => "10111110001011101101100000001010", 
    44 => "10111101001111111110000010001011", 
    45 => "10111100000001101011000101100000", 
    46 => "10111101010001100110001111000111", 
    47 => "10111101001000001011101100101100", 
    48 => "00111100001010110001100100011110", 
    49 => "00111100110000001111010001010001", 
    50 => "00111101111110101011111110111010", 
    51 => "00111101100111000011110001011100" );


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

entity L2_up_L1_WEIGHTS_28 is
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

architecture arch of L2_up_L1_WEIGHTS_28 is
    component L2_up_L1_WEIGHTS_28_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_28_rom_U :  component L2_up_L1_WEIGHTS_28_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


