-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIDeQ_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIDeQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000001011", 1 => "000000100", 2 => "000010011", 3 => "010011001", 
    4 => "101110001", 5 => "111010101", 6 => "110111101", 7 => "101011111", 
    8 => "101000111", 9 => "111110111", 10 => "010111010", 11 => "111110100", 
    12 => "001101100", 13 => "000101011", 14 => "001000110", 15 => "000100011", 
    16 => "101100100", 17 => "111110101", 18 => "111110111", 19 => "000000101", 
    20 => "111011111", 21 => "000001111", 22 => "001111010", 23 => "111101011", 
    24 => "001001110", 25 => "111100111", 26 => "101000110", 27 => "011010100", 
    28 => "111111110", 29 => "000110100", 30 => "111001101", 31 => "111111101", 
    32 => "000011111", 33 => "000010111", 34 => "101110111", 35 => "111111101", 
    36 => "111101011", 37 => "110110011", 38 => "100111011", 39 => "111100101", 
    40 => "111111011", 41 => "001111010", 42 => "000100010", 43 => "111101110", 
    44 => "000101011", 45 => "001010101", 46 => "101000000", 47 => "000001011", 
    48 => "000011011", 49 => "011101110", 50 => "010110101", 51 => "111000110" );

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

entity L2_wlo_166_L1_WEIDeQ is
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

architecture arch of L2_wlo_166_L1_WEIDeQ is
    component L2_wlo_166_L1_WEIDeQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIDeQ_rom_U :  component L2_wlo_166_L1_WEIDeQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


