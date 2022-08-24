-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb5t_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb5t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001000", 1 => "110100", 2 => "110101", 3 => "110001", 4 => "101100", 
    5 => "001001", 6 to 7=> "001101", 8 => "010001", 9 => "111111", 10 => "101101", 
    11 => "110011", 12 => "110101", 13 => "111100", 14 => "000100", 15 => "000010", 
    16 => "001010", 17 to 18=> "001011", 19 => "111010", 20 to 21=> "110000", 22 => "000000", 
    23 => "111011", 24 => "001110", 25 => "001100", 26 => "000101", 27 => "110110", 
    28 => "110101", 29 => "111001", 30 => "111100", 31 => "111110", 32 => "001000", 
    33 => "000111", 34 => "000110", 35 => "010010", 36 => "110010", 37 => "110100", 
    38 => "110000", 39 => "101100", 40 => "000011", 41 => "001101", 42 => "001111", 
    43 => "001101", 44 => "000110", 45 => "110111", 46 => "110010", 47 => "110100", 
    48 => "111000", 49 => "111110", 50 => "001000", 51 => "001011", 52 => "110110", 
    53 => "110010", 54 => "101000", 55 => "001101", 56 => "001001", 57 => "001100", 
    58 => "010001", 59 => "110001", 60 => "110011", 61 => "110100", 62 => "110101", 
    63 => "000001", 64 => "001010", 65 => "001001", 66 => "001010", 67 => "001000", 
    68 => "000101", 69 => "111111", 70 => "110111", 71 => "110011", 72 => "111110", 
    73 => "001000", 74 => "001010", 75 => "001110", 76 => "001010", 77 => "000010", 
    78 => "110001", 79 => "111010", 80 => "111011", 81 => "111111", 82 to 83=> "001000", 
    84 => "000100", 85 => "001100", 86 => "111011", 87 => "111001", 88 => "110011", 
    89 => "101001", 90 => "001001", 91 => "010010", 92 => "010011", 93 => "001110", 
    94 => "000011", 95 => "110101", 96 => "110011", 97 => "110010", 98 => "111000", 
    99 => "001000", 100 => "001011", 101 => "000110", 102 to 103=> "010000" );

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

entity L3_wlo_166_L2_WEIb5t is
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

architecture arch of L3_wlo_166_L2_WEIb5t is
    component L3_wlo_166_L2_WEIb5t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb5t_rom_U :  component L3_wlo_166_L2_WEIb5t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


