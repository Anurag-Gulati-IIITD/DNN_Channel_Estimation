-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcMA_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcMA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110110", 1 => "101101", 2 => "110010", 3 => "111110", 4 => "001011", 
    5 => "001001", 6 => "000001", 7 => "111011", 8 => "111001", 9 => "111110", 
    10 => "000111", 11 => "001000", 12 => "000100", 13 => "000000", 14 => "111001", 
    15 => "000100", 16 => "010000", 17 => "000000", 18 => "000100", 19 => "110101", 
    20 => "110110", 21 => "000011", 22 => "010001", 23 => "000111", 24 => "000000", 
    25 => "110111", 26 => "000000", 27 => "000101", 28 => "001000", 29 => "000001", 
    30 => "111000", 31 => "111101", 32 => "000000", 33 => "000001", 34 => "000010", 
    35 => "111111", 36 => "000000", 37 => "000010", 38 => "000100", 39 to 40=> "111100", 
    41 => "110111", 42 => "111110", 43 => "000010", 44 => "000110", 45 => "000011", 
    46 to 47=> "000000", 48 => "111001", 49 => "111011", 50 => "111111", 51 => "000100", 
    52 => "101110", 53 => "000000", 54 => "001001", 55 => "001111", 56 => "001010", 
    57 => "000001", 58 => "110101", 59 => "111010", 60 => "000011", 61 => "001011", 
    62 => "000111", 63 => "000010", 64 => "110110", 65 => "111111", 66 => "001011", 
    67 => "000101", 68 => "000000", 69 => "111010", 70 => "110000", 71 => "111010", 
    72 to 73=> "001001", 74 => "000011", 75 => "111001", 76 => "110001", 77 => "111110", 
    78 => "001001", 79 => "000101", 80 => "111010", 81 => "110110", 82 => "111101", 
    83 => "111110", 84 => "001010", 85 => "000001", 86 => "000100", 87 => "111110", 
    88 => "000010", 89 => "111110", 90 => "111101", 91 => "111011", 92 => "111001", 
    93 => "000001", 94 => "000100", 95 => "001000", 96 => "000011", 97 => "111110", 
    98 => "110101", 99 => "111010", 100 => "111100", 101 => "000110", 102 => "001000", 
    103 => "111111" );

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

entity L3_wlo_166_L2_WEIcMA is
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

architecture arch of L3_wlo_166_L2_WEIcMA is
    component L3_wlo_166_L2_WEIcMA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcMA_rom_U :  component L3_wlo_166_L2_WEIcMA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


