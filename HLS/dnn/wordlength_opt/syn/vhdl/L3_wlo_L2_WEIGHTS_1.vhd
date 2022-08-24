-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTS_1_rom is 
    generic(
             DWIDTH     : integer := 16; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 104
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L3_wlo_L2_WEIGHTS_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110101001101", 1 => "0010100010011110", 2 => "0010111111010100", 
    3 => "0010111011100111", 4 => "0010100100011110", 5 => "1010101001001001", 
    6 => "1010111010111010", 7 => "1010110111011010", 8 => "1010010001101101", 
    9 => "0010101010110000", 10 => "0010110101111010", 11 => "0010101001011000", 
    12 => "1010000001100110", 13 => "1010110011010010", 14 => "1010110110100000", 
    15 => "1010100011111111", 16 => "0010011011101111", 17 => "0010111010000101", 
    18 => "0010111010000011", 19 => "0010010111000000", 20 => "1010110001000001", 
    21 => "1011000010001001", 22 => "1010111100111000", 23 => "1010000111111100", 
    24 => "0010111011110001", 25 => "0011000011000110", 26 => "1010100110011100", 
    27 => "1010111010010100", 28 => "1010111000000100", 29 => "1001110011100110", 
    30 => "0010110100100011", 31 => "0010110010000111", 32 => "0010010010011001", 
    33 => "1010101000111011", 34 => "1010110001000001", 35 => "1010001010000010", 
    36 => "0010011110100110", 37 => "0010101011100101", 38 => "0010100110111101", 
    39 => "1001110111110100", 40 => "1010100101001110", 41 => "1010100001111001", 
    42 => "1010010110110100", 43 => "0010010100101010", 44 => "0010011101111111", 
    45 => "0010011000110100", 46 => "1010010010110001", 47 => "1010101000000110", 
    48 => "1010010110010110", 49 => "0010010001101100", 50 => "0010101011111111", 
    51 => "0010101011111110", 52 => "0010111110111010", 53 => "0011000001000100", 
    54 => "0010101100010001", 55 => "1010100011100110", 56 => "1010111100000010", 
    57 => "1010111010100100", 58 => "1010100010110110", 59 => "0010100111110001", 
    60 => "0010111001010111", 61 => "0010101110111011", 62 => "0001110001010001", 
    63 => "1010101010101101", 64 => "1010110100011101", 65 => "1010101100100111", 
    66 => "0010010000001011", 67 => "0010110101001100", 68 => "0010110111011101", 
    69 => "0010101000001101", 70 => "1010101001100100", 71 => "1010111100110010", 
    72 => "1010111010111001", 73 => "1010000101010001", 74 => "0010110111001111", 
    75 => "0011000001011011", 76 => "0010110111110010", 77 => "1010011100100011", 
    78 => "1010111110000101", 79 => "1010101000010011", 80 => "0010101100101001", 
    81 => "0010110111001001", 82 => "0010101001101110", 83 => "1010001001110000", 
    84 => "1010110000110000", 85 => "1010101100100101", 86 => "0010001000100010", 
    87 => "0010110001011000", 88 => "0010101010010000", 89 => "1001110111000011", 
    90 => "1010100101101011", 91 => "1010101101011011", 92 => "1010010001001001", 
    93 => "0010000010111011", 94 => "0010100110100110", 95 => "0010011011001000", 
    96 => "0010000000000001", 97 => "1010100110000101", 98 => "1010010101001101", 
    99 => "0010001011010101", 100 => "0010100001100010", 101 => "0010100111111010", 
    102 => "0010011100000010", 103 => "1010011010111010" );


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

entity L3_wlo_L2_WEIGHTS_1 is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_L2_WEIGHTS_1 is
    component L3_wlo_L2_WEIGHTS_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTS_1_rom_U :  component L3_wlo_L2_WEIGHTS_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

