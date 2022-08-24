-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIGfk_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEIGfk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001001100", 1 => "1101000100", 2 => "0001111010", 3 => "1111000010", 
    4 => "0000001010", 5 => "0100101000", 6 => "0001000001", 7 => "0000001101", 
    8 => "0001101111", 9 => "0001001100", 10 => "1101111100", 11 => "0001101001", 
    12 => "1111110001", 13 => "0001111001", 14 => "1111011010", 15 => "0000101110", 
    16 => "1111110110", 17 => "1110101010", 18 => "1110110011", 19 => "0000110111", 
    20 => "1111101101", 21 => "1110100000", 22 => "0000010011", 23 => "0001110111", 
    24 => "0000111110", 25 => "1111110101", 26 => "0001100000", 27 => "1101010000", 
    28 => "1111001100", 29 => "1011001001", 30 => "0000101001", 31 => "0000000001", 
    32 => "1111001001", 33 => "1111011101", 34 => "0011000000", 35 => "0001000000", 
    36 => "1111101001", 37 => "0001100000", 38 => "0010110011", 39 => "1110110001", 
    40 => "1110101010", 41 => "1111100100", 42 => "0000010111", 43 => "1111111111", 
    44 => "1110101010", 45 => "1111111000", 46 => "0000001111", 47 => "1101100111", 
    48 => "0000000001", 49 => "1110000001", 50 => "1101111001", 51 => "0001100001" );

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

entity L2_wlo_166_L1_WEIGfk is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIGfk is
    component L2_wlo_166_L1_WEIGfk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIGfk_rom_U :  component L2_wlo_166_L1_WEIGfk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


