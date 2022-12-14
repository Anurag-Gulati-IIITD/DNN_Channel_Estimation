-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTS_8_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTS_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100010001110", 1 => "0010111000000111", 2 => "0010110000101111", 
    3 => "1010100000101100", 4 => "1010111000110100", 5 => "1010110101000100", 
    6 => "1010000010001010", 7 => "0010110011110111", 8 => "0010111001001100", 
    9 => "0010010100111010", 10 => "1010101101111000", 11 => "1010110110111000", 
    12 => "1010100110000111", 13 => "0010100110111110", 14 => "0010110000101010", 
    15 => "0010100100000000", 16 => "1010100100011110", 17 => "1010101011011111", 
    18 => "1010001010010101", 19 => "0010011001101011", 20 => "0010110011011000", 
    21 => "0010010010011001", 22 => "1010101011011100", 23 => "1010110011111101", 
    24 => "1010100010100100", 25 => "0010101001010101", 26 => "0010110001101100", 
    27 => "0001100000011001", 28 => "1010110011101011", 29 => "1010110011110110", 
    30 => "1010100001000110", 31 => "0010100100010100", 32 => "0010111000000001", 
    33 => "0010110010100101", 34 => "1001010000111111", 35 => "1010101101001000", 
    36 => "1010110111011001", 37 => "1010101010010000", 38 => "0010100111110011", 
    39 => "0010110111110000", 40 => "0010110100101001", 41 => "0010000011001010", 
    42 => "1010110100010100", 43 => "1010111000100001", 44 => "1010100001111110", 
    45 => "0010101010000000", 46 => "0010110101111111", 47 => "0010101000000100", 
    48 => "1010010011011110", 49 => "1010101011000110", 50 => "1010100011100111", 
    51 => "0001111011010011", 52 => "0010110111100000", 53 => "0010011001111011", 
    54 => "1010110011010100", 55 => "1010111010000111", 56 => "1010100000011111", 
    57 => "0010101100110010", 58 => "0010111010100001", 59 => "0010101100010010", 
    60 => "1010011011110011", 61 => "1010111001101000", 62 => "1010110000011110", 
    63 => "0010010101101110", 64 => "0010110010111110", 65 => "0010101110011101", 
    66 => "1010000000111010", 67 => "1010101001110101", 68 => "1010101010010110", 
    69 => "0010001110011110", 70 => "0010101001011001", 71 => "0010101010100111", 
    72 => "1010000100010111", 73 => "1010101101010100", 74 => "1010101100011010", 
    75 => "1001101100010001", 76 => "0010110011110001", 77 => "0010110100001100", 
    78 => "1010101011111100", 79 => "1010111010101011", 80 => "1010101101011010", 
    81 => "0010010001011010", 82 => "0010110100001111", 83 => "0010111000001110", 
    84 => "0010100000110101", 85 => "1010110000011101", 86 => "1010110110110001", 
    87 => "1010101101100100", 88 => "0010001101101110", 89 => "0010101110110001", 
    90 => "0010110110111111", 91 => "0010010100011101", 92 => "1010101011101110", 
    93 => "1010111001110111", 94 => "1010101011111111", 95 => "0010001011010101", 
    96 => "0010110110100110", 97 => "0010110000000010", 98 => "0010000001010011", 
    99 => "1010101000001011", 100 => "1010110010010110", 101 => "1010010011100001", 
    102 => "0010100110011100", 103 => "0010101011111000" );


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

entity L3_wlo_L2_WEIGHTS_8 is
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

architecture arch of L3_wlo_L2_WEIGHTS_8 is
    component L3_wlo_L2_WEIGHTS_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTS_8_rom_U :  component L3_wlo_L2_WEIGHTS_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


