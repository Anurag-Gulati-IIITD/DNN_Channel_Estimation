-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIJfO_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIJfO_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010001011", 1 => "001011101011", 2 => "111111000111", 
    3 => "111111111111", 4 => "000011101110", 5 => "110010111000", 
    6 => "000101100100", 7 => "111110010011", 8 => "100111100110", 
    9 => "110010001110", 10 => "111110011001", 11 => "000011001000", 
    12 => "111010100010", 13 => "110101010001", 14 => "001010000000", 
    15 => "110101010100", 16 => "000011111101", 17 => "001001010011", 
    18 => "000010111001", 19 => "111001111101", 20 => "111001011110", 
    21 => "000011000111", 22 => "111111000000", 23 => "000111011110", 
    24 => "000001001110", 25 => "000110010110", 26 => "010100001111", 
    27 => "010001111011", 28 => "110101111100", 29 => "001011000000", 
    30 => "110000101010", 31 => "111001001110", 32 => "000101110110", 
    33 => "111101100101", 34 => "111000100011", 35 => "100010111001", 
    36 => "111010101111", 37 => "111101011011", 38 => "100101010000", 
    39 => "111101110101", 40 => "001000110111", 41 => "111111101101", 
    42 => "001111000010", 43 => "001001011110", 44 => "111010001000", 
    45 => "000010101001", 46 => "111110011000", 47 => "000111001011", 
    48 => "111111001111", 49 => "001011001111", 50 => "010000100011", 
    51 => "000101000100" );

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

entity L2_wlo_218_L1_WEIJfO is
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

architecture arch of L2_wlo_218_L1_WEIJfO is
    component L2_wlo_218_L1_WEIJfO_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIJfO_rom_U :  component L2_wlo_218_L1_WEIJfO_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


