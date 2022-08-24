-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI8jQ_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEI8jQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101011101", 1 => "0010110011010", 2 => "0010101110110", 
    3 => "0000000101000", 4 => "1111100000010", 5 => "0100000101011", 
    6 => "0000000111100", 7 => "1110100110111", 8 => "1110100011101", 
    9 => "1110111001111", 10 => "0000110000101", 11 => "0011011010010", 
    12 => "1111110000100", 13 => "1111100110011", 14 => "0010111001110", 
    15 => "1111110001110", 16 => "0000111111110", 17 => "1100110001001", 
    18 => "1111001111101", 19 => "0000010100110", 20 => "1111100111110", 
    21 => "1101011010010", 22 => "0000100101111", 23 => "1110001000010", 
    24 => "1111111110011", 25 => "1111101011000", 26 => "0010101110100", 
    27 => "1110111111011", 28 => "0000011000110", 29 => "1011010110100", 
    30 => "1100010100001", 31 => "1111111000100", 32 => "0000010110101", 
    33 => "0000011101100", 34 => "0000111000111", 35 => "1111010000111", 
    36 => "0001100001111", 37 => "1110110000010", 38 => "1111111100110", 
    39 => "0010010101110", 40 => "1111010001000", 41 => "0001001101110", 
    42 => "0001000011010", 43 => "1111010100010", 44 => "1111011110111", 
    45 => "1110001000111", 46 => "0001010001010", 47 => "1110111101100", 
    48 => "0010110111010", 49 => "1101101111011", 50 => "0000110100110", 
    51 => "1110111000101" );

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

entity L2_wlo_218_L1_WEI8jQ is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEI8jQ is
    component L2_wlo_218_L1_WEI8jQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI8jQ_rom_U :  component L2_wlo_218_L1_WEI8jQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


