-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEI8jQ_rom is 
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


architecture rtl of L2_wlo_166_L1_WEI8jQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101011", 1 => "0010110011", 2 => "0010101110", 3 => "0000000101", 
    4 => "1111100000", 5 => "0100000101", 6 => "0000000111", 7 => "1110100110", 
    8 => "1110100011", 9 => "1110111001", 10 => "0000110000", 11 => "0011011010", 
    12 => "1111110000", 13 => "1111100110", 14 => "0010111001", 15 => "1111110001", 
    16 => "0000111111", 17 => "1100110001", 18 => "1111001111", 19 => "0000010100", 
    20 => "1111100111", 21 => "1101011010", 22 => "0000100101", 23 => "1110001000", 
    24 => "1111111110", 25 => "1111101011", 26 => "0010101110", 27 => "1110111111", 
    28 => "0000011000", 29 => "1011010110", 30 => "1100010100", 31 => "1111111000", 
    32 => "0000010110", 33 => "0000011101", 34 => "0000111000", 35 => "1111010000", 
    36 => "0001100001", 37 => "1110110000", 38 => "1111111100", 39 => "0010010101", 
    40 => "1111010001", 41 => "0001001101", 42 => "0001000011", 43 => "1111010100", 
    44 => "1111011110", 45 => "1110001000", 46 => "0001010001", 47 => "1110111101", 
    48 => "0010110111", 49 => "1101101111", 50 => "0000110100", 51 => "1110111000" );

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

entity L2_wlo_166_L1_WEI8jQ is
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

architecture arch of L2_wlo_166_L1_WEI8jQ is
    component L2_wlo_166_L1_WEI8jQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEI8jQ_rom_U :  component L2_wlo_166_L1_WEI8jQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


