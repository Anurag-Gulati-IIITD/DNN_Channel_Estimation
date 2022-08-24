-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_up_L1_WEIGHTS_fYi_rom is 
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


architecture rtl of L2_up_L1_WEIGHTS_fYi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101011110001000110110110000", 
    1 => "00111100101000000010101110000100", 
    2 => "10111101110100011111101000110011", 
    3 => "00111100010001000000100011011001", 
    4 => "10111101110101101001110110110110", 
    5 => "10111100101001000111000000100010", 
    6 => "00111100111001010011101010000010", 
    7 => "10111101001101011010001100011010", 
    8 => "10111101110011000011011001010100", 
    9 => "10111110010001001100011001100001", 
    10 => "00111100111110100000001011111011", 
    11 => "10111110001011101111101010100100", 
    12 => "00111101101110001110000110010011", 
    13 => "10111110001010001010001000100011", 
    14 => "10111101111100000101111000011100", 
    15 => "00111110100000111111101101111010", 
    16 => "10111101101100110000011110101111", 
    17 => "00111110000100101110001010111001", 
    18 => "00111101011111011110101101010011", 
    19 => "10111101111101001100100100000000", 
    20 => "10111110001111010101010110100100", 
    21 => "00111101010001101011011010011110", 
    22 => "00111101010000000100010000101000", 
    23 => "10111101111111111111101000111100", 
    24 => "10111110001101000010011001111000", 
    25 => "10111101000110110010100000001111", 
    26 => "00111110000000011110101000110110", 
    27 => "00111100111101000011111010010110", 
    28 => "10111011001010110100111110100101", 
    29 => "00111101110001100100010011011000", 
    30 => "00111101110100101100101111101010", 
    31 => "10111110000111110011011011110000", 
    32 => "00111110000100110010110011101001", 
    33 => "00111101110101110011010100111011", 
    34 => "00111101110111010001101000100010", 
    35 => "10111110000011010101111111011101", 
    36 => "10111100001000100101000011111000", 
    37 => "00111011111100100100000011111011", 
    38 => "10111101100010000010111000000010", 
    39 => "00111110011110111000011010110001", 
    40 => "00111101010101001110010111010110", 
    41 => "00111101111100001010110011000001", 
    42 => "00111110011011110110110101110110", 
    43 => "10111110010010010010001111100110", 
    44 => "00111100100111011010100111001010", 
    45 => "10111011011110000001111010001010", 
    46 => "00111100101100101001001111010001", 
    47 => "00111010110010111111001010110010", 
    48 => "10111100100001001010101101100000", 
    49 => "10111101010010110010111110101001", 
    50 => "00111101001110100110010110001100", 
    51 => "10111110000011111111011111100000" );


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

entity L2_up_L1_WEIGHTS_fYi is
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

architecture arch of L2_up_L1_WEIGHTS_fYi is
    component L2_up_L1_WEIGHTS_fYi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_up_L1_WEIGHTS_fYi_rom_U :  component L2_up_L1_WEIGHTS_fYi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


