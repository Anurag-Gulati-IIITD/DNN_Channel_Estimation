-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbom_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbom_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010000111", 1 => "110111100000", 2 => "110111001001", 
    3 => "101110110110", 4 => "001011100111", 5 => "110101001000", 
    6 => "000110100111", 7 => "111111010000", 8 => "010011000111", 
    9 => "101111100110", 10 => "110100010110", 11 => "000111000001", 
    12 => "000001001100", 13 => "111000010111", 14 => "000001000100", 
    15 => "111000111001", 16 => "001111000111", 17 => "001001000111", 
    18 => "000110101100", 19 => "111010010001", 20 => "111001010000", 
    21 => "001001110110", 22 => "111010111010", 23 => "001000001000", 
    24 => "111011010101", 25 => "111011000010", 26 => "110011100010", 
    27 => "111100111100", 28 => "000010011100", 29 => "001100111011", 
    30 => "111111110011", 31 => "000001111110", 32 => "110110000011", 
    33 => "000011000010", 34 => "000001101011", 35 => "101101111011", 
    36 => "000010110111", 37 => "001001011110", 38 => "011011000110", 
    39 => "001001100001", 40 => "111001011000", 41 => "110001111011", 
    42 => "010101001010", 43 => "111001011110", 44 => "000110111100", 
    45 => "110100000110", 46 => "000111000100", 47 => "110011111010", 
    48 => "001001011001", 49 => "111010100001", 50 => "101111111010", 
    51 => "111101110010" );

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

entity L2_wlo_218_L1_WEIbom is
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

architecture arch of L2_wlo_218_L1_WEIbom is
    component L2_wlo_218_L1_WEIbom_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbom_rom_U :  component L2_wlo_218_L1_WEIbom_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


