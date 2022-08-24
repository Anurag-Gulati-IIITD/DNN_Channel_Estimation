-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcqw_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcqw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10011", 1 => "11110", 2 => "00111", 3 => "01101", 4 => "01100", 
    5 => "00000", 6 => "11010", 7 => "11101", 8 => "11010", 9 => "00000", 
    10 => "00100", 11 => "11111", 12 => "11101", 13 => "00100", 14 => "00010", 
    15 => "00100", 16 => "00011", 17 => "11101", 18 => "11100", 19 => "00010", 
    20 => "00000", 21 => "11011", 22 => "11001", 23 => "11000", 24 => "11100", 
    25 => "01001", 26 => "00010", 27 => "11011", 28 => "10010", 29 => "10110", 
    30 => "00111", 31 => "01100", 32 => "00100", 33 => "11011", 34 => "10101", 
    35 => "11000", 36 => "00000", 37 => "01010", 38 => "00111", 39 => "00100", 
    40 => "11110", 41 to 43=> "11011", 44 => "10111", 45 => "11011", 46 => "11111", 
    47 => "00100", 48 => "01010", 49 => "01001", 50 => "00010", 51 => "10111", 
    52 => "00111", 53 => "01011", 54 => "01110", 55 => "00001", 56 => "10111", 
    57 => "10101", 58 => "10110", 59 => "11111", 60 => "00100", 61 => "00000", 
    62 => "11110", 63 => "11111", 64 => "11110", 65 => "00011", 66 => "00110", 
    67 => "11101", 68 => "11001", 69 => "00000", 70 => "11111", 71 => "00001", 
    72 => "11101", 73 to 74=> "11100", 75 => "00110", 76 => "00101", 77 => "00100", 
    78 => "10100", 79 => "11001", 80 => "11110", 81 to 82=> "00111", 83 => "00000", 
    84 => "10101", 85 => "10111", 86 => "11100", 87 => "01011", 88 => "01000", 
    89 => "00100", 90 => "11101", 91 => "10101", 92 => "11000", 93 => "11101", 
    94 to 95=> "00000", 96 => "00010", 97 => "00100", 98 => "00111", 99 => "01001", 
    100 => "00001", 101 => "11000", 102 => "10010", 103 => "10100" );

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

entity L3_wlo_166_L2_WEIcqw is
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

architecture arch of L3_wlo_166_L2_WEIcqw is
    component L3_wlo_166_L2_WEIcqw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcqw_rom_U :  component L3_wlo_166_L2_WEIcqw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


