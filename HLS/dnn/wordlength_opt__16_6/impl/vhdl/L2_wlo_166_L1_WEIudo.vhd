-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIudo_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIudo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001011", 1 => "111000001", 2 => "001001110", 3 => "110001101", 
    4 => "001111000", 5 => "001111010", 6 => "000010100", 7 => "000001110", 
    8 => "010100011", 9 => "101111110", 10 => "010101001", 11 => "010100011", 
    12 => "000111100", 13 => "110111001", 14 => "000011100", 15 => "110111110", 
    16 => "000011101", 17 => "111010100", 18 => "110111001", 19 => "001011111", 
    20 => "001111000", 21 => "101011100", 22 => "000100110", 23 => "001110101", 
    24 => "001101111", 25 => "000011111", 26 => "111101110", 27 => "000101100", 
    28 => "001001110", 29 => "101101100", 30 => "000110010", 31 => "111011101", 
    32 => "111110110", 33 => "111011011", 34 => "001001111", 35 => "000110000", 
    36 => "000000000", 37 => "101111111", 38 => "110001111", 39 => "010101000", 
    40 => "110010100", 41 => "101111110", 42 => "000111110", 43 => "010010100", 
    44 => "000010011", 45 => "110110101", 46 => "010011000", 47 => "110101101", 
    48 => "000111001", 49 => "100110010", 50 => "101000001", 51 => "111111101" );

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

entity L2_wlo_166_L1_WEIudo is
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

architecture arch of L2_wlo_166_L1_WEIudo is
    component L2_wlo_166_L1_WEIudo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIudo_rom_U :  component L2_wlo_166_L1_WEIudo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


