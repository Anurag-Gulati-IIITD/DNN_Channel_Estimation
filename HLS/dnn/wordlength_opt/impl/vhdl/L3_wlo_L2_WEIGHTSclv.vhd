-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSclv_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSclv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100011110101", 1 => "1010101101010110", 2 => "1010111010101110", 
    3 => "1010111001000110", 4 => "1010011011100001", 5 => "0010110000011010", 
    6 => "0010111111000001", 7 => "0010111001010011", 8 => "0010000110100011", 
    9 => "1010110100110110", 10 => "1011000000110010", 11 => "1010111001111000", 
    12 => "1001001101000010", 13 => "0010110011010010", 14 => "0010111100110001", 
    15 => "0010110001100110", 16 => "1010000011011001", 17 => "1010101111111000", 
    18 => "1010101111011101", 19 => "1010010001101101", 20 => "1010000000001011", 
    21 => "1001111111000001", 22 => "1001000111000000", 23 => "0010010001000011", 
    24 => "0010101110000100", 25 => "0010101100100111", 26 => "1010110101110001", 
    27 => "1010111011010010", 28 => "1010101000010101", 29 => "0010101111001010", 
    30 => "0011000011110001", 31 => "0010111011111110", 32 => "1010010011000001", 
    33 => "1011000001111110", 34 => "1011000101100011", 35 => "1010110010011111", 
    36 => "0010110000111010", 37 => "0011000010110101", 38 => "0011000000001110", 
    39 => "0010100011011101", 40 => "1010101010110101", 41 => "1010110110111001", 
    42 => "1010110101010111", 43 => "1010100111000100", 44 => "1010010101100110", 
    45 => "0010100001010111", 46 => "0010110010000110", 47 => "0010111001111101", 
    48 => "0010110011001110", 49 => "1010001010011001", 50 => "1010111110110111", 
    51 => "1011000010001101", 52 => "1010111100111001", 53 => "1010111011100100", 
    54 => "1010011010111110", 55 => "0010110001100000", 56 => "0010111100110111", 
    57 => "0010111000010001", 58 => "0010001011011101", 59 => "1010110011001101", 
    60 => "1011000000000110", 61 => "1010111011000001", 62 => "1010001011100101", 
    63 => "0010110101001100", 64 => "0011000000001011", 65 => "0010110110001000", 
    66 => "1001101010111101", 67 => "1010110101101000", 68 => "1010110101100111", 
    69 => "1010100101100011", 70 => "0010001000101100", 71 => "0010100000111110", 
    72 => "0010010001110001", 73 => "0010010000110100", 74 => "0010011110001101", 
    75 => "0010100011100100", 76 => "1001101000010010", 77 => "1010101100100110", 
    78 => "1010110000101010", 79 => "0010100010110010", 80 => "0010111110011100", 
    81 => "0010111110000011", 82 => "0010011000000101", 83 => "1010111100000000", 
    84 => "1011000110011011", 85 => "1010111000001101", 86 => "0010100100110000", 
    87 => "0011000100001010", 88 => "0011000011100100", 89 => "0010101100011111", 
    90 => "1010110001111010", 91 => "1011000000011010", 92 => "1010111000101011", 
    93 => "1010100001001101", 94 => "0010010110100110", 95 => "0010110000011011", 
    96 => "0010110011001001", 97 => "0010110011011011", 98 => "0010101110110101", 
    99 => "1010001101110101", 100 => "1010110111000010", 101 => "1011000000110011", 
    102 => "1010110110011001", 103 => "0010010111101001" );


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

entity L3_wlo_L2_WEIGHTSclv is
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

architecture arch of L3_wlo_L2_WEIGHTSclv is
    component L3_wlo_L2_WEIGHTSclv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSclv_rom_U :  component L3_wlo_L2_WEIGHTSclv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

