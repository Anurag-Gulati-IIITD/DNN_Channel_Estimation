-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbom_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbom_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010000", 1 => "110111100", 2 => "110111001", 3 => "101110110", 
    4 => "001011100", 5 => "110101001", 6 => "000110100", 7 => "111111010", 
    8 => "010011000", 9 => "101111100", 10 => "110100010", 11 => "000111000", 
    12 => "000001001", 13 => "111000010", 14 => "000001000", 15 => "111000111", 
    16 => "001111000", 17 => "001001000", 18 => "000110101", 19 => "111010010", 
    20 => "111001010", 21 => "001001110", 22 => "111010111", 23 => "001000001", 
    24 => "111011010", 25 => "111011000", 26 => "110011100", 27 => "111100111", 
    28 => "000010011", 29 => "001100111", 30 => "111111110", 31 => "000001111", 
    32 => "110110000", 33 => "000011000", 34 => "000001101", 35 => "101101111", 
    36 => "000010110", 37 => "001001011", 38 => "011011000", 39 => "001001100", 
    40 => "111001011", 41 => "110001111", 42 => "010101001", 43 => "111001011", 
    44 => "000110111", 45 => "110100000", 46 => "000111000", 47 => "110011111", 
    48 => "001001011", 49 => "111010100", 50 => "101111111", 51 => "111101110" );

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

entity L2_wlo_166_L1_WEIbom is
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

architecture arch of L2_wlo_166_L1_WEIbom is
    component L2_wlo_166_L1_WEIbom_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbom_rom_U :  component L2_wlo_166_L1_WEIbom_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


