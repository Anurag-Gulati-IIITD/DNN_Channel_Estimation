-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbhl_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbhl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111111010", 1 => "000001111", 2 => "111010010", 3 => "000010111", 
    4 => "000000100", 5 => "101010100", 6 => "000110011", 7 => "001001000", 
    8 => "000101010", 9 => "101101011", 10 => "111100011", 11 => "110111111", 
    12 => "010000010", 13 => "110011100", 14 => "001001001", 15 => "111001110", 
    16 => "001001001", 17 => "000101110", 18 => "110101010", 19 => "111100110", 
    20 => "000101111", 21 => "111001100", 22 => "101011001", 23 => "000001110", 
    24 => "010000001", 25 => "000101100", 26 => "110101000", 27 => "111111101", 
    28 => "000000011", 29 => "010110001", 30 => "110101000", 31 => "111011111", 
    32 => "110101000", 33 => "000001111", 34 => "001011100", 35 => "010011001", 
    36 => "111111000", 37 => "000010011", 38 => "001010010", 39 => "000000110", 
    40 => "111011110", 41 => "110110011", 42 => "000100111", 43 => "001111000", 
    44 => "110100110", 45 => "111110000", 46 => "110101101", 47 => "111110001", 
    48 => "000100000", 49 => "000001100", 50 => "111010000", 51 => "110001010" );

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

entity L2_wlo_166_L1_WEIbhl is
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

architecture arch of L2_wlo_166_L1_WEIbhl is
    component L2_wlo_166_L1_WEIbhl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbhl_rom_U :  component L2_wlo_166_L1_WEIbhl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


