-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIRg6_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIRg6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110111001", 1 => "0000110111", 2 => "0000010101", 3 => "1111011001", 
    4 => "0001111010", 5 => "0011000010", 6 => "0000010000", 7 => "1111100010", 
    8 => "1110000111", 9 => "1110110001", 10 => "1111110100", 11 => "0000010111", 
    12 => "0000000101", 13 => "0001110111", 14 => "1110101000", 15 => "1011111100", 
    16 => "0001011001", 17 => "1110001111", 18 => "0000001000", 19 => "0000000010", 
    20 => "0001100001", 21 => "1110000110", 22 => "0000100001", 23 => "1101101000", 
    24 => "0010010100", 25 => "0000110101", 26 => "0001001111", 27 => "1111100110", 
    28 => "0000110001", 29 => "1100011101", 30 => "0001000010", 31 => "0000011010", 
    32 => "1111111111", 33 => "1111101101", 34 => "1111010101", 35 => "0000101011", 
    36 => "0000100100", 37 => "0001100110", 38 => "0000101011", 39 => "1111110000", 
    40 => "1110001111", 41 => "1111111111", 42 => "0001111100", 43 => "0100010111", 
    44 => "1110110011", 45 => "0000001111", 46 => "0000111000", 47 => "0000011101", 
    48 => "0000101111", 49 => "1111111100", 50 => "0001110001", 51 => "0000011111" );

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

entity L2_wlo_166_L1_WEIRg6 is
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

architecture arch of L2_wlo_166_L1_WEIRg6 is
    component L2_wlo_166_L1_WEIRg6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIRg6_rom_U :  component L2_wlo_166_L1_WEIRg6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


