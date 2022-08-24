-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcpw_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcpw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010101000", 1 => "111011011100", 2 => "110000011001", 
    3 => "110010001100", 4 => "111010110111", 5 => "000110010000", 
    6 => "001101011100", 7 => "001011101011", 8 => "000010001101", 
    9 => "111001010011", 10 => "110101000100", 11 => "111001101011", 
    12 => "000001001000", 13 => "001001100110", 14 => "001011001100", 
    15 => "000100111101", 16 => "111100100001", 17 => "110011000001", 
    18 => "110011000010", 19 => "111101001000", 20 => "001000011101", 
    21 => "010010000010", 22 => "001110010111", 23 => "000001100000", 
    24 => "110010001110", 25 => "101101000000", 26 => "000101100011", 
    27 => "001101000011", 28 => "001011111101", 29 => "000000101000", 
    30 => "110101110010", 31 => "110110111111", 32 => "111101101101", 
    33 => "000110001101", 34 => "001000011101", 35 => "000001101000", 
    36 => "111100001100", 37 => "111001001000", 38 => "111010010010", 
    39 => "000000101111", 40 => "000101010001", 41 => "000100011101", 
    42 => "000010110101", 43 => "111101011100", 44 => "111100010010", 
    45 => "111100111100", 46 => "000010010101", 47 => "000101111110", 
    48 => "000010110000", 49 => "111101110010", 50 => "111001000001", 
    51 => "111001000010", 52 => "110000100110", 53 => "101110111110", 
    54 => "111000111001", 55 => "000100110110", 56 => "001101111111", 
    57 => "001101010001", 58 => "000100101101", 59 => "111010000011", 
    60 => "110011010101", 61 => "111000010010", 62 => "111111011110", 
    63 => "000110101011", 64 => "001010001100", 65 => "000111000110", 
    66 => "111101111101", 67 => "110101011100", 68 => "110100010101", 
    69 => "111001111111", 70 => "000110010111", 71 => "001110010100", 
    72 => "001101011000", 73 => "000001010101", 74 => "110100011110", 
    75 => "101110101011", 76 => "110100001010", 77 => "000011100001", 
    78 => "001110111101", 79 => "000110000011", 80 => "111000111001", 
    81 => "110100100000", 82 => "111001100111", 83 => "000001100110", 
    84 => "001000010101", 85 => "000111000110", 86 => "111110011110", 
    87 => "110111010101", 88 => "111001011101", 89 => "000000101101", 
    90 => "000101011001", 91 => "000111010100", 92 => "000010001000", 
    93 => "111110110100", 94 => "111010011000", 95 => "111100101000", 
    96 => "111111000000", 97 => "000101011111", 98 => "000010101000", 
    99 => "111110010010", 100 => "111011101001", 101 => "111010000100", 
    102 => "111100100000", 103 => "000011010101" );


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

entity L3_wlo_218_L2_WEIcpw is
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

architecture arch of L3_wlo_218_L2_WEIcpw is
    component L3_wlo_218_L2_WEIcpw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcpw_rom_U :  component L3_wlo_218_L2_WEIcpw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


