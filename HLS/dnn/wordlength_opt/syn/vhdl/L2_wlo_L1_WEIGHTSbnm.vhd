-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbnm_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbnm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011110010100", 1 => "1010111000111011", 2 => "1011000001101110", 
    3 => "1010001101010110", 4 => "0010010001001011", 5 => "1011001011001100", 
    6 => "1010111110000011", 7 => "1010110000000001", 8 => "1011000111011000", 
    9 => "1010111011100110", 10 => "0010100100101010", 11 => "1010111000101011", 
    12 => "1010110010011111", 13 => "1011000111111000", 14 => "0010100001110001", 
    15 => "0010010001100010", 16 => "0010101000010000", 17 => "0010110111000010", 
    18 => "1010000111111100", 19 => "1010110011011010", 20 => "1010110000000001", 
    21 => "0010101101100011", 22 => "0010101110011010", 23 => "0001111011100101", 
    24 => "1010111000110111", 25 => "0010010110100111", 26 => "0001001011000000", 
    27 => "0011001001001000", 28 => "1010100101111000", 29 => "0011001010011101", 
    30 => "1010110001101000", 31 => "0010000000111100", 32 => "1010100011001110", 
    33 => "0010100111010011", 34 => "1010110100101111", 35 => "1010111001101000", 
    36 => "1010100001011010", 37 => "0010010111111101", 38 => "1011001110000111", 
    39 => "0010101101010110", 40 => "0010111100000111", 41 => "0010101100111110", 
    42 => "0011000110001011", 43 => "0010010001111111", 44 => "1010100001000111", 
    45 => "0010110000110011", 46 => "0010110000111100", 47 => "0010111111110010", 
    48 => "1010100011000100", 49 => "0011000001100110", 50 => "0011000110010111", 
    51 => "1010110010110101" );

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

entity L2_wlo_L1_WEIGHTSbnm is
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

architecture arch of L2_wlo_L1_WEIGHTSbnm is
    component L2_wlo_L1_WEIGHTSbnm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbnm_rom_U :  component L2_wlo_L1_WEIGHTSbnm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


