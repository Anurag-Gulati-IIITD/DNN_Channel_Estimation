-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcux_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcux_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001", 1 => "1100", 2 => "1010", 3 => "1011", 4 => "1101", 
    5 => "0001", 6 to 7=> "0011", 8 => "0010", 9 => "0001", 10 => "1111", 
    11 => "1110", 12 => "1101", 13 to 14=> "1111", 15 => "0000", 16 => "1111", 
    17 => "0000", 18 to 19=> "0001", 20 => "0010", 21 => "0001", 22 => "0000", 
    23 => "1110", 24 => "1100", 25 => "1110", 26 => "1111", 27 to 28=> "0000", 
    29 => "0001", 30 => "0000", 31 => "0001", 32 to 35=> "1111", 36 to 37=> "1101", 
    38 => "1110", 39 => "0000", 40 => "0010", 41 to 42=> "0011", 43 => "0001", 
    44 => "1111", 45 to 46=> "1101", 47 => "1100", 48 => "1101", 49 => "1111", 
    50 => "0011", 51 => "0100", 52 => "1010", 53 => "1001", 54 => "1101", 
    55 => "0011", 56 => "0100", 57 => "0011", 58 => "0010", 59 => "0000", 
    60 => "1101", 61 => "1100", 62 => "1101", 63 => "1011", 64 => "1111", 
    65 => "0000", 66 => "0001", 67 => "0010", 68 => "0001", 69 => "0000", 
    70 to 71=> "1111", 72 to 73=> "1110", 74 => "1101", 75 to 76=> "1110", 77 => "0000", 
    78 => "0001", 79 => "0010", 80 => "0001", 81 => "1111", 82 => "1101", 
    83 => "1111", 84 => "1110", 85 => "1111", 86 => "1101", 87 to 89=> "1111", 
    90 to 92=> "0010", 93 => "0011", 94 => "1111", 95 => "1101", 96 to 97=> "1100", 
    98 => "1110", 99 => "0000", 100 to 101=> "0010", 102 => "0101", 103 => "0011" );

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

entity L3_wlo_166_L2_WEIcux is
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

architecture arch of L3_wlo_166_L2_WEIcux is
    component L3_wlo_166_L2_WEIcux_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcux_rom_U :  component L3_wlo_166_L2_WEIcux_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


