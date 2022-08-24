-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEImb6_rom is 
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


architecture rtl of L2_wlo_166_L1_WEImb6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011010", 1 => "110100000", 2 => "110111000", 3 => "111110001", 
    4 => "111000111", 5 => "110000010", 6 => "000101100", 7 => "001110111", 
    8 => "110100011", 9 => "110111111", 10 => "001111100", 11 => "100110011", 
    12 => "000010110", 13 => "111000001", 14 => "000101110", 15 => "101101011", 
    16 => "111010000", 17 => "010001100", 18 => "111100010", 19 => "111000100", 
    20 => "111001010", 21 => "000010000", 22 => "101110000", 23 => "001110111", 
    24 => "111101011", 25 => "111001011", 26 => "010010001", 27 => "100011000", 
    28 => "111000110", 29 => "001011010", 30 => "111011010", 31 => "111101011", 
    32 => "000110000", 33 => "000010001", 34 => "111011000", 35 => "000011110", 
    36 => "000001001", 37 => "111010110", 38 => "010000110", 39 => "000110010", 
    40 => "111100010", 41 => "001101000", 42 => "111111111", 43 => "010000010", 
    44 => "111100111", 45 => "010000111", 46 => "111001111", 47 => "001000000", 
    48 => "111000011", 49 => "111110011", 50 => "000001101", 51 => "110011001" );

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

entity L2_wlo_166_L1_WEImb6 is
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

architecture arch of L2_wlo_166_L1_WEImb6 is
    component L2_wlo_166_L1_WEImb6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEImb6_rom_U :  component L2_wlo_166_L1_WEImb6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


