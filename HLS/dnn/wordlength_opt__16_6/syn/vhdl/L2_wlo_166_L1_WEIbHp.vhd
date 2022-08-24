-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbHp_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbHp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001011100", 1 => "000010111", 2 => "110000000", 3 => "000110000", 
    4 => "101110000", 5 => "001000011", 6 => "001000111", 7 => "110100000", 
    8 => "011000001", 9 => "001111011", 10 => "100100010", 11 => "110000101", 
    12 => "001100101", 13 => "000011001", 14 => "110111010", 15 => "111100111", 
    16 => "110100110", 17 => "001001110", 18 => "111010011", 19 => "111100001", 
    20 => "111010111", 21 => "001100001", 22 => "001000110", 23 => "001000000", 
    24 => "111001010", 25 => "111101110", 26 => "000111110", 27 => "000011000", 
    28 => "111001000", 29 => "110110000", 30 => "010110010", 31 => "101110000", 
    32 => "010001000", 33 => "000010110", 34 => "110111001", 35 => "111101100", 
    36 => "001011000", 37 => "001110011", 38 => "001001100", 39 => "001110110", 
    40 => "001010000", 41 => "010000111", 42 => "111101001", 43 => "111101100", 
    44 => "000001000", 45 => "111010111", 46 => "111111010", 47 => "111101101", 
    48 => "000011011", 49 => "010001111", 50 => "110010011", 51 => "110000101" );

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

entity L2_wlo_166_L1_WEIbHp is
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

architecture arch of L2_wlo_166_L1_WEIbHp is
    component L2_wlo_166_L1_WEIbHp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbHp_rom_U :  component L2_wlo_166_L1_WEIbHp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


