-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSPgM_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSPgM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010011110110101", 1 => "0010111100010010", 2 => "0010110000001100", 
    3 => "0010110011101100", 4 => "1011010000011101", 5 => "1010101100111101", 
    6 => "1010111010000010", 7 => "1010111111110110", 8 => "0011000011100000", 
    9 => "1011000010011101", 10 => "1010111101101010", 11 => "0010011100110011", 
    12 => "1010100110001010", 13 => "1010110000000001", 14 => "1010111010011110", 
    15 => "1010101000110010", 16 => "1010101111101110", 17 => "1010010101111001", 
    18 => "0010101001100000", 19 => "0001100011001011", 20 => "0010110001001110", 
    21 => "1010011000110111", 22 => "0010010100000010", 23 => "1010101111011011", 
    24 => "1010101000010010", 25 => "1010001101111000", 26 => "1011000010011110", 
    27 => "1010000010011111", 28 => "1010110101010100", 29 => "1010010011100100", 
    30 => "0010110110000111", 31 => "0010011111111101", 32 => "0011000001111100", 
    33 => "0010111100011000", 34 => "1010100100111100", 35 => "0010111101000010", 
    36 => "0010011100000011", 37 => "0010110010110111", 38 => "0010100010001011", 
    39 => "1010110011110101", 40 => "0010101111101000", 41 => "0011000110000101", 
    42 => "0011000100000010", 43 => "1010000111011101", 44 => "0001011111111010", 
    45 => "0010011111100110", 46 => "1010111110000111", 47 => "0010001101000000", 
    48 => "1010100111101010", 49 => "1001110000001101", 50 => "1010100101110111", 
    51 => "0010110000000010" );

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

entity L2_wlo_L1_WEIGHTSPgM is
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

architecture arch of L2_wlo_L1_WEIGHTSPgM is
    component L2_wlo_L1_WEIGHTSPgM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSPgM_rom_U :  component L2_wlo_L1_WEIGHTSPgM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


