-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbpm_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbpm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100000001", 1 => "100011110101", 2 => "000000110111", 
    3 => "110111010110", 4 => "000110111011", 5 => "000011101111", 
    6 => "111111011111", 7 => "000101110101", 8 => "001001100110", 
    9 => "101011100101", 10 => "111101110001", 11 => "001101100001", 
    12 => "001001100011", 13 => "001111111110", 14 => "000001110100", 
    15 => "000001001011", 16 => "001011001011", 17 => "000111111000", 
    18 => "000111100001", 19 => "111111011101", 20 => "001101011000", 
    21 => "000110100100", 22 => "000001001101", 23 => "010011110000", 
    24 => "111000101000", 25 => "000100001000", 26 => "110010111100", 
    27 => "111101111000", 28 => "001111110011", 29 => "000110110101", 
    30 => "111101111111", 31 => "000010010011", 32 => "111110110001", 
    33 => "110110100001", 34 => "001001001100", 35 => "110001110100", 
    36 => "111101010010", 37 => "001001010111", 38 => "000001001101", 
    39 => "000110100001", 40 => "000000011101", 41 => "111001000111", 
    42 => "011110000111", 43 => "000010101000", 44 => "000101010100", 
    45 => "101110011100", 46 => "001001110110", 47 => "110100000011", 
    48 => "001101101010", 49 => "000000011100", 50 => "110011011100", 
    51 => "111111001010" );

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

entity L2_wlo_218_L1_WEIbpm is
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

architecture arch of L2_wlo_218_L1_WEIbpm is
    component L2_wlo_218_L1_WEIbpm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbpm_rom_U :  component L2_wlo_218_L1_WEIbpm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


