-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbdk_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbdk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111000", 1 => "000010000", 2 => "111111011", 3 => "111011000", 
    4 => "111101101", 5 => "001100110", 6 => "000011101", 7 => "110010101", 
    8 => "000011101", 9 => "000101101", 10 => "000001111", 11 => "001001101", 
    12 => "110110011", 13 => "001001111", 14 => "110010001", 15 => "111100101", 
    16 => "001000100", 17 => "000010011", 18 => "111010111", 19 => "000110011", 
    20 => "111010100", 21 => "110111011", 22 => "010001001", 23 => "111010111", 
    24 => "111010011", 25 => "111110000", 26 => "000010010", 27 => "001000110", 
    28 => "001100000", 29 => "111000011", 30 => "010010110", 31 => "001110000", 
    32 => "110111011", 33 => "110101001", 34 => "000101000", 35 => "110001011", 
    36 => "110100001", 37 => "000000111", 38 => "101000011", 39 => "111011001", 
    40 => "000110010", 41 => "110011100", 42 => "111001011", 43 => "111001001", 
    44 => "110110111", 45 => "000101111", 46 => "000000001", 47 => "111100100", 
    48 => "111000010", 49 => "110101010", 50 => "111100100", 51 => "001100011" );

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

entity L2_wlo_166_L1_WEIbdk is
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

architecture arch of L2_wlo_166_L1_WEIbdk is
    component L2_wlo_166_L1_WEIbdk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbdk_rom_U :  component L2_wlo_166_L1_WEIbdk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


