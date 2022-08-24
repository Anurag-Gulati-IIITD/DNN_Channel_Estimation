-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbKp_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbKp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000111001", 1 => "1111110101", 2 => "1110010011", 3 => "1111101011", 
    4 => "0001001000", 5 => "1101110001", 6 => "0000000010", 7 => "1111110100", 
    8 => "1110001100", 9 => "0001101110", 10 => "0000110111", 11 => "0001111111", 
    12 => "0000000110", 13 => "0000111111", 14 => "0001011101", 15 => "0000110010", 
    16 => "0000110100", 17 => "0000000001", 18 => "1111010000", 19 => "0000110111", 
    20 => "0001000111", 21 => "0000010000", 22 => "1110100011", 23 => "0001101000", 
    24 => "0000000100", 25 => "0000011110", 26 => "1101101110", 27 => "1111101001", 
    28 => "0000011010", 29 => "0001010111", 30 => "1111011010", 31 => "0000000101", 
    32 => "0000100101", 33 => "1100111111", 34 => "0000101010", 35 => "1011001111", 
    36 => "1110000110", 37 => "1101001110", 38 => "0000100101", 39 => "1110010110", 
    40 => "0000101011", 41 => "1110001110", 42 => "0000001110", 43 => "1110111110", 
    44 => "0000101011", 45 => "1111100000", 46 => "1111011000", 47 => "0001110010", 
    48 => "1111100110", 49 => "1111001000", 50 => "0000100010", 51 => "0000111110" );

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

entity L2_wlo_166_L1_WEIbKp is
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

architecture arch of L2_wlo_166_L1_WEIbKp is
    component L2_wlo_166_L1_WEIbKp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbKp_rom_U :  component L2_wlo_166_L1_WEIbKp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


