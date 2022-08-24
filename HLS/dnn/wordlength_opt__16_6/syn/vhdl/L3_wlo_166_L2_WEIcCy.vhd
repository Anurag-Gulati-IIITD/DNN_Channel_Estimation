-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcCy_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcCy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010", 1 => "000001", 2 => "111000", 3 => "000001", 4 => "001101", 
    5 => "000011", 6 => "000010", 7 => "110111", 8 => "111011", 9 => "111110", 
    10 to 11=> "010000", 12 => "001110", 13 => "000100", 14 => "111101", 15 => "110101", 
    16 => "111010", 17 => "000100", 18 => "000101", 19 => "111101", 20 => "000110", 
    21 => "111100", 22 => "000010", 23 => "111110", 24 => "110111", 25 => "111011", 
    26 => "111100", 27 => "110110", 28 => "111100", 29 => "000011", 30 => "000010", 
    31 => "001011", 32 => "001110", 33 => "111101", 34 => "001000", 35 => "000110", 
    36 => "111100", 37 => "000001", 38 => "110010", 39 => "110111", 40 => "111110", 
    41 => "000001", 42 => "001101", 43 => "001010", 44 => "111100", 45 => "110001", 
    46 => "110010", 47 => "000101", 48 => "000111", 49 => "000011", 50 => "110011", 
    51 => "101101", 52 => "110111", 53 => "111011", 54 => "111101", 55 => "000001", 
    56 => "000100", 57 => "111010", 58 to 59=> "110110", 60 => "001000", 61 => "001100", 
    62 => "001011", 63 => "000101", 64 => "110011", 65 => "110001", 66 => "110110", 
    67 => "111110", 68 => "111100", 69 => "001111", 70 => "000111", 71 => "000000", 
    72 => "000001", 73 => "000010", 74 => "110101", 75 => "111100", 76 => "000000", 
    77 => "111111", 78 => "000001", 79 => "000010", 80 => "000011", 81 => "000010", 
    82 => "001001", 83 => "111001", 84 => "001000", 85 to 86=> "111101", 87 => "000100", 
    88 => "110110", 89 => "110101", 90 => "111111", 91 => "000000", 92 => "001011", 
    93 => "001001", 94 => "111110", 95 => "110100", 96 => "110111", 97 => "111101", 
    98 => "000000", 99 => "001000", 100 => "111101", 101 => "110100", 102 => "111101", 
    103 => "000001" );

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

entity L3_wlo_166_L2_WEIcCy is
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

architecture arch of L3_wlo_166_L2_WEIcCy is
    component L3_wlo_166_L2_WEIcCy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcCy_rom_U :  component L3_wlo_166_L2_WEIcCy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


