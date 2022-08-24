-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIShg_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIShg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011100101", 1 => "010111000011", 2 => "000001011111", 
    3 => "111101001110", 4 => "110011001111", 5 => "000101110010", 
    6 => "000010001101", 7 => "111100101001", 8 => "001000101100", 
    9 => "111011111000", 10 => "110101111001", 11 => "110010100011", 
    12 => "000100011100", 13 => "000111110011", 14 => "101110000011", 
    15 => "101110010010", 16 => "111001101001", 17 => "111100111100", 
    18 => "111011110100", 19 => "110111100000", 20 => "110010111111", 
    21 => "110111001110", 22 => "001111111111", 23 => "101110101111", 
    24 => "000010111011", 25 => "111000101010", 26 => "001111001101", 
    27 => "111101001111", 28 => "110111011111", 29 => "110101011101", 
    30 => "001100101101", 31 => "111101100110", 32 => "000000110001", 
    33 => "001001101011", 34 => "110011001101", 35 => "001011110000", 
    36 => "111111010101", 37 => "010111011100", 38 => "111101010000", 
    39 => "010010001100", 40 => "111101010010", 41 => "111110101110", 
    42 => "111011100110", 43 => "010110111010", 44 => "111110011110", 
    45 => "110100010001", 46 => "111101000010", 47 => "111011001000", 
    48 => "110111101111", 49 => "001101001100", 50 => "110001100011", 
    51 => "111101111101" );

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

entity L2_wlo_218_L1_WEIShg is
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

architecture arch of L2_wlo_218_L1_WEIShg is
    component L2_wlo_218_L1_WEIShg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIShg_rom_U :  component L2_wlo_218_L1_WEIShg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


