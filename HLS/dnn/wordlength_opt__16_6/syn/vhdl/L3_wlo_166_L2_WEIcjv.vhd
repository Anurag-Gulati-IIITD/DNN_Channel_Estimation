-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcjv_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcjv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011", 1 to 2=> "11100", 3 => "11011", 4 => "00010", 5 => "00100", 
    6 to 7=> "00101", 8 => "11111", 9 to 10=> "11100", 11 => "11011", 12 => "11100", 
    13 => "00001", 14 => "11111", 15 => "00000", 16 => "00101", 17 => "00011", 
    18 => "00010", 19 => "11111", 20 => "11101", 21 => "11110", 22 => "11101", 
    23 => "11110", 24 => "00000", 25 => "00001", 26 => "00110", 27 => "00010", 
    28 => "11110", 29 to 30=> "11000", 31 => "11111", 32 => "00100", 33 => "01000", 
    34 => "00010", 35 to 36=> "11000", 37 => "11010", 38 => "00100", 39 => "01010", 
    40 => "01000", 41 => "00010", 42 to 43=> "11001", 44 => "11110", 45 => "00011", 
    46 => "00010", 47 => "11110", 48 => "11100", 49 => "11101", 50 => "00101", 
    51 => "01000", 52 => "11101", 53 => "00001", 54 => "00011", 55 => "00010", 
    56 to 57=> "00101", 58 => "11110", 59 => "11100", 60 => "11011", 61 => "11010", 
    62 => "11111", 63 => "00011", 64 to 65=> "00010", 66 => "00101", 67 to 68=> "00001", 
    69 => "00000", 70 => "11010", 71 => "11101", 72 => "11110", 73 => "11111", 
    74 => "00010", 75 => "00000", 76 to 77=> "00100", 78 => "11111", 79 to 80=> "11000", 
    81 => "11110", 82 => "00010", 83 => "01000", 84 => "00111", 85 => "11011", 
    86 => "11010", 87 => "11000", 88 => "00000", 89 to 90=> "01001", 91 => "00100", 
    92 => "11010", 93 => "10101", 94 => "11001", 95 => "11111", 96 => "00100", 
    97 => "00010", 98 => "11110", 99 => "11101", 100 => "00010", 101 to 102=> "00101", 
    103 => "00000" );

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

entity L3_wlo_166_L2_WEIcjv is
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

architecture arch of L3_wlo_166_L2_WEIcjv is
    component L3_wlo_166_L2_WEIcjv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcjv_rom_U :  component L3_wlo_166_L2_WEIcjv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


