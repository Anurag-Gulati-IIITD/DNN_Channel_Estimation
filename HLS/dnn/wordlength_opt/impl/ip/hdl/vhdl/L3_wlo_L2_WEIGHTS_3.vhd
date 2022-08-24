-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTS_3_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTS_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010000001011001", 1 => "1010000111010001", 2 => "1010000100010100", 
    3 => "1010001100001100", 4 => "1010010011010110", 5 => "0010000011100111", 
    6 => "0010001010111110", 7 => "0010001010001010", 8 => "0010010001101110", 
    9 => "1000110100011101", 10 => "1010010010100100", 11 => "1010001001101111", 
    12 => "1010000100010111", 13 => "1001101001111111", 14 => "0001110000010101", 
    15 => "0001100100101110", 16 => "0010000101000100", 17 => "0010000110001111", 
    18 => "0010000110111110", 19 => "1001110101101111", 20 => "1010001111111101", 
    21 => "1010001110111001", 22 => "0001000101111011", 23 => "1001110011101000", 
    24 => "0010001101111010", 25 => "0010001001101111", 26 => "0001110100010110", 
    27 => "1010000010000110", 28 => "1010000101011011", 29 => "1001111001110111", 
    30 => "1001101011010110", 31 => "1001010000100101", 32 => "0010000000101001", 
    33 => "0001111111100110", 34 => "0001111010110100", 35 => "0010010010111100", 
    36 => "1010001011000111", 37 => "1010000111001111", 38 => "1010001111111111", 
    39 => "1010010011010000", 40 => "0001101011100011", 41 => "0010001011111011", 
    42 => "0010001111101110", 43 => "0010001011001101", 44 => "0001111001110010", 
    45 => "1010000001000000", 46 => "1010001010110011", 47 => "1010000111010100", 
    48 => "1001111111111001", 49 => "1001010110101000", 50 => "0010000000100100", 
    51 => "0010000110110011", 52 => "1010000011100100", 53 => "1010001011001010", 
    54 => "1010010111010111", 55 => "0010001011110000", 56 => "0010000010111101", 
    57 => "0010001010000000", 58 => "0010010001101010", 59 => "1010001100010001", 
    60 => "1010001001010110", 61 => "1010000110111010", 62 => "1010000100001110", 
    63 => "0001011000101010", 64 => "0010000100000001", 65 => "0010000010100110", 
    66 => "0010000101110000", 67 => "0010000000011010", 68 => "0001110100111000", 
    69 => "1001000100011000", 70 => "1010000010000000", 71 => "1010001000001010", 
    72 => "1001010110010111", 73 => "0010000001110101", 74 => "0010000100101001", 
    75 => "0010001101101101", 76 => "0010000100100010", 77 => "0001100001110101", 
    78 => "1010001101000100", 79 => "1001110111110100", 80 => "1001110010111100", 
    81 => "1001000010111010", 82 => "0010000000111011", 83 => "0010000000010011", 
    84 => "0001110001010011", 85 => "0010001000100011", 86 => "1001110001110110", 
    87 => "1001111000101010", 88 => "1010001000010110", 89 => "1010010110110110", 
    90 => "0010000010110001", 91 => "0010010010000100", 92 => "0010010011101110", 
    93 => "0010001100001110", 94 => "0001101110111001", 95 => "1010000101110001", 
    96 => "1010001001110101", 97 => "1010001011110010", 98 => "1001111111100110", 
    99 => "0010000001110100", 100 => "0010000111000111", 101 => "0001111010001011", 
    102 => "0010010000001011", 103 => "0010010000010111" );


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

entity L3_wlo_L2_WEIGHTS_3 is
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

architecture arch of L3_wlo_L2_WEIGHTS_3 is
    component L3_wlo_L2_WEIGHTS_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTS_3_rom_U :  component L3_wlo_L2_WEIGHTS_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

