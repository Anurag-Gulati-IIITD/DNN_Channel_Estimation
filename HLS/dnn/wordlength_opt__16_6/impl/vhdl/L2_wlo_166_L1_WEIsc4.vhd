-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIsc4_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIsc4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100100", 1 => "111010111", 2 => "101111000", 3 => "010001000", 
    4 => "000100000", 5 => "100011101", 6 => "000011110", 7 => "010101010", 
    8 => "111011111", 9 => "110101111", 10 => "101110111", 11 => "110001111", 
    12 => "111111111", 13 => "111010100", 14 => "001101000", 15 => "111101100", 
    16 => "000000100", 17 => "001101111", 18 => "000010001", 19 => "111111100", 
    20 => "001001001", 21 => "000011110", 22 => "110100101", 23 => "111001000", 
    24 => "001001101", 25 => "110100111", 26 => "110000100", 27 => "111011010", 
    28 => "000001010", 29 => "010011010", 30 => "111011110", 31 => "111011111", 
    32 => "110111010", 33 => "111001001", 34 => "000100111", 35 => "010000000", 
    36 => "110011101", 37 => "000000111", 38 => "001111111", 39 => "000101100", 
    40 => "111101111", 41 => "111000001", 42 => "000101000", 43 => "000000011", 
    44 => "000010110", 45 => "110011011", 46 => "111110100", 47 => "111101101", 
    48 => "111111101", 49 => "111110001", 50 => "000011111", 51 => "111000100" );

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

entity L2_wlo_166_L1_WEIsc4 is
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

architecture arch of L2_wlo_166_L1_WEIsc4 is
    component L2_wlo_166_L1_WEIsc4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIsc4_rom_U :  component L2_wlo_166_L1_WEIsc4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


