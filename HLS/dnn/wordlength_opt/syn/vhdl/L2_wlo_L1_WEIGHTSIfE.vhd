-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSIfE_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSIfE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100001101000", 1 => "0011000111000100", 2 => "0010000111110110", 
    3 => "1010010110001001", 4 => "1010111001100000", 5 => "0010100111001010", 
    6 => "0010010001101010", 7 => "1010011010110000", 8 => "0010110001011000", 
    9 => "1010100000011110", 10 => "1010110100001101", 11 => "1010111010111001", 
    12 => "0010100001110000", 13 => "0010101111001100", 14 => "1011000001111100", 
    15 => "1011000001101101", 16 => "1010101001011000", 17 => "1010011000011101", 
    18 => "1010100000101111", 19 => "1010110000111110", 20 => "1010111010000001", 
    21 => "1010110001100010", 22 => "0010111111111110", 23 => "1011000001010001", 
    24 => "0010010111011011", 25 => "1010101101010111", 26 => "0010111110011011", 
    27 => "1010010110000110", 28 => "1010110001000001", 29 => "1010110101000101", 
    30 => "0010111001011011", 31 => "1010010011001000", 32 => "0001111000101001", 
    33 => "0010110011010110", 34 => "1010111001100110", 35 => "0010110111100001", 
    36 => "1001110101011010", 37 => "0011000111011101", 38 => "1010010101111111", 
    39 => "0011000010001101", 40 => "1010010101101000", 41 => "1010000100010001", 
    42 => "1010100001100101", 43 => "0011000110111010", 44 => "1010001000010001", 
    45 => "1010110111011101", 46 => "1010010111101101", 47 => "1010100011100000", 
    48 => "1010110000100000", 49 => "0010111010011001", 50 => "1010111100111001", 
    51 => "1010010000010110" );

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

entity L2_wlo_L1_WEIGHTSIfE is
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

architecture arch of L2_wlo_L1_WEIGHTSIfE is
    component L2_wlo_L1_WEIGHTSIfE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSIfE_rom_U :  component L2_wlo_L1_WEIGHTSIfE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


