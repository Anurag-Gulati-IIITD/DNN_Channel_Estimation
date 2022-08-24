-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbEo_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbEo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000001110", 1 => "000010110", 2 => "001101010", 3 => "111101100", 
    4 => "000101010", 5 => "000111011", 6 => "001011011", 7 => "111001100", 
    8 => "101000000", 9 => "101110001", 10 => "010011101", 11 => "111110010", 
    12 => "110111010", 13 => "111100000", 14 => "010110000", 15 => "111000001", 
    16 => "000011000", 17 => "110000101", 18 => "000101100", 19 => "000011001", 
    20 => "111011101", 21 => "111110011", 22 => "000100110", 23 => "000011111", 
    24 => "000001111", 25 => "000111000", 26 => "000111011", 27 => "000101111", 
    28 => "000010011", 29 => "111111111", 30 => "110110001", 31 => "000111100", 
    32 => "110011100", 33 => "111111110", 34 => "000010001", 35 => "000111111", 
    36 => "110110101", 37 => "101101101", 38 => "111011101", 39 => "111000001", 
    40 => "111000000", 41 => "110011100", 42 => "000100100", 43 => "000110000", 
    44 => "110110111", 45 => "111011011", 46 => "001110010", 47 => "111111110", 
    48 => "000100010", 49 => "110011110", 50 => "011001011", 51 => "000111101" );

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

entity L2_wlo_166_L1_WEIbEo is
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

architecture arch of L2_wlo_166_L1_WEIbEo is
    component L2_wlo_166_L1_WEIbEo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbEo_rom_U :  component L2_wlo_166_L1_WEIbEo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


