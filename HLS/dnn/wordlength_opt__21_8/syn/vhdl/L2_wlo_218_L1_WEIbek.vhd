-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbek_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L2_wlo_218_L1_WEIbek_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000101101", 1 => "011001100100", 2 => "001010111011", 
    3 => "110111000101", 4 => "001001110111", 5 => "010110110110", 
    6 => "111011101101", 7 => "111001100011", 8 => "110101111011", 
    9 => "000000101000", 10 => "111000010100", 11 => "001111110100", 
    12 => "111110101100", 13 => "010000010110", 14 => "000000010011", 
    15 => "001000101111", 16 => "000101110001", 17 => "111010000000", 
    18 => "000101110101", 19 => "000101111100", 20 => "111111101000", 
    21 => "111100011101", 22 => "000010100011", 23 => "101000100001", 
    24 => "111101100010", 25 => "000010001011", 26 => "101101011000", 
    27 => "000010111110", 28 => "001010111101", 29 => "110110001001", 
    30 => "111011110001", 31 => "000100011010", 32 => "000011010011", 
    33 => "110001110111", 34 => "000110111101", 35 => "110110110101", 
    36 => "110110101000", 37 => "010100011000", 38 => "111010011010", 
    39 => "110001100011", 40 => "000000101101", 41 => "110110100010", 
    42 => "111000000101", 43 => "110100000000", 44 => "000010111100", 
    45 => "111011111100", 46 => "000100010000", 47 => "111100111100", 
    48 => "000001010011", 49 => "001010100011", 50 => "001110101100", 
    51 => "001100000011" );

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

entity L2_wlo_218_L1_WEIbek is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIbek is
    component L2_wlo_218_L1_WEIbek_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbek_rom_U :  component L2_wlo_218_L1_WEIbek_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


