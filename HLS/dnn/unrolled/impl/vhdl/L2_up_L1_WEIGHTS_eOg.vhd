-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_eOg_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_eOg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001110000101101101011011", 
    1 => "00111101000000010011011101101101", 
    2 => "10111101110001000110101011100100", 
    3 => "00111100010111100101100011100110", 
    4 => "00111110000010001001110010100010", 
    5 => "00111101111111000000001100110110", 
    6 => "00111101110001011011100011011100", 
    7 => "00111011101101100100100111010100", 
    8 => "10111101010010011101110011111001", 
    9 => "00111100101110010101010111111000", 
    10 => "00111100101010010111010110110000", 
    11 => "10111110010000111101100100100011", 
    12 => "00111100110110010100101011110101", 
    13 => "00111110001100011101010000110000", 
    14 => "10111110010010010110011000111000", 
    15 => "00111110001000000111110101001110", 
    16 => "10111011100111111000110000100010", 
    17 => "00111101001101111100000100110111", 
    18 => "00111100110000000011101111000101", 
    19 => "10111101100010100001110011101111", 
    20 => "10111101110111110110101100011010", 
    21 => "00111101100110101101001000010011", 
    22 => "00111101100110011000010000011011", 
    23 => "10111101110000111100100111101111", 
    24 => "10111101011001011110111011011101", 
    25 => "10111100111000011001000100010101", 
    26 => "00111101110101100110111000000001", 
    27 => "10111100111110000010111101010001", 
    28 => "10111100001101000100101000011111", 
    29 => "10111101000000011000011000010010", 
    30 => "00111110001010010100001000001011", 
    31 => "10111101110110001110000000000001", 
    32 => "10111100101101001011101101011110", 
    33 => "10111100000110011111111001000011", 
    34 => "00111101101111111011101001000101", 
    35 => "00111100010111110100110000101011", 
    36 => "10111010001110001000110010100100", 
    37 => "00111101000000010011001000101111", 
    38 => "00111100001110111000001111001111", 
    39 => "00111110001101010100001111110010", 
    40 => "00111100101001101010000000010010", 
    41 => "00111011110010111010111110010110", 
    42 => "00111100101100110010110011101001", 
    43 => "10111110001101010000001101110101", 
    44 => "00111100000110100011110100101110", 
    45 => "10111101100010011101011110111010", 
    46 => "10111101100000010011110010101100", 
    47 => "10111101000110101000000101010110", 
    48 => "00111101011010010001010000101011", 
    49 => "10111110000000010110101101010101", 
    50 => "00111110000110001001110000011011", 
    51 => "10111101111011011000010011010011" );


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

entity L2_up_L1_WEIGHTS_eOg is
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

architecture arch of L2_up_L1_WEIGHTS_eOg is
    component L2_up_L1_WEIGHTS_eOg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_eOg_rom_U :  component L2_up_L1_WEIGHTS_eOg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


