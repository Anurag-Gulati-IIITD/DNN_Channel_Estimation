-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_u_L1_BIAS_rom is 
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


architecture rtl of DNN_u_L1_BIAS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100000111110110110010110", 
    1 => "00111100001100110111110010011010", 
    2 => "10111110110110101010100110110101", 
    3 => "10111111001011001011110100010010", 
    4 => "10111011010001111110001010000010", 
    5 => "10111110101101011011101111100000", 
    6 => "10111100100100000110101010110001", 
    7 => "00111101001101110110110101010101", 
    8 => "10111100001110111111100101000000", 
    9 => "10111100001011100101101111001000", 
    10 => "00111101100001000011101000100001", 
    11 => "00111111010100000010010001001111", 
    12 => "00111100100011101110100011010001", 
    13 => "00111111000011000110000001010111", 
    14 => "00111011110111010110000101110000", 
    15 => "10111101010110111111001101111100", 
    16 => "10111100110101100011001000111100", 
    17 => "10111110111101110001000110110110", 
    18 => "10111101111100000100101010110110", 
    19 => "10111110100001001000101010011100", 
    20 => "10111110101001000101100011101111", 
    21 => "10111110110110111111100101100010", 
    22 => "10111101001110100110101111010111", 
    23 => "10111100001100011010101100001000", 
    24 => "10111110011000010110101101010101", 
    25 => "10111101100100011011001111110010", 
    26 => "00111101111010001101111000101011", 
    27 => "10111100000000111000011111011111", 
    28 => "10111110100110000100010001101011", 
    29 => "00111110100111000100100010101110", 
    30 => "10111011110110011101011101110111", 
    31 => "10111100101001110101011010000110", 
    32 => "10111011000111100000000111011110", 
    33 => "10111110101000111011000011000100", 
    34 => "10111101000000111101110111011011", 
    35 => "00111110111010011001011100011100", 
    36 => "10111110010101100000101100101101", 
    37 => "10111101100000111110101101111101", 
    38 => "00111011111101111110110000110101", 
    39 => "00111100110101100110000001011111", 
    40 => "10111110100000100111000010110000", 
    41 => "00111011110000000001011000000101", 
    42 => "00111100001100011001101001000001", 
    43 => "00111101011001000100001100001011", 
    44 => "10111110001100010011011110110000", 
    45 => "00111101000000100011010000100010", 
    46 => "10111111001010101111110100000000", 
    47 => "10111110110110100100010011001000", 
    48 => "10111101000000100111101101110000", 
    49 => "00111101000100010100100011111110", 
    50 => "00111100001101101001110110110110", 
    51 => "10111100101111010010100101010110" );


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

entity DNN_u_L1_BIAS is
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

architecture arch of DNN_u_L1_BIAS is
    component DNN_u_L1_BIAS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    DNN_u_L1_BIAS_rom_U :  component DNN_u_L1_BIAS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


