-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbll_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbll_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011011101111", 1 => "1010111000001010", 2 => "0010110101100001", 
    3 => "1010011101110101", 4 => "0011000000100101", 5 => "0011010100101101", 
    6 => "0010011111010111", 7 => "0001110111111011", 8 => "0011001000011111", 
    9 => "0010101110011111", 10 => "1011000110101101", 11 => "1001001000000011", 
    12 => "1010101000110001", 13 => "0010100101111101", 14 => "0010011001111010", 
    15 => "1010100111010100", 16 => "0010110010001011", 17 => "1010011110110100", 
    18 => "1001110110101010", 19 => "0001010101010000", 20 => "1010110011000010", 
    21 => "1001101000110100", 22 => "0000101101101000", 23 => "0010111100011001", 
    24 => "1010010101100101", 25 => "1010101011001110", 26 => "0010111101000101", 
    27 => "1010101110001001", 28 => "1010000101001111", 29 => "1011010000011110", 
    30 => "0010100110011110", 31 => "0010110110100110", 32 => "1010110100110010", 
    33 => "0010100011011101", 34 => "0010101010100101", 35 => "0010010000111101", 
    36 => "1010100110001111", 37 => "0011001001001101", 38 => "0011000001000101", 
    39 => "1010111011111010", 40 => "1010101110010001", 41 => "1010100000001111", 
    42 => "1010010001110110", 43 => "0010100111101001", 44 => "1010101001010001", 
    45 => "1010101001110111", 46 => "0010111000100101", 47 => "1010101000111010", 
    48 => "0010100001100101", 49 => "1011000010001000", 50 => "1010111101100110", 
    51 => "1010000001101010" );

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

entity L2_wlo_L1_WEIGHTSbll is
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

architecture arch of L2_wlo_L1_WEIGHTSbll is
    component L2_wlo_L1_WEIGHTSbll_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbll_rom_U :  component L2_wlo_L1_WEIGHTSbll_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


