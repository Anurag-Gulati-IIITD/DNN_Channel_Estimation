-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSBew_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSBew_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001100101000100", 1 => "0011001100011010", 2 => "1010011001101111", 
    3 => "1010100100001010", 4 => "0001101111111100", 5 => "1010110100001000", 
    6 => "1001101111000110", 7 => "0010110000000101", 8 => "0010111011010000", 
    9 => "0010101101111001", 10 => "1011000010110111", 11 => "0010110000010110", 
    12 => "0011000100110101", 13 => "1010001110101000", 14 => "1011010101000101", 
    15 => "1011000001110101", 16 => "0011000011111001", 17 => "0010000101110011", 
    18 => "0010110011001010", 19 => "1010000011100100", 20 => "1010011010101100", 
    21 => "1010010000110100", 22 => "1010111001011101", 23 => "1010110001000010", 
    24 => "1010011000010011", 25 => "0010010111000011", 26 => "1011001000111110", 
    27 => "1010111010111110", 28 => "0010101100111100", 29 => "0010110000100110", 
    30 => "0011010011011110", 31 => "1010110101111111", 32 => "0010101101000001", 
    33 => "1010110100001111", 34 => "1010110011110111", 35 => "1010111101010001", 
    36 => "1010011010001100", 37 => "0010110011110100", 38 => "0010000011010110", 
    39 => "0010101110100100", 40 => "1010011000100000", 41 => "0001010110101111", 
    42 => "1010010101110110", 43 => "0011000011010010", 44 => "0010110110110001", 
    45 => "1001010101101101", 46 => "0001111101100100", 47 => "1010001110110110", 
    48 => "1010010001101111", 49 => "0010100101010011", 50 => "1010101000111000", 
    51 => "1010111100001000" );

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

entity L2_wlo_L1_WEIGHTSBew is
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

architecture arch of L2_wlo_L1_WEIGHTSBew is
    component L2_wlo_L1_WEIGHTSBew_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSBew_rom_U :  component L2_wlo_L1_WEIGHTSBew_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


