-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIxdS_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L2_wlo_218_L1_WEIxdS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111001111001", 1 => "011010101000", 2 => "001000011001", 
    3 => "001001101010", 4 => "110001000111", 5 => "010000101010", 
    6 => "111101100101", 7 => "110110101000", 8 => "100110100011", 
    9 => "010000110001", 10 => "001110101001", 11 => "111010011100", 
    12 => "101111010110", 13 => "111101110001", 14 => "000011000001", 
    15 => "000101111100", 16 => "111100100100", 17 => "110001110011", 
    18 => "000011101100", 19 => "110101101000", 20 => "111010011011", 
    21 => "110101111000", 22 => "111101110001", 23 => "100111010101", 
    24 => "000010010101", 25 => "111000101010", 26 => "001100001010", 
    27 => "001100101010", 28 => "101100011101", 29 => "101110101010", 
    30 => "110101111110", 31 => "010011010100", 32 => "010000100001", 
    33 => "001011101001", 34 => "110111110010", 35 => "000100111101", 
    36 => "000000100101", 37 => "110101001001", 38 => "111001110010", 
    39 => "110000001111", 40 => "000001100001", 41 => "011000011100", 
    42 => "100101010110", 43 => "111111010000", 44 => "000001101001", 
    45 => "010000100000", 46 => "110111110011", 47 => "000001110110", 
    48 => "110101100011", 49 => "000101010010", 50 => "010011100000", 
    51 => "010010010111" );

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

entity L2_wlo_218_L1_WEIxdS is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIxdS is
    component L2_wlo_218_L1_WEIxdS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIxdS_rom_U :  component L2_wlo_218_L1_WEIxdS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


