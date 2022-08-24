-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIciv_rom is 
    generic(
             DWIDTH     : integer := 6; 
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


architecture rtl of L3_wlo_166_L2_WEIciv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000100", 1 => "000010", 2 => "000110", 3 => "110110", 4 => "111100", 
    5 => "101001", 6 => "110111", 7 => "111001", 8 => "001110", 9 => "001101", 
    10 => "000011", 11 => "111001", 12 => "000001", 13 => "101111", 14 => "111111", 
    15 => "111110", 16 => "111011", 17 => "111101", 18 => "111000", 19 => "000001", 
    20 => "001000", 21 => "000100", 22 => "111101", 23 => "111011", 24 => "000110", 
    25 => "110110", 26 => "000000", 27 => "111010", 28 => "000000", 29 => "000010", 
    30 => "001100", 31 => "000101", 32 => "001110", 33 => "111111", 34 => "111000", 
    35 => "111010", 36 to 37=> "000010", 38 => "111011", 39 => "110011", 40 => "111001", 
    41 => "000101", 42 => "000100", 43 => "010110", 44 to 45=> "000000", 46 => "110100", 
    47 => "111111", 48 => "000011", 49 => "111111", 50 => "101111", 51 => "110011", 
    52 => "110001", 53 => "001011", 54 => "000000", 55 => "101011", 56 => "111001", 
    57 => "000010", 58 => "000110", 59 => "001011", 60 => "001100", 61 => "000010", 
    62 => "110110", 63 => "000111", 64 => "111110", 65 => "000010", 66 => "111101", 
    67 => "110110", 68 => "111010", 69 => "000000", 70 => "010101", 71 to 72=> "001100", 
    73 => "000001", 74 => "111100", 75 => "110111", 76 => "000010", 77 => "111110", 
    78 => "000001", 79 => "111011", 80 => "000100", 81 => "001010", 82 => "010001", 
    83 => "110110", 84 => "110111", 85 => "110000", 86 => "000111", 87 => "111100", 
    88 => "000001", 89 => "000010", 90 => "111011", 91 => "000111", 92 => "001001", 
    93 => "111000", 94 => "111011", 95 => "110111", 96 => "110011", 97 => "111011", 
    98 => "001011", 99 => "000111", 100 => "001010", 101 => "000101", 102 => "110000", 
    103 => "110110" );

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

entity L3_wlo_166_L2_WEIciv is
    generic (
        DataWidth : INTEGER := 6;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIciv is
    component L3_wlo_166_L2_WEIciv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIciv_rom_U :  component L3_wlo_166_L2_WEIciv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


