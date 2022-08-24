-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbAo_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbAo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011010", 1 => "001011111", 2 => "000101110", 3 => "000001010", 
    4 => "111111100", 5 => "001001001", 6 => "110010000", 7 => "111111000", 
    8 => "010100011", 9 => "000100110", 10 => "110011111", 11 => "000010001", 
    12 => "001001011", 13 => "010101011", 14 => "110100100", 15 => "111001100", 
    16 => "000000001", 17 => "110101111", 18 => "111100111", 19 => "000101101", 
    20 => "001010000", 21 => "111101010", 22 => "110011010", 23 => "111010110", 
    24 => "001000000", 25 => "111100011", 26 => "101000001", 27 => "101010011", 
    28 => "000000011", 29 => "110101110", 30 => "010010101", 31 => "110111010", 
    32 => "111011000", 33 => "110011110", 34 => "000100001", 35 => "111111101", 
    36 => "111101010", 37 => "000110000", 38 => "010011010", 39 => "001110110", 
    40 => "110111100", 41 => "000000101", 42 => "110101011", 43 => "001100101", 
    44 => "000101111", 45 => "000001010", 46 => "110011010", 47 => "000001100", 
    48 => "000001000", 49 => "000101000", 50 => "101101110", 51 => "100111010" );

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

entity L2_wlo_166_L1_WEIbAo is
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

architecture arch of L2_wlo_166_L1_WEIbAo is
    component L2_wlo_166_L1_WEIbAo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbAo_rom_U :  component L2_wlo_166_L1_WEIbAo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


