-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbwn_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbwn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000000", 1 => "101110110", 2 => "101101000", 3 => "001101000", 
    4 => "110010111", 5 => "111101000", 6 => "111111101", 7 => "110100110", 
    8 => "110011010", 9 => "111010111", 10 => "110100101", 11 => "100101011", 
    12 => "111110100", 13 => "001010101", 14 => "001010110", 15 => "010100010", 
    16 => "111111010", 17 => "001000000", 18 => "000101110", 19 => "110001101", 
    20 => "110110010", 21 => "000101110", 22 => "010011000", 23 => "010101001", 
    24 => "111000111", 25 => "110111001", 26 => "011011000", 27 => "010101100", 
    28 => "000100100", 29 => "111110001", 30 => "111100110", 31 => "000010010", 
    32 => "001001011", 33 => "000011111", 34 => "110111011", 35 => "100111001", 
    36 => "000011110", 37 => "010000100", 38 => "101111110", 39 => "110011111", 
    40 => "001001010", 41 => "001110100", 42 => "001010110", 43 => "110100110", 
    44 => "001011010", 45 => "110001110", 46 => "110001100", 47 => "000001111", 
    48 => "000011000", 49 => "000111001", 50 => "001000011", 51 => "000111000" );

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

entity L2_wlo_166_L1_WEIbwn is
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

architecture arch of L2_wlo_166_L1_WEIbwn is
    component L2_wlo_166_L1_WEIbwn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbwn_rom_U :  component L2_wlo_166_L1_WEIbwn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


