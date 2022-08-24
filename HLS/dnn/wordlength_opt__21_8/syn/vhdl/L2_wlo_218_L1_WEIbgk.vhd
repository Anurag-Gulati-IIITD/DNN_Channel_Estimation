-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbgk_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L2_wlo_218_L1_WEIbgk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001001010111", 1 => "111100010111", 2 => "000011111010", 
    3 => "010011011000", 4 => "110101110110", 5 => "101101110111", 
    6 => "110011111101", 7 => "000001111111", 8 => "101011010100", 
    9 => "110100100011", 10 => "101100001101", 11 => "100011110011", 
    12 => "000101010101", 13 => "111101000010", 14 => "000110000110", 
    15 => "000011111010", 16 => "111111110011", 17 => "111100001010", 
    18 => "111111101000", 19 => "111110110101", 20 => "110110010100", 
    21 => "000011111001", 22 => "110000100101", 23 => "000000111100", 
    24 => "111001000101", 25 => "001000101101", 26 => "110110011001", 
    27 => "101011101011", 28 => "110111011000", 29 => "001101111100", 
    30 => "110111111010", 31 => "110010010010", 32 => "110111010001", 
    33 => "111001010000", 34 => "111011001100", 35 => "011000111011", 
    36 => "111111100110", 37 => "001011001010", 38 => "001100011000", 
    39 => "000011011000", 40 => "001000011010", 41 => "000011110010", 
    42 => "001101001101", 43 => "000011001011", 44 => "001110011111", 
    45 => "110011111010", 46 => "110000110110", 47 => "001010010110", 
    48 => "111001110011", 49 => "001011101011", 50 => "001111000011", 
    51 => "110101001101" );

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

entity L2_wlo_218_L1_WEIbgk is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIbgk is
    component L2_wlo_218_L1_WEIbgk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbgk_rom_U :  component L2_wlo_218_L1_WEIbgk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


