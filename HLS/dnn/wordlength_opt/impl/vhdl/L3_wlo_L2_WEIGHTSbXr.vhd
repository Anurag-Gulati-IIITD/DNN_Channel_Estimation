-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTSbXr_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTSbXr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010001011100", 1 => "0001111011101100", 2 => "1001010101000100", 
    3 => "1010000110110101", 4 => "1010001001100001", 5 => "1001101001010011", 
    6 => "0001111101001110", 7 => "0001111010100000", 8 => "0001010110101101", 
    9 => "1001101111111101", 10 => "1001110010100101", 11 => "0001101101001101", 
    12 => "0010000011001101", 13 => "0001010111101100", 14 => "0001101011000010", 
    15 => "1010000110101000", 16 => "1010000001000001", 17 => "1001110110010100", 
    18 => "0001110001100101", 19 => "0010001110010000", 20 => "0001110111100001", 
    21 => "1000110101110101", 22 => "1001110101111000", 23 => "1010000000101110", 
    24 => "0001011111100111", 25 => "0001110111101111", 26 => "0001110011110010", 
    27 => "1010010001010010", 28 => "1010010011011110", 29 => "1010001000100100", 
    30 => "0001110100000011", 31 => "0010010000111101", 32 => "0010001110100101", 
    33 => "0001110100110100", 34 => "1010001111010011", 35 => "1010010010001101", 
    36 => "1010000101000111", 37 => "0001101111000011", 38 => "0010001001001100", 
    39 => "0001110101101001", 40 => "1001010110000111", 41 => "1010001011011100", 
    42 => "1000110110100011", 43 => "0010000010100111", 44 => "0001110111110100", 
    45 => "1001101100100001", 46 => "1010001100000111", 47 => "1010000000000000", 
    48 => "1001010111001111", 49 => "0001110010010111", 50 => "0010001111001110", 
    51 => "1000100011001001", 52 => "1001100111010111", 53 => "1010001111010111", 
    54 => "1010001100011101", 55 => "1001110011001100", 56 => "0001100010111001", 
    57 => "0010000010000101", 58 => "0001111100101001", 59 => "1001010010010010", 
    60 => "1001111100000010", 61 => "0001100010000000", 62 => "0001011001010000", 
    63 => "0001011101001100", 64 => "0001100000100011", 65 => "1001110101110001", 
    66 => "1001110000000110", 67 => "1001110111011101", 68 => "0001100100101001", 
    69 => "0001110111011000", 70 => "0010000110111101", 71 => "0001101000100000", 
    72 => "1001111011010010", 73 => "1010000111001101", 74 => "1010000100011000", 
    75 => "0001111000100010", 76 => "0001111101010010", 77 => "0010000010010100", 
    78 => "1010010000101110", 79 => "1010000001110000", 80 => "1001000110001000", 
    81 => "0010001110000100", 82 => "0010010100011101", 83 => "0001101101101111", 
    84 => "1010001111010100", 85 => "1010001011001011", 86 => "1010000100101100", 
    87 => "0001100010001111", 88 => "0010001101100010", 89 => "0010010001111011", 
    90 => "0001101110111001", 91 => "1001010111101101", 92 => "1001110110000001", 
    93 => "0001101010111010", 94 => "0001110100111101", 95 => "0001111111101111", 
    96 => "1001111010100000", 97 => "1001111100110111", 98 => "1001111100000000", 
    99 => "0001101000110000", 100 => "0010010000000100", 101 => "0001110101001010", 
    102 => "1001110100110011", 103 => "1010001001011111" );


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

entity L3_wlo_L2_WEIGHTSbXr is
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

architecture arch of L3_wlo_L2_WEIGHTSbXr is
    component L3_wlo_L2_WEIGHTSbXr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTSbXr_rom_U :  component L3_wlo_L2_WEIGHTSbXr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


