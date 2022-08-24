-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIOgC_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIOgC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001001", 1 => "100001100", 2 => "000111111", 3 => "001100110", 
    4 => "111010010", 5 => "111010101", 6 => "001101000", 7 => "001100101", 
    8 => "000000100", 9 => "111111100", 10 => "001111110", 11 => "000000010", 
    12 => "000110110", 13 => "110101010", 14 => "000101111", 15 => "010110111", 
    16 => "111111000", 17 => "111111011", 18 => "111001111", 19 => "000101011", 
    20 => "001000000", 21 => "111110000", 22 => "111001111", 23 => "010110111", 
    24 => "010000000", 25 => "111111110", 26 => "110001101", 27 => "111111000", 
    28 => "111011111", 29 => "001010000", 30 => "101001010", 31 => "001110011", 
    32 => "000000100", 33 => "000100111", 34 => "000110010", 35 => "010100101", 
    36 => "111101001", 37 => "110100000", 38 => "110001101", 39 => "110110000", 
    40 => "111101011", 41 => "001000000", 42 => "111001011", 43 => "100100001", 
    44 => "000100101", 45 => "111110101", 46 => "110011110", 47 => "001101010", 
    48 => "110010101", 49 => "110100111", 50 => "111001110", 51 => "001001000" );

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

entity L2_wlo_166_L1_WEIOgC is
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

architecture arch of L2_wlo_166_L1_WEIOgC is
    component L2_wlo_166_L1_WEIOgC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIOgC_rom_U :  component L2_wlo_166_L1_WEIOgC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


