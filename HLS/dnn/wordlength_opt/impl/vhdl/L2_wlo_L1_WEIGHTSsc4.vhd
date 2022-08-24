-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSsc4_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSsc4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100000111100", 1 => "1011000111000000", 2 => "1010100001000010", 
    3 => "0011000010111111", 4 => "1010110001001000", 5 => "0010110111101101", 
    6 => "1010110011101100", 7 => "1011000011100001", 8 => "1010101011000110", 
    9 => "1010110110110100", 10 => "1010110010000001", 11 => "0001111000000110", 
    12 => "0010010001010010", 13 => "0011000010111001", 14 => "0010111100111111", 
    15 => "0010010100110010", 16 => "0010101100001000", 17 => "0010101010010100", 
    18 => "1010110001001000", 19 => "1010100010010111", 20 => "1010101010100110", 
    21 => "0010111000100111", 22 => "0011000100001011", 23 => "0011001101001110", 
    24 => "1010101010101100", 25 => "0010110101010111", 26 => "1011000110111101", 
    27 => "0011000011011001", 28 => "0010111000001010", 29 => "1011000110000010", 
    30 => "1010101111010001", 31 => "0010100110100011", 32 => "0010111000011010", 
    33 => "0010001001001010", 34 => "1010110100111010", 35 => "0010011011101101", 
    36 => "0010011010111101", 37 => "1010100011000001", 38 => "1011000101101010", 
    39 => "0010110010000101", 40 => "0010110001011111", 41 => "0010111011101010", 
    42 => "0010110001101000", 43 => "1011000001010000", 44 => "0010101011011010", 
    45 => "1001110101111001", 46 => "1011000011011000", 47 => "1010000111101010", 
    48 => "1010100000011001", 49 => "1010000101011001", 50 => "1010010000011110", 
    51 => "1010010110100001" );

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

entity L2_wlo_L1_WEIGHTSsc4 is
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

architecture arch of L2_wlo_L1_WEIGHTSsc4 is
    component L2_wlo_L1_WEIGHTSsc4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSsc4_rom_U :  component L2_wlo_L1_WEIGHTSsc4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


