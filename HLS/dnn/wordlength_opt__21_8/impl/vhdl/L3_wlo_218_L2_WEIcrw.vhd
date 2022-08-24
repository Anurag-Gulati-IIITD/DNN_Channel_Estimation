-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcrw_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L3_wlo_218_L2_WEIcrw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1100000001", 1 => "0011101001", 2 => "0000011110", 3 => "0101101101", 
    4 => "1111110111", 5 => "1111010100", 6 => "1110100011", 7 => "1111011011", 
    8 => "0000100000", 9 => "1110101001", 10 => "0000001110", 11 => "0010011000", 
    12 => "1101010110", 13 => "0101001000", 14 => "0000000001", 15 => "1100100011", 
    16 => "1111010111", 17 => "0000111110", 18 => "0001100101", 19 => "1111101110", 
    20 => "0010010010", 21 => "1101001000", 22 => "0000110100", 23 => "1111100111", 
    24 => "1110001001", 25 => "1110100110", 26 => "0011011110", 27 => "0011010111", 
    28 => "1110100100", 29 => "1100110110", 30 => "1111010010", 31 => "0000110101", 
    32 => "1101110110", 33 => "1100010000", 34 => "0001101100", 35 => "0001101101", 
    36 => "0011100000", 37 => "0010110000", 38 => "1101110000", 39 => "0000010110", 
    40 => "1101000000", 41 => "0001010001", 42 => "0010000110", 43 => "0000001110", 
    44 => "1101110001", 45 => "0000101111", 46 => "0100101001", 47 => "1101011011", 
    48 => "1111011011", 49 => "0010100010", 50 => "0000011111", 51 => "1101001011", 
    52 => "0100111011", 53 => "1110010100", 54 => "1101111000", 55 => "0010100000", 
    56 => "1111001101", 57 => "0001001101", 58 => "1110111000", 59 => "1111101110", 
    60 => "1111011011", 61 => "1101010011", 62 => "0000011100", 63 => "1110100101", 
    64 => "0000011110", 65 => "1110000000", 66 => "1101010110", 67 => "0010100111", 
    68 => "1110101010", 69 => "0100111011", 70 => "1100100010", 71 => "0000110111", 
    72 => "0010001101", 73 => "1111100101", 74 => "0000100011", 75 => "1110011110", 
    76 => "1110011101", 77 => "1010111010", 78 => "1100111100", 79 => "0001101101", 
    80 => "0000100111", 81 => "0001001001", 82 => "0001100000", 83 => "0010010111", 
    84 => "0100101001", 85 => "0001000101", 86 => "0000100011", 87 => "0000111000", 
    88 => "1111001001", 89 => "0100000110", 90 => "0001100000", 91 => "1011101000", 
    92 => "1011010010", 93 => "0101011001", 94 => "0010100000", 95 => "0000011111", 
    96 => "1100010111", 97 => "0000111000", 98 => "0001110100", 99 => "1101000001", 
    100 => "1110011000", 101 => "1101110100", 102 => "0000110001", 103 => "0010111101" );


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

entity L3_wlo_218_L2_WEIcrw is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcrw is
    component L3_wlo_218_L2_WEIcrw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcrw_rom_U :  component L3_wlo_218_L2_WEIcrw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


