-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_L2_WEIGHTS_6_rom is 
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


architecture rtl of L3_wlo_L2_WEIGHTS_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100010111001", 1 => "0010100001001111", 2 => "0010000001001000", 
    3 => "0010010000100001", 4 => "1001110100111000", 5 => "0010000111001100", 
    6 => "0010100100101001", 7 => "0010101001101001", 8 => "0001100011110001", 
    9 => "1001110110000111", 10 => "1010100101000101", 11 => "1010101011010011", 
    12 => "1010100000011011", 13 => "1010001010111100", 14 => "0010100110100010", 
    15 => "0010011000110000", 16 => "0010000011101001", 17 => "0001110100111110", 
    18 => "1010100001111100", 19 => "0010100101111000", 20 => "0010100010111011", 
    21 => "0001100000011111", 22 => "1010110010011001", 23 => "1010110001101110", 
    24 => "1010100000100110", 25 => "0001111100101100", 26 => "0010110100101110", 
    27 => "0010100111011100", 28 => "0010000001101011", 29 => "1010010111110001", 
    30 => "1010101000100001", 31 => "1010100011001111", 32 => "1010101101010000", 
    33 => "1010000111111011", 34 => "1010010000101001", 35 => "0010011001111100", 
    36 => "0010100101111010", 37 => "0010100000000111", 38 => "1001101101101011", 
    39 => "1010011000100010", 40 => "1010100011000000", 41 => "0010010111111111", 
    42 => "0010011011110010", 43 => "0010100000000000", 44 => "0001101101101101", 
    45 => "1010000111000001", 46 => "1010011100001111", 47 => "1010101010000111", 
    48 => "1010010101001100", 49 => "0010011100101000", 50 => "0010101100000111", 
    51 => "0010110100111011", 52 => "0010001100110101", 53 => "0010110000101000", 
    54 => "0010010001010100", 55 => "1010010110001010", 56 => "1001111110011101", 
    57 => "1001000100100111", 58 => "0010011001000000", 59 => "1001011101101100", 
    60 => "1010100100110111", 61 => "1010110010100100", 62 => "1010101010100101", 
    63 => "1010010110000110", 64 => "0010110001100100", 65 => "0010101000101110", 
    66 => "0010100001010100", 67 => "1010000100111110", 68 => "1010010001100011", 
    69 => "1010001111000000", 70 => "0010011101110101", 71 => "0010001000001100", 
    72 => "1010001100010011", 73 => "1010100111001110", 74 => "1001101110000011", 
    75 => "0010010011000000", 76 => "0010110000000101", 77 => "0010110100011000", 
    78 => "0010000101110100", 79 => "1010001111111110", 80 => "1010110000101000", 
    81 => "1010010101111100", 82 => "1010100000010011", 83 => "0001010101101010", 
    84 => "0010001010001110", 85 => "0010100001101101", 86 => "0010010000001100", 
    87 => "0010011010101110", 88 => "0000101011000000", 89 => "1010001001000110", 
    90 => "1010010110000010", 91 => "1010010000100000", 92 => "0010010010010101", 
    93 => "0010001101111111", 94 => "0001101101011100", 95 => "1010100100011110", 
    96 => "1010101101100000", 97 => "1010011010101000", 98 => "0001101100111100", 
    99 => "0010010110101101", 100 => "0010101111010011", 101 => "0010101001011000", 
    102 => "0010010010110100", 103 => "1010101010110011" );


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

entity L3_wlo_L2_WEIGHTS_6 is
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

architecture arch of L3_wlo_L2_WEIGHTS_6 is
    component L3_wlo_L2_WEIGHTS_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_L2_WEIGHTS_6_rom_U :  component L3_wlo_L2_WEIGHTS_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


