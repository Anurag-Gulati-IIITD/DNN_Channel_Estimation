-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb2s_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb2s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010", 1 => "000111", 2 => "000011", 3 => "000001", 4 => "111001", 
    5 => "111100", 6 => "110011", 7 to 8=> "111101", 9 => "111111", 10 => "000110", 
    11 => "001010", 12 => "000010", 13 => "111110", 14 => "110111", 15 => "000001", 
    16 => "000010", 17 => "000001", 18 => "000000", 19 => "110101", 20 => "111111", 
    21 => "111110", 22 => "000000", 23 => "001010", 24 => "000001", 25 => "111100", 
    26 => "101100", 27 => "111100", 28 => "000100", 29 => "001101", 30 => "001100", 
    31 => "111111", 32 => "000011", 33 => "111111", 34 => "111011", 35 => "000011", 
    36 to 37=> "111110", 38 => "000101", 39 to 40=> "000011", 41 => "111101", 42 => "110111", 
    43 => "000000", 44 => "001101", 45 => "001100", 46 => "111001", 47 => "101100", 
    48 => "101011", 49 => "111110", 50 => "010110", 51 => "011000", 52 => "010011", 
    53 => "000110", 54 => "000001", 55 => "110110", 56 => "111010", 57 => "111011", 
    58 => "000010", 59 => "000001", 60 => "001000", 61 => "000111", 62 => "001011", 
    63 => "000001", 64 => "111001", 65 => "111010", 66 => "111100", 67 => "000110", 
    68 => "000011", 69 => "000100", 70 => "111010", 71 => "000000", 72 => "000001", 
    73 => "001011", 74 => "000001", 75 => "111010", 76 => "110100", 77 => "110110", 
    78 => "000100", 79 => "000111", 80 => "000101", 81 => "111110", 82 => "111011", 
    83 => "111010", 84 to 85=> "111100", 86 => "111111", 87 => "000000", 88 => "000101", 
    89 => "110111", 90 => "111011", 91 => "111111", 92 => "111000", 93 => "110111", 
    94 => "000010", 95 => "000101", 96 => "000001", 97 => "110011", 98 => "110010", 
    99 => "111000", 100 => "001110", 101 => "011110", 102 => "001110", 103 => "110111" );

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

entity L3_wlo_166_L2_WEIb2s is
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

architecture arch of L3_wlo_166_L2_WEIb2s is
    component L3_wlo_166_L2_WEIb2s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb2s_rom_U :  component L3_wlo_166_L2_WEIb2s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


