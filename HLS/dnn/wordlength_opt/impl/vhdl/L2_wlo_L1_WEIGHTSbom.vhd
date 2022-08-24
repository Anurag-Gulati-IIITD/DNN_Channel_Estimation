-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbom_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbom_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100101100110", 1 => "0010111100101111", 2 => "1010110101001001", 
    3 => "1010110010100010", 4 => "0010110011100110", 5 => "1011010101100010", 
    6 => "1010101011111100", 7 => "1010000101100100", 8 => "1010111100001110", 
    9 => "1010110011001110", 10 => "0011000100001011", 11 => "0010100011100001", 
    12 => "0010111001101001", 13 => "1010110000110001", 14 => "1010100010111110", 
    15 => "1010110111011101", 16 => "0010101110011111", 17 => "0010001011000101", 
    18 => "0010011101111101", 19 => "1010001100010011", 20 => "0010011100010100", 
    21 => "0010011100001110", 22 => "1000111101101100", 23 => "1011000000101111", 
    24 => "1010111000011011", 25 => "1010010010000000", 26 => "1010110001100010", 
    27 => "0011000011100010", 28 => "0010111001100001", 29 => "0011010010001100", 
    30 => "0001100100101010", 31 => "1010010011001000", 32 => "0010000000100010", 
    33 => "1010010010101000", 34 => "0001100110110101", 35 => "1011001101001111", 
    36 => "1010011101110100", 37 => "1010110111101001", 38 => "1010110010011101", 
    39 => "0010000000111110", 40 => "0010101001111010", 41 => "1010111011010000", 
    42 => "0010110011110000", 43 => "0011000010011000", 44 => "0010111000101101", 
    45 => "1010011101011001", 46 => "0010111111010010", 47 => "1001110101011101", 
    48 => "1001100010000100", 49 => "0010110110100000", 50 => "0011000001011001", 
    51 => "1010110001100011" );

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

entity L2_wlo_L1_WEIGHTSbom is
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

architecture arch of L2_wlo_L1_WEIGHTSbom is
    component L2_wlo_L1_WEIGHTSbom_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbom_rom_U :  component L2_wlo_L1_WEIGHTSbom_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


