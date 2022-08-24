-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIXh4_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIXh4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000011100101", 1 => "0001101011100", 2 => "0000100010011", 
    3 => "0000010101101", 4 => "0001011010011", 5 => "1111010111111", 
    6 => "1111010011000", 7 => "0000111010010", 8 => "1101111100100", 
    9 => "1110001111010", 10 => "0001110011110", 11 => "1111001101011", 
    12 => "0000011001101", 13 => "0001101111010", 14 => "1110000101000", 
    15 => "0000110010010", 16 => "0000111010001", 17 => "1110110111111", 
    18 => "0000010001110", 19 => "0000000100110", 20 => "0000100101101", 
    21 => "0000011000111", 22 => "1111111000110", 23 => "1110111011010", 
    24 => "0000010110000", 25 => "1111110111111", 26 => "1100111110101", 
    27 => "0000000011110", 28 => "0100010001100", 29 => "1111101111001", 
    30 => "0001100101011", 31 => "0000001110100", 32 => "1111101101010", 
    33 => "1101011100011", 34 => "0010100101111", 35 => "1110100101111", 
    36 => "0000110001010", 37 => "1111100011110", 38 => "0001001011010", 
    39 => "0000011010101", 40 => "0001000110100", 41 => "1110010101011", 
    42 => "0010101011110", 43 => "0000010111110", 44 => "0000101111110", 
    45 => "0000000001111", 46 => "0001100101101", 47 => "0001000000101", 
    48 => "1111000000001", 49 => "1110000001001", 50 => "0001011101000", 
    51 => "0000000110011" );

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

entity L2_wlo_218_L1_WEIXh4 is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIXh4 is
    component L2_wlo_218_L1_WEIXh4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIXh4_rom_U :  component L2_wlo_218_L1_WEIXh4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


