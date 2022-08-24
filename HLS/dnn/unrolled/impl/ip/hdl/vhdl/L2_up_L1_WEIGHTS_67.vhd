-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_67_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_67_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100110010110101101110110", 
    1 => "00111110000000100101100001001111", 
    2 => "00111101100010111111010101010001", 
    3 => "00111110001000101010011001101110", 
    4 => "10111101110101100000001000000000", 
    5 => "00111110001001101000010100010010", 
    6 => "10111100101000010000101111101001", 
    7 => "10111101101001101101101101010001", 
    8 => "10111110011011100010010001111001", 
    9 => "00111110001010110001100000010001", 
    10 => "10111101000100100100010010100110", 
    11 => "00111100100101111100111001010011", 
    12 => "10111101001110000111000101100001", 
    13 => "00111100111001110011011000000101", 
    14 => "10111101010011100010111000101100", 
    15 => "00111101110000001010010110101101", 
    16 => "00111100000100011000000110011101", 
    17 => "00111100110010100101010110001111", 
    18 => "10111101010100011100000110010100", 
    19 => "10111110000100111010101010111101", 
    20 => "10111101100100011011011110011110", 
    21 => "10111101100101000001000110000000", 
    22 => "00111101110101011101110011000110", 
    23 => "10111101000110101010110001010100", 
    24 => "10111101100000001111101110101001", 
    25 => "00111011110110100010001011110111", 
    26 => "00111101110111010101000000100010", 
    27 => "10111101100011110001011001101110", 
    28 => "10111101100110001001111001110111", 
    29 => "10111101101111011010001101111111", 
    30 => "00111100110110100111100011110010", 
    31 => "00111101100100110011010101001100", 
    32 => "00111110000010011111001001111000", 
    33 => "00111101100010100101100111000000", 
    34 => "10111101010100100010100101100011", 
    35 => "10111101000000101000000010101110", 
    36 => "00111101011011111000001001101111", 
    37 => "00111100101001001111110010100100", 
    38 => "00111101100111110010100100001011", 
    39 => "10111110000101001110010010000110", 
    40 => "00111100111010101011001101101000", 
    41 => "00111101100111000100010000111001", 
    42 => "10111101111100100111101100101101", 
    43 => "10111101010110001100011011010110", 
    44 => "10111101001100010000010001001111", 
    45 => "00111101101001101111001011101001", 
    46 => "10111101101111110000011001110000", 
    47 => "00111010100011000110000011001100", 
    48 => "10111101111101111100100100010101", 
    49 => "00111101110100000010100110101110", 
    50 => "00111101101110111000111011010010", 
    51 => "00111101100111111000000010011001" );


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

entity L2_up_L1_WEIGHTS_67 is
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

architecture arch of L2_up_L1_WEIGHTS_67 is
    component L2_up_L1_WEIGHTS_67_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_67_rom_U :  component L2_up_L1_WEIGHTS_67_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


