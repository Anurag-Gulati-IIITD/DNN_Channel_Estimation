-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcKz_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcKz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00110", 1 => "11110", 2 => "00011", 3 => "00110", 4 => "00000", 
    5 => "11011", 6 => "00010", 7 => "11010", 8 => "11101", 9 => "00001", 
    10 to 11=> "00011", 12 => "00111", 13 => "00110", 14 => "11100", 15 => "10010", 
    16 => "11100", 17 => "11111", 18 => "00010", 19 => "00101", 20 => "11001", 
    21 => "11101", 22 => "00110", 23 => "00100", 24 => "11111", 25 => "00010", 
    26 => "10101", 27 => "01001", 28 => "11111", 29 => "00110", 30 => "00100", 
    31 => "10111", 32 => "10110", 33 => "11010", 34 => "00000", 35 => "00001", 
    36 => "01010", 37 => "00010", 38 to 39=> "11110", 40 => "00011", 41 => "11111", 
    42 => "11101", 43 => "11010", 44 => "11111", 45 => "00000", 46 => "00100", 
    47 => "00111", 48 => "00110", 49 => "11010", 50 => "11101", 51 => "10101", 
    52 => "00100", 53 => "00000", 54 => "11011", 55 => "11110", 56 => "11101", 
    57 => "11100", 58 => "11110", 59 => "00100", 60 to 61=> "00001", 62 => "00101", 
    63 => "00100", 64 => "11101", 65 => "10100", 66 => "11101", 67 => "11111", 
    68 => "00011", 69 => "00111", 70 => "11010", 71 => "11101", 72 => "00100", 
    73 => "11110", 74 => "00010", 75 => "00011", 76 => "11100", 77 => "10111", 
    78 => "11101", 79 => "00101", 80 => "01011", 81 => "10110", 82 => "11001", 
    83 => "11011", 84 => "11110", 85 => "00011", 86 => "01100", 87 => "00010", 
    88 => "11101", 89 => "00001", 90 => "11101", 91 to 92=> "11111", 93 to 95=> "00000", 
    96 => "00010", 97 => "00100", 98 => "00000", 99 => "11100", 100 => "11101", 
    101 => "10110", 102 => "11011", 103 => "01000" );

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

entity L3_wlo_166_L2_WEIcKz is
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

architecture arch of L3_wlo_166_L2_WEIcKz is
    component L3_wlo_166_L2_WEIcKz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcKz_rom_U :  component L3_wlo_166_L2_WEIcKz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


