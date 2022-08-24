-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIThq_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIThq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001100111", 1 => "111110010", 2 => "110100110", 3 => "001011100", 
    4 => "101011010", 5 => "111101101", 6 => "110111100", 7 => "111110000", 
    8 => "001100001", 9 => "001111101", 10 => "100100101", 11 => "101111010", 
    12 => "001011110", 13 => "111011000", 14 => "110110101", 15 => "111111101", 
    16 => "110101011", 17 => "000100100", 18 => "000000100", 19 => "101011111", 
    20 => "110100000", 21 => "001001110", 22 => "001010111", 23 => "000000000", 
    24 => "111001110", 25 => "000010000", 26 => "010111110", 27 => "000110001", 
    28 => "110011100", 29 => "000001010", 30 => "000010000", 31 => "111011011", 
    32 => "000001000", 33 => "010110100", 34 => "101011101", 35 => "001001101", 
    36 => "111110110", 37 => "010101011", 38 => "110110110", 39 => "000110000", 
    40 => "000011110", 41 => "001011000", 42 => "101010001", 43 => "111011001", 
    44 => "001001000", 45 => "111101111", 46 => "110010001", 47 => "000000111", 
    48 => "000111101", 49 => "001111011", 50 => "101011101", 51 => "111100110" );

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

entity L2_wlo_166_L1_WEIThq is
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

architecture arch of L2_wlo_166_L1_WEIThq is
    component L2_wlo_166_L1_WEIThq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIThq_rom_U :  component L2_wlo_166_L1_WEIThq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


