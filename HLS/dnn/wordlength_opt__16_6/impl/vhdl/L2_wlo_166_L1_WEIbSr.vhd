-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbSr_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbSr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101110", 1 => "000100000", 2 => "110011101", 3 => "000001101", 
    4 => "010001000", 5 => "001111110", 6 => "001100010", 7 => "000000101", 
    8 => "111001101", 9 => "000010111", 10 => "000010101", 11 => "100111100", 
    12 => "000011011", 13 => "010110001", 14 => "100110110", 15 => "010100000", 
    16 => "111111011", 17 => "000101101", 18 => "000011000", 19 => "110111010", 
    20 => "110010000", 21 => "001001101", 22 => "001001100", 23 => "110011110", 
    24 => "111000110", 25 => "111100011", 26 => "001101011", 27 => "111100000", 
    28 => "111110100", 29 => "111011111", 30 => "010101001", 31 => "110010011", 
    32 => "111101001", 33 => "111110110", 34 => "001011111", 35 => "000001101", 
    36 => "111111111", 37 => "000100000", 38 => "000001011", 39 => "010110101", 
    40 => "000010100", 41 => "000000110", 42 => "000010110", 43 => "101001010", 
    44 => "000001001", 45 => "110111011", 46 => "110111111", 47 => "111011001", 
    48 => "000111010", 49 => "101111110", 50 => "010011000", 51 => "110001001" );

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

entity L2_wlo_166_L1_WEIbSr is
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

architecture arch of L2_wlo_166_L1_WEIbSr is
    component L2_wlo_166_L1_WEIbSr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbSr_rom_U :  component L2_wlo_166_L1_WEIbSr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


