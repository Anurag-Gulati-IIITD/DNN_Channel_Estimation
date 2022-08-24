-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcnw_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcnw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010010", 1 => "001111", 2 => "000010", 3 => "111000", 4 => "110100", 
    5 => "111001", 6 => "000001", 7 => "000110", 8 => "000011", 9 => "111011", 
    10 => "111101", 11 => "111100", 12 => "000000", 13 => "001000", 14 => "111100", 
    15 to 16=> "110111", 17 => "111110", 18 => "000110", 19 => "001111", 20 => "001100", 
    21 => "000010", 22 => "111100", 23 => "111101", 24 => "000101", 25 => "001000", 
    26 => "110111", 27 => "110000", 28 => "110111", 29 => "000100", 30 => "000101", 
    31 => "000111", 32 => "000000", 33 => "111100", 34 => "000001", 35 => "000000", 
    36 => "000101", 37 => "111000", 38 => "110011", 39 => "111011", 40 => "111101", 
    41 => "111111", 42 => "001010", 43 => "000001", 44 => "000100", 45 => "111110", 
    46 to 47=> "111011", 48 => "111000", 49 => "111100", 50 => "111111", 51 => "001001", 
    52 => "000011", 53 => "110101", 54 => "110001", 55 => "110100", 56 => "000001", 
    57 => "001000", 58 => "001001", 59 => "000010", 60 => "111001", 61 => "111010", 
    62 => "000000", 63 => "000101", 64 => "111100", 65 => "111101", 66 => "110001", 
    67 => "111101", 68 => "000111", 69 => "001000", 70 => "001001", 71 => "111110", 
    72 => "111000", 73 => "110101", 74 => "000000", 75 => "000001", 76 => "000100", 
    77 => "111111", 78 => "111011", 79 => "000001", 80 => "001001", 81 => "001110", 
    82 => "000101", 83 to 84=> "111111", 85 => "111100", 86 => "000000", 87 => "111001", 
    88 => "111101", 89 => "110101", 90 => "111011", 91 => "000011", 92 => "001010", 
    93 => "000101", 94 => "000010", 95 => "111111", 96 => "111001", 97 to 98=> "111010", 
    99 => "000000", 100 => "111011", 101 => "000110", 102 => "001010", 103 => "000001" );

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

entity L3_wlo_166_L2_WEIcnw is
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

architecture arch of L3_wlo_166_L2_WEIcnw is
    component L3_wlo_166_L2_WEIcnw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcnw_rom_U :  component L3_wlo_166_L2_WEIcnw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


