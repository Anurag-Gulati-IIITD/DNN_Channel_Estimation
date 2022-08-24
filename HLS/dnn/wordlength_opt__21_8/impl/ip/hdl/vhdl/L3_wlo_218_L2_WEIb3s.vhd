-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb3s_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIb3s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110101011001", 1 => "000100100111", 2 => "001111101001", 
    3 => "001101110011", 4 => "000101000111", 5 => "111001101101", 
    6 => "110010100010", 7 => "110100010010", 8 => "111101110010", 
    9 => "000110101100", 10 => "001010111101", 11 => "000110010110", 
    12 => "111110111001", 13 => "110110010111", 14 => "110100110000", 
    15 => "111011000000", 16 => "000011011101", 17 => "001101000010", 
    18 => "001101000001", 19 => "000010111000", 20 => "110111011111", 
    21 => "101101110110", 22 => "110001100011", 23 => "111110100000", 
    24 => "001101111000", 25 => "010011000110", 26 => "111010011000", 
    27 => "110010110110", 28 => "110011111110", 29 => "111111011000", 
    30 => "001010010001", 31 => "001001000011", 32 => "000010010011", 
    33 => "111001110001", 34 => "110111011111", 35 => "111110010111", 
    36 => "000011110100", 37 => "000110111001", 38 => "000101101111", 
    39 => "111111010000", 40 => "111010101100", 41 => "111011100001", 
    42 => "111101001001", 43 => "000010100101", 44 => "000011101111", 
    45 => "000011000110", 46 => "111101101001", 47 => "111001111110", 
    48 => "111101001101", 49 => "000010001101", 50 to 51=> "000110111111", 
    52 => "001111011101", 53 => "010001000011", 54 => "000111000100", 
    55 => "111011000110", 56 => "110001111111", 57 => "110010101101", 
    58 => "111011010010", 59 => "000101111100", 60 => "001100101011", 
    61 => "000111101110", 62 => "000000100010", 63 => "111001010100", 
    64 => "110101110001", 65 => "111000110110", 66 => "000010000001", 
    67 => "001010100101", 68 => "001011101110", 69 => "000110000011", 
    70 => "111001100111", 71 => "110001100110", 72 => "110010100011", 
    73 => "111110101010", 74 => "001011100111", 75 => "010001011010", 
    76 => "001011111001", 77 => "111100011011", 78 => "110000111101", 
    79 => "111001111011", 80 => "000111001010", 81 => "001011100100", 
    82 => "000110011011", 83 => "111110011001", 84 => "110111100111", 
    85 => "111000110110", 86 => "000001100010", 87 => "001000101100", 
    88 => "000110100100", 89 => "111111010001", 90 => "111010100101", 
    91 => "111000101001", 92 => "111101110110", 93 => "000001001011", 
    94 => "000101101001", 95 => "000011011000", 96 => "000001000000", 
    97 => "111010011110", 98 => "111101010110", 99 => "000001101101", 
    100 => "000100011000", 101 => "000101111110", 102 => "000011100000", 
    103 => "111100101000" );


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

entity L3_wlo_218_L2_WEIb3s is
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

architecture arch of L3_wlo_218_L2_WEIb3s is
    component L3_wlo_218_L2_WEIb3s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb3s_rom_U :  component L3_wlo_218_L2_WEIb3s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


