-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIjbC_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEIjbC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110111011", 1 => "0100001111", 2 => "0011000010", 3 => "1111110111", 
    4 => "0001000101", 5 => "0010110111", 6 => "0000010100", 7 => "0000011100", 
    8 => "1111011001", 9 => "1110111011", 10 => "1111001011", 11 => "0011010011", 
    12 => "0000110101", 13 => "1111001011", 14 => "0010110010", 15 => "0001111000", 
    16 => "0000000011", 17 => "1101000001", 18 => "1101111001", 19 => "1111110110", 
    20 => "0010011111", 21 => "1110000111", 22 => "1111010011", 23 => "1101100111", 
    24 => "0000111001", 25 => "0000111101", 26 => "1111000100", 27 => "1111110110", 
    28 => "1111111111", 29 => "1110001100", 30 => "1110001110", 31 => "1110011111", 
    32 => "1110111000", 33 => "1111100111", 34 => "1111001001", 35 => "0000110000", 
    36 => "1110111011", 37 => "0000011111", 38 => "1110110111", 39 => "0001010001", 
    40 => "1111011110", 41 => "1111011101", 42 => "0001010011", 43 => "1110011110", 
    44 => "1111000101", 45 => "1101111010", 46 => "0000001010", 47 => "0000011111", 
    48 => "0001011111", 49 => "1110101100", 50 => "0001000000", 51 => "1101101000" );

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

entity L2_wlo_166_L1_WEIjbC is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIjbC is
    component L2_wlo_166_L1_WEIjbC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIjbC_rom_U :  component L2_wlo_166_L1_WEIjbC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


