-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbml_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbml_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110010001000", 1 => "000111101100", 2 => "110111101110", 
    3 => "000001111101", 4 => "001011010110", 5 => "101000111100", 
    6 => "111110100100", 7 => "001100101101", 8 => "111010011110", 
    9 => "001011111010", 10 => "101111000011", 11 => "111000011010", 
    12 => "111010000001", 13 => "101101101001", 14 => "000011001111", 
    15 => "001110110010", 16 => "000010001110", 17 => "010101011011", 
    18 => "001001011001", 19 => "110100000100", 20 => "111000100101", 
    21 => "111101100000", 22 => "101100000111", 23 => "110001110110", 
    24 => "110111110101", 25 => "111101011111", 26 => "001111110011", 
    27 => "101011001100", 28 => "110100111000", 29 => "010111100111", 
    30 => "000100010100", 31 => "000111101010", 32 => "111001111101", 
    33 => "010011001100", 34 => "110001110000", 35 => "110010111100", 
    36 => "000011111101", 37 => "010001101010", 38 => "011000100101", 
    39 => "111011111001", 40 => "000001010101", 41 => "111110111111", 
    42 => "110010111000", 43 => "110011110100", 44 => "111100100100", 
    45 => "001000101100", 46 => "111110100010", 47 => "111101000010", 
    48 => "110001110000", 49 => "000111111000", 50 => "000010100000", 
    51 => "010011111100" );

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

entity L2_wlo_218_L1_WEIbml is
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

architecture arch of L2_wlo_218_L1_WEIbml is
    component L2_wlo_218_L1_WEIbml_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbml_rom_U :  component L2_wlo_218_L1_WEIbml_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


