-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity normalize_wlo_166cud_rom is 
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


architecture rtl of normalize_wlo_166cud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1101", 1 => "1110", 2 => "0000", 3 => "0010", 4 => "0011", 
    5 => "0010", 6 => "0001", 7 => "1110", 8 => "1100", 9 => "1011", 
    10 => "1101", 11 => "0000", 12 => "0011", 13 to 14=> "0100", 15 => "0001", 
    16 => "1101", 17 to 18=> "1011", 19 => "1101", 20 => "0000", 21 => "0011", 
    22 => "0100", 23 => "0011", 24 => "0000", 25 => "1101", 26 => "1011", 
    27 => "1101", 28 => "0000", 29 => "0011", 30 => "0100", 31 => "0011", 
    32 => "0001", 33 => "1101", 34 to 35=> "1011", 36 => "1101", 37 => "0000", 
    38 => "0100", 39 => "0101", 40 => "0011", 41 => "0000", 42 => "1100", 
    43 => "1011", 44 => "1100", 45 => "1111", 46 => "0001", 47 to 48=> "0010", 
    49 => "0001", 50 => "0000", 51 => "1111", 52 => "0001", 53 => "0010", 
    54 => "0011", 55 => "0010", 56 => "0000", 57 => "1110", 58 to 59=> "1100", 
    60 => "1101", 61 => "0000", 62 => "0011", 63 => "0100", 64 => "0011", 
    65 => "0000", 66 => "1101", 67 => "1010", 68 => "1011", 69 => "1110", 
    70 => "0001", 71 => "0100", 72 => "0101", 73 => "0011", 74 => "0000", 
    75 => "1100", 76 to 77=> "1011", 78 => "0001", 79 => "0011", 80 => "0100", 
    81 => "0011", 82 => "0000", 83 => "1101", 84 to 85=> "1011", 86 => "1101", 
    87 => "0001", 88 => "0100", 89 => "0101", 90 => "0011", 91 => "1111", 
    92 => "1100", 93 => "1011", 94 => "1100", 95 => "1111", 96 => "0010", 
    97 to 98=> "0011", 99 => "0001", 100 => "1111", 101 => "1110", 102 => "1101", 
    103 => "1110" );

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

entity normalize_wlo_166cud is
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

architecture arch of normalize_wlo_166cud is
    component normalize_wlo_166cud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    normalize_wlo_166cud_rom_U :  component normalize_wlo_166cud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


