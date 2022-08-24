-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbwn_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbwn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000000011", 1 => "101110110101", 2 => "101101000010", 
    3 => "001101000100", 4 => "110010111011", 5 => "111101000011", 
    6 => "111111101111", 7 => "110100110001", 8 => "110011010110", 
    9 => "111010111000", 10 => "110100101000", 11 => "100101011011", 
    12 => "111110100011", 13 => "001010101000", 14 => "001010110001", 
    15 => "010100010101", 16 => "111111010101", 17 => "001000000011", 
    18 => "000101110110", 19 => "110001101010", 20 => "110110010001", 
    21 => "000101110000", 22 => "010011000101", 23 => "010101001000", 
    24 => "111000111001", 25 => "110111001010", 26 => "011011000001", 
    27 => "010101100101", 28 => "000100100011", 29 => "111110001111", 
    30 => "111100110000", 31 => "000010010000", 32 => "001001011011", 
    33 => "000011111100", 34 => "110111011101", 35 => "100111001010", 
    36 => "000011110001", 37 => "010000100010", 38 => "101111110010", 
    39 => "110011111101", 40 => "001001010110", 41 => "001110100011", 
    42 => "001010110100", 43 => "110100110101", 44 => "001011010001", 
    45 => "110001110000", 46 => "110001100101", 47 => "000001111001", 
    48 => "000011000110", 49 => "000111001100", 50 => "001000011000", 
    51 => "000111000110" );

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

entity L2_wlo_218_L1_WEIbwn is
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

architecture arch of L2_wlo_218_L1_WEIbwn is
    component L2_wlo_218_L1_WEIbwn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbwn_rom_U :  component L2_wlo_218_L1_WEIbwn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


