-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIIfE_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIIfE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000001001", 1 => "110100010001", 2 => "111001000010", 
    3 => "001010110010", 4 => "111010010101", 5 => "110100011110", 
    6 => "110101101000", 7 => "110011011111", 8 => "110100000011", 
    9 => "111000011101", 10 => "110101000010", 11 => "101101001000", 
    12 => "110101010110", 13 => "111011111011", 14 => "001011110100", 
    15 => "001011101101", 16 => "111000110011", 17 => "001000100010", 
    18 => "000001001111", 19 => "111010000000", 20 => "110011110110", 
    21 => "000110001000", 22 => "111000011111", 23 => "010011011000", 
    24 => "111101011011", 25 => "111001010001", 26 => "001111011001", 
    27 => "011000110101", 28 => "110100100111", 29 => "000100110111", 
    30 => "110010101010", 31 => "000100110011", 32 => "001000010110", 
    33 => "001100001000", 34 => "110000110011", 35 => "110001100010", 
    36 => "001100000100", 37 => "111111000101", 38 => "101110101100", 
    39 => "101110010101", 40 => "000011011001", 41 => "000100010011", 
    42 => "000111111111", 43 => "101010001001", 44 => "111010000000", 
    45 => "111110111100", 46 => "111001110011", 47 => "111010111110", 
    48 => "000001010101", 49 => "000011000000", 50 => "001111101010", 
    51 => "001001110000" );

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

entity L2_wlo_218_L1_WEIIfE is
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

architecture arch of L2_wlo_218_L1_WEIIfE is
    component L2_wlo_218_L1_WEIIfE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIIfE_rom_U :  component L2_wlo_218_L1_WEIIfE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


