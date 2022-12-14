-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTS_4_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTS_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101011111101", 1 => "0011000010111000", 2 => "0011000001111111", 
    3 => "0010110011010110", 4 => "1010100011000011", 5 => "1010110101111001", 
    6 => "1010111000101000", 7 => "1010011001100000", 8 => "0001110100010000", 
    9 => "1001111100100011", 10 => "1001111001110111", 11 => "0010100000000110", 
    12 => "0010101101110100", 13 => "0010111001000110", 14 => "0010011000111000", 
    15 => "1010100111010010", 16 => "1010111011110101", 17 => "1010111000101110", 
    18 => "0010000000100100", 19 => "0010110011110010", 20 => "0010111011001010", 
    21 => "0010100010101010", 22 => "1010100111100000", 23 => "1010100111110101", 
    24 => "1010010100100010", 25 => "0010010110000001", 26 => "1010001100101101", 
    27 => "1010100101101001", 28 => "1000000001110101", 29 => "0010110000110100", 
    30 => "0010101111101110", 31 => "0010010011010001", 32 => "1010101110111011", 
    33 => "1010110111011111", 34 => "1010101000110001", 35 => "0010100110010000", 
    36 => "0010111011110010", 37 => "0010101111001110", 38 => "1010010010001100", 
    39 => "1010110011100001", 40 => "1010100010000110", 41 => "0010100111000110", 
    42 => "0010110110101001", 43 => "0010001100000010", 44 => "1010110001111001", 
    45 => "1011000001110011", 46 => "1010110001100001", 47 => "0010110101000001", 
    48 => "0011000110100001", 49 => "0011000111111011", 50 => "0010100110011100", 
    51 => "1011000000000000", 52 => "0011001000010101", 53 => "0010110111100110", 
    54 => "1010100010000111", 55 => "1011000010001111", 56 => "1010111100110000", 
    57 => "1010101001011110", 58 => "0010100010111111", 59 => "0010101000100101", 
    60 => "0010011111010101", 61 => "0010011001110011", 62 => "0010100110101001", 
    63 => "0010101011011101", 64 => "0010010110011100", 65 => "1010011110111110", 
    66 => "1010111011110011", 67 => "1010110111011001", 68 => "1010010001101011", 
    69 => "0010110101100101", 70 => "0010111001101010", 71 => "0010110000100101", 
    72 => "1010011110001000", 73 => "1010111000110101", 74 => "1010110000001100", 
    75 => "1010000010000110", 76 => "0010100110010001", 77 => "0010100100011000", 
    78 => "1010011100010000", 79 => "0001010000001101", 80 => "0010100111101000", 
    81 => "0010100011000101", 82 => "1010100000001101", 83 => "1010110100011001", 
    84 => "1010101111110100", 85 => "0010000110101011", 86 => "0010111000100101", 
    87 => "0010110100110100", 88 => "0010010011001101", 89 => "1010110110010111", 
    90 => "1010110110111011", 91 => "1010010101011011", 92 => "0010101000010100", 
    93 => "0010101110110011", 94 => "1010001111010010", 95 => "1010111001011100", 
    96 => "1010110111010000", 97 => "0010011111101011", 98 => "0011000001000101", 
    99 => "0011000011010010", 100 => "0010101000011101", 101 => "1010111001010001", 
    102 => "1011001011100001", 103 => "1011000110010111" );


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

entity L3_wlo_L2_WEIGHTS_4 is
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

architecture arch of L3_wlo_L2_WEIGHTS_4 is
    component L3_wlo_L2_WEIGHTS_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTS_4_rom_U :  component L3_wlo_L2_WEIGHTS_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


