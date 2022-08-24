-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcHz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcHz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111010100000", 1 => "110010011100", 2 => "110001011111", 
    3 => "111010110011", 4 => "000011101101", 5 => "001101100111", 
    6 => "001011011000", 7 => "000100110000", 8 => "111100010010", 
    9 => "111100101111", 10 => "111110111010", 11 => "111110001110", 
    12 => "111010001001", 13 => "111011010111", 14 => "111110011101", 
    15 => "000100111110", 16 => "001011000100", 17 => "001001101010", 
    18 => "000001010100", 19 => "111000011111", 20 => "110100000110", 
    21 => "111011001000", 22 => "000011110111", 23 => "000101011110", 
    24 => "000001001010", 25 => "000001010001", 26 => "000001000101", 
    27 => "000100011110", 28 => "111111010000", 29 => "111001011111", 
    30 => "110111011000", 31 => "111101001000", 32 => "000001110101", 
    33 => "001000010100", 34 => "000110010001", 35 => "111101111001", 
    36 => "110110010100", 37 => "111001111101", 38 => "000010001010", 
    39 => "001001000111", 40 => "000100010111", 41 => "111010110110", 
    42 => "110111101010", 43 => "111010000110", 44 => "000110011010", 
    45 => "001100010001", 46 => "001000110110", 47 => "111000110010", 
    48 => "101111011010", 49 => "101111100000", 50 => "111111111001", 
    51 => "001101111110", 52 => "110010010100", 53 => "110101000101", 
    54 => "000010101011", 55 => "010001011001", 56 => "001100000010", 
    57 => "000100100010", 58 => "111011110000", 59 => "111000011101", 
    60 => "111001010010", 61 => "111100010100", 62 => "111110010000", 
    63 => "111001100100", 64 => "111111010000", 65 => "000010101100", 
    66 => "001010100111", 67 => "001010100101", 68 => "000010111000", 
    69 => "111000001000", 70 => "110001011100", 71 => "110110101011", 
    72 => "111111010101", 73 => "001000011100", 74 => "000111010000", 
    75 => "000011100001", 76 => "111100010001", 77 => "111100110110", 
    78 => "000001010001", 79 => "000000011111", 80 => "111010111000", 
    81 => "111010100101", 82 => "111111000000", 83 => "001001011100", 
    84 => "000111110010", 85 => "000011000110", 86 => "110101110111", 
    87 => "111001101000", 88 => "111101100011", 89 => "000110100001", 
    90 => "001000110000", 91 => "111111111110", 92 => "111001111001", 
    93 => "111100111010", 94 => "000010110010", 95 => "001010101011", 
    96 => "001010011110", 97 => "111101111010", 98 => "110001000111", 
    99 => "110000100011", 100 => "111001000111", 101 => "000111100101", 
    102 => "010110100010", 103 => "010001111100" );


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

entity L3_wlo_218_L2_WEIcHz is
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

architecture arch of L3_wlo_218_L2_WEIcHz is
    component L3_wlo_218_L2_WEIcHz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcHz_rom_U :  component L3_wlo_218_L2_WEIcHz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


