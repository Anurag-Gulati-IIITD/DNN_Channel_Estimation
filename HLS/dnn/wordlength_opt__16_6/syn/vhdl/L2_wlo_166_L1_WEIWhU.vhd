-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIWhU_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIWhU_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101011", 1 => "110110011", 2 => "111001111", 3 => "111100110", 
    4 => "001100001", 5 => "101100101", 6 => "111110010", 7 => "001000111", 
    8 => "101010000", 9 => "010001111", 10 => "001010100", 11 => "000111100", 
    12 => "000011101", 13 => "111110000", 14 => "000010010", 15 => "000110010", 
    16 => "001110011", 17 => "001010101", 18 => "001000001", 19 => "001001001", 
    20 => "111110101", 21 => "111101010", 22 => "110011000", 23 => "111011011", 
    24 => "000011010", 25 => "110111111", 26 => "111000101", 27 => "110001001", 
    28 => "001000100", 29 => "010111110", 30 => "111100100", 31 => "111101010", 
    32 => "110101011", 33 => "110100000", 34 => "001010010", 35 => "101010110", 
    36 => "110001011", 37 => "101101010", 38 => "000010111", 39 => "111110101", 
    40 => "000001101", 41 => "101111111", 42 => "110010101", 43 => "110100101", 
    44 => "000110110", 45 => "000011010", 46 => "000010001", 47 => "001011001", 
    48 => "111100011", 49 => "111111000", 50 => "010011000", 51 => "000010111" );

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

entity L2_wlo_166_L1_WEIWhU is
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

architecture arch of L2_wlo_166_L1_WEIWhU is
    component L2_wlo_166_L1_WEIWhU_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIWhU_rom_U :  component L2_wlo_166_L1_WEIWhU_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


