-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEI9j0_rom is 
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


architecture rtl of L2_wlo_166_L1_WEI9j0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000100101", 1 => "1111001011", 2 => "0001111101", 3 => "0000101110", 
    4 => "1101001111", 5 => "0001101100", 6 => "0000000010", 7 => "1111110010", 
    8 => "1110001011", 9 => "0000100101", 10 => "0001010110", 11 => "0001000110", 
    12 to 13=> "0000000110", 14 => "0011000100", 15 => "1110010101", 16 => "1110101111", 
    17 => "1110100101", 18 => "1111110111", 19 => "0000100101", 20 => "0000001011", 
    21 => "1111100110", 22 => "0001100101", 23 => "0000111000", 24 => "0001011000", 
    25 => "0000101001", 26 => "0010001111", 27 => "1010100010", 28 => "1111110001", 
    29 => "1110100001", 30 => "1110100010", 31 => "1101110010", 32 => "0000100110", 
    33 => "0000100000", 34 => "1111100100", 35 => "0000000010", 36 => "0000101110", 
    37 => "1110110111", 38 => "0100011001", 39 => "0010000000", 40 => "0000000011", 
    41 => "0010011110", 42 => "1110110000", 43 => "0010101010", 44 => "1110101011", 
    45 => "1111000101", 46 => "1111111000", 47 => "1110110001", 48 => "1111101101", 
    49 => "0000101010", 50 => "0001110101", 51 => "1111000111" );

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

entity L2_wlo_166_L1_WEI9j0 is
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

architecture arch of L2_wlo_166_L1_WEI9j0 is
    component L2_wlo_166_L1_WEI9j0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEI9j0_rom_U :  component L2_wlo_166_L1_WEI9j0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


