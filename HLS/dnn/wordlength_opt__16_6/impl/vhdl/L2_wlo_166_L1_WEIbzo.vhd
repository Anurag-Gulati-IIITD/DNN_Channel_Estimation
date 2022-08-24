-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbzo_rom is 
    generic(
             DWIDTH     : integer := 9; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 52
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L2_wlo_166_L1_WEIbzo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000110", 1 => "011101110", 2 => "000100100", 3 => "000101110", 
    4 => "000111101", 5 => "110001100", 6 => "110001110", 7 => "000011000", 
    8 => "111111110", 9 => "000001111", 10 => "110111010", 11 => "010101100", 
    12 => "001101110", 13 => "111011101", 14 => "101010010", 15 => "100100000", 
    16 => "000100111", 17 => "001111010", 18 => "111001111", 19 => "001000011", 
    20 => "000100000", 21 => "000101011", 22 => "111101100", 23 => "100110000", 
    24 => "111001001", 25 => "111010101", 26 => "110100001", 27 => "111010100", 
    28 => "000010111", 29 => "000111000", 30 => "011001111", 31 => "111010001", 
    32 => "001011101", 33 => "111101110", 34 => "110111010", 35 => "101001110", 
    36 => "111001011", 37 => "000011101", 38 => "001000001", 39 => "111010110", 
    40 => "000100011", 41 => "110111110", 42 => "101111110", 43 => "011010001", 
    44 => "000111000", 45 => "000111010", 46 => "000101100", 47 => "000110111", 
    48 => "110110100", 49 => "010010101", 50 => "111001001", 51 => "111000010" );

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

entity L2_wlo_166_L1_WEIbzo is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbzo is
    component L2_wlo_166_L1_WEIbzo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbzo_rom_U :  component L2_wlo_166_L1_WEIbzo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


