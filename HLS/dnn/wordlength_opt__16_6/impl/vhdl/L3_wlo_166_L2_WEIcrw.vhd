-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcrw_rom is 
    generic(
             DWIDTH     : integer := 7; 
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


architecture rtl of L3_wlo_166_L2_WEIcrw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1100000", 1 => "0011101", 2 => "0000011", 3 => "0101101", 
    4 => "1111110", 5 => "1111010", 6 => "1110100", 7 => "1111011", 
    8 => "0000100", 9 => "1110101", 10 => "0000001", 11 => "0010011", 
    12 => "1101010", 13 => "0101001", 14 => "0000000", 15 => "1100100", 
    16 => "1111010", 17 => "0000111", 18 => "0001100", 19 => "1111101", 
    20 => "0010010", 21 => "1101001", 22 => "0000110", 23 => "1111100", 
    24 => "1110001", 25 => "1110100", 26 => "0011011", 27 => "0011010", 
    28 => "1110100", 29 => "1100110", 30 => "1111010", 31 => "0000110", 
    32 => "1101110", 33 => "1100010", 34 to 35=> "0001101", 36 => "0011100", 
    37 => "0010110", 38 => "1101110", 39 => "0000010", 40 => "1101000", 
    41 => "0001010", 42 => "0010000", 43 => "0000001", 44 => "1101110", 
    45 => "0000101", 46 => "0100101", 47 => "1101011", 48 => "1111011", 
    49 => "0010100", 50 => "0000011", 51 => "1101001", 52 => "0100111", 
    53 => "1110010", 54 => "1101111", 55 => "0010100", 56 => "1111001", 
    57 => "0001001", 58 => "1110111", 59 => "1111101", 60 => "1111011", 
    61 => "1101010", 62 => "0000011", 63 => "1110100", 64 => "0000011", 
    65 => "1110000", 66 => "1101010", 67 => "0010100", 68 => "1110101", 
    69 => "0100111", 70 => "1100100", 71 => "0000110", 72 => "0010001", 
    73 => "1111100", 74 => "0000100", 75 to 76=> "1110011", 77 => "1010111", 
    78 => "1100111", 79 => "0001101", 80 => "0000100", 81 => "0001001", 
    82 => "0001100", 83 => "0010010", 84 => "0100101", 85 => "0001000", 
    86 => "0000100", 87 => "0000111", 88 => "1111001", 89 => "0100000", 
    90 => "0001100", 91 => "1011101", 92 => "1011010", 93 => "0101011", 
    94 => "0010100", 95 => "0000011", 96 => "1100010", 97 => "0000111", 
    98 => "0001110", 99 => "1101000", 100 => "1110011", 101 => "1101110", 
    102 => "0000110", 103 => "0010111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity L3_wlo_166_L2_WEIcrw is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIcrw is
    component L3_wlo_166_L2_WEIcrw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcrw_rom_U :  component L3_wlo_166_L2_WEIcrw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


