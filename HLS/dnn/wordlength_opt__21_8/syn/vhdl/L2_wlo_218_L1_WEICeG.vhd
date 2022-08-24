-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEICeG_rom is 
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


architecture rtl of L2_wlo_218_L1_WEICeG_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011110000", 1 => "101000111111", 2 => "111011101111", 
    3 => "010010111110", 4 => "110111011011", 5 => "001011110110", 
    6 => "110110001010", 7 => "101100011111", 8 => "111001001110", 
    9 => "110100100101", 10 => "110110111111", 11 => "000000110000", 
    12 => "000010001010", 13 => "010010111001", 14 => "001110011111", 
    15 => "000010100110", 16 => "000111000010", 17 => "000110100100", 
    18 => "110111011100", 19 => "111011011010", 20 => "111001010110", 
    21 => "001100010011", 22 => "010100001011", 23 => "011101001110", 
    24 => "111001010101", 25 => "001010101011", 26 => "101001000010", 
    27 => "010011011000", 28 => "001100000101", 29 => "101001111110", 
    30 => "111000001011", 31 => "000101101000", 32 => "001100001101", 
    33 => "000001100100", 34 => "110101100010", 35 => "000011011101", 
    36 => "000011010111", 37 => "111011001111", 38 => "101010010110", 
    39 => "001001000010", 40 => "001000101111", 41 => "001101110101", 
    42 => "001000110011", 43 => "101110110000", 44 => "000110110110", 
    45 => "111111010100", 46 => "101100101000", 47 => "111110100001", 
    48 => "111011111001", 49 => "111110101010", 50 => "111101111100", 
    51 => "111101001011" );

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

entity L2_wlo_218_L1_WEICeG is
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

architecture arch of L2_wlo_218_L1_WEICeG is
    component L2_wlo_218_L1_WEICeG_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEICeG_rom_U :  component L2_wlo_218_L1_WEICeG_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


