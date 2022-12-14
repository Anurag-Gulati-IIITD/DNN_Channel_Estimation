-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSb5t_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSb5t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010100001010", 1 => "0011000101101000", 2 => "0011000111110001", 
    3 => "0010101110110000", 4 => "1010110011101100", 5 => "1011000010000111", 
    6 => "1010110010100101", 7 => "0010011011010101", 8 => "0010110100000101", 
    9 => "0010110001110010", 10 => "1001111110101101", 11 => "1010110011110111", 
    12 => "1010110000000110", 13 => "1010010100010110", 14 => "0010110100011111", 
    15 => "0010111011111100", 16 => "0010101110011100", 17 => "1010100010010011", 
    18 => "1010111100111111", 19 => "1010111011010010", 20 => "1010101100000000", 
    21 => "0010101010100000", 22 => "0010111111011111", 23 => "0010111010110011", 
    24 => "0010100010111000", 25 => "1010110010010010", 26 => "1010111010011011", 
    27 => "1010000010000011", 28 => "0010110010100000", 29 => "0010110110011011", 
    30 => "0010110011011001", 31 => "0001110010000111", 32 => "1010100111111100", 
    33 => "1010101010010101", 34 => "1010100001111010", 35 => "1010010011001001", 
    36 => "1010010011001111", 37 => "1001010001100000", 38 => "0010011010001000", 
    39 => "0010110000010011", 40 => "0010110000110000", 41 => "0010011100100000", 
    42 => "1010100100101110", 43 => "1010110100010001", 44 => "1010110110001000", 
    45 => "1010011010010100", 46 => "0010010101001110", 47 => "0010101100010100", 
    48 => "0010101110001111", 49 => "0010100101000111", 50 => "0010010100101001", 
    51 => "0001011011111010", 52 => "0011000111111010", 53 => "0010111000001100", 
    54 => "1010101001101110", 55 => "1011000010111011", 56 => "1011000001001000", 
    57 => "1010010100011000", 58 => "0010110011000111", 59 => "0010111010001111", 
    60 => "0010100010010001", 61 => "1010101101111000", 62 => "1010110111011100", 
    63 => "1010100000111111", 64 => "0010100111110010", 65 => "0010111000010001", 
    66 => "0010110001110010", 67 => "1010011100111100", 68 => "1010111001000101", 
    69 => "1010111011011110", 70 => "1010100110101101", 71 => "0010100111011001", 
    72 => "0010111011011100", 73 => "0010111101111010", 74 => "0010100111100001", 
    75 => "1010101111001100", 76 => "1011000001101100", 77 => "1010111110110110", 
    78 => "0010110011110010", 79 => "0011000000011001", 80 => "0010110100100010", 
    81 => "0000100001111101", 82 => "1010101110011000", 83 => "1010110100100001", 
    84 => "1010101010101011", 85 => "1001110110000100", 86 => "0010000001011010", 
    87 => "0010011111001000", 88 => "0010011110100100", 89 => "0010101011100001", 
    90 => "0010100011100011", 91 => "0010001011001010", 92 => "1010011011010010", 
    93 => "1010110100101101", 94 => "1010110101011000", 95 => "1010001111110100", 
    96 => "0010100110011100", 97 => "0010110100100010", 98 => "0010110010110100", 
    99 => "0010011101010110", 100 => "1001110100110010", 101 => "1010011110100011", 
    102 => "1010101010001100", 103 => "1010110110010100" );


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

entity L3_wlo_L2_WEIGHTSb5t is
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

architecture arch of L3_wlo_L2_WEIGHTSb5t is
    component L3_wlo_L2_WEIGHTSb5t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSb5t_rom_U :  component L3_wlo_L2_WEIGHTSb5t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


