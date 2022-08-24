-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSb2s_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSb2s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010001001010011", 1 => "1001010001110110", 2 => "0001111101010010", 
    3 => "0010001010111100", 4 => "0010001001000001", 5 => "0001001010100001", 
    6 => "1001110110010100", 7 => "1001100000011100", 8 => "1001110101110100", 
    9 => "0001001111111111", 10 => "0001110011101000", 11 => "1000111011100110", 
    12 => "1001100101101001", 13 => "0001110001000000", 14 => "0001100011111110", 
    15 => "0001110000011111", 16 => "0001101000001001", 17 => "1001100000011101", 
    18 => "1001101110111000", 19 => "0001100110100010", 20 => "0001001010000111", 
    21 => "1001110010010100", 22 => "1001111011011101", 23 => "1001111110100011", 
    24 => "1001101001011000", 25 => "0010000010110100", 26 => "0001100001110010", 
    27 => "1001110000110011", 28 => "1010001010011001", 29 => "1010000010110010", 
    30 => "0001111100110000", 31 => "0010001000100101", 32 => "0001110100000000", 
    33 => "1001110001110101", 34 => "1010000100010010", 35 => "1001111111011001", 
    36 => "0000110011110011", 37 => "0010000100111110", 38 => "0001111100010110", 
    39 => "0001110000110011", 40 => "1001011101000011", 41 => "1001110010010000", 
    42 => "1001110010101101", 43 => "1001110001001011", 44 => "1010000000110100", 
    45 => "1001110001110110", 46 => "1000101100101101", 47 => "0001110010110010", 
    48 => "0010000101100110", 49 => "0010000011101110", 50 => "0001100101011100", 
    51 => "1010000000110100", 52 => "0001111101010011", 53 => "0010000111001110", 
    54 => "0010001100001100", 55 => "0001010111010110", 56 => "1010000001011000", 
    57 => "1010000100100100", 58 => "1010000011100011", 59 => "1000101110101011", 
    60 => "0001110011100110", 61 => "0001000110100101", 62 => "1001011011111101", 
    63 => "1001000010100101", 64 => "1001010010101011", 65 => "0001101011110111", 
    66 => "0001111011010011", 67 => "1001100000101001", 68 => "1001111000111100", 
    69 => "0000110001111101", 70 => "1000111101101100", 71 => "0001010110111101", 
    72 => "1001100110000001", 73 => "1001101000100100", 74 => "1001101001000110", 
    75 => "0001111011001001", 76 => "0001110110100111", 77 => "0001110000110101", 
    78 => "1010000111101011", 79 => "1001111001000100", 80 => "1001010111110111", 
    81 => "0001111111001000", 82 => "0001111111110111", 83 => "0000100111110111", 
    84 => "1010000101110100", 85 => "1010000000011110", 86 => "1001101100000000", 
    87 => "0010000110000001", 88 => "0010000001110101", 89 => "0001110001100111", 
    90 => "1001100111010010", 91 => "1010000101000001", 92 => "1001111101000100", 
    93 => "1001100001010001", 94 => "0000011011100010", 95 => "0000111011101110", 
    96 => "0001100001000100", 97 => "0001110010010111", 98 => "0001111100111000", 
    99 => "0010000010001011", 100 => "0001011000010000", 101 => "1001111100110100", 
    102 => "1010001011011000", 103 => "1010000110111011" );


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

entity L3_wlo_L2_WEIGHTSb2s is
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

architecture arch of L3_wlo_L2_WEIGHTSb2s is
    component L3_wlo_L2_WEIGHTSb2s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSb2s_rom_U :  component L3_wlo_L2_WEIGHTSb2s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


