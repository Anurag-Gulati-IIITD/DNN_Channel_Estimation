-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI2iS_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI2iS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111110111000", 1 => "1110010011101", 2 => "0001011001010", 
    3 => "1111101111100", 4 => "0010110111010", 5 => "0010110111101", 
    6 => "0001101111010", 7 => "0000100001111", 8 => "1110010111000", 
    9 => "0100001100100", 10 => "0000100110010", 11 => "1111110010111", 
    12 => "1110111011011", 13 => "0001111100110", 14 => "0001011100000", 
    15 => "1110111111101", 16 => "0000000101001", 17 => "1101001101111", 
    18 => "0000011111010", 19 => "0001000000010", 20 => "0000011111001", 
    21 => "1111000011010", 22 => "1111110100111", 23 => "0001011011101", 
    24 => "0001010011100", 25 => "1111000100101", 26 => "0001011000101", 
    27 => "0001000100000", 28 => "0001001000101", 29 => "1100111111000", 
    30 => "1111011001100", 31 => "0000100001011", 32 => "1101111010101", 
    33 => "1110001000011", 34 => "1111000101101", 35 => "0000100111100", 
    36 => "0000000110100", 37 => "0000100110110", 38 => "0000000111101", 
    39 => "1111000010000", 40 => "1111000101100", 41 => "1110000111000", 
    42 => "1011110110100", 43 => "0010010101110", 44 => "0000000000010", 
    45 => "1110001111110", 46 => "0001010000000", 47 => "1111101110001", 
    48 => "0010001001000", 49 => "0000000010010", 50 => "0000111000100", 
    51 => "0001010011010" );

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

entity L2_wlo_218_L1_WEI2iS is
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

architecture arch of L2_wlo_218_L1_WEI2iS is
    component L2_wlo_218_L1_WEI2iS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI2iS_rom_U :  component L2_wlo_218_L1_WEI2iS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


