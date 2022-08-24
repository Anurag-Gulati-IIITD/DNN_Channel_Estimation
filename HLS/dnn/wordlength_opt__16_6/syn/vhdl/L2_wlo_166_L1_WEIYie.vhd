-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIYie_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIYie_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000111110", 1 => "001110110", 2 => "000010010", 3 => "111011100", 
    4 => "101100011", 5 => "010010010", 6 => "000010110", 7 => "101101101", 
    8 => "111010110", 9 => "110000110", 10 => "111010110", 11 => "111110001", 
    12 => "111101101", 13 => "010100001", 14 => "101101110", 15 => "000011101", 
    16 => "000000111", 17 => "110111101", 18 => "110011101", 19 => "000110110", 
    20 => "000001100", 21 => "000000001", 22 => "010110010", 23 => "111001000", 
    24 => "001000010", 25 => "111110010", 26 => "110000101", 27 => "111010000", 
    28 => "000001000", 29 => "101110110", 30 => "011011101", 31 => "001000111", 
    32 => "011000011", 33 => "111101000", 34 => "001111111", 35 => "000101110", 
    36 => "111100001", 37 => "111100110", 38 => "001101100", 39 => "000010000", 
    40 => "111111101", 41 => "001110010", 42 => "011010111", 43 => "111110000", 
    44 => "000111100", 45 => "001011010", 46 => "111100010", 47 => "111000010", 
    48 => "000011011", 49 => "110101011", 50 => "000011110", 51 => "110010101" );

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

entity L2_wlo_166_L1_WEIYie is
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

architecture arch of L2_wlo_166_L1_WEIYie is
    component L2_wlo_166_L1_WEIYie_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIYie_rom_U :  component L2_wlo_166_L1_WEIYie_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


