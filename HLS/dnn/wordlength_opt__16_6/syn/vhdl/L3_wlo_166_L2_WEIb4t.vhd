-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIb4t_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIb4t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111", 1 => "0001", 2 => "0010", 3 => "0001", 4 to 5=> "0000", 
    6 => "1100", 7 to 8=> "1010", 9 => "1110", 10 => "0100", 11 => "0111", 
    12 => "0110", 13 => "1110", 14 to 15=> "1010", 16 => "1100", 17 => "0011", 
    18 => "0101", 19 => "0001", 20 => "1110", 21 => "1011", 22 => "1110", 
    23 to 24=> "0001", 25 => "1111", 26 => "1100", 27 => "1111", 28 => "0011", 
    29 to 30=> "0010", 31 => "1110", 32 => "1101", 33 => "1110", 34 => "1111", 
    35 to 36=> "0000", 37 to 38=> "0001", 39 => "0100", 40 => "0010", 41 => "1101", 
    42 => "1010", 43 => "1001", 44 => "1101", 45 => "0010", 46 => "0101", 
    47 => "0011", 48 => "0001", 49 => "1100", 50 => "1101", 51 => "1110", 
    52 => "0011", 53 => "0000", 54 => "1110", 55 => "0000", 56 => "1101", 
    57 to 58=> "1100", 59 => "1110", 60 => "0011", 61 => "0111", 62 => "0110", 
    63 => "0001", 64 => "1010", 65 => "1001", 66 => "1010", 67 => "0010", 
    68 => "0101", 69 => "0100", 70 => "0001", 71 to 72=> "1011", 73 to 74=> "0000", 
    75 => "0010", 76 => "1110", 77 => "1011", 78 => "0001", 79 to 80=> "0010", 
    81 => "1110", 82 => "1100", 83 => "1101", 84 => "1110", 85 => "0001", 
    86 to 87=> "0010", 88 => "0001", 89 => "0010", 90 => "1111", 91 => "1110", 
    92 => "1101", 93 => "1010", 94 => "1101", 95 => "0011", 96 => "0110", 
    97 => "0100", 98 => "0001", 99 => "1101", 100 => "1010", 101 => "1101", 
    102 => "0000", 103 => "0010" );

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

entity L3_wlo_166_L2_WEIb4t is
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

architecture arch of L3_wlo_166_L2_WEIb4t is
    component L3_wlo_166_L2_WEIb4t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIb4t_rom_U :  component L3_wlo_166_L2_WEIb4t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


