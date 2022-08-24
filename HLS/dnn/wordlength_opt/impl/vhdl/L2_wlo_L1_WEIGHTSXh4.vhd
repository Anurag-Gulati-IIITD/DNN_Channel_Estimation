-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSXh4_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSXh4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010000001110111", 1 => "0011001010010111", 2 => "0011010000101010", 
    3 => "1011000101001000", 4 => "0010101011100101", 5 => "0010111010100010", 
    6 => "0011000010001010", 7 => "0010001010100010", 8 => "1010010100011011", 
    9 => "1010110011100010", 10 => "1010010100101101", 11 => "0011001100101011", 
    12 => "0010011100110000", 13 => "1011001000011101", 14 => "0011000001001100", 
    15 => "0010111001101001", 16 => "1010011001000001", 17 => "1011001011011111", 
    18 => "1010101110100001", 19 => "1010010000001110", 20 => "1010100011011101", 
    21 => "1010111001111001", 22 => "0010011100101000", 23 => "1011001010101011", 
    24 => "0010011111110100", 25 => "1010101010111011", 26 => "0010111100011110", 
    27 => "0011000101101111", 28 => "1010111110111011", 29 => "1011000000110010", 
    30 => "1010111011011111", 31 => "1010101111011100", 32 => "1010100111110110", 
    33 => "1001001111000010", 34 => "0010111100111010", 35 => "0011000100001000", 
    36 => "0010101000101010", 37 => "1010100111011110", 38 => "1011000100000000", 
    39 => "0010101011011011", 40 => "1010010111010010", 41 => "1010101010010110", 
    42 => "0010111110001000", 43 => "1010110100100010", 44 => "1010110001010010", 
    45 => "1011000000110011", 46 => "0010111111010000", 47 => "1010111100000100", 
    48 => "0010101000001011", 49 => "1010111111101010", 50 => "1010110100001110", 
    51 => "1010110100000010" );

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

entity L2_wlo_L1_WEIGHTSXh4 is
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

architecture arch of L2_wlo_L1_WEIGHTSXh4 is
    component L2_wlo_L1_WEIGHTSXh4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSXh4_rom_U :  component L2_wlo_L1_WEIGHTSXh4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


