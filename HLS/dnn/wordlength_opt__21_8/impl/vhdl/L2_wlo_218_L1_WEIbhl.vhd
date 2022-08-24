-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbhl_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbhl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111111010011", 1 => "000001111110", 2 => "111010010101", 
    3 => "000010111111", 4 => "000000100101", 5 => "101010100101", 
    6 => "000110011010", 7 => "001001000101", 8 => "000101010000", 
    9 => "101101011010", 10 => "111100011111", 11 => "110111111011", 
    12 => "010000010110", 13 => "110011100010", 14 => "001001001000", 
    15 => "111001110100", 16 => "001001001111", 17 => "000101110101", 
    18 => "110101010001", 19 => "111100110111", 20 => "000101111011", 
    21 => "111001100001", 22 => "101011001010", 23 => "000001110010", 
    24 => "010000001111", 25 => "000101100000", 26 => "110101000110", 
    27 => "111111101111", 28 => "000000011000", 29 => "010110001111", 
    30 => "110101000011", 31 => "111011111100", 32 => "110101000100", 
    33 => "000001111000", 34 => "001011100100", 35 => "010011001011", 
    36 => "111111000111", 37 => "000010011011", 38 => "001010010010", 
    39 => "000000110010", 40 => "111011110011", 41 => "110110011100", 
    42 => "000100111000", 43 => "001111000111", 44 => "110100110010", 
    45 => "111110000110", 46 => "110101101010", 47 => "111110001011", 
    48 => "000100000101", 49 => "000001100001", 50 => "111010000001", 
    51 => "110001010111" );

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

entity L2_wlo_218_L1_WEIbhl is
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

architecture arch of L2_wlo_218_L1_WEIbhl is
    component L2_wlo_218_L1_WEIbhl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbhl_rom_U :  component L2_wlo_218_L1_WEIbhl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


