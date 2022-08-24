-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIEe0_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIEe0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000101010", 1 => "0010001110", 2 => "0000111101", 3 => "0000011100", 
    4 => "1111111110", 5 => "1110000111", 6 => "1110010010", 7 => "1111100110", 
    8 => "1110100010", 9 => "0010001011", 10 => "0010000111", 11 => "1111110101", 
    12 => "0000111111", 13 => "1110000100", 14 => "1111101111", 15 => "1111001110", 
    16 => "0000110010", 17 => "1111011101", 18 => "1111010001", 19 => "0000011100", 
    20 => "0001000101", 21 => "1111110111", 22 => "1111011010", 23 => "1011101001", 
    24 => "0000001001", 25 => "1111000000", 26 => "1110001011", 27 => "0010111111", 
    28 to 29=> "0001010000", 30 => "1111111000", 31 => "1111010110", 32 => "1111010101", 
    33 => "1111101010", 34 => "1110010011", 35 => "0000110011", 36 => "0000111001", 
    37 => "1110001101", 38 => "1111010110", 39 => "1111111101", 40 => "0000011010", 
    41 => "0000001010", 42 => "1110100000", 43 => "0001000011", 44 => "0000110010", 
    45 => "0001010110", 46 => "0000010011", 47 => "1111110101", 48 => "1101100110", 
    49 => "0001011111", 50 => "0010010001", 51 => "1111001100" );

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

entity L2_wlo_166_L1_WEIEe0 is
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

architecture arch of L2_wlo_166_L1_WEIEe0 is
    component L2_wlo_166_L1_WEIEe0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIEe0_rom_U :  component L2_wlo_166_L1_WEIEe0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


