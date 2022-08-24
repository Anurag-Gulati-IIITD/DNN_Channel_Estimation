-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIudo_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIudo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001011110", 1 => "111000001110", 2 => "001001110100", 
    3 => "110001101001", 4 => "001111000010", 5 => "001111010000", 
    6 => "000010100010", 7 => "000001110111", 8 => "010100011001", 
    9 => "101111110011", 10 => "010101001100", 11 => "010100011000", 
    12 => "000111100110", 13 => "110111001001", 14 => "000011100000", 
    15 => "110111110110", 16 => "000011101010", 17 => "111010100111", 
    18 => "110111001111", 19 => "001011111101", 20 => "001111000001", 
    21 => "101011100111", 22 => "000100110110", 23 => "001110101101", 
    24 => "001101111100", 25 => "000011111001", 26 => "111101110110", 
    27 => "000101100111", 28 => "001001110111", 29 => "101101100100", 
    30 => "000110010000", 31 => "111011101101", 32 => "111110110011", 
    33 => "111011011101", 34 => "001001111110", 35 => "000110000100", 
    36 => "000000000000", 37 => "101111111000", 38 => "110001111001", 
    39 => "010101000101", 40 => "110010100111", 41 => "101111110101", 
    42 => "000111110100", 43 => "010010100101", 44 => "000010011111", 
    45 => "110110101100", 46 => "010011000111", 47 => "110101101000", 
    48 => "000111001110", 49 => "100110010101", 50 => "101000001111", 
    51 => "111111101011" );

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

entity L2_wlo_218_L1_WEIudo is
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

architecture arch of L2_wlo_218_L1_WEIudo is
    component L2_wlo_218_L1_WEIudo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIudo_rom_U :  component L2_wlo_218_L1_WEIudo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


