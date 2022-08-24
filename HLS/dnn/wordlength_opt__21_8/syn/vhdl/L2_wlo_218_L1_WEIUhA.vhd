-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIUhA_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIUhA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000001000", 1 => "101101010001", 2 => "110000011101", 
    3 => "111111001111", 4 => "111000111000", 5 => "101110010011", 
    6 => "111101101010", 7 => "000110111100", 8 => "001010001000", 
    9 => "010110001101", 10 => "110111011011", 11 => "000010011011", 
    12 => "001000010011", 13 => "110010001011", 14 => "010010100110", 
    15 => "001011101001", 16 => "110000000110", 17 => "001011000110", 
    18 => "001010011001", 19 => "110110101010", 20 => "111100101011", 
    21 => "111101110000", 22 => "111010101100", 23 => "001100100011", 
    24 => "111110000011", 25 => "111010001011", 26 => "011011011101", 
    27 => "000100000100", 28 => "110011011110", 29 => "010011100011", 
    30 => "100111010011", 31 => "000000000111", 32 => "000101101001", 
    33 => "010101000100", 34 => "110011000101", 35 => "110000001001", 
    36 => "001001101000", 37 => "001110111000", 38 => "110111110010", 
    39 => "001011000101", 40 => "000101001101", 41 => "001101111011", 
    42 => "101100001101", 43 => "110000111100", 44 => "111100101000", 
    45 => "000001011110", 46 => "111101011111", 47 => "000001001110", 
    48 => "000101010001", 49 => "010000110101", 50 => "101111010011", 
    51 => "110110111001" );

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

entity L2_wlo_218_L1_WEIUhA is
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

architecture arch of L2_wlo_218_L1_WEIUhA is
    component L2_wlo_218_L1_WEIUhA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIUhA_rom_U :  component L2_wlo_218_L1_WEIUhA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


