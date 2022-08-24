-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbgk_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbgk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001001010", 1 => "111100010", 2 => "000011111", 3 => "010011011", 
    4 => "110101110", 5 => "101101110", 6 => "110011111", 7 => "000001111", 
    8 => "101011010", 9 => "110100100", 10 => "101100001", 11 => "100011110", 
    12 => "000101010", 13 => "111101000", 14 => "000110000", 15 => "000011111", 
    16 => "111111110", 17 => "111100001", 18 => "111111101", 19 => "111110110", 
    20 => "110110010", 21 => "000011111", 22 => "110000100", 23 => "000000111", 
    24 => "111001000", 25 => "001000101", 26 => "110110011", 27 => "101011101", 
    28 => "110111011", 29 => "001101111", 30 => "110111111", 31 => "110010010", 
    32 => "110111010", 33 => "111001010", 34 => "111011001", 35 => "011000111", 
    36 => "111111100", 37 => "001011001", 38 => "001100011", 39 => "000011011", 
    40 => "001000011", 41 => "000011110", 42 => "001101001", 43 => "000011001", 
    44 => "001110011", 45 => "110011111", 46 => "110000110", 47 => "001010010", 
    48 => "111001110", 49 => "001011101", 50 => "001111000", 51 => "110101001" );

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

entity L2_wlo_166_L1_WEIbgk is
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

architecture arch of L2_wlo_166_L1_WEIbgk is
    component L2_wlo_166_L1_WEIbgk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbgk_rom_U :  component L2_wlo_166_L1_WEIbgk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


