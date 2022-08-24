-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbml_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbml_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110010001", 1 => "000111101", 2 => "110111101", 3 => "000001111", 
    4 => "001011010", 5 => "101000111", 6 => "111110100", 7 => "001100101", 
    8 => "111010011", 9 => "001011111", 10 => "101111000", 11 => "111000011", 
    12 => "111010000", 13 => "101101101", 14 => "000011001", 15 => "001110110", 
    16 => "000010001", 17 => "010101011", 18 => "001001011", 19 => "110100000", 
    20 => "111000100", 21 => "111101100", 22 => "101100000", 23 => "110001110", 
    24 => "110111110", 25 => "111101011", 26 => "001111110", 27 => "101011001", 
    28 => "110100111", 29 => "010111100", 30 => "000100010", 31 => "000111101", 
    32 => "111001111", 33 => "010011001", 34 => "110001110", 35 => "110010111", 
    36 => "000011111", 37 => "010001101", 38 => "011000100", 39 => "111011111", 
    40 => "000001010", 41 => "111110111", 42 => "110010111", 43 => "110011110", 
    44 => "111100100", 45 => "001000101", 46 => "111110100", 47 => "111101000", 
    48 => "110001110", 49 => "000111111", 50 => "000010100", 51 => "010011111" );

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

entity L2_wlo_166_L1_WEIbml is
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

architecture arch of L2_wlo_166_L1_WEIbml is
    component L2_wlo_166_L1_WEIbml_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbml_rom_U :  component L2_wlo_166_L1_WEIbml_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


