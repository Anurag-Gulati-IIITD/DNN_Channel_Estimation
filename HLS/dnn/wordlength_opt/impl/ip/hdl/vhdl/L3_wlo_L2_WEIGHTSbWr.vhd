-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSbWr_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSbWr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1001011000010110", 1 => "0001010100001011", 2 => "0001100010011110", 
    3 => "1000111111100001", 4 => "0001100011100011", 5 => "0001001110000101", 
    6 => "0000111011001000", 7 => "1001101011110100", 8 => "0001000001111001", 
    9 => "0001100101100001", 10 => "0001011000100100", 11 => "0001000001101010", 
    12 => "0001101100010001", 13 => "0001100110010010", 14 => "0001000011111111", 
    15 => "1010000010001100", 16 => "1001100000100111", 17 => "0001110000100010", 
    18 => "1001111111001010", 19 => "1001100110101101", 20 => "1001111110010011", 
    21 => "0010000000100000", 22 => "0010000011011100", 23 => "0001110000101101", 
    24 => "1001111101001100", 25 => "1010000110011010", 26 => "0001100101011100", 
    27 => "0001111110011101", 28 => "0001111011110001", 29 => "0001011001111000", 
    30 => "1010000000011010", 31 => "1001101100010100", 32 => "1001111010000011", 
    33 => "1001100101011011", 34 => "0010001001000001", 35 => "0000001101011000", 
    36 => "0001000000111100", 37 => "0001100000110010", 38 => "0001000010101001", 
    39 => "0001010111100101", 40 => "1010000010100101", 41 => "1010001000010100", 
    42 => "1001111000000001", 43 => "1001110000011000", 44 => "0001100111001111", 
    45 => "0001010110100000", 46 => "0010000100110001", 47 => "1000111110011110", 
    48 => "0001110011001111", 49 => "1001111100011111", 50 => "1001101010110111", 
    51 => "1001110011001000", 52 => "1001101111101100", 53 => "1001110111101001", 
    54 => "1001110111111011", 55 => "0001101111010100", 56 => "1001110010100111", 
    57 => "0001101111111010", 58 => "1001011101111011", 59 => "1001100011001010", 
    60 => "0000011100010100", 61 => "0001110100001011", 62 => "1000010111000100", 
    63 => "1001000110010010", 64 => "0001100110001110", 65 => "1001111110111101", 
    66 => "0001010011101010", 67 => "1001110110100001", 68 => "1001011111000010", 
    69 => "1001110010001110", 70 => "1001100110011001", 71 => "1000110010000110", 
    72 => "0001110100100001", 73 => "0001111100001000", 74 => "1001101010100101", 
    75 => "1001101100111011", 76 => "1000101101101000", 77 => "1001111001010110", 
    78 => "0010001100010001", 79 => "0001101100110100", 80 => "0001010000101111", 
    81 => "1001101001110010", 82 => "1010000010111110", 83 => "1001100000000011", 
    84 => "0001111100101010", 85 => "0010000000110111", 86 => "0001111001011000", 
    87 => "1001101111111001", 88 => "1001110110010110", 89 => "0001111100001011", 
    90 => "0001110000111100", 91 => "1001100110110010", 92 => "1001110101000010", 
    93 => "1001000011011010", 94 => "0001101101011110", 95 => "0010000011001000", 
    96 => "0001111110110000", 97 => "0001101000111110", 98 => "1001000000010110", 
    99 => "0001101110101001", 100 => "1001011101000011", 101 => "1001111000101001", 
    102 => "0001011001011000", 103 => "0010000011110110" );


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

entity L3_wlo_L2_WEIGHTSbWr is
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

architecture arch of L3_wlo_L2_WEIGHTSbWr is
    component L3_wlo_L2_WEIGHTSbWr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSbWr_rom_U :  component L3_wlo_L2_WEIGHTSbWr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


