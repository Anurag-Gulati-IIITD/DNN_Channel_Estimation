-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbfk_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbfk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010011111110001", 1 => "1011001100001010", 2 => "0001111011111111", 
    3 => "1010110001010011", 4 => "0010101011101100", 5 => "0010011101111100", 
    6 => "1001110000010111", 7 => "0010100111010110", 8 => "0010110011001110", 
    9 => "1011000100011010", 10 => "1010010001110011", 11 => "0010111011000011", 
    12 => "0010110011000111", 13 => "0010111111111100", 14 => "0010001101001011", 
    15 => "0010000010111000", 16 => "0010110110010110", 17 => "0010101111100011", 
    18 => "0010101110000110", 19 => "1001110001011000", 20 => "0010111010110001", 
    21 => "0010101010010010", 22 => "0010000011011111", 23 => "0011000011110001", 
    24 => "1010101101011111", 25 => "0010100000100001", 26 => "1010111010000111", 
    27 => "1010010000111001", 28 => "0010111111100111", 29 => "0010101011010101", 
    30 => "1010010000000001", 31 => "0010010010011000", 32 => "1010000011100100", 
    33 => "1010110010111101", 34 => "0010110010011000", 35 => "1010111100010111", 
    36 => "1010010101101011", 37 => "0010110010110000", 38 => "0010000011010001", 
    39 => "0010101010000111", 40 => "0001101101011011", 41 => "1010101011100100", 
    42 => "0011001110000111", 43 => "0010010101000110", 44 => "0010100101010010", 
    45 => "1011000001100011", 46 => "0010110011101101", 47 => "1010110111111001", 
    48 => "0010111011010101", 49 => "0001101100010010", 50 => "1010111001000111", 
    51 => "1001111010111110" );

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

entity L2_wlo_L1_WEIGHTSbfk is
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

architecture arch of L2_wlo_L1_WEIGHTSbfk is
    component L2_wlo_L1_WEIGHTSbfk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbfk_rom_U :  component L2_wlo_L1_WEIGHTSbfk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


