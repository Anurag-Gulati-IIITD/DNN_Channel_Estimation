-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcmv_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcmv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10000", 1 => "10111", 2 => "00011", 3 => "00101", 4 => "01000", 
    5 => "00100", 6 to 7=> "11111", 8 => "11110", 9 => "00000", 10 => "11111", 
    11 => "11100", 12 => "00010", 13 => "11111", 14 => "00100", 15 to 16=> "00001", 
    17 => "11110", 18 => "00000", 19 => "11101", 20 => "11001", 21 => "11011", 
    22 => "11111", 23 => "00100", 24 => "00010", 25 => "11111", 26 => "00001", 
    27 => "00010", 28 => "11101", 29 => "10111", 30 => "11100", 31 => "11111", 
    32 => "11110", 33 => "00010", 34 => "11110", 35 => "00010", 36 => "11110", 
    37 => "00001", 38 => "11110", 39 => "11111", 40 => "00110", 41 => "00001", 
    42 => "00011", 43 => "11100", 44 => "11010", 45 => "11100", 46 => "11111", 
    47 => "11110", 48 => "11111", 49 => "00000", 50 => "11111", 51 => "00000", 
    52 => "00101", 53 => "01001", 54 => "01110", 55 => "00101", 56 => "11011", 
    57 => "11110", 58 => "11010", 59 => "11111", 60 => "00001", 61 to 62=> "00000", 
    63 => "11101", 64 => "00010", 65 => "00011", 66 => "01010", 67 => "11111", 
    68 => "11011", 69 => "11101", 70 => "11001", 71 to 72=> "00001", 73 => "00010", 
    74 => "00011", 75 => "00010", 76 => "11110", 77 => "11101", 78 => "11110", 
    79 => "11111", 80 => "11011", 81 => "11101", 82 => "00000", 83 => "00100", 
    84 => "00000", 85 => "00001", 86 => "00000", 87 => "00011", 88 => "11011", 
    89 => "00000", 90 => "00001", 91 => "11110", 92 => "00100", 93 => "00010", 
    94 => "11010", 95 => "11101", 96 => "11011", 97 => "00010", 98 => "00000", 
    99 => "11110", 100 => "00001", 101 => "00011", 102 => "11011", 103 => "11100" );

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

entity L3_wlo_166_L2_WEIcmv is
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

architecture arch of L3_wlo_166_L2_WEIcmv is
    component L3_wlo_166_L2_WEIcmv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcmv_rom_U :  component L3_wlo_166_L2_WEIcmv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


