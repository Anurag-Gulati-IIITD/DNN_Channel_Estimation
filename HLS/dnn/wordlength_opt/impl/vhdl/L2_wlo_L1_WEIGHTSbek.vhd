-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbek_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbek_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010000111011", 1 => "1010110000111111", 2 => "1010110001101100", 
    3 => "1011000001001001", 4 => "0010110111001111", 5 => "1010110101101111", 
    6 => "0010101010011111", 7 => "1001110111111001", 8 => "0011000011001000", 
    9 => "1011000000011001", 10 => "1010110111010010", 11 => "0010101100000111", 
    12 => "0010000011000110", 13 => "1010101110100010", 14 => "0010000001000100", 
    15 => "1010101100011011", 16 => "0010111110001110", 17 => "0010110010001111", 
    18 => "0010101010110001", 19 => "1010100110111100", 20 => "1010101010111111", 
    21 => "0010110011101101", 22 => "1010100100010110", 23 => "0010110000010010", 
    24 => "1010100010101010", 25 => "1010100011110110", 26 => "1010111000111100", 
    27 => "1010011000011010", 28 => "0010010011100101", 29 => "0010111001111000", 
    30 => "1001011000011011", 31 => "0010001111100001", 32 => "1010110011111000", 
    33 => "0010011000010011", 34 => "0010001010111000", 35 => "1011000010000101", 
    36 => "0010010110111111", 37 => "0010110010111101", 38 => "0011001011000111", 
    39 => "0010110011000100", 40 => "1010101010011110", 41 => "1010111100001001", 
    42 => "0011000101001010", 43 => "1010101010000101", 44 => "0010101011110011", 
    45 => "1010110111110011", 46 => "0010101100010010", 47 => "1010111000001011", 
    48 => "0010110010110011", 49 => "1010100101111010", 50 => "1011000000000110", 
    51 => "1010010001101010" );

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

entity L2_wlo_L1_WEIGHTSbek is
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

architecture arch of L2_wlo_L1_WEIGHTSbek is
    component L2_wlo_L1_WEIGHTSbek_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbek_rom_U :  component L2_wlo_L1_WEIGHTSbek_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


