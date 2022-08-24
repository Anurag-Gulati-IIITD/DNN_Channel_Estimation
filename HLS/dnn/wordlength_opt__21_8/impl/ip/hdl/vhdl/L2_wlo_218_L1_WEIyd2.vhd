-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIyd2_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIyd2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000110100", 1 => "001110001110", 2 => "111001110010", 
    3 => "111010100101", 4 => "111010101001", 5 => "101100111010", 
    6 => "000110010111", 7 => "001010000110", 8 => "111111000100", 
    9 => "001000100111", 10 => "110000011011", 11 => "111100111011", 
    12 => "101010011011", 13 => "101011000000", 14 => "000011010010", 
    15 => "000110010000", 16 => "110010011010", 17 => "111011110011", 
    18 => "111001010101", 19 => "111001111110", 20 => "000000100000", 
    21 => "000101011001", 22 => "111010100110", 23 => "110111011101", 
    24 => "000110110100", 25 => "111100111111", 26 => "011001111011", 
    27 => "110110011101", 28 => "110111101111", 29 => "001001011010", 
    30 => "111101000110", 31 => "000011011001", 32 => "111001001100", 
    33 => "001000001000", 34 => "000001010101", 35 => "110110001011", 
    36 => "001000001100", 37 => "001001101101", 38 => "001011101100", 
    39 => "110000100001", 40 => "111011010010", 41 => "000010110000", 
    42 => "111110001101", 43 => "111101100000", 44 => "111101011001", 
    45 => "000001011000", 46 => "110101101101", 47 => "111110010010", 
    48 => "110110011000", 49 => "001100010001", 50 => "001000010111", 
    51 => "010001101100" );

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

entity L2_wlo_218_L1_WEIyd2 is
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

architecture arch of L2_wlo_218_L1_WEIyd2 is
    component L2_wlo_218_L1_WEIyd2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIyd2_rom_U :  component L2_wlo_218_L1_WEIyd2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


