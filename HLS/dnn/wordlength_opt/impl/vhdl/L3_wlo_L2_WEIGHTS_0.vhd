-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTS_0_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTS_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001100101010011", 1 => "0001111110000010", 2 => "0001101011001011", 
    3 => "0001010100011100", 4 => "1001111011101000", 5 => "1001101111101011", 
    6 => "1010001001010100", 7 => "1001100001001011", 8 => "1001100101101111", 
    9 => "1000111100110001", 10 => "0001111000010101", 11 => "0010000101110010", 
    12 => "0001100000101001", 13 => "1001011000101011", 14 => "1010000001001001", 
    15 => "0001011000101010", 16 => "0001100001001100", 17 => "0001010100101100", 
    18 => "0001001100100111", 19 => "1010000101000000", 20 => "1001001000001100", 
    21 => "1001011010101111", 22 => "0001001000100001", 23 => "0010000101000100", 
    24 => "0001010010111110", 25 => "1001101000000010", 26 => "1010010011100001", 
    27 => "1001101011001110", 28 => "0001110010000101", 29 => "0010001010001111", 
    30 => "0010001001011000", 31 => "1000101100101101", 32 => "0001101110111101", 
    33 => "1000110110011010", 34 => "1001110010000100", 35 => "0001101010010111", 
    36 => "1001010011111010", 37 => "1001011101101011", 38 => "0001110111110011", 
    39 => "0001101111010110", 40 => "0001101011111100", 41 => "1001100000100111", 
    42 => "1010000000000110", 43 => "0001001010010110", 44 => "0010001011101001", 
    45 => "0010001000100100", 46 => "1001111011101001", 47 => "1010010011110101", 
    48 => "1010010100100001", 49 => "1001010011011101", 50 => "0010010110011111", 
    51 => "0010011000100100", 52 => "0010010011001101", 53 => "0001111010111010", 
    54 => "0001010001011111", 55 => "1010000011101001", 56 => "1001110110110101", 
    57 => "1001110011001111", 58 => "0001100001010110", 59 => "0001011011100010", 
    60 => "0010000000101111", 61 => "0001111101100001", 62 => "0010000110100010", 
    63 => "0001011011000001", 64 => "1001111000110000", 65 => "1001110100111000", 
    66 => "1001101111111111", 67 => "0001111011110101", 68 => "0001101010111110", 
    69 => "0001110011001010", 70 => "1001110110111000", 71 => "0000100001100100", 
    72 => "0001011100000111", 73 => "0010000110000111", 74 => "0001011001000010", 
    75 => "1001110111011100", 76 => "1010000110010100", 77 => "1010000010011001", 
    78 => "0001110011000000", 79 => "0001111100001011", 80 => "0001110110111110", 
    81 => "1001011010101000", 82 => "1001110011100111", 83 => "1001110111110100", 
    84 => "1001101001100000", 85 => "1001101010011000", 86 => "1000110100001100", 
    87 => "0000101011011001", 88 => "0001110100011010", 89 => "1010000001111000", 
    90 => "1001110000000101", 91 => "1000111111001000", 92 => "1001111101101010", 
    93 => "1010000000111100", 94 => "0001100101101110", 95 => "0001110110001001", 
    96 => "0001010010111100", 97 => "1010001000111011", 98 => "1010001011000111", 
    99 => "1001111111000010", 100 => "0010001100101100", 101 => "0010011110000111", 
    102 => "0010001100011010", 103 => "1010000000010011" );


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

entity L3_wlo_L2_WEIGHTS_0 is
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

architecture arch of L3_wlo_L2_WEIGHTS_0 is
    component L3_wlo_L2_WEIGHTS_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTS_0_rom_U :  component L3_wlo_L2_WEIGHTS_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


