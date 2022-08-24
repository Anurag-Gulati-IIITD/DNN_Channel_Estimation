-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbzo_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbzo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000110101", 1 => "011101110100", 2 => "000100100111", 
    3 => "000101110000", 4 => "000111101101", 5 => "110001100101", 
    6 => "110001110100", 7 => "000011000011", 8 => "111111110010", 
    9 => "000001111001", 10 => "110111010001", 11 => "010101100000", 
    12 => "001101110100", 13 => "111011101010", 14 => "101010010111", 
    15 => "100100000011", 16 => "000100111011", 17 => "001111010101", 
    18 => "111001111001", 19 => "001000011111", 20 => "000100000010", 
    21 => "000101011011", 22 => "111101100010", 23 => "100110000011", 
    24 => "111001001110", 25 => "111010101110", 26 => "110100001001", 
    27 => "111010100001", 28 => "000010111111", 29 => "000111000000", 
    30 => "011001111000", 31 => "111010001101", 32 => "001011101011", 
    33 => "111101110000", 34 => "110111010111", 35 => "101001110000", 
    36 => "111001011010", 37 => "000011101110", 38 => "001000001100", 
    39 => "111010110000", 40 => "000100011011", 41 => "110111110000", 
    42 => "101111110010", 43 => "011010001100", 44 => "000111000001", 
    45 => "000111010000", 46 => "000101100000", 47 => "000110111011", 
    48 => "110110100000", 49 => "010010101001", 50 => "111001001110", 
    51 => "111000010100" );

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

entity L2_wlo_218_L1_WEIbzo is
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

architecture arch of L2_wlo_218_L1_WEIbzo is
    component L2_wlo_218_L1_WEIbzo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbzo_rom_U :  component L2_wlo_218_L1_WEIbzo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


