-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbSr_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbSr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101110000", 1 => "000100000010", 2 => "110011101110", 
    3 => "000001101111", 4 => "010001000100", 5 => "001111110000", 
    6 => "001100010110", 7 => "000000101101", 8 => "111001101100", 
    9 => "000010111001", 10 => "000010101001", 11 => "100111100001", 
    12 => "000011011001", 13 => "010110001110", 14 => "100110110100", 
    15 => "010100000011", 16 => "111111011000", 17 => "000101101111", 
    18 => "000011000000", 19 => "110111010111", 20 => "110010000010", 
    21 => "001001101011", 22 => "001001100110", 23 => "110011110000", 
    24 => "111000110100", 25 => "111100011110", 26 => "001101011001", 
    27 => "111100000111", 28 => "111110100101", 29 => "111011111100", 
    30 => "010101001010", 31 => "110010011100", 32 => "111101001011", 
    33 => "111110110011", 34 => "001011111110", 35 => "000001101111", 
    36 => "111111111010", 37 => "000100000010", 38 => "000001011101", 
    39 => "010110101010", 40 => "000010100110", 41 => "000000110010", 
    42 => "000010110011", 43 => "101001010111", 44 => "000001001101", 
    45 => "110111011000", 46 => "110111111011", 47 => "111011001010", 
    48 => "000111010010", 49 => "101111110100", 50 => "010011000100", 
    51 => "110001001001" );

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

entity L2_wlo_218_L1_WEIbSr is
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

architecture arch of L2_wlo_218_L1_WEIbSr is
    component L2_wlo_218_L1_WEIbSr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbSr_rom_U :  component L2_wlo_218_L1_WEIbSr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


