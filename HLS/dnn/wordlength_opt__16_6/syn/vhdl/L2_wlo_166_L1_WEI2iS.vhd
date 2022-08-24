-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEI2iS_rom is 
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


architecture rtl of L2_wlo_166_L1_WEI2iS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111110111", 1 => "1110010011", 2 => "0001011001", 3 => "1111101111", 
    4 to 5=> "0010110111", 6 => "0001101111", 7 => "0000100001", 8 => "1110010111", 
    9 => "0100001100", 10 => "0000100110", 11 => "1111110010", 12 => "1110111011", 
    13 => "0001111100", 14 => "0001011100", 15 => "1110111111", 16 => "0000000101", 
    17 => "1101001101", 18 => "0000011111", 19 => "0001000000", 20 => "0000011111", 
    21 => "1111000011", 22 => "1111110100", 23 => "0001011011", 24 => "0001010011", 
    25 => "1111000100", 26 => "0001011000", 27 => "0001000100", 28 => "0001001000", 
    29 => "1100111111", 30 => "1111011001", 31 => "0000100001", 32 => "1101111010", 
    33 => "1110001000", 34 => "1111000101", 35 => "0000100111", 36 => "0000000110", 
    37 => "0000100110", 38 => "0000000111", 39 => "1111000010", 40 => "1111000101", 
    41 => "1110000111", 42 => "1011110110", 43 => "0010010101", 44 => "0000000000", 
    45 => "1110001111", 46 => "0001010000", 47 => "1111101110", 48 => "0010001001", 
    49 => "0000000010", 50 => "0000111000", 51 => "0001010011" );

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

entity L2_wlo_166_L1_WEI2iS is
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

architecture arch of L2_wlo_166_L1_WEI2iS is
    component L2_wlo_166_L1_WEI2iS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEI2iS_rom_U :  component L2_wlo_166_L1_WEI2iS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


