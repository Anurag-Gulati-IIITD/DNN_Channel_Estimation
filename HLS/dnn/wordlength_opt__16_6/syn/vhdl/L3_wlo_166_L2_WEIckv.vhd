-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIckv_rom is 
    generic(
             DWIDTH     : integer := 5; 
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


architecture rtl of L3_wlo_166_L2_WEIckv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11110", 1 => "00001", 2 => "00010", 3 => "11111", 4 => "00010", 
    5 to 6=> "00000", 7 => "11100", 8 => "00000", 9 => "00010", 10 => "00001", 
    11 => "00000", 12 => "00011", 13 => "00010", 14 => "00000", 15 => "10110", 
    16 => "11101", 17 => "00100", 18 => "11000", 19 => "11101", 20 => "11000", 
    21 => "01000", 22 => "01001", 23 => "00100", 24 => "11000", 25 => "10100", 
    26 => "00010", 27 => "00111", 28 => "00110", 29 => "00001", 30 => "10111", 
    31 => "11100", 32 => "11001", 33 => "11101", 34 => "01100", 35 to 36=> "00000", 
    37 => "00010", 38 => "00000", 39 => "00001", 40 => "10110", 41 => "10011", 
    42 => "11001", 43 => "11011", 44 => "00010", 45 => "00001", 46 => "01010", 
    47 => "11111", 48 => "00100", 49 => "11000", 50 => "11100", 51 => "11011", 
    52 => "11100", 53 to 54=> "11010", 55 => "00011", 56 => "11011", 57 => "00011", 
    58 => "11110", 59 => "11101", 60 => "00000", 61 => "00101", 62 to 63=> "11111", 
    64 => "00010", 65 => "11000", 66 => "00001", 67 => "11010", 68 => "11110", 
    69 => "11011", 70 => "11101", 71 => "11111", 72 => "00101", 73 => "00111", 
    74 to 75=> "11100", 76 => "11111", 77 => "11001", 78 => "01110", 79 => "00011", 
    80 => "00001", 81 => "11100", 82 => "10110", 83 => "11101", 84 => "00111", 
    85 => "01000", 86 => "00110", 87 => "11100", 88 => "11010", 89 => "00111", 
    90 => "00100", 91 => "11101", 92 => "11010", 93 => "11111", 94 => "00011", 
    95 => "01001", 96 => "00111", 97 => "00011", 98 => "11111", 99 => "00011", 
    100 => "11110", 101 => "11001", 102 => "00001", 103 => "01001" );

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

entity L3_wlo_166_L2_WEIckv is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIckv is
    component L3_wlo_166_L2_WEIckv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIckv_rom_U :  component L3_wlo_166_L2_WEIckv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


