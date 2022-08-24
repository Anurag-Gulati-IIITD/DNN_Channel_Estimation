-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_19_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_19_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100010101101010100111000101", 
    1 => "10111011000101101011101110011001", 
    2 => "10111101010111110000000010101100", 
    3 => "10111101000010100011000011011011", 
    4 => "00111101111011101100101001101000", 
    5 => "10111110010001110100011111011000", 
    6 => "00111101101111111010011001011001", 
    7 => "00111110010100011101001011100001", 
    8 => "00111101010100011100011111011110", 
    9 => "10111101011010001110100100101101", 
    10 => "10111110001101111111010101100010", 
    11 => "00111101100101100001110101000011", 
    12 => "10111100110000100011000011111101", 
    13 => "10111101110100111111011000111100", 
    14 => "00111100010000101011110101111111", 
    15 => "00111100000010001101001010100010", 
    16 => "00111100000001101000001100111100", 
    17 => "00111101100111110001101101101001", 
    18 => "00111011001010011100110111000100", 
    19 => "10111101101000101100000000011110", 
    20 => "10111100011001010111000100001001", 
    21 => "00111101101001000000110100001011", 
    22 => "10111101111100011001101101001110", 
    23 => "10111101110011000100111101111111", 
    24 => "00111010111000000010001000010100", 
    25 => "10111010100010011010000000100111", 
    26 => "00111101111110000000010001010011", 
    27 => "10111101111100000110001011010100", 
    28 => "10111011001000001111010011011000", 
    29 => "00111110000101010010001101110000", 
    30 => "00111101100001100001101011100111", 
    31 => "00111101000100010000101000010011", 
    32 => "10111101000101010000101110010101", 
    33 => "00111101100101001001000101101101", 
    34 => "00111100000000110111001011100111", 
    35 => "10111101100111010001000100111000", 
    36 => "00111011101000000001001001011010", 
    37 => "00111110011110101001101011000011", 
    38 => "00111101111000100110011011111101", 
    39 => "00111100000101101110110111101110", 
    40 => "10111011111100100011100010010111", 
    41 => "10111101100111100001101110001111", 
    42 => "00111100111101010010100101111000", 
    43 => "10111100101011001101110000000001", 
    44 => "00111101001000011011111000101011", 
    45 => "10111101010100001001000001110001", 
    46 => "00111100011110100001000110101001", 
    47 => "10111101011000000000001110101100", 
    48 => "00111101100111010111111011001100", 
    49 => "10111101000000001110001001111110", 
    50 => "10111101101001011010010101110110", 
    51 => "10111101001110101010011010001111" );


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

entity L2_up_L1_WEIGHTS_19 is
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

architecture arch of L2_up_L1_WEIGHTS_19 is
    component L2_up_L1_WEIGHTS_19_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_19_rom_U :  component L2_up_L1_WEIGHTS_19_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


