-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbpm_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbpm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100000", 1 => "100011110", 2 => "000000110", 3 => "110111010", 
    4 => "000110111", 5 => "000011101", 6 => "111111011", 7 => "000101110", 
    8 => "001001100", 9 => "101011100", 10 => "111101110", 11 => "001101100", 
    12 => "001001100", 13 => "001111111", 14 => "000001110", 15 => "000001001", 
    16 => "001011001", 17 => "000111111", 18 => "000111100", 19 => "111111011", 
    20 => "001101011", 21 => "000110100", 22 => "000001001", 23 => "010011110", 
    24 => "111000101", 25 => "000100001", 26 => "110010111", 27 => "111101111", 
    28 => "001111110", 29 => "000110110", 30 => "111101111", 31 => "000010010", 
    32 => "111110110", 33 => "110110100", 34 => "001001001", 35 => "110001110", 
    36 => "111101010", 37 => "001001010", 38 => "000001001", 39 => "000110100", 
    40 => "000000011", 41 => "111001000", 42 => "011110000", 43 => "000010101", 
    44 => "000101010", 45 => "101110011", 46 => "001001110", 47 => "110100000", 
    48 => "001101101", 49 => "000000011", 50 => "110011011", 51 => "111111001" );

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

entity L2_wlo_166_L1_WEIbpm is
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

architecture arch of L2_wlo_166_L1_WEIbpm is
    component L2_wlo_166_L1_WEIbpm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbpm_rom_U :  component L2_wlo_166_L1_WEIbpm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


