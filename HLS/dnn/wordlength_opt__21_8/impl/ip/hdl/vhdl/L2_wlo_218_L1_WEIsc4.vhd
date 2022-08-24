-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIsc4_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIsc4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111100100110", 1 => "111010111111", 2 => "101111000011", 
    3 => "010001000100", 4 => "000100000101", 5 => "100011101110", 
    6 => "000011110110", 7 => "010101010011", 8 => "111011111011", 
    9 => "110101111011", 10 => "101110111100", 11 => "110001111100", 
    12 => "111111111000", 13 => "111010100101", 14 => "001101000010", 
    15 => "111101100010", 16 => "000000100111", 17 => "001101111111", 
    18 => "000010001000", 19 => "111111100101", 20 => "001001001001", 
    21 => "000011110010", 22 => "110100101001", 23 => "111001000101", 
    24 => "001001101100", 25 => "110100111011", 26 => "110000100100", 
    27 => "111011010011", 28 => "000001010111", 29 => "010011010001", 
    30 => "111011110010", 31 => "111011111101", 32 => "110111010100", 
    33 => "111001001001", 34 => "000100111101", 35 => "010000000111", 
    36 => "110011101110", 37 => "000000111110", 38 => "001111111100", 
    39 => "000101100110", 40 => "111101111100", 41 => "111000001011", 
    42 => "000101000110", 43 => "000000011011", 44 => "000010110001", 
    45 => "110011011101", 46 => "111110100101", 47 => "111101101011", 
    48 => "111111101000", 49 => "111110001001", 50 => "000011111101", 
    51 => "111000100101" );

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

entity L2_wlo_218_L1_WEIsc4 is
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

architecture arch of L2_wlo_218_L1_WEIsc4 is
    component L2_wlo_218_L1_WEIsc4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIsc4_rom_U :  component L2_wlo_218_L1_WEIsc4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


