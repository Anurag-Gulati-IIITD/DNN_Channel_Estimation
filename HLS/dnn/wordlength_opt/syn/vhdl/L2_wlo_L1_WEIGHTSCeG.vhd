-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSCeG_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSCeG_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100001111100", 1 => "0010100001010010", 2 => "1010010101110110", 
    3 => "0010010100111100", 4 => "0010011010111001", 5 => "0010111001000011", 
    6 => "1010110100000100", 7 => "1010100011111111", 8 => "0011000110100001", 
    9 => "0011000011011100", 10 => "1010111000000101", 11 => "0010101011110001", 
    12 => "0010110101001000", 13 => "0011001101111100", 14 => "1011001010110011", 
    15 => "0010000100100101", 16 => "0010110000011010", 17 => "1010010110100000", 
    18 => "1010000011001111", 19 => "0010111000011111", 20 => "0001011111101010", 
    21 => "1010100100000000", 22 => "1010011100111000", 23 => "1010000100111011", 
    24 => "0010000101001001", 25 => "0010110100110110", 26 => "1011001101010111", 
    27 => "1010101000000101", 28 => "0010010110100100", 29 => "1010111000011111", 
    30 => "0011000010011100", 31 => "1010111010100100", 32 => "0010110101101110", 
    33 => "1010111101001001", 34 => "0010110010111010", 35 => "1010101100100011", 
    36 => "1010100010000110", 37 => "0011000001011101", 38 => "0010011000011001", 
    39 => "0010100110111010", 40 => "0010101011110011", 41 => "0010111001011010", 
    42 => "1010100110100110", 43 => "1001111000100000", 44 => "0010110000100000", 
    45 => "0010011000001010", 46 => "0000110111110111", 47 => "0010011111100101", 
    48 => "1010000100110111", 49 => "0010000111101100", 50 => "1011001000001111", 
    51 => "1011000010001101" );

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

entity L2_wlo_L1_WEIGHTSCeG is
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

architecture arch of L2_wlo_L1_WEIGHTSCeG is
    component L2_wlo_L1_WEIGHTSCeG_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSCeG_rom_U :  component L2_wlo_L1_WEIGHTSCeG_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


