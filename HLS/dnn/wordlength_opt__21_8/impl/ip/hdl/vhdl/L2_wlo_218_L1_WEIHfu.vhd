-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIHfu_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIHfu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000111111110", 1 => "101001000100", 2 => "000010101111", 
    3 => "000000100100", 4 => "111000100111", 5 => "000110000011", 
    6 => "000111011100", 7 => "000001011111", 8 => "110101110100", 
    9 => "111001011110", 10 => "110011101110", 11 => "100110111100", 
    12 => "110110101110", 13 => "001111110010", 14 => "000111111100", 
    15 => "010011110111", 16 => "110101000010", 17 => "000010101100", 
    18 => "000011111011", 19 => "110111001001", 20 => "110001000110", 
    21 => "110010011001", 22 => "000100101010", 23 => "011000111001", 
    24 => "000111000111", 25 => "111110011111", 26 => "010100000110", 
    27 => "111011110110", 28 => "111000111110", 29 => "110111011101", 
    30 => "110011100100", 31 => "111010111111", 32 => "000101011100", 
    33 => "000111011110", 34 => "010000010001", 35 => "111110000110", 
    36 => "000010001011", 37 => "010110010111", 38 => "111101000110", 
    39 => "110011000010", 40 => "111010111100", 41 => "000110000001", 
    42 => "111100001001", 43 => "100011100101", 44 => "111101011010", 
    45 => "110110000010", 46 => "110110100110", 47 => "111111111110", 
    48 => "111111011000", 49 => "111010110101", 50 => "111000001011", 
    51 => "000111011010" );

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

entity L2_wlo_218_L1_WEIHfu is
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

architecture arch of L2_wlo_218_L1_WEIHfu is
    component L2_wlo_218_L1_WEIHfu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIHfu_rom_U :  component L2_wlo_218_L1_WEIHfu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


