-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIRg6_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIRg6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110111001011", 1 => "0000110111011", 2 => "0000010101011", 
    3 => "1111011001001", 4 => "0001111010101", 5 => "0011000010101", 
    6 => "0000010000000", 7 => "1111100010100", 8 => "1110000111110", 
    9 => "1110110001110", 10 => "1111110100001", 11 => "0000010111001", 
    12 => "0000000101100", 13 => "0001110111010", 14 => "1110101000000", 
    15 => "1011111100011", 16 => "0001011001110", 17 => "1110001111001", 
    18 => "0000001000111", 19 => "0000000010111", 20 => "0001100001011", 
    21 => "1110000110111", 22 => "0000100001110", 23 => "1101101000100", 
    24 => "0010010100101", 25 => "0000110101101", 26 => "0001001111111", 
    27 => "1111100110110", 28 => "0000110001000", 29 => "1100011101101", 
    30 => "0001000010001", 31 => "0000011010010", 32 => "1111111111100", 
    33 => "1111101101100", 34 => "1111010101111", 35 => "0000101011100", 
    36 => "0000100100000", 37 => "0001100110011", 38 => "0000101011010", 
    39 => "1111110000010", 40 => "1110001111011", 41 => "1111111111100", 
    42 => "0001111100001", 43 => "0100010111101", 44 => "1110110011000", 
    45 => "0000001111110", 46 => "0000111000010", 47 => "0000011101111", 
    48 => "0000101111001", 49 => "1111111100101", 50 => "0001110001000", 
    51 => "0000011111010" );

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

entity L2_wlo_218_L1_WEIRg6 is
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

architecture arch of L2_wlo_218_L1_WEIRg6 is
    component L2_wlo_218_L1_WEIRg6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIRg6_rom_U :  component L2_wlo_218_L1_WEIRg6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


