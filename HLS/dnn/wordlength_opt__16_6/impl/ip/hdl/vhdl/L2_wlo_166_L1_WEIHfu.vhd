-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIHfu_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIHfu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000111111", 1 => "101001000", 2 => "000010101", 3 => "000000100", 
    4 => "111000100", 5 => "000110000", 6 => "000111011", 7 => "000001011", 
    8 => "110101110", 9 => "111001011", 10 => "110011101", 11 => "100110111", 
    12 => "110110101", 13 => "001111110", 14 => "000111111", 15 => "010011110", 
    16 => "110101000", 17 => "000010101", 18 => "000011111", 19 => "110111001", 
    20 => "110001000", 21 => "110010011", 22 => "000100101", 23 => "011000111", 
    24 => "000111000", 25 => "111110011", 26 => "010100000", 27 => "111011110", 
    28 => "111000111", 29 => "110111011", 30 => "110011100", 31 => "111010111", 
    32 => "000101011", 33 => "000111011", 34 => "010000010", 35 => "111110000", 
    36 => "000010001", 37 => "010110010", 38 => "111101000", 39 => "110011000", 
    40 => "111010111", 41 => "000110000", 42 => "111100001", 43 => "100011100", 
    44 => "111101011", 45 => "110110000", 46 => "110110100", 47 => "111111111", 
    48 => "111111011", 49 => "111010110", 50 => "111000001", 51 => "000111011" );

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

entity L2_wlo_166_L1_WEIHfu is
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

architecture arch of L2_wlo_166_L1_WEIHfu is
    component L2_wlo_166_L1_WEIHfu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIHfu_rom_U :  component L2_wlo_166_L1_WEIHfu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


