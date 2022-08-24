-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIvdy_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIvdy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000110010", 1 => "101111011", 2 => "001101100", 3 => "110110110", 
    4 => "111111011", 5 => "011101001", 6 => "010001011", 7 => "110001001", 
    8 => "111100101", 9 => "111111011", 10 => "011000011", 11 => "001011110", 
    12 => "111010101", 13 => "001111100", 14 => "111000101", 15 => "111001001", 
    16 => "111001111", 17 => "111011100", 18 => "000010011", 19 => "000010100", 
    20 => "000000100", 21 => "111111111", 22 => "001101010", 23 => "000100110", 
    24 => "001100001", 25 => "000101101", 26 => "000110010", 27 => "010101001", 
    28 => "000001001", 29 => "101000000", 30 => "111110110", 31 => "110001111", 
    32 => "111111101", 33 => "110111111", 34 => "010001010", 35 => "001100101", 
    36 => "000110101", 37 => "110011111", 38 => "100010001", 39 => "000011010", 
    40 => "111001001", 41 => "000111100", 42 => "111101000", 43 => "000100110", 
    44 => "111111100", 45 => "000001010", 46 => "000011000", 47 => "110111101", 
    48 => "111010111", 49 => "000010101", 50 => "000001110", 51 => "111000000" );

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

entity L2_wlo_166_L1_WEIvdy is
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

architecture arch of L2_wlo_166_L1_WEIvdy is
    component L2_wlo_166_L1_WEIvdy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIvdy_rom_U :  component L2_wlo_166_L1_WEIvdy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


