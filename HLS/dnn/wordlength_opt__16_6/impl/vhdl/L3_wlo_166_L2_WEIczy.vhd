-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIczy_rom is 
    generic(
             DWIDTH     : integer := 4; 
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


architecture rtl of L3_wlo_166_L2_WEIczy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 1=> "0010", 2 => "0000", 3 => "1111", 4 => "1101", 5 => "0010", 
    6 to 7=> "0011", 8 => "1100", 9 => "1011", 10 => "1100", 11 => "0000", 
    12 => "0011", 13 => "0110", 14 => "0000", 15 to 17=> "1101", 18 => "0001", 
    19 => "0010", 20 => "1110", 21 to 22=> "1111", 23 to 24=> "0000", 25 => "0010", 
    26 => "1111", 27 => "0000", 28 to 29=> "1111", 30 => "1100", 31 => "1110", 
    32 => "1100", 33 => "0000", 34 => "0011", 35 => "0001", 36 => "1111", 
    37 => "1101", 38 => "1110", 39 to 40=> "0010", 41 => "0000", 42 => "1111", 
    43 => "1011", 44 => "1110", 45 => "0000", 46 => "0010", 47 => "0000", 
    48 => "1110", 49 => "1111", 50 => "0010", 51 => "0011", 52 => "0101", 
    53 => "1101", 54 => "1100", 55 => "0000", 56 => "0001", 57 => "0010", 
    58 => "1111", 59 => "1101", 60 => "1011", 61 => "1101", 62 => "0011", 
    63 to 64=> "0001", 65 => "1110", 66 => "1100", 67 => "1101", 68 => "0001", 
    69 => "0010", 70 => "1110", 71 => "1111", 72 => "1101", 73 => "1110", 
    74 => "0001", 75 => "0010", 76 => "0000", 77 to 78=> "1111", 79 => "0000", 
    80 => "1111", 81 => "1110", 82 => "1100", 83 => "0001", 84 to 85=> "0011", 
    86 => "1110", 87 => "1111", 88 => "1101", 89 => "1111", 90 => "0010", 
    91 => "0001", 92 => "1111", 93 => "0000", 94 => "1111", 95 => "0000", 
    96 => "0010", 97 => "0001", 98 to 100=> "1110", 101 => "1111", 102 => "0100", 
    103 => "0001" );

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

entity L3_wlo_166_L2_WEIczy is
    generic (
        DataWidth : INTEGER := 4;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIczy is
    component L3_wlo_166_L2_WEIczy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIczy_rom_U :  component L3_wlo_166_L2_WEIczy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


