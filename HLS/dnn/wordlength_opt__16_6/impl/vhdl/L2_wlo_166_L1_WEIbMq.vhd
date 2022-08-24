-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbMq_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbMq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001001101", 1 => "0001101110", 2 => "0000100011", 3 to 4=> "1110110000", 
    5 => "0001011010", 6 => "1111111000", 7 => "1110010001", 8 => "1111000100", 
    9 => "1101000000", 10 => "0001001101", 11 => "1111111110", 12 => "0000111100", 
    13 => "0010011010", 14 => "1011111010", 15 => "1111001111", 16 => "0000010001", 
    17 => "1110101010", 18 => "1111010110", 19 => "0001100101", 20 => "0000101000", 
    21 => "1111100000", 22 => "0001011011", 23 => "1101110100", 24 => "0000101011", 
    25 => "1111001111", 26 => "1100101011", 27 => "1111011101", 28 => "0000101101", 
    29 => "1110111111", 30 => "0011011000", 31 => "0001001000", 32 => "1111111001", 
    33 => "1110101011", 34 => "0001111001", 35 => "0000011010", 36 => "0000001110", 
    37 => "1111100001", 38 => "1111111101", 39 => "1110101011", 40 => "1111101110", 
    41 => "0001011101", 42 => "0010010011", 43 => "0000100101", 44 => "0001100011", 
    45 => "0001010110", 46 => "0000000001", 47 => "1111000111", 48 => "1111101110", 
    49 => "1101101000", 50 => "0001010110", 51 => "1111010000" );

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

entity L2_wlo_166_L1_WEIbMq is
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

architecture arch of L2_wlo_166_L1_WEIbMq is
    component L2_wlo_166_L1_WEIbMq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbMq_rom_U :  component L2_wlo_166_L1_WEIbMq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


