-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIqcK_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIqcK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010110", 1 => "010000101", 2 => "110111010", 3 => "001000100", 
    4 => "111100110", 5 => "001100110", 6 => "110110000", 7 => "110001000", 
    8 => "101110011", 9 => "000010100", 10 => "110000110", 11 => "001000010", 
    12 => "111100111", 13 => "011010101", 14 => "111110100", 15 => "010100001", 
    16 => "000011000", 17 => "001000110", 18 => "000101111", 19 => "000100110", 
    20 => "001000010", 21 => "000110000", 22 => "001000000", 23 => "101110110", 
    24 => "111101100", 25 => "110101010", 26 => "110110100", 27 => "111011101", 
    28 => "010101111", 29 => "110011010", 30 => "001110101", 31 => "000101100", 
    32 => "001011100", 33 => "000010110", 34 => "101101110", 35 => "101111001", 
    36 => "000110101", 37 => "010100001", 38 => "111100111", 39 => "110100000", 
    40 => "000100010", 41 => "111100001", 42 => "110100110", 43 => "110000100", 
    44 => "000001011", 45 => "111001111", 46 => "110110110", 47 => "000110001", 
    48 => "000101010", 49 => "001100101", 50 => "010010111", 51 => "001011100" );

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

entity L2_wlo_166_L1_WEIqcK is
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

architecture arch of L2_wlo_166_L1_WEIqcK is
    component L2_wlo_166_L1_WEIqcK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIqcK_rom_U :  component L2_wlo_166_L1_WEIqcK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


