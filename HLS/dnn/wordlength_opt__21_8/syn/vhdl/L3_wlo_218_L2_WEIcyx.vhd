-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcyx_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L3_wlo_218_L2_WEIcyx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100100110", 1 => "110101010001", 2 => "110111101100", 
    3 => "111000011100", 4 => "000010010101", 5 => "111111010000", 
    6 => "000011111001", 7 => "111110110010", 8 => "000011100001", 
    9 => "000101001111", 10 => "000010100010", 11 => "111100011100", 
    12 => "111100011011", 13 => "110011100111", 14 => "111101010111", 
    15 => "000010010000", 16 => "000110100010", 17 => "000110000001", 
    18 => "111100111010", 19 => "111010111011", 20 => "111010111010", 
    21 => "111111010000", 22 => "000011110110", 23 => "000001111011", 
    24 => "000010001010", 25 => "111010011011", 26 => "000001001111", 
    27 => "000010011010", 28 => "000000111100", 29 => "111011110011", 
    30 => "111110111111", 31 => "000000000000", 32 => "001000110110", 
    33 => "000110110011", 34 => "000001010100", 35 => "111010100001", 
    36 => "110111101011", 37 => "111100000011", 38 => "000000101011", 
    39 => "000011000110", 40 => "000001010010", 41 => "111101111010", 
    42 => "111001101111", 43 => "000100011111", 44 => "000101000101", 
    45 => "001010110000", 46 => "000001111100", 47 => "111001100111", 
    48 => "110011101011", 49 => "110001100001", 50 => "111000000101", 
    51 => "000110001000", 52 => "101101101001", 53 => "111100001010", 
    54 => "000011001101", 55 => "000101001101", 56 => "000110000100", 
    57 => "000011100111", 58 => "111110010010", 59 => "000000010100", 
    60 => "000010100001", 61 => "111111110111", 62 => "111010000000", 
    63 => "111101110110", 64 => "111100110011", 65 => "000010001101", 
    66 => "000111000101", 67 => "000011111111", 68 => "111111101101", 
    69 => "111010000100", 70 => "111111001100", 71 => "111111011001", 
    72 => "000110001101", 73 => "000111100110", 74 => "000010110001", 
    75 => "111101010011", 76 => "111100011010", 77 => "111100011101", 
    78 => "000011100111", 79 => "111111010100", 80 => "111101101101", 
    81 => "111111101001", 82 => "000110111011", 83 => "000011010000", 
    84 => "000010000000", 85 => "111010001110", 86 => "111010100001", 
    87 => "111000110000", 88 => "111111100001", 89 => "001000001111", 
    90 => "000101111100", 91 => "000011110111", 92 => "111110100101", 
    93 => "111000101010", 94 => "111111011011", 95 => "000101011001", 
    96 => "000100001000", 97 => "111100110111", 98 => "111001011001", 
    99 => "110110111011", 100 => "111111011110", 101 => "001000111100", 
    102 => "001100011001", 103 => "001010100001" );


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

entity L3_wlo_218_L2_WEIcyx is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcyx is
    component L3_wlo_218_L2_WEIcyx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcyx_rom_U :  component L3_wlo_218_L2_WEIcyx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


