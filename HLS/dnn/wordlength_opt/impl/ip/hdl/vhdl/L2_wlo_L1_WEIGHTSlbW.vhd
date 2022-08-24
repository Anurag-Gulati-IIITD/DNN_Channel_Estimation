-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSlbW_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSlbW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101001001100", 1 => "1011000000100011", 2 => "0010111011000000", 
    3 => "1010110010011110", 4 => "1001110011001101", 5 => "0011001101001100", 
    6 => "0011000001011001", 7 => "1010111101100101", 8 => "1010011010011100", 
    9 => "1001110010111101", 10 => "0011001000011110", 11 => "0010110111100001", 
    12 => "1010100101000011", 13 => "0010111111001011", 14 => "1010101101000110", 
    15 => "1010101011000001", 16 => "1010101000000110", 17 => "1010100001111000", 
    18 => "0010010011001011", 19 => "0010010100101100", 20 => "0001110011101011", 
    21 => "1000111100100001", 22 => "0010111010100100", 23 => "0010100011001111", 
    24 => "0010111000011000", 25 => "0010100110100110", 26 => "0010101001001111", 
    27 => "0011000101001101", 28 => "0010000011011000", 29 => "1011000111111001", 
    30 => "1010000011010101", 31 => "1010111100001100", 32 => "1001100011000001", 
    33 => "1010110000001000", 34 => "0011000001010110", 35 => "0010111001011010", 
    36 => "0010101010111100", 37 => "1010111000000111", 38 => "1011001101110001", 
    39 => "0010011010100001", 40 => "1010101011010011", 41 => "0010101110001011", 
    42 => "1010010111001000", 43 => "0010100011011001", 44 => "1001101001010101", 
    45 => "0010000100100011", 46 => "0010011000000111", 47 => "1010110000100111", 
    48 => "1010100100011100", 49 => "0010010101111011", 50 => "0010001100010000", 
    51 => "1010101111101001" );

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

entity L2_wlo_L1_WEIGHTSlbW is
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

architecture arch of L2_wlo_L1_WEIGHTSlbW is
    component L2_wlo_L1_WEIGHTSlbW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSlbW_rom_U :  component L2_wlo_L1_WEIGHTSlbW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


