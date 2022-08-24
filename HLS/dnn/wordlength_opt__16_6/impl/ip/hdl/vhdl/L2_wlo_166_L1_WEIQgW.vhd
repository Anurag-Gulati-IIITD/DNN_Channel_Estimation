-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIQgW_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIQgW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001100", 1 => "000100101", 2 => "001111101", 3 => "110101111", 
    4 => "011001000", 5 => "000100110", 6 => "001000100", 7 => "000101011", 
    8 => "100011001", 9 => "110000010", 10 => "000111011", 11 => "000000111", 
    12 => "110110000", 13 => "111011101", 14 => "010100100", 15 => "110001000", 
    16 => "111110111", 17 => "111110011", 18 => "111000001", 19 => "000010001", 
    20 => "001010101", 21 => "110011100", 22 => "110110010", 23 => "110011110", 
    24 => "000010001", 25 => "000000011", 26 => "111100101", 27 => "110111000", 
    28 => "000100110", 29 => "111010010", 30 => "110111100", 31 => "000001101", 
    32 => "110101000", 33 => "110100110", 34 => "001000011", 35 => "000111000", 
    36 => "001001001", 37 => "101101010", 38 => "111110011", 39 => "110000001", 
    40 => "111011001", 41 => "110101010", 42 => "010000000", 43 => "001101111", 
    44 => "111001101", 45 => "111001110", 46 => "111101100", 47 => "111011110", 
    48 => "111101010", 49 => "110111111", 50 => "010111100", 51 => "001011001" );

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

entity L2_wlo_166_L1_WEIQgW is
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

architecture arch of L2_wlo_166_L1_WEIQgW is
    component L2_wlo_166_L1_WEIQgW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIQgW_rom_U :  component L2_wlo_166_L1_WEIQgW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


