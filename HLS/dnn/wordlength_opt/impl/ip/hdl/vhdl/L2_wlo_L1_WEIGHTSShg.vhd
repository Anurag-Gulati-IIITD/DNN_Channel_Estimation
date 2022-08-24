-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSShg_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L2_wlo_L1_WEIGHTSShg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010000001111110", 1 => "1010111011000101", 2 => "0010110110010101", 
    3 => "1010010000011010", 4 => "0011000110111010", 5 => "0011000110111101", 
    6 => "0010111011110100", 7 => "0010100000111100", 8 => "1010111010001111", 
    9 => "0011010000110010", 10 => "0010100011001000", 11 => "1010001010000011", 
    12 => "1010110001001000", 13 => "0010111111001101", 14 => "0010110111000001", 
    15 => "1010110000000100", 16 => "0001110100110000", 17 => "1011000110010001", 
    18 => "0010011111011000", 19 => "0010110000000101", 20 => "0010011111001110", 
    21 => "1010101110010100", 22 => "1010000110000101", 23 => "0010110110111011", 
    24 => "0010110100111000", 25 => "1010101101101010", 26 => "0010110110001011", 
    27 => "0010110001000010", 28 => "0010110010001011", 29 => "1011001000001000", 
    30 => "1010100011001111", 31 => "0010100000101111", 32 => "1011000000101010", 
    33 => "1010111101111001", 34 => "1010101101001011", 35 => "0010100011110010", 
    36 => "0001111010001101", 37 => "0010100011011010", 38 => "0001111110110100", 
    39 => "1010101111000000", 40 => "1010101101001100", 41 => "1010111110010000", 
    42 => "1011010000100110", 43 => "0011000010101111", 44 => "0000110001011100", 
    45 => "1010111100000011", 46 => "0010110100000001", 47 => "1010010001110010", 
    48 => "0011000001001000", 49 => "0001100010101001", 50 => "0010101100010011", 
    51 => "0010110100110101" );

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

entity L2_wlo_L1_WEIGHTSShg is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_L1_WEIGHTSShg is
    component L2_wlo_L1_WEIGHTSShg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSShg_rom_U :  component L2_wlo_L1_WEIGHTSShg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


