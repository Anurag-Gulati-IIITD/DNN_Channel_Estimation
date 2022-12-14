-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSbTr_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSbTr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100100101110", 1 => "0010101110011110", 2 => "0010111011110000", 
    3 => "0010111010000111", 4 => "0010011100110100", 5 => "1010110001000001", 
    6 => "1011000000000111", 7 => "1010111010010010", 8 => "1010000111101111", 
    9 => "0010110101101001", 10 => "0011000001011100", 11 => "0010111010110111", 
    12 => "0001001000101101", 13 => "1010110100000011", 14 => "1010111101110110", 
    15 => "1010110010001111", 16 => "0010000100011000", 17 => "0010110000100011", 
    18 => "0010110000010010", 19 => "0010010010010111", 20 => "0010000000111100", 
    21 => "0010000000010010", 22 => "0001000100011101", 23 => "1010010001110001", 
    24 => "1010101111001110", 25 => "1010101101101101", 26 => "0010110110101000", 
    27 => "0010111100010101", 28 => "0010101001010001", 29 => "1010110000001011", 
    30 => "1011000100100001", 31 => "1010111101000001", 32 => "0010010011101110", 
    33 => "0011000010101001", 34 => "0011000110010101", 35 => "0010110011001010", 
    36 => "1010110001100010", 37 => "1011000011100001", 38 => "1011000000110011", 
    39 => "1010100100001001", 40 => "0010101011110101", 41 => "0010110111110001", 
    42 => "0010110110001010", 43 => "0010100111111000", 44 => "0010010110010011", 
    45 => "1010100010000010", 46 => "1010110010110010", 47 => "1010111010111011", 
    48 => "1010110011111011", 49 => "0010001011101010", 50 => "0011000000000001", 
    51 => "0011000010111001", 52 => "0010111101111111", 53 => "0010111100101101", 
    54 => "0010011100010011", 55 => "1010110010001011", 56 => "1010111101111111", 
    57 => "1010111001010001", 58 => "1010001100110100", 59 => "0010110011111100", 
    60 => "0011000000101110", 61 => "0010111100000100", 62 => "0010001100011010", 
    63 => "1010110110000000", 64 => "1011000000110001", 65 => "1010110110111101", 
    66 => "0001101101100000", 67 => "0010110110011100", 68 => "0010110110011010", 
    69 => "0010100110010101", 70 => "1010001001100011", 71 => "1010100001100101", 
    72 => "1010010010010110", 73 => "1010010001011111", 74 => "1010011111010101", 
    75 => "1010100100010101", 76 => "0001101001111111", 77 => "0010101101110000", 
    78 => "0010110001010011", 79 => "1010100011100000", 80 => "1010111111101000", 
    81 => "1010111111001011", 82 => "1010011000111110", 83 => "0010111101000011", 
    84 => "0011000111010001", 85 => "0010111001000110", 86 => "1010100101100010", 
    87 => "1011000100111010", 88 => "1011000100010010", 89 => "1010101101100000", 
    90 => "0010110010100101", 91 => "0011000001000001", 92 => "0010111001100100", 
    93 => "0010100001110001", 94 => "1010010111100100", 95 => "1010110001000100", 
    96 => "1010110011111000", 97 => "1010110100001000", 98 => "1010101111111010", 
    99 => "0010001111001001", 100 => "0010110111111011", 101 => "0011000001011100", 
    102 => "0010110111001100", 103 => "1010011000110010" );


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

entity L3_wlo_L2_WEIGHTSbTr is
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

architecture arch of L3_wlo_L2_WEIGHTSbTr is
    component L3_wlo_L2_WEIGHTSbTr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSbTr_rom_U :  component L3_wlo_L2_WEIGHTSbTr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


