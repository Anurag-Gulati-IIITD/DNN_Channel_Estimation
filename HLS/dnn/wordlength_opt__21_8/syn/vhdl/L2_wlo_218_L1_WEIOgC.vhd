-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIOgC_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIOgC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001001101", 1 => "100001100011", 2 => "000111111101", 
    3 => "001100110101", 4 => "111010010010", 5 => "111010101111", 
    6 => "001101000000", 7 => "001100101000", 8 => "000000100001", 
    9 => "111111100000", 10 => "001111110101", 11 => "000000010100", 
    12 => "000110110100", 13 => "110101010010", 14 => "000101111001", 
    15 => "010110111000", 16 => "111111000110", 17 => "111111011011", 
    18 => "111001111100", 19 => "000101011110", 20 => "001000000101", 
    21 => "111110000101", 22 => "111001111111", 23 => "010110111101", 
    24 => "010000000100", 25 => "111111110111", 26 => "110001101111", 
    27 => "111111000010", 28 => "111011111001", 29 => "001010000000", 
    30 => "101001010000", 31 => "001110011000", 32 => "000000100110", 
    33 => "000100111111", 34 => "000110010100", 35 => "010100101011", 
    36 => "111101001010", 37 => "110100000100", 38 => "110001101000", 
    39 => "110110000101", 40 => "111101011011", 41 => "001000000110", 
    42 => "111001011111", 43 => "100100001110", 44 => "000100101011", 
    45 => "111110101111", 46 => "110011110000", 47 => "001101010011", 
    48 => "110010101110", 49 => "110100111001", 50 => "111001110110", 
    51 => "001001000100" );

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

entity L2_wlo_218_L1_WEIOgC is
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

architecture arch of L2_wlo_218_L1_WEIOgC is
    component L2_wlo_218_L1_WEIOgC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIOgC_rom_U :  component L2_wlo_218_L1_WEIOgC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


